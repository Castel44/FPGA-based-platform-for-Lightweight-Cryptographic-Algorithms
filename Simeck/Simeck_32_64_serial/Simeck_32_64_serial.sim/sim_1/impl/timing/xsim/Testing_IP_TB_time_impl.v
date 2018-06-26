// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 26 01:51:16 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simeck/Simeck_32_64_serial/Simeck_32_64_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (E,
    sel_1__2,
    \temp_reg_reg[15] ,
    sel_5__1,
    lfsr_change_0,
    \FSM_sequential_current_state_reg[0] ,
    \lfsr_internal_reg[2] ,
    out,
    KEY_REG_an5_out,
    KEY_REG_bn5_out,
    B_KEY_REG_OUT,
    Q,
    \FSM_sequential_current_state_reg[0]_0 ,
    clk_IBUF_BUFG,
    lopt);
  output [0:0]E;
  output sel_1__2;
  output \temp_reg_reg[15] ;
  output sel_5__1;
  output lfsr_change_0;
  input \FSM_sequential_current_state_reg[0] ;
  input \lfsr_internal_reg[2] ;
  input [1:0]out;
  input KEY_REG_an5_out;
  input KEY_REG_bn5_out;
  input B_KEY_REG_OUT;
  input [0:0]Q;
  input [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  input clk_IBUF_BUFG;
  output lopt;

  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire lfsr_change_0;
  wire \lfsr_internal_reg[2] ;
  wire [1:0]out;
  wire [3:0]plusOp;
  wire rnd_const_out;
  wire sel_1__2;
  wire sel_5__1;
  wire [3:0]serial_cnt_out;

  assign lopt = rnd_const_out;
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(serial_cnt_out[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(serial_cnt_out[0]),
        .I1(serial_cnt_out[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[3]),
        .O(plusOp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .CLR(out[0]),
        .D(plusOp[0]),
        .Q(serial_cnt_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .CLR(out[0]),
        .D(plusOp[1]),
        .Q(serial_cnt_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .CLR(out[0]),
        .D(plusOp[2]),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .CLR(out[0]),
        .D(plusOp[3]),
        .Q(serial_cnt_out[3]));
  LUT4 #(
    .INIT(16'h8000)) 
    lfsr_change_i_1
       (.I0(serial_cnt_out[3]),
        .I1(serial_cnt_out[2]),
        .I2(serial_cnt_out[0]),
        .I3(serial_cnt_out[1]),
        .O(lfsr_change_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_internal[1]_i_1 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[3]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\lfsr_internal_reg[2] ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFEFFFEFFFEFEFEF)) 
    \temp_reg[15]_i_10 
       (.I0(serial_cnt_out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(serial_cnt_out[2]),
        .I4(serial_cnt_out[0]),
        .I5(serial_cnt_out[1]),
        .O(sel_5__1));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \temp_reg[15]_i_9 
       (.I0(serial_cnt_out[3]),
        .I1(serial_cnt_out[2]),
        .I2(serial_cnt_out[0]),
        .I3(serial_cnt_out[1]),
        .I4(out[0]),
        .I5(out[1]),
        .O(sel_1__2));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \temp_reg_reg[0]_srl32_i_5 
       (.I0(serial_cnt_out[2]),
        .I1(Q),
        .I2(serial_cnt_out[0]),
        .I3(serial_cnt_out[3]),
        .I4(serial_cnt_out[1]),
        .O(rnd_const_out));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT__parameterized0
   (D,
    \FSM_onehot_current_state_reg[3] ,
    Q,
    \temp_reg_reg[15] ,
    \temp_reg_reg[15]_0 ,
    out,
    start_IBUF,
    ciphertext_out_W,
    \FSM_sequential_current_state_reg[0] ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output [4:0]D;
  output \FSM_onehot_current_state_reg[3] ;
  output [0:0]Q;
  output \temp_reg_reg[15] ;
  output \temp_reg_reg[15]_0 ;
  input [6:0]out;
  input start_IBUF;
  input ciphertext_out_W;
  input [0:0]\FSM_sequential_current_state_reg[0] ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;

  wire [4:0]D;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[6]_i_4_n_0 ;
  wire \FSM_onehot_current_state_reg[3] ;
  wire [0:0]\FSM_sequential_current_state_reg[0] ;
  wire [0:0]Q;
  wire R;
  wire ciphertext_out_W;
  wire clk_IBUF_BUFG;
  wire cnt_ce_W;
  wire \cnt_internal_value[0]_i_1__0_n_0 ;
  wire \cnt_internal_value[1]_i_1__0_n_0 ;
  wire \cnt_internal_value[2]_i_1_n_0 ;
  wire \cnt_internal_value[3]_i_1_n_0 ;
  wire \cnt_internal_value[4]_i_1_n_0 ;
  wire [4:0]cnt_out_W;
  wire cnt_rst_W;
  wire [6:0]out;
  wire [5:5]plusOp__0;
  wire start_IBUF;
  wire \temp_reg_reg[15]_0 ;

  assign lopt = cnt_out_W[3];
  assign lopt_1 = cnt_out_W[1];
  assign lopt_2 = cnt_out_W[0];
  assign lopt_3 = cnt_out_W[4];
  assign lopt_4 = cnt_out_W[2];
  LUT5 #(
    .INIT(32'h2FF22222)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(start_IBUF),
        .I2(R),
        .I3(ciphertext_out_W),
        .I4(out[5]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(out[2]),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(out[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(out[3]),
        .I1(\FSM_onehot_current_state_reg[3] ),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(out[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[3]),
        .I5(Q),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[4]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[3]),
        .I5(Q),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT6 #(
    .INIT(64'h08FF080408040804)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(R),
        .I1(out[5]),
        .I2(\FSM_onehot_current_state[6]_i_4_n_0 ),
        .I3(ciphertext_out_W),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(out[4]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFF9000)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(R),
        .I1(ciphertext_out_W),
        .I2(\FSM_onehot_current_state[6]_i_4_n_0 ),
        .I3(out[5]),
        .I4(out[6]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h6B1E9725)) 
    \FSM_onehot_current_state[6]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[3]),
        .O(R));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \FSM_onehot_current_state[6]_i_4 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[3]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(Q),
        .I5(cnt_out_W[4]),
        .O(\FSM_onehot_current_state[6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .O(\cnt_internal_value[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .O(\cnt_internal_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_internal_value[3]_i_1 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[3]),
        .O(\cnt_internal_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_1 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[4]),
        .O(\cnt_internal_value[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[5]_i_1 
       (.I0(out[2]),
        .I1(out[5]),
        .I2(out[3]),
        .O(cnt_ce_W));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_internal_value[5]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[3]),
        .I5(Q),
        .O(plusOp__0));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[5]_i_3 
       (.I0(out[1]),
        .I1(out[6]),
        .I2(out[4]),
        .O(cnt_rst_W));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[0]_i_1__0_n_0 ),
        .Q(cnt_out_W[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[1]_i_1__0_n_0 ),
        .Q(cnt_out_W[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[2]_i_1_n_0 ),
        .Q(cnt_out_W[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[3]_i_1_n_0 ),
        .Q(cnt_out_W[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[4]_i_1_n_0 ),
        .Q(cnt_out_W[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(plusOp__0),
        .Q(Q));
  LUT5 #(
    .INIT(32'h10EFCD27)) 
    \temp_reg[15]_i_7 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[1]),
        .O(\temp_reg_reg[15]_0 ));
endmodule

module Simeck_32_64_serial
   (out,
    D,
    ciphertext_out_W,
    clk_IBUF_BUFG,
    \FSM_onehot_current_state_reg[4] ,
    \cnt_internal_value_reg[1] ,
    \cnt_internal_value_reg[5] ,
    \cnt_internal_value_reg[4] ,
    Q,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output [0:0]out;
  output [0:0]D;
  output ciphertext_out_W;
  input clk_IBUF_BUFG;
  input [3:0]\FSM_onehot_current_state_reg[4] ;
  input \cnt_internal_value_reg[1] ;
  input \cnt_internal_value_reg[5] ;
  input \cnt_internal_value_reg[4] ;
  input [0:0]Q;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire [0:0]D;
  wire [3:0]\FSM_onehot_current_state_reg[4] ;
  wire INST_END_ENCRYPT_SHIFT_REG_n_0;
  wire INST_LEFT_KEY_REG_n_0;
  wire INST_SHORT_LFSR_n_5;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_out;
  wire IS_right_reg_an5_out;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire KEY_REG_an5_out;
  wire KEY_REG_bn1_out;
  wire KEY_REG_bn5_out;
  wire [0:0]Q;
  wire busy;
  wire ciphertext_out_W;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[4] ;
  (* RTL_KEEP = "yes" *) wire [1:1]current_state;
  wire end_encrypt_ce;
  wire end_encrypt_out;
  wire lfsr_change;
  wire lfsr_change_0;
  wire [4:4]lfsr_parallel_out;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire lopt_5;
  wire lopt_6;
  wire [1:0]nx_state;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire sel_1__2;
  wire sel_5__1;
  wire \NLW_INST_A_KEY_REG_cnt_internal_value_reg[5]_UNCONNECTED ;
  wire \NLW_INST_A_KEY_REG_temp_reg_reg[11]_0_UNCONNECTED ;
  wire \NLW_INST_IS_LEFT_REG_temp_reg_reg[15]_0_UNCONNECTED ;
  wire \NLW_INST_IS_RIGHT_REG_temp_reg_reg[11]_0_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[15]_UNCONNECTED ;

  assign \^lopt_1  = lopt;
  assign \^lopt_2  = lopt_1;
  assign \^lopt_3  = lopt_2;
  assign \^lopt_4  = lopt_3;
  assign lopt_5 = lopt_4;
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg[4] [2]),
        .I1(out),
        .I2(current_state),
        .O(nx_state[1]));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[0]),
        .Q(out),
        .R(\FSM_onehot_current_state_reg[4] [0]));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[1]),
        .Q(current_state),
        .R(\FSM_onehot_current_state_reg[4] [0]));
  tapped_shift_reg INST_A_KEY_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .B_KEY_REG_OUT(B_KEY_REG_OUT),
        .\FSM_onehot_current_state_reg[2] (\FSM_onehot_current_state_reg[4] [1]),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_an5_out(KEY_REG_an5_out),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[5] (\NLW_INST_A_KEY_REG_cnt_internal_value_reg[5]_UNCONNECTED ),
        .lopt(sel_5__1),
        .lopt_1(KEY_REG_an5_out),
        .lopt_2(KEY_REG_bn5_out),
        .lopt_3(\^lopt ),
        .lopt_4(Q),
        .lopt_5(\^lopt_1 ),
        .lopt_6(\^lopt_2 ),
        .lopt_7(\^lopt_3 ),
        .lopt_8(\^lopt_4 ),
        .lopt_9(lopt_5),
        .out({current_state,out}),
        .sel_1__2(sel_1__2),
        .\temp_reg_reg[11]_0 (\NLW_INST_A_KEY_REG_temp_reg_reg[11]_0_UNCONNECTED ));
  tapped_shift_reg_0 INST_B_KEY_REG
       (.B_KEY_REG_OUT(B_KEY_REG_OUT),
        .\FSM_sequential_current_state_reg[1] (INST_LEFT_KEY_REG_n_0),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  end_encrypt_shift_reg INST_END_ENCRYPT_SHIFT_REG
       (.E(end_encrypt_ce),
        .Q(end_encrypt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({current_state,out}),
        .\reg_internal_reg[1]_0 (INST_END_ENCRYPT_SHIFT_REG_n_0));
  tapped_shift_reg_1 INST_IS_LEFT_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .IS_INPUT_MUX_OUT(IS_INPUT_MUX_OUT),
        .IS_ce(IS_ce),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt_6),
        .sel_5__1(sel_5__1),
        .\temp_reg_reg[15]_0 (\NLW_INST_IS_LEFT_REG_temp_reg_reg[15]_0_UNCONNECTED ));
  tapped_shift_reg_2 INST_IS_RIGHT_REG
       (.D(D),
        .\FSM_onehot_current_state_reg[4] (\FSM_onehot_current_state_reg[4] [3:1]),
        .\FSM_sequential_current_state_reg[0] (INST_END_ENCRYPT_SHIFT_REG_n_0),
        .IS_INPUT_MUX_OUT(IS_INPUT_MUX_OUT),
        .IS_ce(IS_ce),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .Q(Q),
        .ciphertext_out_W(ciphertext_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1] ),
        .\cnt_internal_value_reg[4] (\cnt_internal_value_reg[4] ),
        .lopt(sel_5__1),
        .lopt_1(IS_right_reg_an5_out),
        .lopt_2(lopt_6),
        .lopt_3(A_KEY_REG_OUT),
        .out({current_state,out}),
        .sel_1__2(sel_1__2),
        .\temp_reg_reg[11]_0 (\NLW_INST_IS_RIGHT_REG_temp_reg_reg[11]_0_UNCONNECTED ));
  normal_shift_reg INST_LEFT_KEY_REG
       (.KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[15] (INST_LEFT_KEY_REG_n_0));
  CNT INST_SERIAL_CNT
       (.B_KEY_REG_OUT(B_KEY_REG_OUT),
        .E(end_encrypt_ce),
        .\FSM_sequential_current_state_reg[0] (INST_END_ENCRYPT_SHIFT_REG_n_0),
        .\FSM_sequential_current_state_reg[0]_0 (busy),
        .KEY_REG_an5_out(KEY_REG_an5_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .Q(lfsr_parallel_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lfsr_change_0(lfsr_change_0),
        .\lfsr_internal_reg[2] (INST_SHORT_LFSR_n_5),
        .lopt(\^lopt ),
        .out({current_state,out}),
        .sel_1__2(sel_1__2),
        .sel_5__1(sel_5__1),
        .\temp_reg_reg[15] (\NLW_INST_SERIAL_CNT_temp_reg_reg[15]_UNCONNECTED ));
  lfsr INST_SHORT_LFSR
       (.CLK(lfsr_change),
        .D(nx_state[0]),
        .E(busy),
        .\FSM_onehot_current_state_reg[3] (\FSM_onehot_current_state_reg[4] [2]),
        .IS_ce(IS_ce),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(lfsr_parallel_out),
        .out({current_state,out}),
        .\reg_internal_reg[1] (INST_SHORT_LFSR_n_5),
        .\reg_internal_reg[1]_0 (end_encrypt_out));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lfsr_change_0),
        .Q(lfsr_change),
        .R(1'b0));
endmodule

(* Datapath = "16" *) (* ECO_CHECKSUM = "ac3c9a7a" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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

  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[6] ;
  wire INST_CNT_n_0;
  wire INST_CNT_n_1;
  wire INST_CNT_n_2;
  wire INST_CNT_n_3;
  wire INST_CNT_n_4;
  wire INST_CNT_n_5;
  wire INST_CNT_n_8;
  wire Simeck_DUT_n_1;
  wire ciphertext_out_W;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [5:5]cnt_out_W;
  (* RTL_KEEP = "yes" *) wire data_ready_W;
  wire led_out;
  wire lfsr_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  (* RTL_KEEP = "yes" *) wire start_W;
  wire \NLW_INST_CNT_temp_reg_reg[15]_UNCONNECTED ;
  wire \NLW_Simeck_DUT_cnt_internal_value_reg[5]_UNCONNECTED ;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(start_IBUF),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_4),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(data_ready_W),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_3),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_2),
        .Q(start_W),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simeck_DUT_n_1),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_1),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_0),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(rst_IBUF));
  CNT__parameterized0 INST_CNT
       (.D({INST_CNT_n_0,INST_CNT_n_1,INST_CNT_n_2,INST_CNT_n_3,INST_CNT_n_4}),
        .\FSM_onehot_current_state_reg[3] (INST_CNT_n_5),
        .\FSM_sequential_current_state_reg[0] (lfsr_rst),
        .Q(cnt_out_W),
        .ciphertext_out_W(ciphertext_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W,\FSM_onehot_current_state_reg_n_0_[0] }),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[15] (\NLW_INST_CNT_temp_reg_reg[15]_UNCONNECTED ),
        .\temp_reg_reg[15]_0 (INST_CNT_n_8));
  Simeck_32_64_serial Simeck_DUT
       (.D(Simeck_DUT_n_1),
        .\FSM_onehot_current_state_reg[4] ({\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W}),
        .Q(cnt_out_W),
        .ciphertext_out_W(ciphertext_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (INST_CNT_n_5),
        .\cnt_internal_value_reg[4] (INST_CNT_n_8),
        .\cnt_internal_value_reg[5] (\NLW_Simeck_DUT_cnt_internal_value_reg[5]_UNCONNECTED ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .out(lfsr_rst));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF led_out_OBUF_inst
       (.I(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(led_out));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

module end_encrypt_shift_reg
   (\reg_internal_reg[1]_0 ,
    Q,
    out,
    E,
    clk_IBUF_BUFG);
  output \reg_internal_reg[1]_0 ;
  output [0:0]Q;
  input [1:0]out;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [1:0]out;
  wire [0:0]reg_internal;
  wire \reg_internal_reg[1]_0 ;

  FDPE #(
    .INIT(1'b1)) 
    \reg_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q),
        .PRE(out[0]),
        .Q(reg_internal));
  FDCE #(
    .INIT(1'b0)) 
    \reg_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(reg_internal),
        .Q(Q));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg[15]_i_8 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\reg_internal_reg[1]_0 ));
endmodule

module lfsr
   (KEY_REG_CE,
    Q,
    D,
    IS_ce,
    E,
    \reg_internal_reg[1] ,
    out,
    \FSM_onehot_current_state_reg[3] ,
    \reg_internal_reg[1]_0 ,
    CLK);
  output KEY_REG_CE;
  output [0:0]Q;
  output [0:0]D;
  output IS_ce;
  output [0:0]E;
  output \reg_internal_reg[1] ;
  input [1:0]out;
  input [0:0]\FSM_onehot_current_state_reg[3] ;
  input [0:0]\reg_internal_reg[1]_0 ;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire IS_ce;
  wire KEY_REG_CE;
  wire [0:0]Q;
  wire [3:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [0:0]p_2_out;
  wire \reg_internal_reg[1] ;
  wire [0:0]\reg_internal_reg[1]_0 ;
  wire \temp_reg[15]_i_3_n_0 ;
  wire \temp_reg[15]_i_4_n_0 ;

  LUT6 #(
    .INIT(64'hF5F50C00F5F5FCF0)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I2(out[0]),
        .I3(lfsr_parallel_out[0]),
        .I4(out[1]),
        .I5(\FSM_onehot_current_state_reg[3] ),
        .O(D));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(Q),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[2]),
        .I5(\reg_internal_reg[1]_0 ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[3]),
        .I3(lfsr_parallel_out[1]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .O(p_2_out));
  LUT1 #(
    .INIT(2'h1)) 
    \lfsr_internal[4]_i_1 
       (.I0(out[0]),
        .O(E));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_2_out),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[0]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[0]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[1]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[1]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[2]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[2]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[3]),
        .PRE(out[0]),
        .Q(Q));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \reg_internal[1]_i_2 
       (.I0(lfsr_parallel_out[2]),
        .I1(lfsr_parallel_out[1]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[3]),
        .I4(Q),
        .O(\reg_internal_reg[1] ));
  LUT5 #(
    .INIT(32'hCCCCEEEF)) 
    \temp_reg[15]_i_1 
       (.I0(out[1]),
        .I1(\temp_reg[15]_i_3_n_0 ),
        .I2(\temp_reg[15]_i_4_n_0 ),
        .I3(lfsr_parallel_out[1]),
        .I4(out[0]),
        .O(KEY_REG_CE));
  LUT6 #(
    .INIT(64'hFFFFE0E0EFE0E0E0)) 
    \temp_reg[15]_i_1__0 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(lfsr_parallel_out[1]),
        .I4(\temp_reg[15]_i_3_n_0 ),
        .I5(\temp_reg[15]_i_4_n_0 ),
        .O(IS_ce));
  LUT6 #(
    .INIT(64'h00000000FFFFFFDF)) 
    \temp_reg[15]_i_3 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[3]),
        .I5(out[0]),
        .O(\temp_reg[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \temp_reg[15]_i_4 
       (.I0(Q),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[0]),
        .O(\temp_reg[15]_i_4_n_0 ));
endmodule

module normal_shift_reg
   (\temp_reg_reg[15] ,
    KEY_REG_CE,
    KEY_INPUT_MUX_OUT,
    clk_IBUF_BUFG);
  output \temp_reg_reg[15] ;
  input KEY_REG_CE;
  input KEY_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;

  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[15] ;
  wire \NLW_temp_reg_reg[0]_srl32_Q31_UNCONNECTED ;

  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_INPUT_MUX_OUT),
        .Q(\temp_reg_reg[15] ),
        .Q31(\NLW_temp_reg_reg[0]_srl32_Q31_UNCONNECTED ));
endmodule

module tapped_shift_reg
   (KEY_REG_an5_out,
    A_KEY_REG_OUT,
    KEY_INPUT_MUX_OUT,
    KEY_REG_CE,
    B_KEY_REG_OUT,
    clk_IBUF_BUFG,
    \temp_reg_reg[11]_0 ,
    \cnt_internal_value_reg[5] ,
    out,
    \FSM_onehot_current_state_reg[2] ,
    KEY_REG_bn1_out,
    sel_1__2,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8,
    lopt_9);
  output KEY_REG_an5_out;
  output A_KEY_REG_OUT;
  output KEY_INPUT_MUX_OUT;
  input KEY_REG_CE;
  input B_KEY_REG_OUT;
  input clk_IBUF_BUFG;
  input \temp_reg_reg[11]_0 ;
  input \cnt_internal_value_reg[5] ;
  input [1:0]out;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input KEY_REG_bn1_out;
  input sel_1__2;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;
  input lopt_6;
  input lopt_7;
  input lopt_8;
  input lopt_9;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire KEY_REG_an1_out;
  wire KEY_REG_an5_out;
  wire KEY_REG_bn1_out;
  wire clk_IBUF_BUFG;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [1:0]out;
  wire sel_1__2;
  wire \temp_reg_reg[12]_srl3_n_0 ;
  wire \temp_reg_reg[1]_srl10_n_0 ;
  wire xlnx_opt_KEY_INPUT_MUX_OUT;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_1;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_2;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_srl10_n_0 ),
        .Q(A_KEY_REG_OUT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[12]_srl3_n_0 ),
        .Q(KEY_REG_an5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_an1_out),
        .Q(\temp_reg_reg[12]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(B_KEY_REG_OUT),
        .Q(KEY_REG_an1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[1]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[1]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_an5_out),
        .Q(\temp_reg_reg[1]_srl10_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \xlnx_opt_LUT_temp_reg_reg[0]_srl32_i_1 
       (.I0(KEY_REG_bn1_out),
        .I1(sel_1__2),
        .I2(KEY_REG_an1_out),
        .I3(A_KEY_REG_OUT),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_2));
  LUT5 #(
    .INIT(32'hD80027FF)) 
    \xlnx_opt_LUT_temp_reg_reg[0]_srl32_i_1_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(B_KEY_REG_OUT),
        .I4(lopt_3),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hFFF5FFF50FF3FFF3)) 
    \xlnx_opt_LUT_temp_reg_reg[0]_srl32_i_1_2 
       (.I0(lopt_4),
        .I1(lopt_5),
        .I2(lopt_6),
        .I3(lopt_7),
        .I4(lopt_8),
        .I5(lopt_9),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h00222200D0F2F2D0)) 
    \xlnx_opt_LUT_temp_reg_reg[0]_srl32_i_1_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_onehot_current_state_reg[2] ),
        .I3(xlnx_opt_KEY_INPUT_MUX_OUT_2),
        .I4(xlnx_opt_KEY_INPUT_MUX_OUT_1),
        .I5(xlnx_opt_KEY_INPUT_MUX_OUT),
        .O(KEY_INPUT_MUX_OUT));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_0
   (KEY_REG_bn1_out,
    KEY_REG_bn5_out,
    B_KEY_REG_OUT,
    KEY_REG_CE,
    \FSM_sequential_current_state_reg[1] ,
    clk_IBUF_BUFG);
  output KEY_REG_bn1_out;
  output KEY_REG_bn5_out;
  output B_KEY_REG_OUT;
  input KEY_REG_CE;
  input \FSM_sequential_current_state_reg[1] ;
  input clk_IBUF_BUFG;

  wire B_KEY_REG_OUT;
  wire \FSM_sequential_current_state_reg[1] ;
  wire KEY_REG_CE;
  wire KEY_REG_bn1_out;
  wire KEY_REG_bn5_out;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[12]_srl3_n_0 ;
  wire \temp_reg_reg[1]_srl10_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_srl10_n_0 ),
        .Q(B_KEY_REG_OUT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[12]_srl3_n_0 ),
        .Q(KEY_REG_bn5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_bn1_out),
        .Q(\temp_reg_reg[12]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[1] ),
        .Q(KEY_REG_bn1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[1]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[1]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_bn5_out),
        .Q(\temp_reg_reg[1]_srl10_n_0 ));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_1
   (IS_left_reg_bn1_out,
    IS_left_reg_out,
    \temp_reg_reg[15]_0 ,
    IS_ce,
    IS_INPUT_MUX_OUT,
    clk_IBUF_BUFG,
    sel_5__1,
    IS_right_reg_an5_out,
    A_KEY_REG_OUT,
    lopt);
  output IS_left_reg_bn1_out;
  output IS_left_reg_out;
  output \temp_reg_reg[15]_0 ;
  input IS_ce;
  input IS_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;
  input sel_5__1;
  input IS_right_reg_an5_out;
  input A_KEY_REG_OUT;
  output lopt;

  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_bn5_out;
  wire IS_left_reg_out;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[12]_srl3_n_0 ;
  wire \temp_reg_reg[1]_srl10_n_0 ;

  assign lopt = IS_left_reg_bn5_out;
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl10_n_0 ),
        .Q(IS_left_reg_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[12]_srl3_n_0 ),
        .Q(IS_left_reg_bn5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_left_reg_bn1_out),
        .Q(\temp_reg_reg[12]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_INPUT_MUX_OUT),
        .Q(IS_left_reg_bn1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[1]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[1]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_left_reg_bn5_out),
        .Q(\temp_reg_reg[1]_srl10_n_0 ));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_2
   (IS_right_reg_an5_out,
    D,
    IS_INPUT_MUX_OUT,
    ciphertext_out_W,
    IS_ce,
    IS_left_reg_out,
    clk_IBUF_BUFG,
    \FSM_onehot_current_state_reg[4] ,
    out,
    \cnt_internal_value_reg[1] ,
    \temp_reg_reg[11]_0 ,
    \cnt_internal_value_reg[4] ,
    Q,
    \FSM_sequential_current_state_reg[0] ,
    IS_left_reg_bn1_out,
    sel_1__2,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output IS_right_reg_an5_out;
  output [0:0]D;
  output IS_INPUT_MUX_OUT;
  output ciphertext_out_W;
  input IS_ce;
  input IS_left_reg_out;
  input clk_IBUF_BUFG;
  input [2:0]\FSM_onehot_current_state_reg[4] ;
  input [1:0]out;
  input \cnt_internal_value_reg[1] ;
  input \temp_reg_reg[11]_0 ;
  input \cnt_internal_value_reg[4] ;
  input [0:0]Q;
  input \FSM_sequential_current_state_reg[0] ;
  input IS_left_reg_bn1_out;
  input sel_1__2;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;

  wire [0:0]D;
  wire [2:0]\FSM_onehot_current_state_reg[4] ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_out;
  wire IS_right_reg_an1_out;
  wire IS_right_reg_an5_out;
  wire IS_right_reg_out;
  wire [0:0]Q;
  wire ciphertext_out_W;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[4] ;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [1:0]out;
  wire sel_1__2;
  wire \temp_reg_reg[12]_srl3_n_0 ;
  wire \temp_reg_reg[1]_srl10_n_0 ;
  wire xlnx_opt_IS_INPUT_MUX_OUT;
  wire xlnx_opt_IS_INPUT_MUX_OUT_1;

  LUT6 #(
    .INIT(64'h80AAFFFF80AA80AA)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg[4] [2]),
        .I1(IS_right_reg_out),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\cnt_internal_value_reg[1] ),
        .I5(\FSM_onehot_current_state_reg[4] [1]),
        .O(D));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_current_state[6]_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out),
        .O(ciphertext_out_W));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl10_n_0 ),
        .Q(IS_right_reg_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[12]_srl3_n_0 ),
        .Q(IS_right_reg_an5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_right_reg_an1_out),
        .Q(\temp_reg_reg[12]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_left_reg_out),
        .Q(IS_right_reg_an1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[1]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[1]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_right_reg_an5_out),
        .Q(\temp_reg_reg[1]_srl10_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \xlnx_opt_LUT_temp_reg[15]_i_2 
       (.I0(IS_left_reg_bn1_out),
        .I1(sel_1__2),
        .I2(IS_right_reg_an1_out),
        .I3(IS_right_reg_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_1));
  LUT5 #(
    .INIT(32'hD80027FF)) 
    \xlnx_opt_LUT_temp_reg[15]_i_2_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(IS_left_reg_out),
        .I4(lopt_3),
        .O(xlnx_opt_IS_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h200020FF20FF2000)) 
    \xlnx_opt_LUT_temp_reg[15]_i_2_2 
       (.I0(\cnt_internal_value_reg[4] ),
        .I1(Q),
        .I2(\FSM_onehot_current_state_reg[4] [0]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT_1),
        .I5(xlnx_opt_IS_INPUT_MUX_OUT),
        .O(IS_INPUT_MUX_OUT));
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
