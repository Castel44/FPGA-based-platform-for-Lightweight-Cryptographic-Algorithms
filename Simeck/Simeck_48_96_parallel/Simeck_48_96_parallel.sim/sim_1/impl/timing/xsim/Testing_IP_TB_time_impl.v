// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 25 23:59:08 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simeck/Simeck_48_96_parallel/Simeck_48_96_parallel.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
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
    current_state,
    rst_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[0] ;
  output [1:0]Q;
  output \current_state_reg[2] ;
  input [2:0]current_state;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire [1:0]Q;
  wire ce;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[1]_i_3_n_0 ;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire [1:0]plusOp;
  wire rst_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT3 #(
    .INIT(8'h21)) 
    \cnt_internal_value[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(ce));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'hC2)) 
    \cnt_internal_value[1]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[2]),
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
    .INIT(64'hFFFFFFFF444C4C4C)) 
    \current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT5 #(
    .INIT(32'hF70FF004)) 
    \current_state[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(\current_state_reg[2] ));
endmodule

module Simeck_48_96_parallel
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    clk_IBUF_BUFG,
    current_state,
    start_IBUF,
    rst_IBUF,
    \cnt_internal_value_reg[0] ,
    Q);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  input clk_IBUF_BUFG;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \cnt_internal_value_reg[0] ;
  input [1:0]Q;

  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire INST_END_ENCRYPT_SHIFT_REG_n_0;
  wire INST_IS_REG_n_2;
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
  wire INST_LEFT_KEY_REG_n_3;
  wire INST_LEFT_KEY_REG_n_4;
  wire INST_LEFT_KEY_REG_n_5;
  wire INST_LEFT_KEY_REG_n_6;
  wire INST_LEFT_KEY_REG_n_7;
  wire INST_LEFT_KEY_REG_n_8;
  wire INST_LEFT_KEY_REG_n_9;
  wire INST_RIGHT_KEY_REG_n_0;
  wire INST_RIGHT_KEY_REG_n_25;
  wire INST_RIGHT_KEY_REG_n_26;
  wire INST_RIGHT_KEY_REG_n_27;
  wire INST_RIGHT_KEY_REG_n_28;
  wire INST_RIGHT_KEY_REG_n_29;
  wire INST_RIGHT_KEY_REG_n_30;
  wire INST_RIGHT_KEY_REG_n_31;
  wire INST_RIGHT_KEY_REG_n_32;
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
  wire INST_SHORT_LFSR_n_2;
  wire IS_CE;
  wire KEY_REG_CE;
  wire [23:0]KEY_REG_a_out;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire [2:0]current_state;
  (* RTL_KEEP = "yes" *) wire [1:1]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire [4:4]lfsr_parallel_out;
  (* RTL_KEEP = "yes" *) wire lfsr_rst;
  wire pwropt;
  wire rst_IBUF;
  wire start_IBUF;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAA0AAAE)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state_0),
        .I1(lfsr_rst),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_END_ENCRYPT_SHIFT_REG_n_0),
        .Q(lfsr_rst),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state_0),
        .R(1'b0));
  end_encrypt_shift_reg INST_END_ENCRYPT_SHIFT_REG
       (.\FSM_sequential_current_state_reg[0] (INST_END_ENCRYPT_SHIFT_REG_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state[0]),
        .\current_state_reg[1] (\FSM_sequential_current_state[0]_i_3_n_0 ),
        .\lfsr_internal_reg[3] (INST_SHORT_LFSR_n_2),
        .out({current_state_0,lfsr_rst}));
  parallel_tapped_shift_reg INST_IS_REG
       (.E(IS_CE),
        .Q(KEY_REG_a_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0] ),
        .\cnt_internal_value_reg[1] (Q),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .out({current_state_0,lfsr_rst}),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[15]_0 (INST_IS_REG_n_2));
  normal_shift_reg INST_LEFT_KEY_REG
       (.KEY_REG_CE(KEY_REG_CE),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state({current_state[2],current_state[0]}),
        .out({current_state_0,lfsr_rst}),
        .pwropt(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .pwropt_1(INST_END_ENCRYPT_SHIFT_REG_n_0),
        .pwropt_2(pwropt),
        .\temp_reg_reg[0] (INST_LEFT_KEY_REG_n_23),
        .\temp_reg_reg[0]_0 (INST_RIGHT_KEY_REG_n_45),
        .\temp_reg_reg[10] (INST_LEFT_KEY_REG_n_13),
        .\temp_reg_reg[10]_0 (INST_RIGHT_KEY_REG_n_38),
        .\temp_reg_reg[11] (INST_LEFT_KEY_REG_n_12),
        .\temp_reg_reg[11]_0 (INST_RIGHT_KEY_REG_n_37),
        .\temp_reg_reg[12] (INST_LEFT_KEY_REG_n_11),
        .\temp_reg_reg[12]_0 (INST_RIGHT_KEY_REG_n_31),
        .\temp_reg_reg[13] (INST_LEFT_KEY_REG_n_10),
        .\temp_reg_reg[13]_0 (INST_RIGHT_KEY_REG_n_36),
        .\temp_reg_reg[14] (INST_LEFT_KEY_REG_n_9),
        .\temp_reg_reg[14]_0 (INST_RIGHT_KEY_REG_n_32),
        .\temp_reg_reg[15] (INST_LEFT_KEY_REG_n_8),
        .\temp_reg_reg[15]_0 (INST_RIGHT_KEY_REG_n_0),
        .\temp_reg_reg[16] (INST_LEFT_KEY_REG_n_7),
        .\temp_reg_reg[16]_0 (INST_RIGHT_KEY_REG_n_35),
        .\temp_reg_reg[17] (INST_LEFT_KEY_REG_n_6),
        .\temp_reg_reg[17]_0 (INST_RIGHT_KEY_REG_n_34),
        .\temp_reg_reg[18] (INST_LEFT_KEY_REG_n_5),
        .\temp_reg_reg[18]_0 (INST_RIGHT_KEY_REG_n_33),
        .\temp_reg_reg[19] (INST_LEFT_KEY_REG_n_4),
        .\temp_reg_reg[19]_0 (INST_RIGHT_KEY_REG_n_25),
        .\temp_reg_reg[1] (INST_LEFT_KEY_REG_n_22),
        .\temp_reg_reg[1]_0 (INST_RIGHT_KEY_REG_n_44),
        .\temp_reg_reg[1]_1 (INST_RIGHT_KEY_REG_n_47),
        .\temp_reg_reg[20] (INST_LEFT_KEY_REG_n_3),
        .\temp_reg_reg[20]_0 (INST_LEFT_KEY_REG_n_24),
        .\temp_reg_reg[21] (INST_LEFT_KEY_REG_n_2),
        .\temp_reg_reg[22] (INST_LEFT_KEY_REG_n_1),
        .\temp_reg_reg[23] (INST_LEFT_KEY_REG_n_0),
        .\temp_reg_reg[2] (INST_LEFT_KEY_REG_n_21),
        .\temp_reg_reg[2]_0 (INST_RIGHT_KEY_REG_n_43),
        .\temp_reg_reg[2]_1 (INST_RIGHT_KEY_REG_n_46),
        .\temp_reg_reg[3] (INST_LEFT_KEY_REG_n_20),
        .\temp_reg_reg[3]_0 (INST_LEFT_KEY_REG_n_25),
        .\temp_reg_reg[3]_1 (INST_RIGHT_KEY_REG_n_29),
        .\temp_reg_reg[3]_2 (INST_RIGHT_KEY_REG_n_28),
        .\temp_reg_reg[4] (INST_LEFT_KEY_REG_n_19),
        .\temp_reg_reg[4]_0 (INST_RIGHT_KEY_REG_n_42),
        .\temp_reg_reg[4]_1 (INST_RIGHT_KEY_REG_n_26),
        .\temp_reg_reg[5] (INST_LEFT_KEY_REG_n_18),
        .\temp_reg_reg[5]_0 (INST_RIGHT_KEY_REG_n_41),
        .\temp_reg_reg[6] (INST_LEFT_KEY_REG_n_17),
        .\temp_reg_reg[6]_0 (INST_RIGHT_KEY_REG_n_30),
        .\temp_reg_reg[7] (INST_LEFT_KEY_REG_n_16),
        .\temp_reg_reg[7]_0 (INST_RIGHT_KEY_REG_n_27),
        .\temp_reg_reg[8] (INST_LEFT_KEY_REG_n_15),
        .\temp_reg_reg[8]_0 (INST_LEFT_KEY_REG_n_26),
        .\temp_reg_reg[8]_1 (INST_RIGHT_KEY_REG_n_40),
        .\temp_reg_reg[9] (INST_LEFT_KEY_REG_n_14),
        .\temp_reg_reg[9]_0 (INST_RIGHT_KEY_REG_n_39));
  parallel_tapped_shift_reg_0 INST_RIGHT_KEY_REG
       (.\FSM_sequential_current_state_reg[0] (INST_LEFT_KEY_REG_n_24),
        .\FSM_sequential_current_state_reg[0]_0 (INST_IS_REG_n_2),
        .\FSM_sequential_current_state_reg[0]_1 (INST_LEFT_KEY_REG_n_25),
        .\FSM_sequential_current_state_reg[1] (INST_LEFT_KEY_REG_n_0),
        .\FSM_sequential_current_state_reg[1]_0 (INST_LEFT_KEY_REG_n_1),
        .\FSM_sequential_current_state_reg[1]_1 (INST_LEFT_KEY_REG_n_2),
        .\FSM_sequential_current_state_reg[1]_10 (INST_LEFT_KEY_REG_n_11),
        .\FSM_sequential_current_state_reg[1]_11 (INST_LEFT_KEY_REG_n_12),
        .\FSM_sequential_current_state_reg[1]_12 (INST_LEFT_KEY_REG_n_13),
        .\FSM_sequential_current_state_reg[1]_13 (INST_LEFT_KEY_REG_n_14),
        .\FSM_sequential_current_state_reg[1]_14 (INST_LEFT_KEY_REG_n_15),
        .\FSM_sequential_current_state_reg[1]_15 (INST_LEFT_KEY_REG_n_16),
        .\FSM_sequential_current_state_reg[1]_16 (INST_LEFT_KEY_REG_n_17),
        .\FSM_sequential_current_state_reg[1]_17 (INST_LEFT_KEY_REG_n_18),
        .\FSM_sequential_current_state_reg[1]_18 (INST_LEFT_KEY_REG_n_19),
        .\FSM_sequential_current_state_reg[1]_19 (INST_LEFT_KEY_REG_n_20),
        .\FSM_sequential_current_state_reg[1]_2 (INST_LEFT_KEY_REG_n_3),
        .\FSM_sequential_current_state_reg[1]_20 (INST_LEFT_KEY_REG_n_21),
        .\FSM_sequential_current_state_reg[1]_21 (INST_LEFT_KEY_REG_n_22),
        .\FSM_sequential_current_state_reg[1]_22 (INST_LEFT_KEY_REG_n_23),
        .\FSM_sequential_current_state_reg[1]_3 (INST_LEFT_KEY_REG_n_4),
        .\FSM_sequential_current_state_reg[1]_4 (INST_LEFT_KEY_REG_n_5),
        .\FSM_sequential_current_state_reg[1]_5 (INST_LEFT_KEY_REG_n_6),
        .\FSM_sequential_current_state_reg[1]_6 (INST_LEFT_KEY_REG_n_7),
        .\FSM_sequential_current_state_reg[1]_7 (INST_LEFT_KEY_REG_n_8),
        .\FSM_sequential_current_state_reg[1]_8 (INST_LEFT_KEY_REG_n_9),
        .\FSM_sequential_current_state_reg[1]_9 (INST_LEFT_KEY_REG_n_10),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(KEY_REG_a_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[2] (INST_LEFT_KEY_REG_n_26),
        .lfsr_parallel_out(lfsr_parallel_out),
        .out(current_state_0),
        .\temp_reg_reg[0]_0 (INST_RIGHT_KEY_REG_n_25),
        .\temp_reg_reg[10]_0 (INST_RIGHT_KEY_REG_n_41),
        .\temp_reg_reg[11]_0 (INST_RIGHT_KEY_REG_n_30),
        .\temp_reg_reg[12]_0 (INST_RIGHT_KEY_REG_n_27),
        .\temp_reg_reg[13]_0 (INST_RIGHT_KEY_REG_n_40),
        .\temp_reg_reg[14]_0 (INST_RIGHT_KEY_REG_n_39),
        .\temp_reg_reg[15]_0 (INST_RIGHT_KEY_REG_n_38),
        .\temp_reg_reg[16]_0 (INST_RIGHT_KEY_REG_n_37),
        .\temp_reg_reg[17]_0 (INST_RIGHT_KEY_REG_n_31),
        .\temp_reg_reg[18]_0 (INST_RIGHT_KEY_REG_n_36),
        .\temp_reg_reg[19]_0 (INST_RIGHT_KEY_REG_n_32),
        .\temp_reg_reg[1]_0 (INST_RIGHT_KEY_REG_n_47),
        .\temp_reg_reg[20]_0 (INST_RIGHT_KEY_REG_n_0),
        .\temp_reg_reg[21]_0 (INST_RIGHT_KEY_REG_n_35),
        .\temp_reg_reg[22]_0 (INST_RIGHT_KEY_REG_n_34),
        .\temp_reg_reg[23]_0 (INST_RIGHT_KEY_REG_n_33),
        .\temp_reg_reg[2]_0 (INST_RIGHT_KEY_REG_n_46),
        .\temp_reg_reg[3]_0 (INST_RIGHT_KEY_REG_n_28),
        .\temp_reg_reg[4]_0 (INST_RIGHT_KEY_REG_n_26),
        .\temp_reg_reg[5]_0 (INST_RIGHT_KEY_REG_n_45),
        .\temp_reg_reg[6]_0 (INST_RIGHT_KEY_REG_n_44),
        .\temp_reg_reg[7]_0 (INST_RIGHT_KEY_REG_n_43),
        .\temp_reg_reg[8]_0 (INST_RIGHT_KEY_REG_n_29),
        .\temp_reg_reg[9]_0 (INST_RIGHT_KEY_REG_n_42));
  lfsr INST_SHORT_LFSR
       (.E(IS_CE),
        .KEY_REG_CE(KEY_REG_CE),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\lfsr_internal_reg[0]_0 (lfsr_parallel_out),
        .out({current_state_0,lfsr_rst}),
        .pwropt(pwropt),
        .pwropt_1(INST_END_ENCRYPT_SHIFT_REG_n_0),
        .\temp_reg_reg[47] (INST_SHORT_LFSR_n_2));
endmodule

(* Datapath = "24" *) (* ECO_CHECKSUM = "ceadc4aa" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_3;
  wire Simon_DUT_n_0;
  wire Simon_DUT_n_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]cnt_internal_value;
  wire [2:0]current_state;
  wire led_out;
  wire led_out_OBUF;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  CNT INST_CNT
       (.Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_0),
        .\current_state_reg[2] (INST_CNT_n_3),
        .rst_IBUF(rst_IBUF));
  Simeck_48_96_parallel Simon_DUT
       (.Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (INST_CNT_n_3),
        .current_state(current_state),
        .\current_state_reg[1] (Simon_DUT_n_0),
        .\current_state_reg[2] (Simon_DUT_n_1),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF));
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
        .D(Simon_DUT_n_0),
        .Q(current_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_1),
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

