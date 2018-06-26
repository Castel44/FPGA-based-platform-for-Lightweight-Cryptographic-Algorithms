// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 26 00:05:03 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simeck/Simeck_64_128_parallel/Simeck_64_128_parallel.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\current_state_reg[0] ,
    Q,
    \current_state_reg[2] ,
    D,
    \temp_reg_reg[28] ,
    \temp_reg_reg[27] ,
    \current_state_reg[2]_0 ,
    current_state,
    rst_IBUF,
    \FSM_sequential_current_state_reg[0] ,
    \temp_reg_reg[30] ,
    \temp_reg_reg[8] ,
    \temp_reg_reg[16] ,
    \temp_reg_reg[17] ,
    \temp_reg_reg[19] ,
    \temp_reg_reg[24] ,
    \temp_reg_reg[26] ,
    \temp_reg_reg[30]_0 ,
    clk_IBUF_BUFG);
  output \current_state_reg[0] ;
  output [1:0]Q;
  output \current_state_reg[2] ;
  output [7:0]D;
  output \temp_reg_reg[28] ;
  output \temp_reg_reg[27] ;
  output \current_state_reg[2]_0 ;
  input [2:0]current_state;
  input rst_IBUF;
  input \FSM_sequential_current_state_reg[0] ;
  input \temp_reg_reg[30] ;
  input \temp_reg_reg[8] ;
  input \temp_reg_reg[16] ;
  input \temp_reg_reg[17] ;
  input \temp_reg_reg[19] ;
  input \temp_reg_reg[24] ;
  input \temp_reg_reg[26] ;
  input \temp_reg_reg[30]_0 ;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [1:0]Q;
  wire ce;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[1]_i_3_n_0 ;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire [1:0]plusOp;
  wire rst_IBUF;
  wire \temp_reg_reg[16] ;
  wire \temp_reg_reg[17] ;
  wire \temp_reg_reg[19] ;
  wire \temp_reg_reg[24] ;
  wire \temp_reg_reg[26] ;
  wire \temp_reg_reg[27] ;
  wire \temp_reg_reg[28] ;
  wire \temp_reg_reg[30] ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[8] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_internal_value[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(ce));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'hA4)) 
    \cnt_internal_value[1]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\cnt_internal_value[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[1]_i_3_n_0 ),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[1]_i_3_n_0 ),
        .D(plusOp[1]),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0444CCCC)) 
    \current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(current_state[2]),
        .I5(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \current_state[2]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\current_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hDCDDDCDC)) 
    \current_state[2]_i_4 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[16]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[16] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[17]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[17] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[19]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[19] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[24]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[24] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[26]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[26] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[30]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[30]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[3]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[30] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \temp_reg[8]_i_1 
       (.I0(current_state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(current_state[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\temp_reg_reg[8] ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \temp_reg_reg[59]_srl2_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[0]),
        .O(\temp_reg_reg[27] ));
  LUT3 #(
    .INIT(8'h80)) 
    \temp_reg_reg[60]_srl2_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .O(\temp_reg_reg[28] ));
endmodule

module Simeck_64_128_parallel
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    \temp_reg_reg[0] ,
    \temp_reg_reg[30] ,
    \temp_reg_reg[26] ,
    \temp_reg_reg[24] ,
    \temp_reg_reg[19] ,
    \temp_reg_reg[17] ,
    \temp_reg_reg[16] ,
    \temp_reg_reg[8] ,
    \temp_reg_reg[3] ,
    clk_IBUF_BUFG,
    current_state,
    start_IBUF,
    rst_IBUF,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    D,
    Q);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[0] ;
  output \temp_reg_reg[30] ;
  output \temp_reg_reg[26] ;
  output \temp_reg_reg[24] ;
  output \temp_reg_reg[19] ;
  output \temp_reg_reg[17] ;
  output \temp_reg_reg[16] ;
  output \temp_reg_reg[8] ;
  output \temp_reg_reg[3] ;
  input clk_IBUF_BUFG;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \current_state_reg[1]_0 ;
  input \current_state_reg[1]_1 ;
  input \current_state_reg[2]_0 ;
  input \current_state_reg[2]_1 ;
  input [7:0]D;
  input [1:0]Q;

  wire [7:0]D;
  wire INST_LEFT_KEY_REG_n_0;
  wire INST_LEFT_KEY_REG_n_1;
  wire INST_LEFT_KEY_REG_n_10;
  wire INST_LEFT_KEY_REG_n_11;
  wire INST_LEFT_KEY_REG_n_12;
  wire INST_LEFT_KEY_REG_n_13;
  wire INST_LEFT_KEY_REG_n_14;
  wire INST_LEFT_KEY_REG_n_15;
  wire INST_LEFT_KEY_REG_n_16;
  wire INST_LEFT_KEY_REG_n_17;
  wire INST_LEFT_KEY_REG_n_18;
  wire INST_LEFT_KEY_REG_n_19;
  wire INST_LEFT_KEY_REG_n_2;
  wire INST_LEFT_KEY_REG_n_20;
  wire INST_LEFT_KEY_REG_n_21;
  wire INST_LEFT_KEY_REG_n_22;
  wire INST_LEFT_KEY_REG_n_23;
  wire INST_LEFT_KEY_REG_n_24;
  wire INST_LEFT_KEY_REG_n_25;
  wire INST_LEFT_KEY_REG_n_26;
  wire INST_LEFT_KEY_REG_n_27;
  wire INST_LEFT_KEY_REG_n_28;
  wire INST_LEFT_KEY_REG_n_29;
  wire INST_LEFT_KEY_REG_n_3;
  wire INST_LEFT_KEY_REG_n_30;
  wire INST_LEFT_KEY_REG_n_31;
  wire INST_LEFT_KEY_REG_n_32;
  wire INST_LEFT_KEY_REG_n_4;
  wire INST_LEFT_KEY_REG_n_5;
  wire INST_LEFT_KEY_REG_n_6;
  wire INST_LEFT_KEY_REG_n_7;
  wire INST_LEFT_KEY_REG_n_8;
  wire INST_LEFT_KEY_REG_n_9;
  wire INST_RIGHT_KEY_REG_n_0;
  wire INST_RIGHT_KEY_REG_n_33;
  wire INST_RIGHT_KEY_REG_n_34;
  wire INST_RIGHT_KEY_REG_n_35;
  wire INST_RIGHT_KEY_REG_n_36;
  wire INST_RIGHT_KEY_REG_n_37;
  wire INST_RIGHT_KEY_REG_n_38;
  wire INST_RIGHT_KEY_REG_n_39;
  wire INST_RIGHT_KEY_REG_n_40;
  wire INST_RIGHT_KEY_REG_n_41;
  wire INST_RIGHT_KEY_REG_n_42;
  wire INST_RIGHT_KEY_REG_n_43;
  wire INST_RIGHT_KEY_REG_n_44;
  wire INST_RIGHT_KEY_REG_n_45;
  wire INST_RIGHT_KEY_REG_n_46;
  wire INST_RIGHT_KEY_REG_n_47;
  wire INST_RIGHT_KEY_REG_n_48;
  wire INST_RIGHT_KEY_REG_n_49;
  wire INST_RIGHT_KEY_REG_n_50;
  wire INST_RIGHT_KEY_REG_n_51;
  wire INST_RIGHT_KEY_REG_n_52;
  wire INST_RIGHT_KEY_REG_n_53;
  wire INST_RIGHT_KEY_REG_n_54;
  wire INST_RIGHT_KEY_REG_n_55;
  wire INST_RIGHT_KEY_REG_n_56;
  wire INST_RIGHT_KEY_REG_n_57;
  wire INST_RIGHT_KEY_REG_n_58;
  wire INST_RIGHT_KEY_REG_n_59;
  wire INST_RIGHT_KEY_REG_n_60;
  wire INST_RIGHT_KEY_REG_n_61;
  wire INST_RIGHT_KEY_REG_n_62;
  wire INST_RIGHT_KEY_REG_n_63;
  wire INST_SHORT_LFSR_n_2;
  wire INST_SHORT_LFSR_n_3;
  wire INST_SHORT_LFSR_n_4;
  wire KEY_REG_CE;
  wire [31:0]KEY_REG_a_out;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire [5:5]lfsr_parallel_out;
  wire pwropt;
  wire pwropt_1;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg_reg[0] ;
  wire \temp_reg_reg[16] ;
  wire \temp_reg_reg[17] ;
  wire \temp_reg_reg[19] ;
  wire \temp_reg_reg[24] ;
  wire \temp_reg_reg[26] ;
  wire \temp_reg_reg[30] ;
  wire \temp_reg_reg[3] ;
  wire \temp_reg_reg[8] ;

  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_SHORT_LFSR_n_4),
        .Q(current_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_SHORT_LFSR_n_3),
        .Q(current_state_0[1]),
        .R(1'b0));
  parallel_tapped_shift_reg INST_IS_REG
       (.D(D),
        .E(INST_SHORT_LFSR_n_2),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[1]_0 (\current_state_reg[1]_0 ),
        .\current_state_reg[1]_1 (\current_state_reg[1]_1 ),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .out(current_state_0),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[0]_0 (\temp_reg_reg[0] ),
        .\temp_reg_reg[16]_0 (\temp_reg_reg[16] ),
        .\temp_reg_reg[17]_0 (\temp_reg_reg[17] ),
        .\temp_reg_reg[19]_0 (\temp_reg_reg[19] ),
        .\temp_reg_reg[24]_0 (\temp_reg_reg[24] ),
        .\temp_reg_reg[26]_0 (\temp_reg_reg[26] ),
        .\temp_reg_reg[30]_0 (\temp_reg_reg[30] ),
        .\temp_reg_reg[3]_0 (\temp_reg_reg[3] ),
        .\temp_reg_reg[63]_0 (KEY_REG_a_out),
        .\temp_reg_reg[8]_0 (\temp_reg_reg[8] ));
  normal_shift_reg INST_LEFT_KEY_REG
       (.KEY_REG_CE(KEY_REG_CE),
        .Q({INST_LEFT_KEY_REG_n_13,INST_LEFT_KEY_REG_n_14,INST_LEFT_KEY_REG_n_15,INST_LEFT_KEY_REG_n_16,INST_LEFT_KEY_REG_n_17,INST_LEFT_KEY_REG_n_18,INST_LEFT_KEY_REG_n_19,INST_LEFT_KEY_REG_n_20,INST_LEFT_KEY_REG_n_21,INST_LEFT_KEY_REG_n_22,INST_LEFT_KEY_REG_n_23,INST_LEFT_KEY_REG_n_24,INST_LEFT_KEY_REG_n_25,INST_LEFT_KEY_REG_n_26,INST_LEFT_KEY_REG_n_27,INST_LEFT_KEY_REG_n_28,INST_LEFT_KEY_REG_n_29,INST_LEFT_KEY_REG_n_30,INST_LEFT_KEY_REG_n_31,INST_LEFT_KEY_REG_n_32}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state({current_state[2],current_state[0]}),
        .out(current_state_0),
        .\temp_reg_reg[0]_0 (INST_RIGHT_KEY_REG_n_60),
        .\temp_reg_reg[10]_0 (INST_RIGHT_KEY_REG_n_53),
        .\temp_reg_reg[11] (INST_LEFT_KEY_REG_n_8),
        .\temp_reg_reg[11]_0 (INST_RIGHT_KEY_REG_n_52),
        .\temp_reg_reg[12] (INST_LEFT_KEY_REG_n_7),
        .\temp_reg_reg[12]_0 (INST_RIGHT_KEY_REG_n_37),
        .\temp_reg_reg[13]_0 (INST_RIGHT_KEY_REG_n_51),
        .\temp_reg_reg[16]_0 (INST_RIGHT_KEY_REG_n_50),
        .\temp_reg_reg[17] (INST_LEFT_KEY_REG_n_6),
        .\temp_reg_reg[17]_0 (INST_RIGHT_KEY_REG_n_49),
        .\temp_reg_reg[18]_0 (INST_RIGHT_KEY_REG_n_48),
        .\temp_reg_reg[19] (INST_LEFT_KEY_REG_n_5),
        .\temp_reg_reg[19]_0 (INST_RIGHT_KEY_REG_n_40),
        .\temp_reg_reg[1]_0 (INST_RIGHT_KEY_REG_n_59),
        .\temp_reg_reg[1]_1 (INST_RIGHT_KEY_REG_n_62),
        .\temp_reg_reg[20] (INST_LEFT_KEY_REG_n_4),
        .\temp_reg_reg[20]_0 (INST_RIGHT_KEY_REG_n_41),
        .\temp_reg_reg[21]_0 (INST_RIGHT_KEY_REG_n_47),
        .\temp_reg_reg[24] (INST_LEFT_KEY_REG_n_3),
        .\temp_reg_reg[24]_0 (INST_RIGHT_KEY_REG_n_46),
        .\temp_reg_reg[25] (INST_LEFT_KEY_REG_n_2),
        .\temp_reg_reg[25]_0 (INST_RIGHT_KEY_REG_n_45),
        .\temp_reg_reg[27] (INST_LEFT_KEY_REG_n_1),
        .\temp_reg_reg[27]_0 (INST_RIGHT_KEY_REG_n_63),
        .\temp_reg_reg[28] (INST_LEFT_KEY_REG_n_0),
        .\temp_reg_reg[2]_0 (INST_RIGHT_KEY_REG_n_58),
        .\temp_reg_reg[2]_1 (INST_RIGHT_KEY_REG_n_61),
        .\temp_reg_reg[31]_0 (INST_RIGHT_KEY_REG_n_44),
        .\temp_reg_reg[35] (INST_RIGHT_KEY_REG_n_0),
        .\temp_reg_reg[36] (INST_RIGHT_KEY_REG_n_33),
        .\temp_reg_reg[3] (INST_LEFT_KEY_REG_n_11),
        .\temp_reg_reg[3]_0 (INST_RIGHT_KEY_REG_n_34),
        .\temp_reg_reg[43] (INST_RIGHT_KEY_REG_n_35),
        .\temp_reg_reg[44] (INST_RIGHT_KEY_REG_n_36),
        .\temp_reg_reg[4] (INST_LEFT_KEY_REG_n_10),
        .\temp_reg_reg[4]_0 (INST_RIGHT_KEY_REG_n_57),
        .\temp_reg_reg[51] (INST_RIGHT_KEY_REG_n_38),
        .\temp_reg_reg[52] (INST_RIGHT_KEY_REG_n_39),
        .\temp_reg_reg[59] (INST_RIGHT_KEY_REG_n_42),
        .\temp_reg_reg[5]_0 (INST_RIGHT_KEY_REG_n_56),
        .\temp_reg_reg[60] (INST_RIGHT_KEY_REG_n_43),
        .\temp_reg_reg[8] (INST_LEFT_KEY_REG_n_9),
        .\temp_reg_reg[8]_0 (INST_LEFT_KEY_REG_n_12),
        .\temp_reg_reg[8]_1 (INST_RIGHT_KEY_REG_n_55),
        .\temp_reg_reg[9]_0 (INST_RIGHT_KEY_REG_n_54));
  parallel_tapped_shift_reg_0 INST_RIGHT_KEY_REG
       (.D({INST_LEFT_KEY_REG_n_13,INST_LEFT_KEY_REG_n_14,INST_LEFT_KEY_REG_n_15,INST_LEFT_KEY_REG_n_16,INST_LEFT_KEY_REG_n_17,INST_LEFT_KEY_REG_n_18,INST_LEFT_KEY_REG_n_19,INST_LEFT_KEY_REG_n_20,INST_LEFT_KEY_REG_n_21,INST_LEFT_KEY_REG_n_22,INST_LEFT_KEY_REG_n_23,INST_LEFT_KEY_REG_n_24,INST_LEFT_KEY_REG_n_25,INST_LEFT_KEY_REG_n_26,INST_LEFT_KEY_REG_n_27,INST_LEFT_KEY_REG_n_28,INST_LEFT_KEY_REG_n_29,INST_LEFT_KEY_REG_n_30,INST_LEFT_KEY_REG_n_31,INST_LEFT_KEY_REG_n_32}),
        .\FSM_sequential_current_state_reg[0] (INST_LEFT_KEY_REG_n_0),
        .\FSM_sequential_current_state_reg[0]_0 (INST_LEFT_KEY_REG_n_1),
        .\FSM_sequential_current_state_reg[0]_1 (INST_LEFT_KEY_REG_n_2),
        .\FSM_sequential_current_state_reg[0]_10 (INST_LEFT_KEY_REG_n_11),
        .\FSM_sequential_current_state_reg[0]_11 (\temp_reg_reg[0] ),
        .\FSM_sequential_current_state_reg[0]_2 (INST_LEFT_KEY_REG_n_3),
        .\FSM_sequential_current_state_reg[0]_3 (INST_LEFT_KEY_REG_n_4),
        .\FSM_sequential_current_state_reg[0]_4 (INST_LEFT_KEY_REG_n_5),
        .\FSM_sequential_current_state_reg[0]_5 (INST_LEFT_KEY_REG_n_6),
        .\FSM_sequential_current_state_reg[0]_6 (INST_LEFT_KEY_REG_n_7),
        .\FSM_sequential_current_state_reg[0]_7 (INST_LEFT_KEY_REG_n_8),
        .\FSM_sequential_current_state_reg[0]_8 (INST_LEFT_KEY_REG_n_9),
        .\FSM_sequential_current_state_reg[0]_9 (INST_LEFT_KEY_REG_n_10),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(KEY_REG_a_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (\current_state_reg[2]_0 ),
        .\current_state_reg[2]_0 (\current_state_reg[2]_1 ),
        .\current_state_reg[2]_1 (INST_LEFT_KEY_REG_n_12),
        .\lfsr_internal_reg[5] (lfsr_parallel_out),
        .pwropt(INST_SHORT_LFSR_n_4),
        .pwropt_1(INST_SHORT_LFSR_n_3),
        .pwropt_2(pwropt),
        .pwropt_3(pwropt_1),
        .\temp_reg_reg[0]_0 (INST_RIGHT_KEY_REG_n_63),
        .\temp_reg_reg[10]_0 (INST_RIGHT_KEY_REG_n_56),
        .\temp_reg_reg[11]_0 (INST_RIGHT_KEY_REG_n_35),
        .\temp_reg_reg[12]_0 (INST_RIGHT_KEY_REG_n_36),
        .\temp_reg_reg[13]_0 (INST_RIGHT_KEY_REG_n_55),
        .\temp_reg_reg[14]_0 (INST_RIGHT_KEY_REG_n_54),
        .\temp_reg_reg[15]_0 (INST_RIGHT_KEY_REG_n_53),
        .\temp_reg_reg[16]_0 (INST_RIGHT_KEY_REG_n_52),
        .\temp_reg_reg[17]_0 (INST_RIGHT_KEY_REG_n_37),
        .\temp_reg_reg[18]_0 (INST_RIGHT_KEY_REG_n_51),
        .\temp_reg_reg[19]_0 (INST_RIGHT_KEY_REG_n_38),
        .\temp_reg_reg[1]_0 (INST_RIGHT_KEY_REG_n_62),
        .\temp_reg_reg[20]_0 (INST_RIGHT_KEY_REG_n_39),
        .\temp_reg_reg[21]_0 (INST_RIGHT_KEY_REG_n_50),
        .\temp_reg_reg[22]_0 (INST_RIGHT_KEY_REG_n_49),
        .\temp_reg_reg[23]_0 (INST_RIGHT_KEY_REG_n_48),
        .\temp_reg_reg[24]_0 (INST_RIGHT_KEY_REG_n_40),
        .\temp_reg_reg[25]_0 (INST_RIGHT_KEY_REG_n_41),
        .\temp_reg_reg[26]_0 (INST_RIGHT_KEY_REG_n_47),
        .\temp_reg_reg[27]_0 (INST_RIGHT_KEY_REG_n_42),
        .\temp_reg_reg[28]_0 (INST_RIGHT_KEY_REG_n_43),
        .\temp_reg_reg[29]_0 (INST_RIGHT_KEY_REG_n_46),
        .\temp_reg_reg[2]_0 (INST_RIGHT_KEY_REG_n_61),
        .\temp_reg_reg[30]_0 (INST_RIGHT_KEY_REG_n_45),
        .\temp_reg_reg[31]_0 (INST_RIGHT_KEY_REG_n_44),
        .\temp_reg_reg[3]_0 (INST_RIGHT_KEY_REG_n_0),
        .\temp_reg_reg[4]_0 (INST_RIGHT_KEY_REG_n_33),
        .\temp_reg_reg[5]_0 (INST_RIGHT_KEY_REG_n_60),
        .\temp_reg_reg[6]_0 (INST_RIGHT_KEY_REG_n_59),
        .\temp_reg_reg[7]_0 (INST_RIGHT_KEY_REG_n_58),
        .\temp_reg_reg[8]_0 (INST_RIGHT_KEY_REG_n_34),
        .\temp_reg_reg[9]_0 (INST_RIGHT_KEY_REG_n_57));
  lfsr INST_SHORT_LFSR
       (.E(INST_SHORT_LFSR_n_2),
        .\FSM_sequential_current_state_reg[0] (INST_SHORT_LFSR_n_4),
        .\FSM_sequential_current_state_reg[1] (INST_SHORT_LFSR_n_3),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(lfsr_parallel_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .out(current_state_0),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* Datapath = "32" *) (* ECO_CHECKSUM = "38a063d9" *) (* POWER_OPT_BRAM_CDC = "0" *) 
(* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Testing_IP
   (start,
    clk,
    rst,
    led_out);
  input start;
  input clk;
  input rst;
  output led_out;

  wire INST_CNT_n_0;
  wire INST_CNT_n_12;
  wire INST_CNT_n_13;
  wire INST_CNT_n_14;
  wire INST_CNT_n_3;
  wire Simeck_DUT_n_0;
  wire Simeck_DUT_n_1;
  wire Simeck_DUT_n_10;
  wire Simeck_DUT_n_2;
  wire Simeck_DUT_n_3;
  wire Simeck_DUT_n_4;
  wire Simeck_DUT_n_5;
  wire Simeck_DUT_n_6;
  wire Simeck_DUT_n_7;
  wire Simeck_DUT_n_8;
  wire Simeck_DUT_n_9;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]cnt_internal_value;
  wire [2:0]current_state;
  wire led_out;
  wire led_out_OBUF;
  wire [30:3]p_0_in;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  CNT INST_CNT
       (.D({p_0_in[30],p_0_in[26],p_0_in[24],p_0_in[19],p_0_in[17:16],p_0_in[8],p_0_in[3]}),
        .\FSM_sequential_current_state_reg[0] (Simeck_DUT_n_2),
        .Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_0),
        .\current_state_reg[2] (INST_CNT_n_3),
        .\current_state_reg[2]_0 (INST_CNT_n_14),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[16] (Simeck_DUT_n_8),
        .\temp_reg_reg[17] (Simeck_DUT_n_7),
        .\temp_reg_reg[19] (Simeck_DUT_n_6),
        .\temp_reg_reg[24] (Simeck_DUT_n_5),
        .\temp_reg_reg[26] (Simeck_DUT_n_4),
        .\temp_reg_reg[27] (INST_CNT_n_13),
        .\temp_reg_reg[28] (INST_CNT_n_12),
        .\temp_reg_reg[30] (Simeck_DUT_n_10),
        .\temp_reg_reg[30]_0 (Simeck_DUT_n_3),
        .\temp_reg_reg[8] (Simeck_DUT_n_9));
  Simeck_64_128_parallel Simeck_DUT
       (.D({p_0_in[30],p_0_in[26],p_0_in[24],p_0_in[19],p_0_in[17:16],p_0_in[8],p_0_in[3]}),
        .Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[1] (Simeck_DUT_n_0),
        .\current_state_reg[1]_0 (INST_CNT_n_14),
        .\current_state_reg[1]_1 (INST_CNT_n_3),
        .\current_state_reg[2] (Simeck_DUT_n_1),
        .\current_state_reg[2]_0 (INST_CNT_n_13),
        .\current_state_reg[2]_1 (INST_CNT_n_12),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[0] (Simeck_DUT_n_2),
        .\temp_reg_reg[16] (Simeck_DUT_n_8),
        .\temp_reg_reg[17] (Simeck_DUT_n_7),
        .\temp_reg_reg[19] (Simeck_DUT_n_6),
        .\temp_reg_reg[24] (Simeck_DUT_n_5),
        .\temp_reg_reg[26] (Simeck_DUT_n_4),
        .\temp_reg_reg[30] (Simeck_DUT_n_3),
        .\temp_reg_reg[3] (Simeck_DUT_n_10),
        .\temp_reg_reg[8] (Simeck_DUT_n_9));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_0),
        .Q(current_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simeck_DUT_n_0),
        .Q(current_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simeck_DUT_n_1),
        .Q(current_state[2]),
        .R(1'b0));
  OBUF led_out_OBUF_inst
       (.I(led_out_OBUF),
        .O(led_out));
  LUT2 #(
    .INIT(4'h8)) 
    led_out_OBUF_inst_i_1
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(led_out_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

module lfsr
   (Q,
    KEY_REG_CE,
    E,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    out,
    current_state,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1);
  output [0:0]Q;
  output KEY_REG_CE;
  output [0:0]E;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  input [1:0]out;
  input [2:0]current_state;
  input clk_IBUF_BUFG;
  output pwropt;
  output pwropt_1;

  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire KEY_REG_CE;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire lfsr_ce;
  wire \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ;
  wire [4:0]lfsr_parallel_out;
  wire lfsr_rst;
  wire [1:0]out;
  wire [0:0]p_3_out;
  wire \temp_reg[63]_i_2__0_n_0 ;
  wire \temp_reg[63]_i_2_n_0 ;
  wire \xlnx_opt_FSM_sequential_current_state_reg[1] ;

  assign pwropt = lfsr_parallel_out[0];
  assign pwropt_1 = lfsr_rst;
  LUT6 #(
    .INIT(64'hBBBBBBBBBB00BBAB)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(KEY_REG_CE),
        .I2(lfsr_rst),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[1]),
        .I3(out[1]),
        .I4(lfsr_parallel_out[4]),
        .I5(Q),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(lfsr_parallel_out[2]),
        .I1(lfsr_parallel_out[0]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[4]),
        .O(p_3_out));
  LUT2 #(
    .INIT(4'h2)) 
    \lfsr_internal[5]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(lfsr_rst));
  LUT2 #(
    .INIT(4'hB)) 
    \lfsr_internal[5]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .O(lfsr_ce));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(p_3_out),
        .Q(lfsr_parallel_out[0]),
        .S(lfsr_rst));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]),
        .S(lfsr_rst));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(lfsr_parallel_out[1]),
        .Q(lfsr_parallel_out[2]),
        .S(lfsr_rst));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]),
        .S(lfsr_rst));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(lfsr_parallel_out[3]),
        .Q(lfsr_parallel_out[4]),
        .S(lfsr_rst));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(lfsr_parallel_out[4]),
        .Q(Q),
        .S(lfsr_rst));
  LUT6 #(
    .INIT(64'h5555555555545555)) 
    \temp_reg[63]_i_1 
       (.I0(out[0]),
        .I1(lfsr_parallel_out[0]),
        .I2(lfsr_parallel_out[1]),
        .I3(lfsr_parallel_out[2]),
        .I4(\temp_reg[63]_i_2__0_n_0 ),
        .I5(out[1]),
        .O(KEY_REG_CE));
  LUT5 #(
    .INIT(32'hCCDCDDDD)) 
    \temp_reg[63]_i_1__0 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[3]),
        .I4(\temp_reg[63]_i_2_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'h0008)) 
    \temp_reg[63]_i_2 
       (.I0(lfsr_parallel_out[4]),
        .I1(Q),
        .I2(lfsr_parallel_out[1]),
        .I3(lfsr_parallel_out[0]),
        .O(\temp_reg[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \temp_reg[63]_i_2__0 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[4]),
        .I2(Q),
        .O(\temp_reg[63]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hD555555555555555)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[1]_i_1 
       (.I0(out[1]),
        .I1(lfsr_parallel_out[0]),
        .I2(lfsr_parallel_out[2]),
        .I3(out[0]),
        .I4(lfsr_parallel_out[1]),
        .I5(\temp_reg[63]_i_2__0_n_0 ),
        .O(\xlnx_opt_FSM_sequential_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h00000004FFFFF0FF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[1]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\xlnx_opt_FSM_sequential_current_state_reg[1] ),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT3 #(
    .INIT(8'hD0)) 
    \xlnx_opt_LUT_lfsr_internal_reg[0]_CE_cooolgate_en_gate_67 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .I2(lfsr_ce),
        .O(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_4 ));
endmodule

module normal_shift_reg
   (\temp_reg_reg[28] ,
    \temp_reg_reg[27] ,
    \temp_reg_reg[25] ,
    \temp_reg_reg[24] ,
    \temp_reg_reg[20] ,
    \temp_reg_reg[19] ,
    \temp_reg_reg[17] ,
    \temp_reg_reg[12] ,
    \temp_reg_reg[11] ,
    \temp_reg_reg[8] ,
    \temp_reg_reg[4] ,
    \temp_reg_reg[3] ,
    \temp_reg_reg[8]_0 ,
    Q,
    KEY_REG_CE,
    \temp_reg_reg[60] ,
    clk_IBUF_BUFG,
    \temp_reg_reg[59] ,
    \temp_reg_reg[20]_0 ,
    \temp_reg_reg[19]_0 ,
    \temp_reg_reg[52] ,
    \temp_reg_reg[51] ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[44] ,
    \temp_reg_reg[43] ,
    \temp_reg_reg[3]_0 ,
    \temp_reg_reg[36] ,
    \temp_reg_reg[35] ,
    current_state,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[24]_0 ,
    \temp_reg_reg[21]_0 ,
    \temp_reg_reg[18]_0 ,
    \temp_reg_reg[17]_0 ,
    \temp_reg_reg[16]_0 ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[11]_0 ,
    \temp_reg_reg[10]_0 ,
    \temp_reg_reg[9]_0 ,
    \temp_reg_reg[8]_1 ,
    \temp_reg_reg[5]_0 ,
    \temp_reg_reg[4]_0 ,
    \temp_reg_reg[2]_0 ,
    \temp_reg_reg[1]_0 ,
    \temp_reg_reg[0]_0 ,
    \temp_reg_reg[2]_1 ,
    \temp_reg_reg[1]_1 ,
    \temp_reg_reg[27]_0 ,
    out);
  output \temp_reg_reg[28] ;
  output \temp_reg_reg[27] ;
  output \temp_reg_reg[25] ;
  output \temp_reg_reg[24] ;
  output \temp_reg_reg[20] ;
  output \temp_reg_reg[19] ;
  output \temp_reg_reg[17] ;
  output \temp_reg_reg[12] ;
  output \temp_reg_reg[11] ;
  output \temp_reg_reg[8] ;
  output \temp_reg_reg[4] ;
  output \temp_reg_reg[3] ;
  output \temp_reg_reg[8]_0 ;
  output [19:0]Q;
  input KEY_REG_CE;
  input \temp_reg_reg[60] ;
  input clk_IBUF_BUFG;
  input \temp_reg_reg[59] ;
  input \temp_reg_reg[20]_0 ;
  input \temp_reg_reg[19]_0 ;
  input \temp_reg_reg[52] ;
  input \temp_reg_reg[51] ;
  input \temp_reg_reg[12]_0 ;
  input \temp_reg_reg[44] ;
  input \temp_reg_reg[43] ;
  input \temp_reg_reg[3]_0 ;
  input \temp_reg_reg[36] ;
  input \temp_reg_reg[35] ;
  input [1:0]current_state;
  input \temp_reg_reg[31]_0 ;
  input \temp_reg_reg[25]_0 ;
  input \temp_reg_reg[24]_0 ;
  input \temp_reg_reg[21]_0 ;
  input \temp_reg_reg[18]_0 ;
  input \temp_reg_reg[17]_0 ;
  input \temp_reg_reg[16]_0 ;
  input \temp_reg_reg[13]_0 ;
  input \temp_reg_reg[11]_0 ;
  input \temp_reg_reg[10]_0 ;
  input \temp_reg_reg[9]_0 ;
  input \temp_reg_reg[8]_1 ;
  input \temp_reg_reg[5]_0 ;
  input \temp_reg_reg[4]_0 ;
  input \temp_reg_reg[2]_0 ;
  input \temp_reg_reg[1]_0 ;
  input \temp_reg_reg[0]_0 ;
  input \temp_reg_reg[2]_1 ;
  input \temp_reg_reg[1]_1 ;
  input \temp_reg_reg[27]_0 ;
  input [1:0]out;

  wire KEY_REG_CE;
  wire [19:0]Q;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire [1:0]out;
  wire \temp_reg[31]_i_1_n_0 ;
  wire \temp_reg_reg[0]_0 ;
  wire \temp_reg_reg[10]_0 ;
  wire \temp_reg_reg[11] ;
  wire \temp_reg_reg[11]_0 ;
  wire \temp_reg_reg[12] ;
  wire \temp_reg_reg[12]_0 ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[16]_0 ;
  wire \temp_reg_reg[17] ;
  wire \temp_reg_reg[17]_0 ;
  wire \temp_reg_reg[18]_0 ;
  wire \temp_reg_reg[19] ;
  wire \temp_reg_reg[19]_0 ;
  wire \temp_reg_reg[1]_0 ;
  wire \temp_reg_reg[1]_1 ;
  wire \temp_reg_reg[20] ;
  wire \temp_reg_reg[20]_0 ;
  wire \temp_reg_reg[21]_0 ;
  wire \temp_reg_reg[24] ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[25] ;
  wire \temp_reg_reg[25]_0 ;
  wire \temp_reg_reg[27] ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[28] ;
  wire \temp_reg_reg[2]_0 ;
  wire \temp_reg_reg[2]_1 ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[35] ;
  wire \temp_reg_reg[36] ;
  wire \temp_reg_reg[3] ;
  wire \temp_reg_reg[3]_0 ;
  wire \temp_reg_reg[43] ;
  wire \temp_reg_reg[44] ;
  wire \temp_reg_reg[4] ;
  wire \temp_reg_reg[4]_0 ;
  wire \temp_reg_reg[51] ;
  wire \temp_reg_reg[52] ;
  wire \temp_reg_reg[59] ;
  wire \temp_reg_reg[5]_0 ;
  wire \temp_reg_reg[60] ;
  wire \temp_reg_reg[8] ;
  wire \temp_reg_reg[8]_0 ;
  wire \temp_reg_reg[8]_1 ;
  wire \temp_reg_reg[9]_0 ;
  wire \temp_reg_reg_n_0_[0] ;
  wire \temp_reg_reg_n_0_[10] ;
  wire \temp_reg_reg_n_0_[13] ;
  wire \temp_reg_reg_n_0_[14] ;
  wire \temp_reg_reg_n_0_[15] ;
  wire \temp_reg_reg_n_0_[16] ;
  wire \temp_reg_reg_n_0_[18] ;
  wire \temp_reg_reg_n_0_[1] ;
  wire \temp_reg_reg_n_0_[21] ;
  wire \temp_reg_reg_n_0_[22] ;
  wire \temp_reg_reg_n_0_[23] ;
  wire \temp_reg_reg_n_0_[26] ;
  wire \temp_reg_reg_n_0_[29] ;
  wire \temp_reg_reg_n_0_[2] ;
  wire \temp_reg_reg_n_0_[30] ;
  wire \temp_reg_reg_n_0_[31] ;
  wire \temp_reg_reg_n_0_[5] ;
  wire \temp_reg_reg_n_0_[6] ;
  wire \temp_reg_reg_n_0_[7] ;
  wire \temp_reg_reg_n_0_[9] ;

  LUT3 #(
    .INIT(8'hD0)) 
    \temp_reg[31]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(KEY_REG_CE),
        .O(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[27]_0 ),
        .Q(\temp_reg_reg_n_0_[0] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[5]_0 ),
        .Q(\temp_reg_reg_n_0_[10] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[8]_1 ),
        .Q(\temp_reg_reg_n_0_[13] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[9]_0 ),
        .Q(\temp_reg_reg_n_0_[14] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[10]_0 ),
        .Q(\temp_reg_reg_n_0_[15] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[11]_0 ),
        .Q(\temp_reg_reg_n_0_[16] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[13]_0 ),
        .Q(\temp_reg_reg_n_0_[18] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_1 ),
        .Q(\temp_reg_reg_n_0_[1] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[16]_0 ),
        .Q(\temp_reg_reg_n_0_[21] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[17]_0 ),
        .Q(\temp_reg_reg_n_0_[22] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[18]_0 ),
        .Q(\temp_reg_reg_n_0_[23] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[21]_0 ),
        .Q(\temp_reg_reg_n_0_[26] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[24]_0 ),
        .Q(\temp_reg_reg_n_0_[29] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[2]_1 ),
        .Q(\temp_reg_reg_n_0_[2] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[25]_0 ),
        .Q(\temp_reg_reg_n_0_[30] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31]_0 ),
        .Q(\temp_reg_reg_n_0_[31] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[35]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[35]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[35] ),
        .Q(\temp_reg_reg[3] ));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[36]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[36]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[36] ),
        .Q(\temp_reg_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[5] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[6] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[7] ),
        .Q(Q[5]),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[40]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[40]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[3]_0 ),
        .Q(\temp_reg_reg[8] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[9] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[10] ),
        .Q(Q[7]),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[43]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[43]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[43] ),
        .Q(\temp_reg_reg[11] ));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[44]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[44]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[44] ),
        .Q(\temp_reg_reg[12] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[13] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[14] ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[15] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[16] ),
        .Q(Q[11]),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[49]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[49]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[12]_0 ),
        .Q(\temp_reg_reg[17] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[18] ),
        .Q(Q[12]),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[51]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[51]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[51] ),
        .Q(\temp_reg_reg[19] ));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[52]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[52]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[52] ),
        .Q(\temp_reg_reg[20] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[21] ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[22] ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[23] ),
        .Q(Q[15]),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[56]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[56]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[19]_0 ),
        .Q(\temp_reg_reg[24] ));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[57]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[57]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[20]_0 ),
        .Q(\temp_reg_reg[25] ));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_reg_reg[57]_srl2_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\temp_reg_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[26] ),
        .Q(Q[16]),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[59]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[59]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[59] ),
        .Q(\temp_reg_reg[27] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[0]_0 ),
        .Q(\temp_reg_reg_n_0_[5] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[60]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[60]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[60] ),
        .Q(\temp_reg_reg[28] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[29] ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[30] ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[31] ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_0 ),
        .Q(\temp_reg_reg_n_0_[6] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[2]_0 ),
        .Q(\temp_reg_reg_n_0_[7] ),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[4]_0 ),
        .Q(\temp_reg_reg_n_0_[9] ),
        .R(\temp_reg[31]_i_1_n_0 ));
