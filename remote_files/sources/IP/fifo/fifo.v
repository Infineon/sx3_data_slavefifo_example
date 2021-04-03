/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module fifo
//
module fifo (gpif_fifo_Data, gpif_fifo_Q, gpif_fifo_Clock, gpif_fifo_Empty, 
            gpif_fifo_Full, gpif_fifo_RdEn, gpif_fifo_Reset, gpif_fifo_WrEn) /* synthesis sbp_module=true */ ;
    input [15:0]gpif_fifo_Data;
    output [15:0]gpif_fifo_Q;
    input gpif_fifo_Clock;
    output gpif_fifo_Empty;
    output gpif_fifo_Full;
    input gpif_fifo_RdEn;
    input gpif_fifo_Reset;
    input gpif_fifo_WrEn;
    
    
    gpif_fifo gpif_fifo_inst (.Data({gpif_fifo_Data}), .Q({gpif_fifo_Q}), 
            .Clock(gpif_fifo_Clock), .Empty(gpif_fifo_Empty), .Full(gpif_fifo_Full), 
            .RdEn(gpif_fifo_RdEn), .Reset(gpif_fifo_Reset), .WrEn(gpif_fifo_WrEn));
    
endmodule