module end_encrypt_shift_reg
   (\FSM_sequential_current_state_reg[0] ,
    out,
    \lfsr_internal_reg[3] ,
    \current_state_reg[1] ,
    current_state,
    clk_IBUF_BUFG);
  output \FSM_sequential_current_state_reg[0] ;
  input [1:0]out;
  input \lfsr_internal_reg[3] ;
  input \current_state_reg[1] ;
  input [0:0]current_state;
  input clk_IBUF_BUFG;

  wire \FSM_sequential_current_state_reg[0] ;
  wire clk_IBUF_BUFG;
  wire [0:0]current_state;
  wire \current_state_reg[1] ;
  wire end_encrypt;
  wire \lfsr_internal_reg[3] ;
  wire [1:0]out;
  wire \reg_internal[0]_i_1_n_0 ;
  wire \reg_internal[1]_i_1_n_0 ;
  wire \reg_internal_reg[0]_CE_cooolgate_en_sig_4 ;
  wire \reg_internal_reg_n_0_[0] ;

  LUT6 #(
    .INIT(64'hAAEF0000AAEFA0E5)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(end_encrypt),
        .I2(out[1]),
        .I3(\lfsr_internal_reg[3] ),
        .I4(\current_state_reg[1] ),
        .I5(current_state),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \reg_internal[0]_i_1 
       (.I0(end_encrypt),
        .I1(\lfsr_internal_reg[3] ),
        .I2(out[1]),
        .I3(\reg_internal_reg_n_0_[0] ),
        .O(\reg_internal[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \reg_internal[1]_i_1 
       (.I0(\reg_internal_reg_n_0_[0] ),
        .I1(\lfsr_internal_reg[3] ),
        .I2(out[1]),
        .I3(end_encrypt),
        .O(\reg_internal[1]_i_1_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDSE #(
    .INIT(1'b1)) 
    \reg_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\reg_internal[0]_i_1_n_0 ),
        .Q(\reg_internal_reg_n_0_[0] ),
        .S(out[0]));
  LUT3 #(
    .INIT(8'hf2)) 
    \reg_internal_reg[0]_CE_cooolgate_en_gate_11 
       (.I0(out[1]),
        .I1(\lfsr_internal_reg[3] ),
        .I2(out[0]),
        .O(\reg_internal_reg[0]_CE_cooolgate_en_sig_4 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_internal_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\reg_internal[1]_i_1_n_0 ),
        .Q(end_encrypt),
        .R(out[0]));
endmodule

module lfsr
   (\lfsr_internal_reg[0]_0 ,
    KEY_REG_CE,
    \temp_reg_reg[47] ,
    E,
    out,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1);
  output [0:0]\lfsr_internal_reg[0]_0 ;
  output KEY_REG_CE;
  output \temp_reg_reg[47] ;
  output [0:0]E;
  input [1:0]out;
  input clk_IBUF_BUFG;
  output pwropt;
  input pwropt_1;

  wire [0:0]E;
  wire KEY_REG_CE;
  wire clk_IBUF_BUFG;
  wire [0:0]\lfsr_internal_reg[0]_0 ;
  wire \lfsr_internal_reg[0]_CE_cooolgate_en_sig_3 ;
  wire [3:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [0:0]p_2_out;
  wire \^pwropt ;
  wire \temp_reg_reg[47] ;
  wire \xlnx_opt_E[0] ;

  assign \^pwropt  = pwropt_1;
  assign pwropt = lfsr_parallel_out[3];
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[0]),
        .I3(\lfsr_internal_reg[0]_0 ),
        .I4(lfsr_parallel_out[1]),
        .O(\temp_reg_reg[47] ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(lfsr_parallel_out[2]),
        .I1(\lfsr_internal_reg[0]_0 ),
        .O(p_2_out));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(p_2_out),
        .Q(lfsr_parallel_out[0]),
        .S(out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \lfsr_internal_reg[0]_CE_cooolgate_en_gate_5 
       (.I0(\^pwropt ),
        .O(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_3 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]),
        .S(out[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(lfsr_parallel_out[1]),
        .Q(lfsr_parallel_out[2]),
        .S(out[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]),
        .S(out[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_3 ),
        .D(lfsr_parallel_out[3]),
        .Q(\lfsr_internal_reg[0]_0 ),
        .S(out[0]));
  LUT3 #(
    .INIT(8'h0E)) 
    \temp_reg[47]_i_1 
       (.I0(\temp_reg_reg[47] ),
        .I1(out[1]),
        .I2(out[0]),
        .O(KEY_REG_CE));
  LUT2 #(
    .INIT(4'hB)) 
    \xlnx_opt_LUT_temp_reg[47]_i_1__0 
       (.I0(lfsr_parallel_out[1]),
        .I1(\lfsr_internal_reg[0]_0 ),
        .O(\xlnx_opt_E[0] ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF00FFD9)) 
    \xlnx_opt_LUT_temp_reg[47]_i_1__0_1 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[0]),
        .I2(lfsr_parallel_out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\xlnx_opt_E[0] ),
        .O(E));
endmodule

module normal_shift_reg
   (\temp_reg_reg[23] ,
    \temp_reg_reg[22] ,
    \temp_reg_reg[21] ,
    \temp_reg_reg[20] ,
    \temp_reg_reg[19] ,
    \temp_reg_reg[18] ,
    \temp_reg_reg[17] ,
    \temp_reg_reg[16] ,
    \temp_reg_reg[15] ,
    \temp_reg_reg[14] ,
    \temp_reg_reg[13] ,
    \temp_reg_reg[12] ,
    \temp_reg_reg[11] ,
    \temp_reg_reg[10] ,
    \temp_reg_reg[9] ,
    \temp_reg_reg[8] ,
    \temp_reg_reg[7] ,
    \temp_reg_reg[6] ,
    \temp_reg_reg[5] ,
    \temp_reg_reg[4] ,
    \temp_reg_reg[3] ,
    \temp_reg_reg[2] ,
    \temp_reg_reg[1] ,
    \temp_reg_reg[0] ,
    \temp_reg_reg[20]_0 ,
    \temp_reg_reg[3]_0 ,
    \temp_reg_reg[8]_0 ,
    KEY_REG_CE,
    \temp_reg_reg[18]_0 ,
    clk_IBUF_BUFG,
    \temp_reg_reg[17]_0 ,
    \temp_reg_reg[16]_0 ,
    \temp_reg_reg[15]_0 ,
    \temp_reg_reg[14]_0 ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[11]_0 ,
    \temp_reg_reg[10]_0 ,
    \temp_reg_reg[9]_0 ,
    \temp_reg_reg[8]_1 ,
    \temp_reg_reg[7]_0 ,
    \temp_reg_reg[6]_0 ,
    \temp_reg_reg[5]_0 ,
    \temp_reg_reg[4]_0 ,
    \temp_reg_reg[3]_1 ,
    \temp_reg_reg[2]_0 ,
    \temp_reg_reg[1]_0 ,
    \temp_reg_reg[0]_0 ,
    \temp_reg_reg[4]_1 ,
    \temp_reg_reg[3]_2 ,
    \temp_reg_reg[2]_1 ,
    \temp_reg_reg[1]_1 ,
    \temp_reg_reg[19]_0 ,
    out,
    current_state,
    Q,
    pwropt,
    pwropt_1,
    pwropt_2);
  output \temp_reg_reg[23] ;
  output \temp_reg_reg[22] ;
  output \temp_reg_reg[21] ;
  output \temp_reg_reg[20] ;
  output \temp_reg_reg[19] ;
  output \temp_reg_reg[18] ;
  output \temp_reg_reg[17] ;
  output \temp_reg_reg[16] ;
  output \temp_reg_reg[15] ;
  output \temp_reg_reg[14] ;
  output \temp_reg_reg[13] ;
  output \temp_reg_reg[12] ;
  output \temp_reg_reg[11] ;
  output \temp_reg_reg[10] ;
  output \temp_reg_reg[9] ;
  output \temp_reg_reg[8] ;
  output \temp_reg_reg[7] ;
  output \temp_reg_reg[6] ;
  output \temp_reg_reg[5] ;
  output \temp_reg_reg[4] ;
  output \temp_reg_reg[3] ;
  output \temp_reg_reg[2] ;
  output \temp_reg_reg[1] ;
  output \temp_reg_reg[0] ;
  output \temp_reg_reg[20]_0 ;
  output \temp_reg_reg[3]_0 ;
  output \temp_reg_reg[8]_0 ;
  input KEY_REG_CE;
  input \temp_reg_reg[18]_0 ;
  input clk_IBUF_BUFG;
  input \temp_reg_reg[17]_0 ;
  input \temp_reg_reg[16]_0 ;
  input \temp_reg_reg[15]_0 ;
  input \temp_reg_reg[14]_0 ;
  input \temp_reg_reg[13]_0 ;
  input \temp_reg_reg[12]_0 ;
  input \temp_reg_reg[11]_0 ;
  input \temp_reg_reg[10]_0 ;
  input \temp_reg_reg[9]_0 ;
  input \temp_reg_reg[8]_1 ;
  input \temp_reg_reg[7]_0 ;
  input \temp_reg_reg[6]_0 ;
  input \temp_reg_reg[5]_0 ;
  input \temp_reg_reg[4]_0 ;
  input \temp_reg_reg[3]_1 ;
  input \temp_reg_reg[2]_0 ;
  input \temp_reg_reg[1]_0 ;
  input \temp_reg_reg[0]_0 ;
  input \temp_reg_reg[4]_1 ;
  input \temp_reg_reg[3]_2 ;
  input \temp_reg_reg[2]_1 ;
  input \temp_reg_reg[1]_1 ;
  input \temp_reg_reg[19]_0 ;
  input [1:0]out;
  input [1:0]current_state;
  input [1:0]Q;
  input pwropt;
  input pwropt_1;
  input pwropt_2;

  wire KEY_REG_CE;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire [1:0]out;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire \temp_reg_reg[0] ;
  wire \temp_reg_reg[0]_0 ;
  wire \temp_reg_reg[10] ;
  wire \temp_reg_reg[10]_0 ;
  wire \temp_reg_reg[11] ;
  wire \temp_reg_reg[11]_0 ;
  wire \temp_reg_reg[12] ;
  wire \temp_reg_reg[12]_0 ;
  wire \temp_reg_reg[13] ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[14] ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[15] ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[16] ;
  wire \temp_reg_reg[16]_0 ;
  wire \temp_reg_reg[17] ;
  wire \temp_reg_reg[17]_0 ;
  wire \temp_reg_reg[18] ;
  wire \temp_reg_reg[18]_0 ;
  wire \temp_reg_reg[19] ;
  wire \temp_reg_reg[19]_0 ;
  wire \temp_reg_reg[1] ;
  wire \temp_reg_reg[1]_0 ;
  wire \temp_reg_reg[1]_1 ;
  wire \temp_reg_reg[20] ;
  wire \temp_reg_reg[20]_0 ;
  wire \temp_reg_reg[21] ;
  wire \temp_reg_reg[22] ;
  wire \temp_reg_reg[23] ;
  wire \temp_reg_reg[27]_srl2_CE_cooolgate_en_sig_2 ;
  wire \temp_reg_reg[2] ;
  wire \temp_reg_reg[2]_0 ;
  wire \temp_reg_reg[2]_1 ;
  wire \temp_reg_reg[3] ;
  wire \temp_reg_reg[3]_0 ;
  wire \temp_reg_reg[3]_1 ;
  wire \temp_reg_reg[3]_2 ;
  wire \temp_reg_reg[4] ;
  wire \temp_reg_reg[4]_0 ;
  wire \temp_reg_reg[4]_1 ;
  wire \temp_reg_reg[5] ;
  wire \temp_reg_reg[5]_0 ;
  wire \temp_reg_reg[6] ;
  wire \temp_reg_reg[6]_0 ;
  wire \temp_reg_reg[7] ;
  wire \temp_reg_reg[7]_0 ;
  wire \temp_reg_reg[8] ;
  wire \temp_reg_reg[8]_0 ;
  wire \temp_reg_reg[8]_1 ;
  wire \temp_reg_reg[9] ;
  wire \temp_reg_reg[9]_0 ;

  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[24]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[19]_0 ),
        .Q(\temp_reg_reg[0] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[25]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[25]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[1]_1 ),
        .Q(\temp_reg_reg[1] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[26]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[26]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[2]_1 ),
        .Q(\temp_reg_reg[2] ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[27]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[27]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\temp_reg_reg[27]_srl2_CE_cooolgate_en_sig_2 ),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[3]_2 ),
        .Q(\temp_reg_reg[3] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[28]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[28]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[4]_1 ),
        .Q(\temp_reg_reg[4] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[29]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[29]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[0]_0 ),
        .Q(\temp_reg_reg[5] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[30]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[30]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[1]_0 ),
        .Q(\temp_reg_reg[6] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[31]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[31]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[2]_0 ),
        .Q(\temp_reg_reg[7] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[32]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[32]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[3]_1 ),
        .Q(\temp_reg_reg[8] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[33]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[33]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[4]_0 ),
        .Q(\temp_reg_reg[9] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[34]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[34]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[5]_0 ),
        .Q(\temp_reg_reg[10] ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[35]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[35]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\temp_reg_reg[27]_srl2_CE_cooolgate_en_sig_2 ),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[6]_0 ),
        .Q(\temp_reg_reg[11] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[36]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[36]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[7]_0 ),
        .Q(\temp_reg_reg[12] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[37]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[37]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[8]_1 ),
        .Q(\temp_reg_reg[13] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[38]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[38]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[9]_0 ),
        .Q(\temp_reg_reg[14] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[39]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[39]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[10]_0 ),
        .Q(\temp_reg_reg[15] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[40]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[40]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[11]_0 ),
        .Q(\temp_reg_reg[16] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[41]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[41]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[12]_0 ),
        .Q(\temp_reg_reg[17] ));
  LUT4 #(
    .INIT(16'h8808)) 
    \temp_reg_reg[41]_srl2_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\temp_reg_reg[8]_0 ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[42]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[42]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[13]_0 ),
        .Q(\temp_reg_reg[18] ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[43]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[43]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\temp_reg_reg[27]_srl2_CE_cooolgate_en_sig_2 ),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[14]_0 ),
        .Q(\temp_reg_reg[19] ));
  LUT5 #(
    .INIT(32'hB0000000)) 
    \temp_reg_reg[43]_srl2_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(Q[0]),
        .O(\temp_reg_reg[3]_0 ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[44]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[44]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[15]_0 ),
        .Q(\temp_reg_reg[20] ));
  LUT5 #(
    .INIT(32'hB0000000)) 
    \temp_reg_reg[44]_srl2_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(Q[1]),
        .O(\temp_reg_reg[20]_0 ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[45]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[45]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[16]_0 ),
        .Q(\temp_reg_reg[21] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[46]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[46]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[17]_0 ),
        .Q(\temp_reg_reg[22] ));
  (* srl_bus_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_LEFT_KEY_REG/temp_reg_reg[47]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[47]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[18]_0 ),
        .Q(\temp_reg_reg[23] ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \xlnx_opt_LUT_temp_reg_reg[27]_srl2_CE_cooolgate_en_gate_2 
       (.I0(out[0]),
        .I1(pwropt_2),
        .I2(pwropt_1),
        .I3(pwropt),
        .I4(KEY_REG_CE),
        .O(\temp_reg_reg[27]_srl2_CE_cooolgate_en_sig_2 ));
endmodule

module parallel_tapped_shift_reg
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    \temp_reg_reg[15]_0 ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \cnt_internal_value_reg[0] ,
    Q,
    \cnt_internal_value_reg[1] ,
    out,
    E,
    clk_IBUF_BUFG);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[15]_0 ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \cnt_internal_value_reg[0] ;
  input [23:0]Q;
  input [1:0]\cnt_internal_value_reg[1] ;
  input [1:0]out;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire [23:0]IS_left_reg_out;
  wire [23:0]IS_right_reg_out;
  wire [23:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire [1:0]\cnt_internal_value_reg[1] ;
  wire [2:0]current_state;
  wire \current_state[2]_i_10_n_0 ;
  wire \current_state[2]_i_11_n_0 ;
  wire \current_state[2]_i_12_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_6_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state[2]_i_8_n_0 ;
  wire \current_state[2]_i_9_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire [1:0]out;
  wire [23:0]p_0_in;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg[0]_i_2_n_0 ;
  wire \temp_reg[10]_i_2_n_0 ;
  wire \temp_reg[11]_i_2_n_0 ;
  wire \temp_reg[13]_i_2_n_0 ;
  wire \temp_reg[14]_i_2_n_0 ;
  wire \temp_reg[17]_i_2_n_0 ;
  wire \temp_reg[1]_i_2_n_0 ;
  wire \temp_reg[20]_i_2_n_0 ;
  wire \temp_reg[21]_i_2_n_0 ;
  wire \temp_reg[22]_i_2_n_0 ;
  wire \temp_reg[22]_i_3_n_0 ;
  wire \temp_reg[2]_i_2_n_0 ;
  wire \temp_reg[3]_i_2_n_0 ;
  wire \temp_reg[5]_i_2_n_0 ;
  wire \temp_reg[6]_i_2_n_0 ;
  wire \temp_reg[8]_i_2_n_0 ;
  wire \temp_reg_reg[15]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFD0F0D4F4)) 
    \current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(start_IBUF),
        .I4(\current_state[2]_i_3_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000FFFFAEAA)) 
    \current_state[2]_i_1 
       (.I0(\cnt_internal_value_reg[0] ),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(\current_state[2]_i_3_n_0 ),
        .I4(\current_state[2]_i_4_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[2] ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \current_state[2]_i_10 
       (.I0(IS_right_reg_out[7]),
        .I1(IS_right_reg_out[6]),
        .I2(IS_right_reg_out[9]),
        .I3(IS_right_reg_out[8]),
        .O(\current_state[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \current_state[2]_i_11 
       (.I0(IS_right_reg_out[0]),
        .I1(IS_right_reg_out[1]),
        .I2(IS_right_reg_out[4]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\current_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \current_state[2]_i_12 
       (.I0(IS_right_reg_out[14]),
        .I1(IS_right_reg_out[13]),
        .I2(IS_right_reg_out[10]),
        .I3(IS_right_reg_out[12]),
        .I4(IS_right_reg_out[20]),
        .I5(IS_right_reg_out[15]),
        .O(\current_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[2]_i_3 
       (.I0(\current_state[2]_i_5_n_0 ),
        .I1(\current_state[2]_i_6_n_0 ),
        .I2(\current_state[2]_i_7_n_0 ),
        .I3(\current_state[2]_i_8_n_0 ),
        .I4(\current_state[2]_i_9_n_0 ),
        .I5(\current_state[2]_i_10_n_0 ),
        .O(\current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \current_state[2]_i_4 
       (.I0(\current_state[2]_i_10_n_0 ),
        .I1(\current_state[2]_i_9_n_0 ),
        .I2(\current_state[2]_i_8_n_0 ),
        .I3(\current_state[2]_i_7_n_0 ),
        .I4(\current_state[2]_i_11_n_0 ),
        .I5(\current_state[2]_i_12_n_0 ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \current_state[2]_i_5 
       (.I0(IS_right_reg_out[12]),
        .I1(IS_right_reg_out[10]),
        .I2(IS_right_reg_out[13]),
        .I3(IS_right_reg_out[14]),
        .O(\current_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \current_state[2]_i_6 
       (.I0(IS_right_reg_out[0]),
        .I1(IS_right_reg_out[15]),
        .I2(IS_right_reg_out[20]),
        .I3(IS_right_reg_out[4]),
        .I4(IS_right_reg_out[1]),
        .O(\current_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \current_state[2]_i_7 
       (.I0(IS_right_reg_out[16]),
        .I1(IS_right_reg_out[11]),
        .I2(IS_right_reg_out[17]),
        .I3(IS_right_reg_out[18]),
        .O(\current_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \current_state[2]_i_8 
       (.I0(IS_right_reg_out[21]),
        .I1(IS_right_reg_out[19]),
        .I2(IS_right_reg_out[23]),
        .I3(IS_right_reg_out[22]),
        .O(\current_state[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \current_state[2]_i_9 
       (.I0(IS_right_reg_out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(IS_right_reg_out[5]),
        .I4(IS_right_reg_out[3]),
        .O(\current_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F88F8FF8)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\cnt_internal_value_reg[1] [0]),
        .I2(\temp_reg[0]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(IS_right_reg_out[0]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[0]_i_2 
       (.I0(IS_left_reg_out[19]),
        .I1(IS_left_reg_out[0]),
        .I2(IS_left_reg_out[23]),
        .O(\temp_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4F444F44444F)) 
    \temp_reg[10]_i_1 
       (.I0(\cnt_internal_value_reg[1] [0]),
        .I1(\temp_reg[22]_i_2_n_0 ),
        .I2(\temp_reg_reg[15]_0 ),
        .I3(IS_right_reg_out[10]),
        .I4(Q[10]),
        .I5(\temp_reg[10]_i_2_n_0 ),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[10]_i_2 
       (.I0(IS_left_reg_out[10]),
        .I1(IS_left_reg_out[5]),
        .I2(IS_left_reg_out[9]),
        .O(\temp_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F88F8FF8)) 
    \temp_reg[11]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\cnt_internal_value_reg[1] [0]),
        .I2(\temp_reg[11]_i_2_n_0 ),
        .I3(Q[11]),
        .I4(IS_right_reg_out[11]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[11]_i_2 
       (.I0(IS_left_reg_out[11]),
        .I1(IS_left_reg_out[6]),
        .I2(IS_left_reg_out[10]),
        .O(\temp_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[12]_i_1 
       (.I0(IS_left_reg_out[12]),
        .I1(IS_left_reg_out[7]),
        .I2(IS_left_reg_out[11]),
        .I3(Q[12]),
        .I4(IS_right_reg_out[12]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[13]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\temp_reg[13]_i_2_n_0 ),
        .I2(Q[13]),
        .I3(IS_right_reg_out[13]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[13]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[13]_i_2 
       (.I0(IS_left_reg_out[13]),
        .I1(IS_left_reg_out[8]),
        .I2(IS_left_reg_out[12]),
        .O(\temp_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[14]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\temp_reg[14]_i_2_n_0 ),
        .I2(Q[14]),
        .I3(IS_right_reg_out[14]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[14]_i_2 
       (.I0(IS_left_reg_out[14]),
        .I1(IS_left_reg_out[9]),
        .I2(IS_left_reg_out[13]),
        .O(\temp_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[15]_i_1 
       (.I0(IS_left_reg_out[15]),
        .I1(IS_left_reg_out[10]),
        .I2(IS_left_reg_out[14]),
        .I3(Q[15]),
        .I4(IS_right_reg_out[15]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[16]_i_1 
       (.I0(IS_left_reg_out[16]),
        .I1(IS_left_reg_out[11]),
        .I2(IS_left_reg_out[15]),
        .I3(Q[16]),
        .I4(IS_right_reg_out[16]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'h88888888F88F8FF8)) 
    \temp_reg[17]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\cnt_internal_value_reg[1] [0]),
        .I2(\temp_reg[17]_i_2_n_0 ),
        .I3(Q[17]),
        .I4(IS_right_reg_out[17]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[17]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[17]_i_2 
       (.I0(IS_left_reg_out[17]),
        .I1(IS_left_reg_out[12]),
        .I2(IS_left_reg_out[16]),
        .O(\temp_reg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[18]_i_1 
       (.I0(IS_left_reg_out[18]),
        .I1(IS_left_reg_out[13]),
        .I2(IS_left_reg_out[17]),
        .I3(Q[18]),
        .I4(IS_right_reg_out[18]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[19]_i_1 
       (.I0(IS_left_reg_out[19]),
        .I1(IS_left_reg_out[14]),
        .I2(IS_left_reg_out[18]),
        .I3(Q[19]),
        .I4(IS_right_reg_out[19]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[1]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\temp_reg[1]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(IS_right_reg_out[1]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[1]_i_2 
       (.I0(IS_left_reg_out[20]),
        .I1(IS_left_reg_out[1]),
        .I2(IS_left_reg_out[0]),
        .O(\temp_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F88F8FF8)) 
    \temp_reg[20]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\cnt_internal_value_reg[1] [0]),
        .I2(\temp_reg[20]_i_2_n_0 ),
        .I3(Q[20]),
        .I4(IS_right_reg_out[20]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[20]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[20]_i_2 
       (.I0(IS_left_reg_out[20]),
        .I1(IS_left_reg_out[15]),
        .I2(IS_left_reg_out[19]),
        .O(\temp_reg[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[21]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\temp_reg[21]_i_2_n_0 ),
        .I2(Q[21]),
        .I3(IS_right_reg_out[21]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[21]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[21]_i_2 
       (.I0(IS_left_reg_out[21]),
        .I1(IS_left_reg_out[16]),
        .I2(IS_left_reg_out[20]),
        .O(\temp_reg[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F88F8FF8)) 
    \temp_reg[22]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\cnt_internal_value_reg[1] [0]),
        .I2(\temp_reg[22]_i_3_n_0 ),
        .I3(Q[22]),
        .I4(IS_right_reg_out[22]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'h0000B000)) 
    \temp_reg[22]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(\cnt_internal_value_reg[1] [1]),
        .O(\temp_reg[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[22]_i_3 
       (.I0(IS_left_reg_out[22]),
        .I1(IS_left_reg_out[17]),
        .I2(IS_left_reg_out[21]),
        .O(\temp_reg[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[23]_i_1 
       (.I0(IS_left_reg_out[23]),
        .I1(IS_left_reg_out[18]),
        .I2(IS_left_reg_out[22]),
        .I3(Q[23]),
        .I4(IS_right_reg_out[23]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[23]));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg[23]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\temp_reg_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h444F4F444F44444F)) 
    \temp_reg[2]_i_1 
       (.I0(\cnt_internal_value_reg[1] [0]),
        .I1(\temp_reg[22]_i_2_n_0 ),
        .I2(\temp_reg_reg[15]_0 ),
        .I3(IS_right_reg_out[2]),
        .I4(Q[2]),
        .I5(\temp_reg[2]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[2]_i_2 
       (.I0(IS_left_reg_out[21]),
        .I1(IS_left_reg_out[2]),
        .I2(IS_left_reg_out[1]),
        .O(\temp_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4F444F44444F)) 
    \temp_reg[3]_i_1 
       (.I0(\cnt_internal_value_reg[1] [0]),
        .I1(\temp_reg[22]_i_2_n_0 ),
        .I2(\temp_reg_reg[15]_0 ),
        .I3(IS_right_reg_out[3]),
        .I4(Q[3]),
        .I5(\temp_reg[3]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[3]_i_2 
       (.I0(IS_left_reg_out[22]),
        .I1(IS_left_reg_out[3]),
        .I2(IS_left_reg_out[2]),
        .O(\temp_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[4]_i_1 
       (.I0(IS_left_reg_out[23]),
        .I1(IS_left_reg_out[4]),
        .I2(IS_left_reg_out[3]),
        .I3(Q[4]),
        .I4(IS_right_reg_out[4]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[5]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\temp_reg[5]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(IS_right_reg_out[5]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[5]_i_2 
       (.I0(IS_left_reg_out[5]),
        .I1(IS_left_reg_out[0]),
        .I2(IS_left_reg_out[4]),
        .O(\temp_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[6]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\temp_reg[6]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(IS_right_reg_out[6]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[6]_i_2 
       (.I0(IS_left_reg_out[6]),
        .I1(IS_left_reg_out[1]),
        .I2(IS_left_reg_out[5]),
        .O(\temp_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[7]_i_1 
       (.I0(IS_left_reg_out[7]),
        .I1(IS_left_reg_out[2]),
        .I2(IS_left_reg_out[6]),
        .I3(Q[7]),
        .I4(IS_right_reg_out[7]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h88888888F88F8FF8)) 
    \temp_reg[8]_i_1 
       (.I0(\temp_reg[22]_i_2_n_0 ),
        .I1(\cnt_internal_value_reg[1] [0]),
        .I2(\temp_reg[8]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(IS_right_reg_out[8]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[8]_i_2 
       (.I0(IS_left_reg_out[8]),
        .I1(IS_left_reg_out[3]),
        .I2(IS_left_reg_out[7]),
        .O(\temp_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[9]_i_1 
       (.I0(IS_left_reg_out[9]),
        .I1(IS_left_reg_out[4]),
        .I2(IS_left_reg_out[8]),
        .I3(Q[9]),
        .I4(IS_right_reg_out[9]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[0]),
        .Q(IS_left_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[10]),
        .Q(IS_left_reg_out[10]),
        .R(1'b0));
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
        .D(p_0_in[12]),
        .Q(IS_left_reg_out[12]),
        .R(1'b0));
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
        .D(p_0_in[15]),
        .Q(IS_left_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[16]),
        .Q(IS_left_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[17]),
        .Q(IS_left_reg_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[18]),
        .Q(IS_left_reg_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[19]),
        .Q(IS_left_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[1]),
        .Q(IS_left_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[20]),
        .Q(IS_left_reg_out[20]),
        .R(1'b0));
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
        .D(p_0_in[23]),
        .Q(IS_left_reg_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[0]),
        .Q(IS_right_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[1]),
        .Q(IS_right_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[2]),
        .Q(IS_right_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[3]),
        .Q(IS_right_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[4]),
        .Q(IS_right_reg_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[5]),
        .Q(IS_right_reg_out[5]),
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
        .D(IS_left_reg_out[6]),
        .Q(IS_right_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[7]),
        .Q(IS_right_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[8]),
        .Q(IS_right_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[9]),
        .Q(IS_right_reg_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[10]),
        .Q(IS_right_reg_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[11]),
        .Q(IS_right_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[12]),
        .Q(IS_right_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[13]),
        .Q(IS_right_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[14]),
        .Q(IS_right_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[15]),
        .Q(IS_right_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[3]),
        .Q(IS_left_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[16]),
        .Q(IS_right_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[17]),
        .Q(IS_right_reg_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[18]),
        .Q(IS_right_reg_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[19]),
        .Q(IS_right_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[20]),
        .Q(IS_right_reg_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[21]),
        .Q(IS_right_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[22]),
        .Q(IS_right_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[23]),
        .Q(IS_right_reg_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[4]),
        .Q(IS_left_reg_out[4]),
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
        .D(p_0_in[7]),
        .Q(IS_left_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[8]),
        .Q(IS_left_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[9]),
        .Q(IS_left_reg_out[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "parallel_tapped_shift_reg" *) 
module parallel_tapped_shift_reg_0
   (\temp_reg_reg[20]_0 ,
    Q,
    \temp_reg_reg[0]_0 ,
    \temp_reg_reg[4]_0 ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[3]_0 ,
    \temp_reg_reg[8]_0 ,
    \temp_reg_reg[11]_0 ,
    \temp_reg_reg[17]_0 ,
    \temp_reg_reg[19]_0 ,
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
    KEY_REG_CE,
    \FSM_sequential_current_state_reg[1] ,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[1]_1 ,
    \FSM_sequential_current_state_reg[1]_2 ,
    \FSM_sequential_current_state_reg[1]_3 ,
    \FSM_sequential_current_state_reg[1]_4 ,
    \FSM_sequential_current_state_reg[1]_5 ,
    \FSM_sequential_current_state_reg[1]_6 ,
    \FSM_sequential_current_state_reg[1]_7 ,
    \FSM_sequential_current_state_reg[1]_8 ,
    \FSM_sequential_current_state_reg[1]_9 ,
    \FSM_sequential_current_state_reg[1]_10 ,
    \FSM_sequential_current_state_reg[1]_11 ,
    \FSM_sequential_current_state_reg[1]_12 ,
    \FSM_sequential_current_state_reg[1]_13 ,
    \FSM_sequential_current_state_reg[1]_14 ,
    \FSM_sequential_current_state_reg[1]_15 ,
    \FSM_sequential_current_state_reg[1]_16 ,
    \FSM_sequential_current_state_reg[1]_17 ,
    \FSM_sequential_current_state_reg[1]_18 ,
    \FSM_sequential_current_state_reg[1]_19 ,
    \FSM_sequential_current_state_reg[1]_20 ,
    \FSM_sequential_current_state_reg[1]_21 ,
    \FSM_sequential_current_state_reg[1]_22 ,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    lfsr_parallel_out,
    \FSM_sequential_current_state_reg[0]_1 ,
    \current_state_reg[2] ,
    out);
  output \temp_reg_reg[20]_0 ;
  output [23:0]Q;
  output \temp_reg_reg[0]_0 ;
  output \temp_reg_reg[4]_0 ;
  output \temp_reg_reg[12]_0 ;
  output \temp_reg_reg[3]_0 ;
  output \temp_reg_reg[8]_0 ;
  output \temp_reg_reg[11]_0 ;
  output \temp_reg_reg[17]_0 ;
  output \temp_reg_reg[19]_0 ;
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
  input KEY_REG_CE;
  input \FSM_sequential_current_state_reg[1] ;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input \FSM_sequential_current_state_reg[1]_2 ;
  input \FSM_sequential_current_state_reg[1]_3 ;
  input \FSM_sequential_current_state_reg[1]_4 ;
  input \FSM_sequential_current_state_reg[1]_5 ;
  input \FSM_sequential_current_state_reg[1]_6 ;
  input \FSM_sequential_current_state_reg[1]_7 ;
  input \FSM_sequential_current_state_reg[1]_8 ;
  input \FSM_sequential_current_state_reg[1]_9 ;
  input \FSM_sequential_current_state_reg[1]_10 ;
  input \FSM_sequential_current_state_reg[1]_11 ;
  input \FSM_sequential_current_state_reg[1]_12 ;
  input \FSM_sequential_current_state_reg[1]_13 ;
  input \FSM_sequential_current_state_reg[1]_14 ;
  input \FSM_sequential_current_state_reg[1]_15 ;
  input \FSM_sequential_current_state_reg[1]_16 ;
  input \FSM_sequential_current_state_reg[1]_17 ;
  input \FSM_sequential_current_state_reg[1]_18 ;
  input \FSM_sequential_current_state_reg[1]_19 ;
  input \FSM_sequential_current_state_reg[1]_20 ;
  input \FSM_sequential_current_state_reg[1]_21 ;
  input \FSM_sequential_current_state_reg[1]_22 ;
  input \FSM_sequential_current_state_reg[0] ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input [0:0]lfsr_parallel_out;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \current_state_reg[2] ;
  input [0:0]out;

  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[1]_10 ;
  wire \FSM_sequential_current_state_reg[1]_11 ;
  wire \FSM_sequential_current_state_reg[1]_12 ;
  wire \FSM_sequential_current_state_reg[1]_13 ;
  wire \FSM_sequential_current_state_reg[1]_14 ;
  wire \FSM_sequential_current_state_reg[1]_15 ;
  wire \FSM_sequential_current_state_reg[1]_16 ;
  wire \FSM_sequential_current_state_reg[1]_17 ;
  wire \FSM_sequential_current_state_reg[1]_18 ;
  wire \FSM_sequential_current_state_reg[1]_19 ;
  wire \FSM_sequential_current_state_reg[1]_2 ;
  wire \FSM_sequential_current_state_reg[1]_20 ;
  wire \FSM_sequential_current_state_reg[1]_21 ;
  wire \FSM_sequential_current_state_reg[1]_22 ;
  wire \FSM_sequential_current_state_reg[1]_3 ;
  wire \FSM_sequential_current_state_reg[1]_4 ;
  wire \FSM_sequential_current_state_reg[1]_5 ;
  wire \FSM_sequential_current_state_reg[1]_6 ;
  wire \FSM_sequential_current_state_reg[1]_7 ;
  wire \FSM_sequential_current_state_reg[1]_8 ;
  wire \FSM_sequential_current_state_reg[1]_9 ;
  wire KEY_REG_CE;
  wire [23:0]KEY_REG_b_out;
  wire [23:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire [0:0]lfsr_parallel_out;
  wire [0:0]out;
  wire \temp_reg_reg[0]_0 ;
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
  wire \temp_reg_reg[2]_0 ;
  wire \temp_reg_reg[3]_0 ;
  wire \temp_reg_reg[4]_0 ;
  wire \temp_reg_reg[5]_0 ;
  wire \temp_reg_reg[6]_0 ;
  wire \temp_reg_reg[7]_0 ;
  wire \temp_reg_reg[8]_0 ;
  wire \temp_reg_reg[9]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_22 ),
        .Q(KEY_REG_b_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_12 ),
        .Q(KEY_REG_b_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_11 ),
        .Q(KEY_REG_b_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_10 ),
        .Q(KEY_REG_b_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_9 ),
        .Q(KEY_REG_b_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_8 ),
        .Q(KEY_REG_b_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_7 ),
        .Q(KEY_REG_b_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_6 ),
        .Q(KEY_REG_b_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_5 ),
        .Q(KEY_REG_b_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_4 ),
        .Q(KEY_REG_b_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_3 ),
        .Q(KEY_REG_b_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_21 ),
        .Q(KEY_REG_b_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_2 ),
        .Q(KEY_REG_b_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_1 ),
        .Q(KEY_REG_b_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_0 ),
        .Q(KEY_REG_b_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1] ),
        .Q(KEY_REG_b_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg_reg[24]_srl2_i_1 
       (.I0(KEY_REG_b_out[19]),
        .I1(KEY_REG_b_out[0]),
        .I2(KEY_REG_b_out[23]),
        .I3(lfsr_parallel_out),
        .I4(Q[0]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h87780000)) 
    \temp_reg_reg[25]_srl2_i_1 
       (.I0(KEY_REG_b_out[1]),
        .I1(KEY_REG_b_out[20]),
        .I2(Q[1]),
        .I3(KEY_REG_b_out[0]),
        .I4(out),
        .O(\temp_reg_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[26]_srl2_i_1 
       (.I0(KEY_REG_b_out[2]),
        .I1(KEY_REG_b_out[21]),
        .I2(Q[2]),
        .I3(KEY_REG_b_out[1]),
        .I4(out),
        .O(\temp_reg_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[27]_srl2_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(KEY_REG_b_out[3]),
        .I2(KEY_REG_b_out[22]),
        .I3(Q[3]),
        .I4(KEY_REG_b_out[2]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[28]_srl2_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(KEY_REG_b_out[4]),
        .I2(KEY_REG_b_out[23]),
        .I3(Q[4]),
        .I4(KEY_REG_b_out[3]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[5]),
        .Q(Q[5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[29]_srl2_i_1 
       (.I0(KEY_REG_b_out[0]),
        .I1(KEY_REG_b_out[5]),
        .I2(Q[5]),
        .I3(KEY_REG_b_out[4]),
        .I4(out),
        .O(\temp_reg_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_20 ),
        .Q(KEY_REG_b_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[6]),
        .Q(Q[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[30]_srl2_i_1 
       (.I0(KEY_REG_b_out[1]),
        .I1(KEY_REG_b_out[6]),
        .I2(Q[6]),
        .I3(KEY_REG_b_out[5]),
        .I4(out),
        .O(\temp_reg_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[31]_srl2_i_1 
       (.I0(KEY_REG_b_out[2]),
        .I1(KEY_REG_b_out[7]),
        .I2(Q[7]),
        .I3(KEY_REG_b_out[6]),
        .I4(out),
        .O(\temp_reg_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[8]),
        .Q(Q[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[32]_srl2_i_1 
       (.I0(\current_state_reg[2] ),
        .I1(KEY_REG_b_out[3]),
        .I2(KEY_REG_b_out[8]),
        .I3(Q[8]),
        .I4(KEY_REG_b_out[7]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[33]_srl2_i_1 
       (.I0(KEY_REG_b_out[4]),
        .I1(KEY_REG_b_out[9]),
        .I2(Q[9]),
        .I3(KEY_REG_b_out[8]),
        .I4(out),
        .O(\temp_reg_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[10]),
        .Q(Q[10]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[34]_srl2_i_1 
       (.I0(KEY_REG_b_out[5]),
        .I1(KEY_REG_b_out[10]),
        .I2(Q[10]),
        .I3(KEY_REG_b_out[9]),
        .I4(out),
        .O(\temp_reg_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[11]),
        .Q(Q[11]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[35]_srl2_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(KEY_REG_b_out[6]),
        .I2(KEY_REG_b_out[11]),
        .I3(Q[11]),
        .I4(KEY_REG_b_out[10]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[12]),
        .Q(Q[12]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[36]_srl2_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(KEY_REG_b_out[7]),
        .I2(KEY_REG_b_out[12]),
        .I3(Q[12]),
        .I4(KEY_REG_b_out[11]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[13]),
        .Q(Q[13]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[37]_srl2_i_1 
       (.I0(KEY_REG_b_out[8]),
        .I1(KEY_REG_b_out[13]),
        .I2(Q[13]),
        .I3(KEY_REG_b_out[12]),
        .I4(out),
        .O(\temp_reg_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[14]),
        .Q(Q[14]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[38]_srl2_i_1 
       (.I0(KEY_REG_b_out[9]),
        .I1(KEY_REG_b_out[14]),
        .I2(Q[14]),
        .I3(KEY_REG_b_out[13]),
        .I4(out),
        .O(\temp_reg_reg[14]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[15]),
        .Q(Q[15]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[39]_srl2_i_1 
       (.I0(KEY_REG_b_out[10]),
        .I1(KEY_REG_b_out[15]),
        .I2(Q[15]),
        .I3(KEY_REG_b_out[14]),
        .I4(out),
        .O(\temp_reg_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_19 ),
        .Q(KEY_REG_b_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[16]),
        .Q(Q[16]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[40]_srl2_i_1 
       (.I0(KEY_REG_b_out[11]),
        .I1(KEY_REG_b_out[16]),
        .I2(Q[16]),
        .I3(KEY_REG_b_out[15]),
        .I4(out),
        .O(\temp_reg_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[17]),
        .Q(Q[17]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[41]_srl2_i_1 
       (.I0(\current_state_reg[2] ),
        .I1(KEY_REG_b_out[12]),
        .I2(KEY_REG_b_out[17]),
        .I3(Q[17]),
        .I4(KEY_REG_b_out[16]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[17]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[18]),
        .Q(Q[18]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[42]_srl2_i_1 
       (.I0(KEY_REG_b_out[13]),
        .I1(KEY_REG_b_out[18]),
        .I2(Q[18]),
        .I3(KEY_REG_b_out[17]),
        .I4(out),
        .O(\temp_reg_reg[18]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[19]),
        .Q(Q[19]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[43]_srl2_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(KEY_REG_b_out[14]),
        .I2(KEY_REG_b_out[19]),
        .I3(Q[19]),
        .I4(KEY_REG_b_out[18]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[20]),
        .Q(Q[20]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFEAEABF)) 
    \temp_reg_reg[44]_srl2_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(KEY_REG_b_out[15]),
        .I2(KEY_REG_b_out[20]),
        .I3(Q[20]),
        .I4(KEY_REG_b_out[19]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\temp_reg_reg[20]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[21]),
        .Q(Q[21]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[45]_srl2_i_1 
       (.I0(KEY_REG_b_out[16]),
        .I1(KEY_REG_b_out[21]),
        .I2(Q[21]),
        .I3(KEY_REG_b_out[20]),
        .I4(out),
        .O(\temp_reg_reg[21]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[22]),
        .Q(Q[22]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[46]_srl2_i_1 
       (.I0(KEY_REG_b_out[17]),
        .I1(KEY_REG_b_out[22]),
        .I2(Q[22]),
        .I3(KEY_REG_b_out[21]),
        .I4(out),
        .O(\temp_reg_reg[22]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_b_out[23]),
        .Q(Q[23]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78870000)) 
    \temp_reg_reg[47]_srl2_i_1 
       (.I0(KEY_REG_b_out[18]),
        .I1(KEY_REG_b_out[23]),
        .I2(Q[23]),
        .I3(KEY_REG_b_out[22]),
        .I4(out),
        .O(\temp_reg_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_18 ),
        .Q(KEY_REG_b_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_17 ),
        .Q(KEY_REG_b_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_16 ),
        .Q(KEY_REG_b_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_15 ),
        .Q(KEY_REG_b_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_14 ),
        .Q(KEY_REG_b_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1]_13 ),
        .Q(KEY_REG_b_out[9]),
        .R(1'b0));
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