endmodule

module parallel_tapped_shift_reg
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    \temp_reg_reg[0]_0 ,
    \temp_reg_reg[30]_0 ,
    \temp_reg_reg[26]_0 ,
    \temp_reg_reg[24]_0 ,
    \temp_reg_reg[19]_0 ,
    \temp_reg_reg[17]_0 ,
    \temp_reg_reg[16]_0 ,
    \temp_reg_reg[8]_0 ,
    \temp_reg_reg[3]_0 ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    Q,
    out,
    \temp_reg_reg[63]_0 ,
    E,
    clk_IBUF_BUFG,
    D);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[0]_0 ;
  output \temp_reg_reg[30]_0 ;
  output \temp_reg_reg[26]_0 ;
  output \temp_reg_reg[24]_0 ;
  output \temp_reg_reg[19]_0 ;
  output \temp_reg_reg[17]_0 ;
  output \temp_reg_reg[16]_0 ;
  output \temp_reg_reg[8]_0 ;
  output \temp_reg_reg[3]_0 ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \current_state_reg[1]_0 ;
  input \current_state_reg[1]_1 ;
  input [1:0]Q;
  input [1:0]out;
  input [31:0]\temp_reg_reg[63]_0 ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [31:0]IS_left_reg_out;
  wire [31:0]IS_right_reg_out;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire \current_state[2]_i_12_n_0 ;
  wire \current_state[2]_i_13_n_0 ;
  wire \current_state[2]_i_14_n_0 ;
  wire \current_state[2]_i_15_n_0 ;
  wire \current_state[2]_i_16_n_0 ;
  wire \current_state[2]_i_17_n_0 ;
  wire \current_state[2]_i_20_n_0 ;
  wire \current_state[2]_i_22_n_0 ;
  wire \current_state[2]_i_23_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_6_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[2] ;
  wire [1:0]out;
  wire [29:2]p_0_in;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg[0]_i_1_n_0 ;
  wire \temp_reg[10]_i_1_n_0 ;
  wire \temp_reg[12]_i_1_n_0 ;
  wire \temp_reg[15]_i_1_n_0 ;
  wire \temp_reg[18]_i_1_n_0 ;
  wire \temp_reg[18]_i_2_n_0 ;
  wire \temp_reg[1]_i_1_n_0 ;
  wire \temp_reg[20]_i_1_n_0 ;
  wire \temp_reg[23]_i_1_n_0 ;
  wire \temp_reg[25]_i_1_n_0 ;
  wire \temp_reg[27]_i_1_n_0 ;
  wire \temp_reg[28]_i_1_n_0 ;
  wire \temp_reg[31]_i_1_n_0 ;
  wire \temp_reg[31]_i_2_n_0 ;
  wire \temp_reg[4]_i_1_n_0 ;
  wire \temp_reg[7]_i_1_n_0 ;
  wire \temp_reg[9]_i_1_n_0 ;
  wire \temp_reg_reg[0]_0 ;
  wire \temp_reg_reg[16]_0 ;
  wire \temp_reg_reg[17]_0 ;
  wire \temp_reg_reg[19]_0 ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[26]_0 ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[3]_0 ;
  wire [31:0]\temp_reg_reg[63]_0 ;
  wire \temp_reg_reg[8]_0 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0_1 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0_2 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0_3 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0_4 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0_5 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0_6 ;
  wire \xlnx_opt_current_state[2]_i_3_n_0_7 ;
  wire \xlnx_opt_p_0_in[11] ;
  wire \xlnx_opt_p_0_in[13] ;
  wire \xlnx_opt_p_0_in[14] ;
  wire \xlnx_opt_p_0_in[21] ;
  wire \xlnx_opt_p_0_in[22] ;
  wire \xlnx_opt_p_0_in[29] ;
  wire \xlnx_opt_p_0_in[2] ;
  wire \xlnx_opt_p_0_in[5] ;
  wire \xlnx_opt_p_0_in[6] ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8AAA)) 
    \current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(start_IBUF),
        .I4(\current_state[2]_i_3_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000010111010)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg[1]_0 ),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\current_state_reg[1]_1 ),
        .I3(\current_state[2]_i_5_n_0 ),
        .I4(\current_state[2]_i_6_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[2]_i_12 
       (.I0(IS_right_reg_out[24]),
        .I1(IS_right_reg_out[4]),
        .O(\current_state[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \current_state[2]_i_13 
       (.I0(IS_right_reg_out[12]),
        .I1(IS_right_reg_out[25]),
        .I2(IS_right_reg_out[14]),
        .I3(IS_right_reg_out[9]),
        .O(\current_state[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \current_state[2]_i_14 
       (.I0(IS_right_reg_out[23]),
        .I1(IS_right_reg_out[13]),
        .I2(current_state[0]),
        .I3(IS_right_reg_out[2]),
        .I4(\current_state[2]_i_22_n_0 ),
        .O(\current_state[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \current_state[2]_i_15 
       (.I0(IS_right_reg_out[18]),
        .I1(IS_right_reg_out[17]),
        .I2(IS_right_reg_out[6]),
        .I3(current_state[1]),
        .I4(\current_state[2]_i_23_n_0 ),
        .O(\current_state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \current_state[2]_i_16 
       (.I0(IS_right_reg_out[8]),
        .I1(IS_right_reg_out[26]),
        .I2(IS_right_reg_out[3]),
        .I3(IS_right_reg_out[20]),
        .O(\current_state[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \current_state[2]_i_17 
       (.I0(IS_right_reg_out[19]),
        .I1(IS_right_reg_out[16]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\current_state[2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \current_state[2]_i_20 
       (.I0(IS_right_reg_out[12]),
        .I1(IS_right_reg_out[1]),
        .I2(IS_right_reg_out[9]),
        .I3(IS_right_reg_out[25]),
        .O(\current_state[2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \current_state[2]_i_22 
       (.I0(IS_right_reg_out[30]),
        .I1(IS_right_reg_out[0]),
        .I2(IS_right_reg_out[1]),
        .I3(IS_right_reg_out[15]),
        .O(\current_state[2]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \current_state[2]_i_23 
       (.I0(IS_right_reg_out[7]),
        .I1(IS_right_reg_out[28]),
        .I2(IS_right_reg_out[11]),
        .I3(IS_right_reg_out[22]),
        .O(\current_state[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \current_state[2]_i_5 
       (.I0(IS_right_reg_out[29]),
        .I1(IS_right_reg_out[31]),
        .I2(\current_state[2]_i_12_n_0 ),
        .I3(\current_state[2]_i_13_n_0 ),
        .I4(\current_state[2]_i_14_n_0 ),
        .I5(\current_state[2]_i_15_n_0 ),
        .O(\current_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_state[2]_i_6 
       (.I0(\current_state[2]_i_16_n_0 ),
        .I1(IS_right_reg_out[21]),
        .I2(IS_right_reg_out[27]),
        .I3(IS_right_reg_out[5]),
        .I4(IS_right_reg_out[10]),
        .I5(\current_state[2]_i_17_n_0 ),
        .O(\current_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg_reg[0]_0 ),
        .I1(IS_left_reg_out[31]),
        .I2(\temp_reg_reg[63]_0 [0]),
        .I3(IS_right_reg_out[0]),
        .I4(IS_left_reg_out[0]),
        .I5(IS_left_reg_out[27]),
        .O(\temp_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[10]_i_1 
       (.I0(\temp_reg_reg[0]_0 ),
        .I1(IS_left_reg_out[9]),
        .I2(\temp_reg_reg[63]_0 [10]),
        .I3(IS_right_reg_out[10]),
        .I4(IS_left_reg_out[5]),
        .I5(IS_left_reg_out[10]),
        .O(\temp_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[12]_i_1 
       (.I0(IS_left_reg_out[12]),
        .I1(IS_left_reg_out[7]),
        .I2(IS_right_reg_out[12]),
        .I3(\temp_reg_reg[63]_0 [12]),
        .I4(IS_left_reg_out[11]),
        .O(\temp_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[15]_i_1 
       (.I0(IS_left_reg_out[15]),
        .I1(IS_left_reg_out[10]),
        .I2(IS_right_reg_out[15]),
        .I3(\temp_reg_reg[63]_0 [15]),
        .I4(IS_left_reg_out[14]),
        .O(\temp_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[16]_i_2 
       (.I0(IS_left_reg_out[16]),
        .I1(IS_left_reg_out[11]),
        .I2(IS_right_reg_out[16]),
        .I3(\temp_reg_reg[63]_0 [16]),
        .I4(IS_left_reg_out[15]),
        .O(\temp_reg_reg[16]_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[17]_i_2 
       (.I0(IS_left_reg_out[17]),
        .I1(IS_left_reg_out[12]),
        .I2(IS_right_reg_out[17]),
        .I3(\temp_reg_reg[63]_0 [17]),
        .I4(IS_left_reg_out[16]),
        .O(\temp_reg_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \temp_reg[18]_i_1 
       (.I0(\temp_reg_reg[0]_0 ),
        .I1(Q[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(Q[0]),
        .I5(E),
        .O(\temp_reg[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[18]_i_2 
       (.I0(\temp_reg_reg[0]_0 ),
        .I1(IS_left_reg_out[17]),
        .I2(\temp_reg_reg[63]_0 [18]),
        .I3(IS_right_reg_out[18]),
        .I4(IS_left_reg_out[13]),
        .I5(IS_left_reg_out[18]),
        .O(\temp_reg[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[19]_i_2 
       (.I0(IS_left_reg_out[19]),
        .I1(IS_left_reg_out[14]),
        .I2(IS_right_reg_out[19]),
        .I3(\temp_reg_reg[63]_0 [19]),
        .I4(IS_left_reg_out[18]),
        .O(\temp_reg_reg[19]_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[1]_i_1 
       (.I0(IS_left_reg_out[28]),
        .I1(IS_left_reg_out[1]),
        .I2(IS_right_reg_out[1]),
        .I3(\temp_reg_reg[63]_0 [1]),
        .I4(IS_left_reg_out[0]),
        .O(\temp_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[20]_i_1 
       (.I0(IS_left_reg_out[20]),
        .I1(IS_left_reg_out[15]),
        .I2(IS_right_reg_out[20]),
        .I3(\temp_reg_reg[63]_0 [20]),
        .I4(IS_left_reg_out[19]),
        .O(\temp_reg[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[23]_i_1 
       (.I0(IS_left_reg_out[23]),
        .I1(IS_left_reg_out[18]),
        .I2(IS_right_reg_out[23]),
        .I3(\temp_reg_reg[63]_0 [23]),
        .I4(IS_left_reg_out[22]),
        .O(\temp_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[24]_i_2 
       (.I0(IS_left_reg_out[24]),
        .I1(IS_left_reg_out[19]),
        .I2(IS_right_reg_out[24]),
        .I3(\temp_reg_reg[63]_0 [24]),
        .I4(IS_left_reg_out[23]),
        .O(\temp_reg_reg[24]_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[25]_i_1 
       (.I0(IS_left_reg_out[25]),
        .I1(IS_left_reg_out[20]),
        .I2(IS_right_reg_out[25]),
        .I3(\temp_reg_reg[63]_0 [25]),
        .I4(IS_left_reg_out[24]),
        .O(\temp_reg[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[26]_i_2 
       (.I0(IS_left_reg_out[26]),
        .I1(IS_left_reg_out[21]),
        .I2(IS_right_reg_out[26]),
        .I3(\temp_reg_reg[63]_0 [26]),
        .I4(IS_left_reg_out[25]),
        .O(\temp_reg_reg[26]_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[27]_i_1 
       (.I0(IS_left_reg_out[27]),
        .I1(IS_left_reg_out[22]),
        .I2(IS_right_reg_out[27]),
        .I3(\temp_reg_reg[63]_0 [27]),
        .I4(IS_left_reg_out[26]),
        .O(\temp_reg[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[28]_i_1 
       (.I0(IS_left_reg_out[28]),
        .I1(IS_left_reg_out[23]),
        .I2(IS_right_reg_out[28]),
        .I3(\temp_reg_reg[63]_0 [28]),
        .I4(IS_left_reg_out[27]),
        .O(\temp_reg[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg[30]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\temp_reg_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[30]_i_3 
       (.I0(IS_left_reg_out[30]),
        .I1(IS_left_reg_out[25]),
        .I2(IS_right_reg_out[30]),
        .I3(IS_left_reg_out[29]),
        .I4(\temp_reg_reg[63]_0 [30]),
        .O(\temp_reg_reg[30]_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \temp_reg[31]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(E),
        .O(\temp_reg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[31]_i_2 
       (.I0(IS_left_reg_out[26]),
        .I1(IS_left_reg_out[31]),
        .I2(IS_right_reg_out[31]),
        .I3(\temp_reg_reg[63]_0 [31]),
        .I4(IS_left_reg_out[30]),
        .O(\temp_reg[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[3]_i_2 
       (.I0(IS_left_reg_out[30]),
        .I1(IS_left_reg_out[3]),
        .I2(IS_right_reg_out[3]),
        .I3(\temp_reg_reg[63]_0 [3]),
        .I4(IS_left_reg_out[2]),
        .O(\temp_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[4]_i_1 
       (.I0(\temp_reg_reg[0]_0 ),
        .I1(IS_left_reg_out[3]),
        .I2(\temp_reg_reg[63]_0 [4]),
        .I3(IS_right_reg_out[4]),
        .I4(IS_left_reg_out[4]),
        .I5(IS_left_reg_out[31]),
        .O(\temp_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[7]_i_1 
       (.I0(IS_left_reg_out[7]),
        .I1(IS_left_reg_out[2]),
        .I2(IS_right_reg_out[7]),
        .I3(\temp_reg_reg[63]_0 [7]),
        .I4(IS_left_reg_out[6]),
        .O(\temp_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[8]_i_2 
       (.I0(IS_left_reg_out[8]),
        .I1(IS_left_reg_out[3]),
        .I2(IS_right_reg_out[8]),
        .I3(\temp_reg_reg[63]_0 [8]),
        .I4(IS_left_reg_out[7]),
        .O(\temp_reg_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[9]_i_1 
       (.I0(\temp_reg_reg[0]_0 ),
        .I1(IS_left_reg_out[8]),
        .I2(\temp_reg_reg[63]_0 [9]),
        .I3(IS_right_reg_out[9]),
        .I4(IS_left_reg_out[4]),
        .I5(IS_left_reg_out[9]),
        .O(\temp_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[0]_i_1_n_0 ),
        .Q(IS_left_reg_out[0]),
        .S(\temp_reg[18]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[10]_i_1_n_0 ),
        .Q(IS_left_reg_out[10]),
        .S(\temp_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[11]),
        .Q(IS_left_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[12]_i_1_n_0 ),
        .Q(IS_left_reg_out[12]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[13]),
        .Q(IS_left_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[14]),
        .Q(IS_left_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[15]_i_1_n_0 ),
        .Q(IS_left_reg_out[15]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(IS_left_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(IS_left_reg_out[17]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[18]_i_2_n_0 ),
        .Q(IS_left_reg_out[18]),
        .S(\temp_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(IS_left_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[1]_i_1_n_0 ),
        .Q(IS_left_reg_out[1]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[20]_i_1_n_0 ),
        .Q(IS_left_reg_out[20]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[21]),
        .Q(IS_left_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[22]),
        .Q(IS_left_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[23]_i_1_n_0 ),
        .Q(IS_left_reg_out[23]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(IS_left_reg_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[25]_i_1_n_0 ),
        .Q(IS_left_reg_out[25]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(IS_left_reg_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[27]_i_1_n_0 ),
        .Q(IS_left_reg_out[27]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[28]_i_1_n_0 ),
        .Q(IS_left_reg_out[28]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[29]),
        .Q(IS_left_reg_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[2]),
        .Q(IS_left_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(IS_left_reg_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[31]_i_2_n_0 ),
        .Q(IS_left_reg_out[31]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[0]),
        .Q(IS_right_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[1]),
        .Q(IS_right_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[2]),
        .Q(IS_right_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[3]),
        .Q(IS_right_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[4]),
        .Q(IS_right_reg_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[5]),
        .Q(IS_right_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[6]),
        .Q(IS_right_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[7]),
        .Q(IS_right_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(IS_left_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[8]),
        .Q(IS_right_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[9]),
        .Q(IS_right_reg_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[10]),
        .Q(IS_right_reg_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[11]),
        .Q(IS_right_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[12]),
        .Q(IS_right_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[13]),
        .Q(IS_right_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[14]),
        .Q(IS_right_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[15]),
        .Q(IS_right_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[16]),
        .Q(IS_right_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[17]),
        .Q(IS_right_reg_out[17]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[4]_i_1_n_0 ),
        .Q(IS_left_reg_out[4]),
        .S(\temp_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[18]),
        .Q(IS_right_reg_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[19]),
        .Q(IS_right_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[20]),
        .Q(IS_right_reg_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[21]),
        .Q(IS_right_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[22]),
        .Q(IS_right_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[23]),
        .Q(IS_right_reg_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[24]),
        .Q(IS_right_reg_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[25]),
        .Q(IS_right_reg_out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[26]),
        .Q(IS_right_reg_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[27]),
        .Q(IS_right_reg_out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[5]),
        .Q(IS_left_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[28]),
        .Q(IS_right_reg_out[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[29]),
        .Q(IS_right_reg_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[30]),
        .Q(IS_right_reg_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[31]),
        .Q(IS_right_reg_out[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[6]),
        .Q(IS_left_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[7]_i_1_n_0 ),
        .Q(IS_left_reg_out[7]),
        .R(\temp_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(IS_left_reg_out[8]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[9]_i_1_n_0 ),
        .Q(IS_left_reg_out[9]),
        .S(\temp_reg[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \xlnx_opt_LUT_current_state[2]_i_3 
       (.I0(IS_right_reg_out[0]),
        .I1(IS_right_reg_out[5]),
        .I2(IS_right_reg_out[28]),
        .I3(IS_right_reg_out[30]),
        .O(\xlnx_opt_current_state[2]_i_3_n_0_7 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_3_1 
       (.I0(IS_right_reg_out[13]),
        .I1(IS_right_reg_out[10]),
        .I2(IS_right_reg_out[22]),
        .I3(IS_right_reg_out[7]),
        .I4(\xlnx_opt_current_state[2]_i_3_n_0_7 ),
        .O(\xlnx_opt_current_state[2]_i_3_n_0_6 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \xlnx_opt_LUT_current_state[2]_i_3_2 
       (.I0(IS_right_reg_out[15]),
        .I1(IS_right_reg_out[17]),
        .I2(IS_right_reg_out[6]),
        .I3(IS_right_reg_out[23]),
        .O(\xlnx_opt_current_state[2]_i_3_n_0_5 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \xlnx_opt_LUT_current_state[2]_i_3_3 
       (.I0(out[0]),
        .I1(IS_right_reg_out[2]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(\xlnx_opt_current_state[2]_i_3_n_0_5 ),
        .O(\xlnx_opt_current_state[2]_i_3_n_0_4 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFCFFFFFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_3_4 
       (.I0(current_state[1]),
        .I1(IS_right_reg_out[4]),
        .I2(IS_right_reg_out[24]),
        .I3(IS_right_reg_out[26]),
        .I4(IS_right_reg_out[8]),
        .I5(current_state[0]),
        .O(\xlnx_opt_current_state[2]_i_3_n_0_3 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_3_5 
       (.I0(\current_state[2]_i_17_n_0 ),
        .I1(\current_state[2]_i_20_n_0 ),
        .I2(IS_right_reg_out[21]),
        .I3(IS_right_reg_out[27]),
        .I4(IS_right_reg_out[3]),
        .I5(IS_right_reg_out[20]),
        .O(\xlnx_opt_current_state[2]_i_3_n_0_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \xlnx_opt_LUT_current_state[2]_i_3_6 
       (.I0(IS_right_reg_out[31]),
        .I1(IS_right_reg_out[29]),
        .O(\xlnx_opt_current_state[2]_i_3_n_0_1 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \xlnx_opt_LUT_current_state[2]_i_3_7 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(IS_right_reg_out[14]),
        .I3(IS_right_reg_out[11]),
        .I4(IS_right_reg_out[18]),
        .I5(\xlnx_opt_current_state[2]_i_3_n_0_1 ),
        .O(\xlnx_opt_current_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \xlnx_opt_LUT_current_state[2]_i_3_8 
       (.I0(\xlnx_opt_current_state[2]_i_3_n_0_6 ),
        .I1(\xlnx_opt_current_state[2]_i_3_n_0_4 ),
        .I2(\xlnx_opt_current_state[2]_i_3_n_0_3 ),
        .I3(\xlnx_opt_current_state[2]_i_3_n_0_2 ),
        .I4(\xlnx_opt_current_state[2]_i_3_n_0 ),
        .O(\current_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[11]_i_1 
       (.I0(IS_left_reg_out[11]),
        .I1(IS_left_reg_out[6]),
        .I2(IS_right_reg_out[11]),
        .I3(\temp_reg_reg[63]_0 [11]),
        .I4(IS_left_reg_out[10]),
        .O(\xlnx_opt_p_0_in[11] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[11]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[11] ),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[13]_i_1 
       (.I0(IS_left_reg_out[13]),
        .I1(IS_left_reg_out[8]),
        .I2(IS_right_reg_out[13]),
        .I3(\temp_reg_reg[63]_0 [13]),
        .I4(IS_left_reg_out[12]),
        .O(\xlnx_opt_p_0_in[13] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[13]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[13] ),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[14]_i_1 
       (.I0(IS_left_reg_out[14]),
        .I1(IS_left_reg_out[9]),
        .I2(IS_right_reg_out[14]),
        .I3(\temp_reg_reg[63]_0 [14]),
        .I4(IS_left_reg_out[13]),
        .O(\xlnx_opt_p_0_in[14] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[14]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[14] ),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[21]_i_1 
       (.I0(IS_left_reg_out[21]),
        .I1(IS_left_reg_out[16]),
        .I2(IS_right_reg_out[21]),
        .I3(\temp_reg_reg[63]_0 [21]),
        .I4(IS_left_reg_out[20]),
        .O(\xlnx_opt_p_0_in[21] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[21]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[21] ),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[22]_i_1 
       (.I0(IS_left_reg_out[22]),
        .I1(IS_left_reg_out[17]),
        .I2(IS_right_reg_out[22]),
        .I3(\temp_reg_reg[63]_0 [22]),
        .I4(IS_left_reg_out[21]),
        .O(\xlnx_opt_p_0_in[22] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[22]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[22] ),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[29]_i_1 
       (.I0(IS_left_reg_out[29]),
        .I1(IS_left_reg_out[24]),
        .I2(IS_right_reg_out[29]),
        .I3(IS_left_reg_out[28]),
        .I4(\temp_reg_reg[63]_0 [29]),
        .O(\xlnx_opt_p_0_in[29] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[29]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[29] ),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[2]_i_1 
       (.I0(IS_left_reg_out[29]),
        .I1(IS_left_reg_out[2]),
        .I2(IS_right_reg_out[2]),
        .I3(\temp_reg_reg[63]_0 [2]),
        .I4(IS_left_reg_out[1]),
        .O(\xlnx_opt_p_0_in[2] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[2]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[2] ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[5]_i_1 
       (.I0(IS_left_reg_out[5]),
        .I1(IS_left_reg_out[0]),
        .I2(IS_right_reg_out[5]),
        .I3(\temp_reg_reg[63]_0 [5]),
        .I4(IS_left_reg_out[4]),
        .O(\xlnx_opt_p_0_in[5] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[5]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[5] ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[6]_i_1 
       (.I0(IS_left_reg_out[6]),
        .I1(IS_left_reg_out[1]),
        .I2(IS_right_reg_out[6]),
        .I3(\temp_reg_reg[63]_0 [6]),
        .I4(IS_left_reg_out[5]),
        .O(\xlnx_opt_p_0_in[6] ));
  LUT6 #(
    .INIT(64'h0800080808FF0808)) 
    \xlnx_opt_LUT_temp_reg[6]_i_1_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Q[1]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\xlnx_opt_p_0_in[6] ),
        .O(p_0_in[6]));
endmodule

(* ORIG_REF_NAME = "parallel_tapped_shift_reg" *) 
module parallel_tapped_shift_reg_0
   (\temp_reg_reg[3]_0 ,
    Q,
    \temp_reg_reg[4]_0 ,
    \temp_reg_reg[8]_0 ,
    \temp_reg_reg[11]_0 ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[17]_0 ,
    \temp_reg_reg[19]_0 ,
    \temp_reg_reg[20]_0 ,
    \temp_reg_reg[24]_0 ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[27]_0 ,
    \temp_reg_reg[28]_0 ,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[30]_0 ,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[26]_0 ,
    \temp_reg_reg[23]_0 ,
    \temp_reg_reg[22]_0 ,
    \temp_reg_reg[21]_0 ,
    \temp_reg_reg[18]_0 ,
    \temp_reg_reg[16]_0 ,
    \temp_reg_reg[15]_0 ,
    \temp_reg_reg[14]_0 ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[10]_0 ,
    \temp_reg_reg[9]_0 ,
    \temp_reg_reg[7]_0 ,
    \temp_reg_reg[6]_0 ,
    \temp_reg_reg[5]_0 ,
    \temp_reg_reg[2]_0 ,
    \temp_reg_reg[1]_0 ,
    \temp_reg_reg[0]_0 ,
    KEY_REG_CE,
    \FSM_sequential_current_state_reg[0] ,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    \FSM_sequential_current_state_reg[0]_3 ,
    \FSM_sequential_current_state_reg[0]_4 ,
    \FSM_sequential_current_state_reg[0]_5 ,
    \FSM_sequential_current_state_reg[0]_6 ,
    \FSM_sequential_current_state_reg[0]_7 ,
    \FSM_sequential_current_state_reg[0]_8 ,
    \FSM_sequential_current_state_reg[0]_9 ,
    \FSM_sequential_current_state_reg[0]_10 ,
    \current_state_reg[2] ,
    \FSM_sequential_current_state_reg[0]_11 ,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    \lfsr_internal_reg[5] ,
    D,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3);
  output \temp_reg_reg[3]_0 ;
  output [31:0]Q;
  output \temp_reg_reg[4]_0 ;
  output \temp_reg_reg[8]_0 ;
  output \temp_reg_reg[11]_0 ;
  output \temp_reg_reg[12]_0 ;
  output \temp_reg_reg[17]_0 ;
  output \temp_reg_reg[19]_0 ;
  output \temp_reg_reg[20]_0 ;
  output \temp_reg_reg[24]_0 ;
  output \temp_reg_reg[25]_0 ;
  output \temp_reg_reg[27]_0 ;
  output \temp_reg_reg[28]_0 ;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[30]_0 ;
  output \temp_reg_reg[29]_0 ;
  output \temp_reg_reg[26]_0 ;
  output \temp_reg_reg[23]_0 ;
  output \temp_reg_reg[22]_0 ;
  output \temp_reg_reg[21]_0 ;
  output \temp_reg_reg[18]_0 ;
  output \temp_reg_reg[16]_0 ;
  output \temp_reg_reg[15]_0 ;
  output \temp_reg_reg[14]_0 ;
  output \temp_reg_reg[13]_0 ;
  output \temp_reg_reg[10]_0 ;
  output \temp_reg_reg[9]_0 ;
  output \temp_reg_reg[7]_0 ;
  output \temp_reg_reg[6]_0 ;
  output \temp_reg_reg[5]_0 ;
  output \temp_reg_reg[2]_0 ;
  output \temp_reg_reg[1]_0 ;
  output \temp_reg_reg[0]_0 ;
  input KEY_REG_CE;
  input \FSM_sequential_current_state_reg[0] ;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input \FSM_sequential_current_state_reg[0]_3 ;
  input \FSM_sequential_current_state_reg[0]_4 ;
  input \FSM_sequential_current_state_reg[0]_5 ;
  input \FSM_sequential_current_state_reg[0]_6 ;
  input \FSM_sequential_current_state_reg[0]_7 ;
  input \FSM_sequential_current_state_reg[0]_8 ;
  input \FSM_sequential_current_state_reg[0]_9 ;
  input \FSM_sequential_current_state_reg[0]_10 ;
  input \current_state_reg[2] ;
  input \FSM_sequential_current_state_reg[0]_11 ;
  input \current_state_reg[2]_0 ;
  input \current_state_reg[2]_1 ;
  input [0:0]\lfsr_internal_reg[5] ;
  input [19:0]D;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;

  wire [19:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_10 ;
  wire \FSM_sequential_current_state_reg[0]_11 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[0]_3 ;
  wire \FSM_sequential_current_state_reg[0]_4 ;
  wire \FSM_sequential_current_state_reg[0]_5 ;
  wire \FSM_sequential_current_state_reg[0]_6 ;
  wire \FSM_sequential_current_state_reg[0]_7 ;
  wire \FSM_sequential_current_state_reg[0]_8 ;
  wire \FSM_sequential_current_state_reg[0]_9 ;
  wire KEY_REG_CE;
  wire [31:0]KEY_REG_b_out;
  wire [31:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire [0:0]\lfsr_internal_reg[5] ;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire \temp_reg_reg[0]_0 ;
  wire \temp_reg_reg[0]_CE_cooolgate_en_sig_2 ;
  wire \temp_reg_reg[10]_0 ;
  wire \temp_reg_reg[11]_0 ;
  wire \temp_reg_reg[12]_0 ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[16]_0 ;
  wire \temp_reg_reg[17]_0 ;
  wire \temp_reg_reg[18]_0 ;
  wire \temp_reg_reg[19]_0 ;
  wire \temp_reg_reg[1]_0 ;
  wire \temp_reg_reg[20]_0 ;
  wire \temp_reg_reg[21]_0 ;
  wire \temp_reg_reg[22]_0 ;
  wire \temp_reg_reg[23]_0 ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[25]_0 ;
  wire \temp_reg_reg[26]_0 ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[28]_0 ;
  wire \temp_reg_reg[29]_0 ;
  wire \temp_reg_reg[2]_0 ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[3]_0 ;
  wire \temp_reg_reg[4]_0 ;
  wire \temp_reg_reg[5]_0 ;
  wire \temp_reg_reg[6]_0 ;
  wire \temp_reg_reg[7]_0 ;
  wire \temp_reg_reg[8]_0 ;
  wire \temp_reg_reg[9]_0 ;

  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[0]_i_1__0 
       (.I0(KEY_REG_b_out[27]),
        .I1(KEY_REG_b_out[0]),
        .I2(KEY_REG_b_out[31]),
        .I3(Q[0]),
        .I4(\lfsr_internal_reg[5] ),
        .O(\temp_reg_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[10]_i_1__0 
       (.I0(KEY_REG_b_out[5]),
        .I1(KEY_REG_b_out[10]),
        .I2(KEY_REG_b_out[9]),
        .I3(Q[10]),
        .O(\temp_reg_reg[10]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[13]_i_1__0 
       (.I0(KEY_REG_b_out[8]),
        .I1(KEY_REG_b_out[13]),
        .I2(KEY_REG_b_out[12]),
        .I3(Q[13]),
        .O(\temp_reg_reg[13]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[14]_i_1__0 
       (.I0(KEY_REG_b_out[9]),
        .I1(KEY_REG_b_out[14]),
        .I2(KEY_REG_b_out[13]),
        .I3(Q[14]),
        .O(\temp_reg_reg[14]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[15]_i_1__0 
       (.I0(KEY_REG_b_out[10]),
        .I1(KEY_REG_b_out[15]),
        .I2(KEY_REG_b_out[14]),
        .I3(Q[15]),
        .O(\temp_reg_reg[15]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[16]_i_1__0 
       (.I0(KEY_REG_b_out[11]),
        .I1(KEY_REG_b_out[16]),
        .I2(KEY_REG_b_out[15]),
        .I3(Q[16]),
        .O(\temp_reg_reg[16]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[18]_i_1 
       (.I0(KEY_REG_b_out[13]),
        .I1(KEY_REG_b_out[18]),
        .I2(KEY_REG_b_out[17]),
        .I3(Q[18]),
        .O(\temp_reg_reg[18]_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \temp_reg[1]_i_1__0 
       (.I0(KEY_REG_b_out[1]),
        .I1(KEY_REG_b_out[28]),
        .I2(KEY_REG_b_out[0]),
        .I3(Q[1]),
        .O(\temp_reg_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[21]_i_1__0 
       (.I0(KEY_REG_b_out[16]),
        .I1(KEY_REG_b_out[21]),
        .I2(KEY_REG_b_out[20]),
        .I3(Q[21]),
        .O(\temp_reg_reg[21]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[22]_i_1__0 
       (.I0(KEY_REG_b_out[17]),
        .I1(KEY_REG_b_out[22]),
        .I2(KEY_REG_b_out[21]),
        .I3(Q[22]),
        .O(\temp_reg_reg[22]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[23]_i_1__0 
       (.I0(KEY_REG_b_out[18]),
        .I1(KEY_REG_b_out[23]),
        .I2(KEY_REG_b_out[22]),
        .I3(Q[23]),
        .O(\temp_reg_reg[23]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[26]_i_1__0 
       (.I0(KEY_REG_b_out[21]),
        .I1(KEY_REG_b_out[26]),
        .I2(KEY_REG_b_out[25]),
        .I3(Q[26]),
        .O(\temp_reg_reg[26]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[29]_i_1__0 
       (.I0(KEY_REG_b_out[24]),
        .I1(KEY_REG_b_out[29]),
        .I2(KEY_REG_b_out[28]),
        .I3(Q[29]),
        .O(\temp_reg_reg[29]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[2]_i_1__0 
       (.I0(KEY_REG_b_out[2]),
        .I1(KEY_REG_b_out[29]),
        .I2(KEY_REG_b_out[1]),
        .I3(Q[2]),
        .O(\temp_reg_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[30]_i_1__0 
       (.I0(KEY_REG_b_out[25]),
        .I1(KEY_REG_b_out[30]),
        .I2(KEY_REG_b_out[29]),
        .I3(Q[30]),
        .O(\temp_reg_reg[30]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[31]_i_2__0 
       (.I0(KEY_REG_b_out[31]),
        .I1(KEY_REG_b_out[26]),
        .I2(KEY_REG_b_out[30]),
        .I3(Q[31]),
        .O(\temp_reg_reg[31]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[5]_i_1__0 
       (.I0(KEY_REG_b_out[0]),
        .I1(KEY_REG_b_out[5]),
        .I2(KEY_REG_b_out[4]),
        .I3(Q[5]),
        .O(\temp_reg_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[6]_i_1__0 
       (.I0(KEY_REG_b_out[1]),
        .I1(KEY_REG_b_out[6]),
        .I2(KEY_REG_b_out[5]),
        .I3(Q[6]),
        .O(\temp_reg_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[7]_i_1__0 
       (.I0(KEY_REG_b_out[2]),
        .I1(KEY_REG_b_out[7]),
        .I2(KEY_REG_b_out[6]),
        .I3(Q[7]),
        .O(\temp_reg_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \temp_reg[9]_i_1__0 
       (.I0(KEY_REG_b_out[4]),
        .I1(KEY_REG_b_out[9]),
        .I2(KEY_REG_b_out[8]),
        .I3(Q[9]),
        .O(\temp_reg_reg[9]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[0]),
        .Q(KEY_REG_b_out[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[7]),
        .Q(KEY_REG_b_out[10]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_7 ),
        .Q(KEY_REG_b_out[11]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_6 ),
        .Q(KEY_REG_b_out[12]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[8]),
        .Q(KEY_REG_b_out[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[9]),
        .Q(KEY_REG_b_out[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[10]),
        .Q(KEY_REG_b_out[15]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[11]),
        .Q(KEY_REG_b_out[16]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_5 ),
        .Q(KEY_REG_b_out[17]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[12]),
        .Q(KEY_REG_b_out[18]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_4 ),
        .Q(KEY_REG_b_out[19]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[1]),
        .Q(KEY_REG_b_out[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_3 ),
        .Q(KEY_REG_b_out[20]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[13]),
        .Q(KEY_REG_b_out[21]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[14]),
        .Q(KEY_REG_b_out[22]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[15]),
        .Q(KEY_REG_b_out[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_2 ),
        .Q(KEY_REG_b_out[24]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_1 ),
        .Q(KEY_REG_b_out[25]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[16]),
        .Q(KEY_REG_b_out[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_0 ),
        .Q(KEY_REG_b_out[27]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0] ),
        .Q(KEY_REG_b_out[28]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[17]),
        .Q(KEY_REG_b_out[29]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[2]),
        .Q(KEY_REG_b_out[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[18]),
        .Q(KEY_REG_b_out[30]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[19]),
        .Q(KEY_REG_b_out[31]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[35]_srl2_i_1 
       (.I0(\current_state_reg[2] ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[3]),
        .I3(KEY_REG_b_out[30]),
        .I4(KEY_REG_b_out[3]),
        .I5(KEY_REG_b_out[2]),
        .O(\temp_reg_reg[3]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[36]_srl2_i_1 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[4]),
        .I3(KEY_REG_b_out[31]),
        .I4(KEY_REG_b_out[4]),
        .I5(KEY_REG_b_out[3]),
        .O(\temp_reg_reg[4]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_10 ),
        .Q(KEY_REG_b_out[3]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[8]),
        .Q(Q[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BBBB888B8888BBB)) 
    \temp_reg_reg[40]_srl2_i_1 
       (.I0(\current_state_reg[2]_1 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(KEY_REG_b_out[3]),
        .I3(KEY_REG_b_out[8]),
        .I4(KEY_REG_b_out[7]),
        .I5(Q[8]),
        .O(\temp_reg_reg[8]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[11]),
        .Q(Q[11]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[43]_srl2_i_1 
       (.I0(\current_state_reg[2] ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[11]),
        .I3(KEY_REG_b_out[11]),
        .I4(KEY_REG_b_out[6]),
        .I5(KEY_REG_b_out[10]),
        .O(\temp_reg_reg[11]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[12]),
        .Q(Q[12]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[44]_srl2_i_1 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[12]),
        .I3(KEY_REG_b_out[12]),
        .I4(KEY_REG_b_out[7]),
        .I5(KEY_REG_b_out[11]),
        .O(\temp_reg_reg[12]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[17]),
        .Q(Q[17]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BBBB888B8888BBB)) 
    \temp_reg_reg[49]_srl2_i_1 
       (.I0(\current_state_reg[2]_1 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(KEY_REG_b_out[12]),
        .I3(KEY_REG_b_out[17]),
        .I4(KEY_REG_b_out[16]),
        .I5(Q[17]),
        .O(\temp_reg_reg[17]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_9 ),
        .Q(KEY_REG_b_out[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[18]),
        .Q(Q[18]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[19]),
        .Q(Q[19]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[51]_srl2_i_1 
       (.I0(\current_state_reg[2] ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[19]),
        .I3(KEY_REG_b_out[19]),
        .I4(KEY_REG_b_out[14]),
        .I5(KEY_REG_b_out[18]),
        .O(\temp_reg_reg[19]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[20]),
        .Q(Q[20]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[52]_srl2_i_1 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[20]),
        .I3(KEY_REG_b_out[20]),
        .I4(KEY_REG_b_out[15]),
        .I5(KEY_REG_b_out[19]),
        .O(\temp_reg_reg[20]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[21]),
        .Q(Q[21]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[22]),
        .Q(Q[22]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[23]),
        .Q(Q[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[24]),
        .Q(Q[24]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BBBB888B8888BBB)) 
    \temp_reg_reg[56]_srl2_i_1 
       (.I0(\current_state_reg[2]_1 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(KEY_REG_b_out[19]),
        .I3(KEY_REG_b_out[24]),
        .I4(KEY_REG_b_out[23]),
        .I5(Q[24]),
        .O(\temp_reg_reg[24]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[25]),
        .Q(Q[25]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BBBB888B8888BBB)) 
    \temp_reg_reg[57]_srl2_i_1 
       (.I0(\current_state_reg[2]_1 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(KEY_REG_b_out[20]),
        .I3(KEY_REG_b_out[25]),
        .I4(KEY_REG_b_out[24]),
        .I5(Q[25]),
        .O(\temp_reg_reg[25]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[26]),
        .Q(Q[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[27]),
        .Q(Q[27]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[59]_srl2_i_1 
       (.I0(\current_state_reg[2] ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[27]),
        .I3(KEY_REG_b_out[27]),
        .I4(KEY_REG_b_out[22]),
        .I5(KEY_REG_b_out[26]),
        .O(\temp_reg_reg[27]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[3]),
        .Q(KEY_REG_b_out[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[28]),
        .Q(Q[28]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B88B8B8B)) 
    \temp_reg_reg[60]_srl2_i_1 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\FSM_sequential_current_state_reg[0]_11 ),
        .I2(Q[28]),
        .I3(KEY_REG_b_out[28]),
        .I4(KEY_REG_b_out[23]),
        .I5(KEY_REG_b_out[27]),
        .O(\temp_reg_reg[28]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[29]),
        .Q(Q[29]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[30]),
        .Q(Q[30]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(KEY_REG_b_out[31]),
        .Q(Q[31]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[4]),
        .Q(KEY_REG_b_out[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[5]),
        .Q(KEY_REG_b_out[7]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_current_state_reg[0]_8 ),
        .Q(KEY_REG_b_out[8]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(D[6]),
        .Q(KEY_REG_b_out[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF10000)) 
    \xlnx_opt_LUT_temp_reg_reg[0]_CE_cooolgate_en_gate_2 
       (.I0(pwropt_3),
        .I1(pwropt_2),
        .I2(pwropt_1),
        .I3(pwropt),
        .I4(KEY_REG_CE),
        .O(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
