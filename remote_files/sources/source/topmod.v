//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
//
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		Data Slave FIFO Example
// Module Name:		topmod
// Target Devices:	LFE5U-45F-6BG381I
// Tool Versions:
// Description: This is the top most module of the design. It instantiates the
//              'gpif_interface' in it.
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

module topmod
  (
	  input			      rst_i,
	  input			      clk_i,

	  //	FX3 Interface
   // Input Ports
	  input			      flaga_i,
	  input			      flagb_i,

   // Inout Ports
	  inout  [31:0]	sldata_io,

   // Output Ports
	  output			     slclk_o,
	  output			     slrd_o,
	  output			     sloe_o,
	  output			     slwr_o,
	  output			     slcs_o,
	  output			     pktend_o,
	  output [ 1:0] sladdr_o
  );


  // --------------------------------
  //
  // Local Variables
  //
  // --------------------------------

  wire sl_clk;
  wire rstn_slclk;

  wire sloe_gen;
  wire fx3_clk_o;

  wire [31:0] gpif_data_i;
  wire [31:0] gpif_data_o;

  // Generate Variable
  genvar gi;

  // --------------------------------
  //
  // Generate Block
  //
  // --------------------------------

  generate
  	for ( gi = 0; gi < 32 ; gi = gi + 1)
     begin
  		   BB buf7 (.I(gpif_data_o[gi]), .T(sloe_gen), .O(gpif_data_i[gi]), .B(sldata_io[gi]));
  	  end
  endgenerate

  // --------------------------------
  //
  // Assignments
  //
  // --------------------------------

  // CS
  assign slcs_o   = 1'd0;

  // Packet End
  assign pktend_o = 1'd1;

  // Clock to FX3
  assign fx3_clk_o = sl_clk;

  // --------------------------------
  //
  // PLL
  //
  // --------------------------------

  pll
    pll
     (
     	.pll_ip_CLKI  (clk_i), // Reference Clock
     	.pll_ip_CLKOP (sl_clk) // 100 MHz Out Clock
     );

  // --------------------------------
  //
  // Reset Bridge
  //
  // --------------------------------

  rstn_bridge
    rstn_bridge
      (
      	.rstn_i (rst_i),
      	.clk_i  (sl_clk),
      	.rstn_o (rstn_slclk)
      );

  // --------------------------------
  //
  // Output Clock Buffer
  //
  // --------------------------------

  OB i_OB_FX_CLOCK ( .I( fx3_clk_o ), .O( slclk_o ) );

  // --------------------------------
  //
  // GPIF Interface Instance
  //
  // --------------------------------

  gpif_interface
    gpif_interface
      (
      	.rstn_i     (rstn_slclk),
      	.clk_i      (sl_clk),
      	.en_i       (1'd1),

      	//	 Slfifo interface signals
      	.flaga_i    (flaga_i),
      	.flagb_i    (flagb_i),
      	.data_i     (gpif_data_i),

      	.sloe_gen_o (sloe_gen),
      	.slrd_o     (slrd_o),
      	.sloe_o     (sloe_o),
      	.slwr_o     (slwr_o),
      	.sladdr_o   (sladdr_o),
      	.data_o     (gpif_data_o)
      );

endmodule
