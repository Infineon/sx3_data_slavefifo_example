// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed Sep 23 18:09:33 2020
//
// Verilog Description of module fifo_ip
//

module fifo_ip (Data, Clock, WrEn, RdEn, Reset, Q, Empty, Full) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(8[8:15])
    input [15:0]Data;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(9[23:27])
    input Clock;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(10[16:21])
    input WrEn;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(11[16:20])
    input RdEn;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(12[16:20])
    input Reset;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(13[16:21])
    output [15:0]Q;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(14[24:25])
    output Empty;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(15[17:22])
    output Full;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(16[17:21])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(10[16:21])
    
    wire invout_1, invout_0, rden_i_inv, fcnt_en, empty_d, full_d, 
        ifcount_0, ifcount_1, bdcnt_bctr_ci, ifcount_2, ifcount_3, 
        co0, ifcount_4, ifcount_5, co1, ifcount_6, ifcount_7, co2, 
        ifcount_8, ifcount_9, co3, ifcount_10, ifcount_11, co4, 
        ifcount_12, cnt_con, co5, cmp_ci, rden_i, co0_1, co1_1, 
        co2_1, co3_1, co4_1, co5_1, cmp_le_1, cmp_le_1_c, cmp_ci_1, 
        fcount_0, fcount_1, co0_2, fcount_2, fcount_3, co1_2, fcount_4, 
        fcount_5, co2_2, fcount_6, fcount_7, co3_2, fcount_8, fcount_9, 
        co4_2, wren_i, fcount_10, fcount_11, co5_2, wren_i_inv, 
        fcount_12, cmp_ge_d1, cmp_ge_d1_c, iwcount_0, iwcount_1, w_ctr_ci, 
        wcount_0, wcount_1, iwcount_2, iwcount_3, co0_3, wcount_2, 
        wcount_3, iwcount_4, iwcount_5, co1_3, wcount_4, wcount_5, 
        iwcount_6, iwcount_7, co2_3, wcount_6, wcount_7, iwcount_8, 
        iwcount_9, co3_3, wcount_8, wcount_9, iwcount_10, iwcount_11, 
        co4_3, wcount_10, wcount_11, ircount_0, ircount_1, r_ctr_ci, 
        rcount_0, rcount_1, ircount_2, ircount_3, co0_4, rcount_2, 
        rcount_3, ircount_4, ircount_5, co1_4, rcount_4, rcount_5, 
        ircount_6, ircount_7, co2_4, rcount_6, rcount_7, ircount_8, 
        ircount_9, co3_4, rcount_8, rcount_9, ircount_10, ircount_11, 
        co4_4, rcount_10, rcount_11, scuba_vhi, scuba_vlo;
    
    FD1P3DX FF_39 (.D(ifcount_1), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(341[13] 342[22])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(ifcount_2), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(345[13] 346[22])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(ifcount_3), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(349[13] 350[22])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(ifcount_4), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(353[13] 354[22])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(ifcount_5), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(357[13] 358[22])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(ifcount_6), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(361[13] 362[22])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(ifcount_7), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(365[13] 366[22])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(ifcount_8), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(369[13] 370[22])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(ifcount_9), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(373[13] 374[22])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(ifcount_10), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(377[13] 378[23])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(ifcount_11), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(381[13] 382[23])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(ifcount_12), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(385[13] 386[23])
    defparam FF_28.GSR = "ENABLED";
    FD1S3BX FF_27 (.D(empty_d), .CK(Clock), .PD(Reset), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(389[13:69])
    defparam FF_27.GSR = "ENABLED";
    FD1S3DX FF_26 (.D(full_d), .CK(Clock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(392[13:67])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(iwcount_0), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(395[13:85])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(iwcount_1), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(398[13:85])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(iwcount_2), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(401[13:85])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(iwcount_3), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(404[13:85])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(iwcount_4), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(407[13:85])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(iwcount_5), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(410[13:85])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(iwcount_6), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(413[13:85])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iwcount_7), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(416[13:85])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iwcount_8), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(419[13:85])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(iwcount_9), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(422[13:85])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(iwcount_10), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(425[13] 426[23])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iwcount_11), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(429[13] 430[23])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(ircount_0), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(437[13:85])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(ircount_1), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(440[13:85])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(ircount_2), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(443[13:85])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(ircount_3), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(446[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(ircount_4), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(449[13:84])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(ircount_5), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(452[13:84])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(ircount_6), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(455[13:84])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(ircount_7), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(458[13:84])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(ircount_8), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(461[13:84])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(ircount_9), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(464[13:84])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(ircount_10), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(467[13:86])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(ircount_11), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(470[13:86])
    defparam FF_1.GSR = "ENABLED";
    CCU2C bdcnt_bctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(cnt_con), .B1(cnt_con), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(bdcnt_bctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(480[11] 482[52])
    defparam bdcnt_bctr_cia.INIT0 = 16'b0110011010101010;
    defparam bdcnt_bctr_cia.INIT1 = 16'b0110011010101010;
    defparam bdcnt_bctr_cia.INJECT1_0 = "NO";
    defparam bdcnt_bctr_cia.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_0 (.A0(fcount_0), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_1), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(bdcnt_bctr_ci), .COUT(co0), .S0(ifcount_0), .S1(ifcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(488[11] 490[73])
    defparam bdcnt_bctr_0.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_0.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_0.INJECT1_0 = "NO";
    defparam bdcnt_bctr_0.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_1 (.A0(fcount_2), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_3), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(ifcount_2), .S1(ifcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(496[11] 498[63])
    defparam bdcnt_bctr_1.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_1.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_1.INJECT1_0 = "NO";
    defparam bdcnt_bctr_1.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_2 (.A0(fcount_4), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_5), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(ifcount_4), .S1(ifcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(504[11] 506[63])
    defparam bdcnt_bctr_2.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_2.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_2.INJECT1_0 = "NO";
    defparam bdcnt_bctr_2.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_3 (.A0(fcount_6), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_7), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(ifcount_6), .S1(ifcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(512[11] 514[63])
    defparam bdcnt_bctr_3.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_3.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_3.INJECT1_0 = "NO";
    defparam bdcnt_bctr_3.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_4 (.A0(fcount_8), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_9), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .COUT(co4), .S0(ifcount_8), .S1(ifcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(520[11] 522[63])
    defparam bdcnt_bctr_4.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_4.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_4.INJECT1_0 = "NO";
    defparam bdcnt_bctr_4.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_5 (.A0(fcount_10), .B0(cnt_con), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_11), .B1(cnt_con), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4), .COUT(co5), .S0(ifcount_10), .S1(ifcount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(528[11] 530[65])
    defparam bdcnt_bctr_5.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_5.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_5.INJECT1_0 = "NO";
    defparam bdcnt_bctr_5.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_6 (.A0(fcount_12), .B0(cnt_con), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(cnt_con), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5), .S0(ifcount_12)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(536[11] 538[55])
    defparam bdcnt_bctr_6.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_6.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_6.INJECT1_0 = "NO";
    defparam bdcnt_bctr_6.INJECT1_1 = "NO";
    CCU2C e_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(544[11] 546[45])
    defparam e_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam e_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam e_cmp_ci_a.INJECT1_0 = "NO";
    defparam e_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C e_cmp_0 (.A0(rden_i), .B0(fcount_0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci), .COUT(co0_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(552[11] 554[50])
    defparam e_cmp_0.INIT0 = 16'b1001100110101010;
    defparam e_cmp_0.INIT1 = 16'b1001100110101010;
    defparam e_cmp_0.INJECT1_0 = "NO";
    defparam e_cmp_0.INJECT1_1 = "NO";
    CCU2C e_cmp_1 (.A0(scuba_vlo), .B0(fcount_2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(560[11] 562[49])
    defparam e_cmp_1.INIT0 = 16'b1001100110101010;
    defparam e_cmp_1.INIT1 = 16'b1001100110101010;
    defparam e_cmp_1.INJECT1_0 = "NO";
    defparam e_cmp_1.INJECT1_1 = "NO";
    CCU2C e_cmp_2 (.A0(scuba_vlo), .B0(fcount_4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_5), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(568[11] 570[49])
    defparam e_cmp_2.INIT0 = 16'b1001100110101010;
    defparam e_cmp_2.INIT1 = 16'b1001100110101010;
    defparam e_cmp_2.INJECT1_0 = "NO";
    defparam e_cmp_2.INJECT1_1 = "NO";
    CCU2C e_cmp_3 (.A0(scuba_vlo), .B0(fcount_6), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_7), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(576[11] 578[49])
    defparam e_cmp_3.INIT0 = 16'b1001100110101010;
    defparam e_cmp_3.INIT1 = 16'b1001100110101010;
    defparam e_cmp_3.INJECT1_0 = "NO";
    defparam e_cmp_3.INJECT1_1 = "NO";
    CCU2C e_cmp_4 (.A0(scuba_vlo), .B0(fcount_8), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_9), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .COUT(co4_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(584[11] 586[49])
    defparam e_cmp_4.INIT0 = 16'b1001100110101010;
    defparam e_cmp_4.INIT1 = 16'b1001100110101010;
    defparam e_cmp_4.INJECT1_0 = "NO";
    defparam e_cmp_4.INJECT1_1 = "NO";
    CCU2C e_cmp_5 (.A0(scuba_vlo), .B0(fcount_10), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_11), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_1), .COUT(co5_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(592[11] 594[49])
    defparam e_cmp_5.INIT0 = 16'b1001100110101010;
    defparam e_cmp_5.INIT1 = 16'b1001100110101010;
    defparam e_cmp_5.INJECT1_0 = "NO";
    defparam e_cmp_5.INJECT1_1 = "NO";
    CCU2C e_cmp_6 (.A0(scuba_vlo), .B0(fcount_12), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5_1), .COUT(cmp_le_1_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(600[11] 602[54])
    defparam e_cmp_6.INIT0 = 16'b1001100110101010;
    defparam e_cmp_6.INIT1 = 16'b1001100110101010;
    defparam e_cmp_6.INJECT1_0 = "NO";
    defparam e_cmp_6.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_le_1_c), .S0(cmp_le_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(608[11] 610[57])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C g_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(616[11] 618[47])
    defparam g_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam g_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam g_cmp_ci_a.INJECT1_0 = "NO";
    defparam g_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C g_cmp_0 (.A0(fcount_0), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_1), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(624[11] 626[52])
    defparam g_cmp_0.INIT0 = 16'b1001100110101010;
    defparam g_cmp_0.INIT1 = 16'b1001100110101010;
    defparam g_cmp_0.INJECT1_0 = "NO";
    defparam g_cmp_0.INJECT1_1 = "NO";
    CCU2C g_cmp_1 (.A0(fcount_2), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_3), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(632[11] 634[49])
    defparam g_cmp_1.INIT0 = 16'b1001100110101010;
    defparam g_cmp_1.INIT1 = 16'b1001100110101010;
    defparam g_cmp_1.INJECT1_0 = "NO";
    defparam g_cmp_1.INJECT1_1 = "NO";
    CCU2C g_cmp_2 (.A0(fcount_4), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_5), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(640[11] 642[49])
    defparam g_cmp_2.INIT0 = 16'b1001100110101010;
    defparam g_cmp_2.INIT1 = 16'b1001100110101010;
    defparam g_cmp_2.INJECT1_0 = "NO";
    defparam g_cmp_2.INJECT1_1 = "NO";
    CCU2C g_cmp_3 (.A0(fcount_6), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_7), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(648[11] 650[49])
    defparam g_cmp_3.INIT0 = 16'b1001100110101010;
    defparam g_cmp_3.INIT1 = 16'b1001100110101010;
    defparam g_cmp_3.INJECT1_0 = "NO";
    defparam g_cmp_3.INJECT1_1 = "NO";
    CCU2C g_cmp_4 (.A0(fcount_8), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_9), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_2), .COUT(co4_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(656[11] 658[49])
    defparam g_cmp_4.INIT0 = 16'b1001100110101010;
    defparam g_cmp_4.INIT1 = 16'b1001100110101010;
    defparam g_cmp_4.INJECT1_0 = "NO";
    defparam g_cmp_4.INJECT1_1 = "NO";
    CCU2C g_cmp_5 (.A0(fcount_10), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_11), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_2), .COUT(co5_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(664[11] 666[49])
    defparam g_cmp_5.INIT0 = 16'b1001100110101010;
    defparam g_cmp_5.INIT1 = 16'b1001100110101010;
    defparam g_cmp_5.INJECT1_0 = "NO";
    defparam g_cmp_5.INJECT1_1 = "NO";
    CCU2C g_cmp_6 (.A0(fcount_12), .B0(wren_i_inv), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5_2), .COUT(cmp_ge_d1_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(672[11] 674[55])
    defparam g_cmp_6.INIT0 = 16'b1001100110101010;
    defparam g_cmp_6.INIT1 = 16'b1001100110101010;
    defparam g_cmp_6.INJECT1_0 = "NO";
    defparam g_cmp_6.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ge_d1_c), .S0(cmp_ge_d1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(680[11] 682[59])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C w_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), .D1(scuba_vhi), 
          .COUT(w_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(688[11] 690[47])
    defparam w_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_ctr_cia.INJECT1_0 = "NO";
    defparam w_ctr_cia.INJECT1_1 = "NO";
    CCU2C w_ctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_ctr_ci), .COUT(co0_3), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(696[11] 698[70])
    defparam w_ctr_0.INIT0 = 16'b0110011010101010;
    defparam w_ctr_0.INIT1 = 16'b0110011010101010;
    defparam w_ctr_0.INJECT1_0 = "NO";
    defparam w_ctr_0.INJECT1_1 = "NO";
    CCU2C w_ctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(704[11] 706[67])
    defparam w_ctr_1.INIT0 = 16'b0110011010101010;
    defparam w_ctr_1.INIT1 = 16'b0110011010101010;
    defparam w_ctr_1.INJECT1_0 = "NO";
    defparam w_ctr_1.INJECT1_1 = "NO";
    CCU2C w_ctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(712[11] 714[67])
    defparam w_ctr_2.INIT0 = 16'b0110011010101010;
    defparam w_ctr_2.INIT1 = 16'b0110011010101010;
    defparam w_ctr_2.INJECT1_0 = "NO";
    defparam w_ctr_2.INJECT1_1 = "NO";
    CCU2C w_ctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_3), .COUT(co3_3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(720[11] 722[67])
    defparam w_ctr_3.INIT0 = 16'b0110011010101010;
    defparam w_ctr_3.INIT1 = 16'b0110011010101010;
    defparam w_ctr_3.INJECT1_0 = "NO";
    defparam w_ctr_3.INJECT1_1 = "NO";
    CCU2C w_ctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_3), .COUT(co4_3), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(728[11] 730[67])
    defparam w_ctr_4.INIT0 = 16'b0110011010101010;
    defparam w_ctr_4.INIT1 = 16'b0110011010101010;
    defparam w_ctr_4.INJECT1_0 = "NO";
    defparam w_ctr_4.INJECT1_1 = "NO";
    CCU2C w_ctr_5 (.A0(wcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_3), .S0(iwcount_10), .S1(iwcount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(736[11] 738[69])
    defparam w_ctr_5.INIT0 = 16'b0110011010101010;
    defparam w_ctr_5.INIT1 = 16'b0110011010101010;
    defparam w_ctr_5.INJECT1_0 = "NO";
    defparam w_ctr_5.INJECT1_1 = "NO";
    CCU2C r_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), .D1(scuba_vhi), 
          .COUT(r_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(752[11] 754[47])
    defparam r_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_ctr_cia.INJECT1_0 = "NO";
    defparam r_ctr_cia.INJECT1_1 = "NO";
    CCU2C r_ctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_ctr_ci), .COUT(co0_4), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(760[11] 762[70])
    defparam r_ctr_0.INIT0 = 16'b0110011010101010;
    defparam r_ctr_0.INIT1 = 16'b0110011010101010;
    defparam r_ctr_0.INJECT1_0 = "NO";
    defparam r_ctr_0.INJECT1_1 = "NO";
    CCU2C r_ctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_4), .COUT(co1_4), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(768[11] 770[67])
    defparam r_ctr_1.INIT0 = 16'b0110011010101010;
    defparam r_ctr_1.INIT1 = 16'b0110011010101010;
    defparam r_ctr_1.INJECT1_0 = "NO";
    defparam r_ctr_1.INJECT1_1 = "NO";
    CCU2C r_ctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_4), .COUT(co2_4), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(776[11] 778[67])
    defparam r_ctr_2.INIT0 = 16'b0110011010101010;
    defparam r_ctr_2.INIT1 = 16'b0110011010101010;
    defparam r_ctr_2.INJECT1_0 = "NO";
    defparam r_ctr_2.INJECT1_1 = "NO";
    CCU2C r_ctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_4), .COUT(co3_4), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(784[11] 786[67])
    defparam r_ctr_3.INIT0 = 16'b0110011010101010;
    defparam r_ctr_3.INIT1 = 16'b0110011010101010;
    defparam r_ctr_3.INJECT1_0 = "NO";
    defparam r_ctr_3.INJECT1_1 = "NO";
    CCU2C r_ctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_4), .COUT(co4_4), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(792[11] 794[67])
    defparam r_ctr_4.INIT0 = 16'b0110011010101010;
    defparam r_ctr_4.INIT1 = 16'b0110011010101010;
    defparam r_ctr_4.INJECT1_0 = "NO";
    defparam r_ctr_4.INJECT1_1 = "NO";
    CCU2C r_ctr_5 (.A0(rcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_4), .S0(ircount_10), .S1(ircount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(800[11] 802[69])
    defparam r_ctr_5.INIT0 = 16'b0110011010101010;
    defparam r_ctr_5.INIT1 = 16'b0110011010101010;
    defparam r_ctr_5.INJECT1_0 = "NO";
    defparam r_ctr_5.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    GSR GSR_INST (.GSR(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    AND2 AND2_t3 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(153[10:54])
    INV INV_3 (.A(Full), .Z(invout_1));
    AND2 AND2_t2 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(157[10:54])
    INV INV_2 (.A(Empty), .Z(invout_0));
    AND2 AND2_t1 (.A(wren_i), .B(rden_i_inv), .Z(cnt_con)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(161[10:59])
    XOR2 XOR2_t0 (.A(wren_i), .B(rden_i), .Z(fcnt_en)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(163[10:55])
    INV INV_1 (.A(rden_i), .Z(rden_i_inv));
    INV INV_0 (.A(wren_i), .Z(wren_i_inv));
    ROM16X1A LUT4_1 (.AD0(Empty), .AD1(wren_i), .AD2(cmp_le_1), .AD3(scuba_vlo), 
            .DO0(empty_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0011001000110010;
    ROM16X1A LUT4_0 (.AD0(Full), .AD1(rden_i), .AD2(cmp_ge_d1), .AD3(scuba_vlo), 
            .DO0(full_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0011001000110010;
    DP16KD pdp_ram_0_0_3 (.DIA0(Data[0]), .DIA1(Data[1]), .DIA2(Data[2]), 
           .DIA3(Data[3]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wcount_0), .ADA3(wcount_1), .ADA4(wcount_2), 
           .ADA5(wcount_3), .ADA6(wcount_4), .ADA7(wcount_5), .ADA8(wcount_6), 
           .ADA9(wcount_7), .ADA10(wcount_8), .ADA11(wcount_9), .ADA12(wcount_10), 
           .ADA13(wcount_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(Clock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(rcount_0), .ADB3(rcount_1), .ADB4(rcount_2), 
           .ADB5(rcount_3), .ADB6(rcount_4), .ADB7(rcount_5), .ADB8(rcount_6), 
           .ADB9(rcount_7), .ADB10(rcount_8), .ADB11(rcount_9), .ADB12(rcount_10), 
           .ADB13(rcount_11), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(Clock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[0]), .DOB1(Q[1]), .DOB2(Q[2]), .DOB3(Q[3])) /* synthesis MEM_LPC_FILE="fifo_ip.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_3.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_0_3.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_0_3.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_0_3.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_0_3.RESETMODE = "SYNC";
    defparam pdp_ram_0_0_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_3.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_3.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_3.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_3.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_3.GSR = "ENABLED";
    defparam pdp_ram_0_0_3.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_3.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_1_2 (.DIA0(Data[4]), .DIA1(Data[5]), .DIA2(Data[6]), 
           .DIA3(Data[7]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wcount_0), .ADA3(wcount_1), .ADA4(wcount_2), 
           .ADA5(wcount_3), .ADA6(wcount_4), .ADA7(wcount_5), .ADA8(wcount_6), 
           .ADA9(wcount_7), .ADA10(wcount_8), .ADA11(wcount_9), .ADA12(wcount_10), 
           .ADA13(wcount_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(Clock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(rcount_0), .ADB3(rcount_1), .ADB4(rcount_2), 
           .ADB5(rcount_3), .ADB6(rcount_4), .ADB7(rcount_5), .ADB8(rcount_6), 
           .ADB9(rcount_7), .ADB10(rcount_8), .ADB11(rcount_9), .ADB12(rcount_10), 
           .ADB13(rcount_11), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(Clock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[4]), .DOB1(Q[5]), .DOB2(Q[6]), .DOB3(Q[7])) /* synthesis MEM_LPC_FILE="fifo_ip.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_1_2.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_1_2.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_1_2.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_1_2.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_1_2.RESETMODE = "SYNC";
    defparam pdp_ram_0_1_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_2.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_1_2.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_1_2.CSDECODE_A = "0b000";
    defparam pdp_ram_0_1_2.CSDECODE_B = "0b000";
    defparam pdp_ram_0_1_2.GSR = "ENABLED";
    defparam pdp_ram_0_1_2.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_2.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_2_1 (.DIA0(Data[8]), .DIA1(Data[9]), .DIA2(Data[10]), 
           .DIA3(Data[11]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wcount_0), .ADA3(wcount_1), .ADA4(wcount_2), 
           .ADA5(wcount_3), .ADA6(wcount_4), .ADA7(wcount_5), .ADA8(wcount_6), 
           .ADA9(wcount_7), .ADA10(wcount_8), .ADA11(wcount_9), .ADA12(wcount_10), 
           .ADA13(wcount_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(Clock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(rcount_0), .ADB3(rcount_1), .ADB4(rcount_2), 
           .ADB5(rcount_3), .ADB6(rcount_4), .ADB7(rcount_5), .ADB8(rcount_6), 
           .ADB9(rcount_7), .ADB10(rcount_8), .ADB11(rcount_9), .ADB12(rcount_10), 
           .ADB13(rcount_11), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(Clock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[8]), .DOB1(Q[9]), .DOB2(Q[10]), .DOB3(Q[11])) /* synthesis MEM_LPC_FILE="fifo_ip.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_2_1.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_2_1.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_2_1.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_2_1.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_2_1.RESETMODE = "SYNC";
    defparam pdp_ram_0_2_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_2_1.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_2_1.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_2_1.CSDECODE_A = "0b000";
    defparam pdp_ram_0_2_1.CSDECODE_B = "0b000";
    defparam pdp_ram_0_2_1.GSR = "ENABLED";
    defparam pdp_ram_0_2_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_1.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_3_0 (.DIA0(Data[12]), .DIA1(Data[13]), .DIA2(Data[14]), 
           .DIA3(Data[15]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wcount_0), .ADA3(wcount_1), .ADA4(wcount_2), 
           .ADA5(wcount_3), .ADA6(wcount_4), .ADA7(wcount_5), .ADA8(wcount_6), 
           .ADA9(wcount_7), .ADA10(wcount_8), .ADA11(wcount_9), .ADA12(wcount_10), 
           .ADA13(wcount_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(Clock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(rcount_0), .ADB3(rcount_1), .ADB4(rcount_2), 
           .ADB5(rcount_3), .ADB6(rcount_4), .ADB7(rcount_5), .ADB8(rcount_6), 
           .ADB9(rcount_7), .ADB10(rcount_8), .ADB11(rcount_9), .ADB12(rcount_10), 
           .ADB13(rcount_11), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(Clock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[12]), .DOB1(Q[13]), .DOB2(Q[14]), .DOB3(Q[15])) /* synthesis MEM_LPC_FILE="fifo_ip.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_3_0.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_3_0.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_3_0.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_3_0.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_3_0.RESETMODE = "SYNC";
    defparam pdp_ram_0_3_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_3_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_3_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_3_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_3_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_3_0.GSR = "ENABLED";
    defparam pdp_ram_0_3_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_0.INIT_DATA = "STATIC";
    FD1P3DX FF_40 (.D(ifcount_0), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_ecp/slfifo_prj/par/gpif_fifo_msb/fifo_ip/fifo_ip.v(337[13] 338[22])
    defparam FF_40.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

