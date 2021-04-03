//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
//
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		Data Slave FIFO Example
// Module Name:		gpif_interface
// Target Devices:	LFE5U-45F-6BG381I
// Tool Versions:
// Description: This module is responsible for the data transfer between FX3 and
//              FPGA. It supports IN, OUT as well as IN and OUT i.e. Loopback
//              type transfers.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

// Include File
`include "params.v"

module gpif_interface
  (
   // Input Ports
  	input			      rstn_i,
  	input			      clk_i,
  	input			      en_i,
  	input			      flaga_i,
  	input			      flagb_i,
  	input  [31:0]	data_i,

   // Output Ports
  	output			     sloe_gen_o,
  	output			     slrd_o,
  	output			     sloe_o,
  	output			     slwr_o,
  	output [ 1:0]	sladdr_o,
  	output [31:0]	data_o
  );

  // --------------------------------
  //
  // Parameters
  //
  // --------------------------------

  // Watermark value for read and write
  localparam WR_WATERMARK = 8;
  localparam RD_WATERMARK = 9;

  //parameters for state machine
  parameter [3:0] IDLE_ST				      = 4'd0;
  parameter [3:0] WAIT_FLAGA_RD_ST	= 4'd1;
  parameter [3:0] WAIT_FLAGB_RD_ST	= 4'd2;
  parameter [3:0] READ_ST         	= 4'd3;
  parameter [3:0] READ_DELAY_ST		  = 4'd4;
  parameter [3:0] OE_DELAY_ST			   = 4'd5;
  parameter [3:0] EP_CHANGE_ST		   = 4'd6;
  parameter [3:0] WAIT_FLAGA_WR_ST	= 4'd7;
  parameter [3:0] WAIT_FLAGB_WR_ST	= 4'd8;
  parameter [3:0] WRITE_ST			      = 4'd9;
  parameter [3:0] WRITE_DELAY_ST		 = 4'd10;
  parameter [3:0] FLUSH_FIFO_ST		  = 4'd11;

  // --------------------------------
  //
  // Local Variables
  //
  // --------------------------------

  reg  [31:0] delay_cnt = 32'd0;
  reg  [ 3:0] oe_delay_cnt;
  reg         rd_oe_delay_cnt;
  reg         slrd_loopback_d1_;
  reg         slrd_loopback_d2_;
  reg         slrd_loopback_d3_;
  reg         slrd_loopback_d4_;

  wire [31:0] fifo_data_in;
  wire [31:0] fifo_data_out;
  reg  [31:0] fifo_data_out_r = 32'd0;

  reg         flaga_r = 1'd0;
  reg         flagb_r = 1'd0;
  reg         flagc_r = 1'd0;
  reg         flagd_r = 1'd0;
  reg  [ 3:0] wm_cnt  = 4'd0;

  reg         slwr_r     = 1'd1;
  reg         slrd_r     = 1'd1;
  reg         sloe_r     = 1'd1;
  reg         sloe_gen_r = 1'd1;
  reg         sladdr_r0  = 1'd0;
  reg         sladdr_r1  = 1'd0;

  reg         fifo_wren_r1  = 1'd0;
  reg         fifo_wren_r2  = 1'd0;
  reg         fifo_rden_r   = 1'd0;
  reg         fifo_rden_r1  = 1'd0;
  reg         fifo_rdvld    = 1'd0;
  reg         gpif_fifo_rst = 1'd0;

  reg  [31:0] data_out_r    = 1'd0;

  wire        gpif_fifo_lsb_Full;
  wire        gpif_fifo_lsb_Empty;
  wire        gpif_fifo_msb_Full;
  wire        gpif_fifo_msb_Empty;

  reg  [15:0] buf_wr_rd_cnt = 16'd0;
  reg         fifo_rst_r    = 1'd1;

  `ifdef STREAM_IN_ONLY
    reg [3:0] current_state = WAIT_FLAGA_WR_ST;
    reg [3:0] next_state    = WAIT_FLAGA_WR_ST;
  `else
    reg [3:0] current_state = IDLE_ST;
    reg [3:0] next_state    = IDLE_ST;
  `endif

  // --------------------------------
  //
  // Assignments
  //
  // --------------------------------

  assign slrd_o	    = slrd_r;
  assign sloe_o	    = sloe_r;
  assign sloe_gen_o = sloe_gen_r;

  `ifdef STREAM_IN_ONLY
    assign sladdr_o = {1'b0,sladdr_r0};
    assign data_o	  = data_out_r;
    assign slwr_o	  = fifo_rdvld;
  `elsif STREAM_OUT_ONLY
    assign sladdr_o = {1'b0,sladdr_r0};
    assign data_o	  = 32'hffffff;
    assign slwr_o	  = 1'd1;
  `else
    assign sladdr_o = {sladdr_r1,sladdr_r0};
    assign data_o   = fifo_data_out;
    assign slwr_o   = fifo_rdvld;
  `endif


always @(posedge clk_i)
	if(!rstn_i)
		fifo_rst_r <= 1'd1;
	else if((current_state==IDLE_ST)||(current_state==WAIT_FLAGA_RD_ST))
		fifo_rst_r <= 1'd1;
	else
		fifo_rst_r <= 1'd0;

always @(posedge clk_i)
	if(current_state!=WAIT_FLAGA_WR_ST)
		delay_cnt <= 1'd0;
	else
		delay_cnt <= delay_cnt + 1'd1;
always @(posedge clk_i)
	fifo_data_out_r <= fifo_data_out;

// Register the input flags
always @(posedge clk_i/*, negedge rstn_i*/) begin
		flaga_r <= flaga_i;
		flagb_r <= flagb_i;
end

always @(posedge clk_i) begin
	if(!rstn_i)
		buf_wr_rd_cnt <= 1'd0;
	else if(((current_state==OE_DELAY_ST)&(oe_delay_cnt == 0)))
		buf_wr_rd_cnt <= buf_wr_rd_cnt + 1'd1;
end

always @(posedge clk_i) begin
	if(current_state==WAIT_FLAGA_WR_ST)
		data_out_r <= 1'd0;
	else if(!fifo_rdvld)
		data_out_r <= data_out_r + 4'd8;
	else
		data_out_r <= 1'd0;
end

always @(posedge clk_i) begin
	if(((current_state == READ_ST) | (current_state == READ_DELAY_ST)))
		slrd_r <= 1'b0;
	else
		slrd_r <= 1'b1;
end

always @(posedge clk_i) begin
	if(((current_state == READ_ST) | (current_state == READ_DELAY_ST) | (current_state == OE_DELAY_ST)))
		sloe_r <= 1'b0;
	else
		sloe_r <= 1'b1;
end
always @(posedge clk_i) begin
	if(((current_state == READ_ST) | (current_state == READ_DELAY_ST) | (current_state == OE_DELAY_ST)))
		sloe_gen_r <= 1'b1;
	else
		sloe_gen_r <= 1'b0;
end
always @(posedge clk_i) begin
	fifo_wren_r1 <= !slrd_r;
	fifo_wren_r2 <= fifo_wren_r1;
end

always @(posedge clk_i) begin
	fifo_rden_r1 <= fifo_rden_r;
	fifo_rdvld <= !fifo_rden_r1;	// temp ; soon replace by slwr_r
end

always @(posedge clk_i, negedge rstn_i) begin
	if(!rstn_i)
		gpif_fifo_rst <= 1'd1;
	else if(current_state==IDLE_ST)
		gpif_fifo_rst <= 1'd1;
	else
		gpif_fifo_rst <= 1'd0;
end

always @(posedge clk_i) begin
	if((current_state == WRITE_ST) | (current_state == WRITE_DELAY_ST))
		fifo_rden_r <= 1'd1;
	else
		fifo_rden_r <= 1'd0;
end

`ifdef STREAM_OUT_ONLY
always @(posedge clk_i, negedge rstn_i) begin
	if(!rstn_i)
		sladdr_r0 <= 1'd0;
	else if((current_state == EP_CHANGE_ST)&(flaga_r == 1'b0))
		sladdr_r0 <= !sladdr_r0;
end
`else
always @(posedge clk_i, negedge rstn_i) begin
	if(!rstn_i)
		sladdr_r0 <= 1'd0;
	else if((current_state == FLUSH_FIFO_ST)&(flaga_r == 1'b0))
		sladdr_r0 <= !sladdr_r0;
end
`endif

always @(posedge clk_i, negedge rstn_i) begin
	if(!rstn_i)
		sladdr_r1 <= 1'd1;
	else if((current_state == FLUSH_FIFO_ST)&(flaga_r == 1'b0))
		sladdr_r1 <= 1'd1;
	else if(current_state == WAIT_FLAGA_WR_ST)
		sladdr_r1 <= 1'd0;
	else
		sladdr_r1 <= sladdr_r1;
end
assign fifo_data_in = data_i;

//Counter to delay the OUTPUT Enable(oe) signal
always @(posedge clk_i)begin
	if( (!(current_state == READ_DELAY_ST)) & (!(current_state == WRITE_DELAY_ST))) begin
		wm_cnt <= 1'd0;
	end
	else if((!slwr_o) || (!slrd_o))begin
		wm_cnt <= wm_cnt + 1'd1;
	end
end

always @(posedge clk_i, negedge rstn_i)begin
	if(!rstn_i)begin
		oe_delay_cnt <= 2'd0;
	end else if(current_state == READ_DELAY_ST) begin
		oe_delay_cnt <= 2'd2;
        end else if((current_state == OE_DELAY_ST) & (oe_delay_cnt > 1'b0))begin
		oe_delay_cnt <= oe_delay_cnt - 1'b1;
	end else begin
		oe_delay_cnt <= oe_delay_cnt;
	end
end


//	State Machine
`ifdef STREAM_IN_ONLY
always @(posedge clk_i, negedge rstn_i)begin
	if(!rstn_i)begin
		current_state <= WAIT_FLAGA_WR_ST;
	end else begin
		current_state <= next_state;
	end
end
`else
always @(posedge clk_i, negedge rstn_i)begin
	if(!rstn_i)begin
		current_state <= IDLE_ST;
	end else begin
		current_state <= next_state;
	end
end
`endif

//	State machine Next state
always @(*)begin
	next_state = current_state;
	case(current_state)
	IDLE_ST:begin
		if(en_i & (flaga_r == 1'b1))begin
			next_state = WAIT_FLAGA_RD_ST;
		end else begin
			next_state = IDLE_ST;
		end
	end
	WAIT_FLAGA_RD_ST:begin
		next_state = WAIT_FLAGB_RD_ST;
	end
	WAIT_FLAGB_RD_ST:begin
		if(!flaga_r) begin
			next_state = WAIT_FLAGA_RD_ST;
		end else if(flagb_r == 1'b1)begin
			next_state = READ_ST;
		end else begin
			next_state = WAIT_FLAGB_RD_ST;
		end
	end
	READ_ST :begin
		if(!flaga_r) begin
			next_state = WAIT_FLAGA_RD_ST;
		end else if(flagb_r == 1'b0)begin
			next_state = READ_DELAY_ST;
		end else begin
			next_state = READ_ST;
		end
	end
	READ_DELAY_ST : begin
		if(wm_cnt == (RD_WATERMARK-2'd3))begin // 1 clock cycles for the flagb detection and 2 cycle for the read signal to stop
			next_state = OE_DELAY_ST;
		end else begin
			next_state = READ_DELAY_ST;
		end
	end
	OE_DELAY_ST : begin
		if(oe_delay_cnt == 1'b0)begin
			next_state = EP_CHANGE_ST;
		end else begin
			next_state = OE_DELAY_ST;
		end
	end
`ifdef STREAM_OUT_ONLY
	EP_CHANGE_ST :begin
		if(!flaga_r) begin
			next_state = IDLE_ST;
		end else begin
			next_state = EP_CHANGE_ST;
		end
	end
`else
	EP_CHANGE_ST :begin
		if(!flaga_r) begin
			next_state = WAIT_FLAGA_WR_ST;
		end else begin
			next_state = EP_CHANGE_ST;
		end
	end
`endif
	WAIT_FLAGA_WR_ST :begin
		if ((flaga_r == 1'b1) & en_i)begin
			next_state = WAIT_FLAGB_WR_ST;
		end else begin
			next_state = WAIT_FLAGA_WR_ST;
		end
	end
	WAIT_FLAGB_WR_ST :begin
		if(!flaga_r) begin
			next_state = WAIT_FLAGA_WR_ST;
		end else if (flagb_r == 1'b1)begin
			next_state = WRITE_ST;
		end else begin
			next_state = WAIT_FLAGB_WR_ST;
		end
	end
	WRITE_ST:begin
		if(!flaga_r) begin
			next_state = WAIT_FLAGA_WR_ST;
		end else if((!flagb_r)&(flaga_r))begin
			next_state = WRITE_DELAY_ST;
		end else begin
		 	next_state = WRITE_ST;
		end
	end
	WRITE_DELAY_ST:begin
		if(wm_cnt == (WR_WATERMARK-3'd5))begin
			next_state = FLUSH_FIFO_ST;
		end else begin
			next_state = WRITE_DELAY_ST;
		end
	end
`ifdef STREAM_IN_ONLY
	FLUSH_FIFO_ST:begin
		if(flaga_r==1'b0) begin
			next_state = WAIT_FLAGA_WR_ST;
		end else begin
			next_state = FLUSH_FIFO_ST;
		end
	end
	default: next_state = WAIT_FLAGA_WR_ST;
`else
	FLUSH_FIFO_ST:begin
		if(flaga_r==1'b0) begin
			next_state = IDLE_ST;
		end else begin
			next_state = FLUSH_FIFO_ST;
		end
	end
	default: next_state = IDLE_ST;
`endif
	endcase
end

//	FIFO for LSB of 32 BIT
fifo fifo_lsb(
	.gpif_fifo_Data(fifo_data_in[15:0]),
	.gpif_fifo_Q(fifo_data_out[15:0]),
	.gpif_fifo_Clock(clk_i),
	.gpif_fifo_Empty(gpif_fifo_lsb_Empty),
	.gpif_fifo_Full(gpif_fifo_lsb_Full),
	.gpif_fifo_RdEn(fifo_rden_r&(!gpif_fifo_lsb_Empty)),
	.gpif_fifo_Reset(fifo_rst_r),
	.gpif_fifo_WrEn(fifo_wren_r2&(!gpif_fifo_lsb_Full))
	);

//	FIFO for MSB of 32 BIT
`ifdef GPIF_WDT_32
gpif_fifo_msb fifo_msb(
	.fifo_ip_Data(fifo_data_in[31:16]),
	.fifo_ip_Q(fifo_data_out[31:16]),
	.fifo_ip_Clock(clk_i),
	.fifo_ip_Empty(gpif_fifo_msb_Empty),
	.fifo_ip_Full(gpif_fifo_msb_Full),
	.fifo_ip_RdEn(fifo_rden_r&(!gpif_fifo_msb_Empty)),
	.fifo_ip_Reset(fifo_rst_r),
	.fifo_ip_WrEn(fifo_wren_r2&(!gpif_fifo_msb_Full))
	);
`endif

endmodule
