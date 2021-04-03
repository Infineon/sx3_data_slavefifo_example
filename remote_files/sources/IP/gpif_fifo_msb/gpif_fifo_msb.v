/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module gpif_fifo_msb
//
module gpif_fifo_msb (fifo_ip_Data, fifo_ip_Q, fifo_ip_Clock, fifo_ip_Empty, 
            fifo_ip_Full, fifo_ip_RdEn, fifo_ip_Reset, fifo_ip_WrEn) /* synthesis sbp_module=true */ ;
    input [15:0]fifo_ip_Data;
    output [15:0]fifo_ip_Q;
    input fifo_ip_Clock;
    output fifo_ip_Empty;
    output fifo_ip_Full;
    input fifo_ip_RdEn;
    input fifo_ip_Reset;
    input fifo_ip_WrEn;
    
    
    fifo_ip fifo_ip_inst (.Data({fifo_ip_Data}), .Q({fifo_ip_Q}), .Clock(fifo_ip_Clock), 
            .Empty(fifo_ip_Empty), .Full(fifo_ip_Full), .RdEn(fifo_ip_RdEn), 
            .Reset(fifo_ip_Reset), .WrEn(fifo_ip_WrEn));
    
endmodule

