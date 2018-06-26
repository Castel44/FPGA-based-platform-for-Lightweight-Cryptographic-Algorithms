// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 26 01:52:16 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simeck/Simeck_64_128_serial/Simeck_64_128_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\temp_reg_reg[31] ,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[31]_1 ,
    lfsr_change_reg,
    B_KEY_REG_OUT,
    KEY_REG_an5_out,
    out,
    KEY_REG_bn5_out,
    Q,
    E,
    clk_IBUF_BUFG);
  output \temp_reg_reg[31] ;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[31]_1 ;
  output lfsr_change_reg;
  input B_KEY_REG_OUT;
  input KEY_REG_an5_out;
  input [1:0]out;
  input KEY_REG_bn5_out;
  input [0:0]Q;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire B_KEY_REG_OUT;
  wire [0:0]E;
  wire KEY_REG_an5_out;
  wire KEY_REG_bn5_out;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[2]_i_1__0_n_0 ;
  wire lfsr_change_reg;
  wire [1:0]out;
  wire [4:0]plusOp;
  wire rnd_const_out;
  wire [4:0]serial_cnt_out;
  wire \temp_reg_reg[31] ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[31]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(serial_cnt_out[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(serial_cnt_out[0]),
        .I1(serial_cnt_out[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(serial_cnt_out[0]),
        .I1(serial_cnt_out[1]),
        .I2(serial_cnt_out[2]),
        .O(\cnt_internal_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_internal_value[3]_i_1 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_1 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[3]),
        .I4(serial_cnt_out[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(plusOp[0]),
        .Q(serial_cnt_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(plusOp[1]),
        .Q(serial_cnt_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(\cnt_internal_value[2]_i_1__0_n_0 ),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(plusOp[3]),
        .Q(serial_cnt_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(plusOp[4]),
        .Q(serial_cnt_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    lfsr_change_i_1
       (.I0(serial_cnt_out[3]),
        .I1(serial_cnt_out[1]),
        .I2(serial_cnt_out[0]),
        .I3(serial_cnt_out[4]),
        .I4(serial_cnt_out[2]),
        .O(lfsr_change_reg));
  LUT6 #(
    .INIT(64'h0000000001010111)) 
    \temp_reg[31]_i_10 
       (.I0(serial_cnt_out[3]),
        .I1(serial_cnt_out[4]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[1]),
        .I4(serial_cnt_out[0]),
        .I5(out[0]),
        .O(\temp_reg_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \temp_reg[31]_i_9 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[4]),
        .I2(serial_cnt_out[0]),
        .I3(serial_cnt_out[1]),
        .I4(serial_cnt_out[3]),
        .I5(out[0]),
        .O(\temp_reg_reg[31]_1 ));
  LUT6 #(
    .INIT(64'h666A6A6AAA6A6A6A)) 
    \temp_reg_reg[32]_srl32_i_3 
       (.I0(rnd_const_out),
        .I1(B_KEY_REG_OUT),
        .I2(KEY_REG_an5_out),
        .I3(out[1]),
        .I4(\temp_reg_reg[31]_0 ),
        .I5(KEY_REG_bn5_out),
        .O(\temp_reg_reg[31] ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \temp_reg_reg[32]_srl32_i_5 
       (.I0(serial_cnt_out[3]),
        .I1(serial_cnt_out[4]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[1]),
        .I4(serial_cnt_out[0]),
        .I5(Q),
        .O(rnd_const_out));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT__parameterized0
   (Q,
    \temp_reg_reg[31] ,
    \temp_reg_reg[31]_0 ,
    D,
    \FSM_onehot_current_state_reg[3] ,
    R,
    \FSM_onehot_current_state_reg[5] ,
    out,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [0:0]Q;
  output \temp_reg_reg[31] ;
  output \temp_reg_reg[31]_0 ;
  output [1:0]D;
  output \FSM_onehot_current_state_reg[3] ;
  output R;
  output \FSM_onehot_current_state_reg[5] ;
  input [5:0]out;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [1:0]D;
  wire \FSM_onehot_current_state[6]_i_5_n_0 ;
  wire \FSM_onehot_current_state_reg[3] ;
  wire \FSM_onehot_current_state_reg[5] ;
  wire [0:0]Q;
  wire R;
  wire clk_IBUF_BUFG;
  wire cnt_ce_W;
  wire \cnt_internal_value[0]_i_1__0_n_0 ;
  wire \cnt_internal_value[1]_i_1__0_n_0 ;
  wire \cnt_internal_value[2]_i_1_n_0 ;
  wire \cnt_internal_value[3]_i_1__0_n_0 ;
  wire \cnt_internal_value[4]_i_1__0_n_0 ;
  wire \cnt_internal_value[5]_i_1_n_0 ;
  wire \cnt_internal_value[6]_i_4_n_0 ;
  wire [5:0]cnt_out_W;
  wire cnt_rst_W;
  wire eqOp;
  wire [5:0]out;
  wire [6:6]plusOp__0;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[32]_srl32_i_6_n_0 ;
  wire \temp_reg_reg[32]_srl32_i_7_n_0 ;

  assign lopt = cnt_out_W[5];
  assign lopt_1 = cnt_out_W[4];
  assign lopt_2 = cnt_out_W[3];
  assign lopt_3 = cnt_out_W[1];
  assign lopt_4 = cnt_out_W[2];
  assign lopt_5 = cnt_out_W[0];
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(out[0]),
        .I1(eqOp),
        .I2(out[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(eqOp),
        .I1(out[1]),
        .I2(\FSM_onehot_current_state_reg[3] ),
        .I3(out[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(Q),
        .I2(cnt_out_W[5]),
        .I3(\cnt_internal_value[6]_i_4_n_0 ),
        .I4(cnt_out_W[2]),
        .I5(cnt_out_W[3]),
        .O(eqOp));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(Q),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[3]),
        .I5(\cnt_internal_value[6]_i_4_n_0 ),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_current_state[6]_i_3 
       (.I0(Q),
        .I1(cnt_out_W[5]),
        .I2(cnt_out_W[0]),
        .I3(\FSM_onehot_current_state[6]_i_5_n_0 ),
        .O(\FSM_onehot_current_state_reg[5] ));
  LUT6 #(
    .INIT(64'hF435620971EF5FB6)) 
    \FSM_onehot_current_state[6]_i_4 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[4]),
        .I5(cnt_out_W[5]),
        .O(R));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_current_state[6]_i_5 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[4]),
        .I3(cnt_out_W[3]),
        .O(\FSM_onehot_current_state[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .O(\cnt_internal_value[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[2]),
        .O(\cnt_internal_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[3]),
        .O(\cnt_internal_value[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_1__0 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[4]),
        .O(\cnt_internal_value[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_internal_value[5]_i_1 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[4]),
        .I5(cnt_out_W[5]),
        .O(\cnt_internal_value[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[4]),
        .O(cnt_ce_W));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_internal_value[6]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(\cnt_internal_value[6]_i_4_n_0 ),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[5]),
        .I5(Q),
        .O(plusOp__0));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_3 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[5]),
        .O(cnt_rst_W));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_internal_value[6]_i_4 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .O(\cnt_internal_value[6]_i_4_n_0 ));
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
        .D(\cnt_internal_value[3]_i_1__0_n_0 ),
        .Q(cnt_out_W[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[4]_i_1__0_n_0 ),
        .Q(cnt_out_W[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[5]_i_1_n_0 ),
        .Q(cnt_out_W[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(plusOp__0),
        .Q(Q));
  MUXF7 \temp_reg_reg[32]_srl32_i_4 
       (.I0(\temp_reg_reg[32]_srl32_i_6_n_0 ),
        .I1(\temp_reg_reg[32]_srl32_i_7_n_0 ),
        .O(\temp_reg_reg[31]_0 ),
        .S(Q));
  LUT6 #(
    .INIT(64'h00AA000000CC00F0)) 
    \temp_reg_reg[32]_srl32_i_6 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[0]),
        .I5(cnt_out_W[1]),
        .O(\temp_reg_reg[32]_srl32_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00CC0000FFF0)) 
    \temp_reg_reg[32]_srl32_i_7 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[1]),
        .I5(cnt_out_W[0]),
        .O(\temp_reg_reg[32]_srl32_i_7_n_0 ));
endmodule

module Simeck_64_128_bit_serial
   (D,
    clk_IBUF_BUFG,
    out,
    Q,
    \cnt_internal_value_reg[5] ,
    \cnt_internal_value_reg[6] ,
    start_IBUF,
    R,
    \cnt_internal_value_reg[5]_0 ,
    \cnt_internal_value_reg[6]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [3:0]D;
  input clk_IBUF_BUFG;
  input [6:0]out;
  input [0:0]Q;
  input \cnt_internal_value_reg[5] ;
  input \cnt_internal_value_reg[6] ;
  input start_IBUF;
  input R;
  input \cnt_internal_value_reg[5]_0 ;
  input \cnt_internal_value_reg[6]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire [3:0]D;
  wire INST_LEFT_KEY_REG_n_0;
  wire INST_SERIAL_CNT_n_0;
  wire INST_SERIAL_CNT_n_1;
  wire INST_SERIAL_CNT_n_2;
  wire INST_SERIAL_CNT_n_3;
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
  wire R;
  wire busy;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[5]_0 ;
  wire \cnt_internal_value_reg[6] ;
  wire \cnt_internal_value_reg[6]_0 ;
  (* RTL_KEEP = "yes" *) wire [1:1]current_state;
  wire lfsr_change;
  wire [5:5]lfsr_parallel_out;
  (* RTL_KEEP = "yes" *) wire lfsr_rst;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire lopt_6;
  wire [1:0]nx_state;
  wire [6:0]out;
  wire start_IBUF;
  wire \NLW_INST_IS_LEFT_REG_temp_reg_reg[31]_0_UNCONNECTED ;
  wire \NLW_INST_IS_LEFT_REG_temp_reg_reg[31]_1_UNCONNECTED ;
  wire \NLW_INST_IS_RIGHT_REG_FSM_sequential_current_state_reg[1]_UNCONNECTED ;
  wire \NLW_INST_IS_RIGHT_REG_cnt_internal_value_reg[5]_UNCONNECTED ;
  wire \NLW_INST_IS_RIGHT_REG_temp_reg_reg[0]_0_UNCONNECTED ;

  assign \^lopt_1  = lopt;
  assign \^lopt_2  = lopt_1;
  assign \^lopt_3  = lopt_2;
  assign \^lopt_4  = lopt_3;
  assign \^lopt_5  = lopt_4;
  assign lopt_6 = lopt_5;
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state),
        .I1(out[3]),
        .I2(lfsr_rst),
        .O(nx_state[1]));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[0]),
        .Q(lfsr_rst),
        .R(out[1]));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[1]),
        .Q(current_state),
        .R(out[1]));
  tapped_shift_reg INST_A_KEY_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .B_KEY_REG_OUT(B_KEY_REG_OUT),
        .\FSM_onehot_current_state_reg[2] (out[2]),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_an5_out(KEY_REG_an5_out),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_SERIAL_CNT_n_2),
        .\cnt_internal_value_reg[6] (\cnt_internal_value_reg[6]_0 ),
        .out(current_state),
        .\temp_reg_reg[0]_0 (INST_SERIAL_CNT_n_0));
  tapped_shift_reg_0 INST_B_KEY_REG
       (.B_KEY_REG_OUT(B_KEY_REG_OUT),
        .\FSM_sequential_current_state_reg[0] (INST_LEFT_KEY_REG_n_0),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  tapped_shift_reg_1 INST_IS_LEFT_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .IS_INPUT_MUX_OUT(IS_INPUT_MUX_OUT),
        .IS_ce(IS_ce),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[3] (INST_SERIAL_CNT_n_1),
        .lopt(\^lopt ),
        .out({current_state,lfsr_rst}),
        .\temp_reg_reg[31]_0 (\NLW_INST_IS_LEFT_REG_temp_reg_reg[31]_0_UNCONNECTED ),
        .\temp_reg_reg[31]_1 (\NLW_INST_IS_LEFT_REG_temp_reg_reg[31]_1_UNCONNECTED ));
  tapped_shift_reg_2 INST_IS_RIGHT_REG
       (.D(D),
        .\FSM_sequential_current_state_reg[1] (\NLW_INST_IS_RIGHT_REG_FSM_sequential_current_state_reg[1]_UNCONNECTED ),
        .\FSM_sequential_current_state_reg[1]_0 ({current_state,lfsr_rst}),
        .IS_INPUT_MUX_OUT(IS_INPUT_MUX_OUT),
        .IS_ce(IS_ce),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .Q(Q),
        .R(R),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_SERIAL_CNT_n_2),
        .\cnt_internal_value_reg[5] (\NLW_INST_IS_RIGHT_REG_cnt_internal_value_reg[5]_UNCONNECTED ),
        .\cnt_internal_value_reg[5]_0 (\cnt_internal_value_reg[5]_0 ),
        .\cnt_internal_value_reg[6] (\cnt_internal_value_reg[6] ),
        .lopt(A_KEY_REG_OUT),
        .lopt_1(IS_right_reg_an5_out),
        .lopt_2(INST_SERIAL_CNT_n_1),
        .lopt_3(\^lopt ),
        .lopt_4(\^lopt_1 ),
        .lopt_5(\^lopt_2 ),
        .lopt_6(\^lopt_3 ),
        .lopt_7(\^lopt_4 ),
        .lopt_8(\^lopt_5 ),
        .lopt_9(lopt_6),
        .out({out[6:2],out[0]}),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[0]_0 (\NLW_INST_IS_RIGHT_REG_temp_reg_reg[0]_0_UNCONNECTED ));
  normal_shift_reg INST_LEFT_KEY_REG
       (.KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[31] (INST_LEFT_KEY_REG_n_0));
  lfsr INST_LFSR
       (.CLK(lfsr_change),
        .D(nx_state[0]),
        .E(busy),
        .\FSM_onehot_current_state_reg[3] (out[3]),
        .IS_ce(IS_ce),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(lfsr_parallel_out),
        .out({current_state,lfsr_rst}));
  CNT INST_SERIAL_CNT
       (.B_KEY_REG_OUT(B_KEY_REG_OUT),
        .E(busy),
        .KEY_REG_an5_out(KEY_REG_an5_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .Q(lfsr_parallel_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lfsr_change_reg(INST_SERIAL_CNT_n_3),
        .out({current_state,lfsr_rst}),
        .\temp_reg_reg[31] (INST_SERIAL_CNT_n_0),
        .\temp_reg_reg[31]_0 (INST_SERIAL_CNT_n_1),
        .\temp_reg_reg[31]_1 (INST_SERIAL_CNT_n_2));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_SERIAL_CNT_n_3),
        .Q(lfsr_change),
        .R(1'b0));
endmodule

(* Datapath = "32" *) (* ECO_CHECKSUM = "200beb52" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_2;
  wire INST_CNT_n_3;
  wire INST_CNT_n_4;
  wire INST_CNT_n_5;
  wire INST_CNT_n_7;
  wire R;
  wire Simeck_DUT_n_0;
  wire Simeck_DUT_n_1;
  wire Simeck_DUT_n_2;
  wire Simeck_DUT_n_3;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [6:6]cnt_out_W;
  (* RTL_KEEP = "yes" *) wire data_ready_W;
  wire led_out;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  (* RTL_KEEP = "yes" *) wire start_W;
  wire \NLW_INST_CNT_temp_reg_reg[31]_UNCONNECTED ;
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
        .D(Simeck_DUT_n_3),
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
        .D(INST_CNT_n_4),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_3),
        .Q(start_W),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simeck_DUT_n_2),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simeck_DUT_n_1),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simeck_DUT_n_0),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(rst_IBUF));
  CNT__parameterized0 INST_CNT
       (.D({INST_CNT_n_3,INST_CNT_n_4}),
        .\FSM_onehot_current_state_reg[3] (INST_CNT_n_5),
        .\FSM_onehot_current_state_reg[5] (INST_CNT_n_7),
        .Q(cnt_out_W),
        .R(R),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W}),
        .\temp_reg_reg[31] (\NLW_INST_CNT_temp_reg_reg[31]_UNCONNECTED ),
        .\temp_reg_reg[31]_0 (INST_CNT_n_2));
  Simeck_64_128_bit_serial Simeck_DUT
       (.D({Simeck_DUT_n_0,Simeck_DUT_n_1,Simeck_DUT_n_2,Simeck_DUT_n_3}),
        .Q(cnt_out_W),
        .R(R),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[5] (\NLW_Simeck_DUT_cnt_internal_value_reg[5]_UNCONNECTED ),
        .\cnt_internal_value_reg[5]_0 (INST_CNT_n_5),
        .\cnt_internal_value_reg[6] (INST_CNT_n_7),
        .\cnt_internal_value_reg[6]_0 (INST_CNT_n_2),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W,\FSM_onehot_current_state_reg_n_0_[0] }),
        .start_IBUF(start_IBUF));
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

module lfsr
   (Q,
    E,
    D,
    IS_ce,
    KEY_REG_CE,
    out,
    \FSM_onehot_current_state_reg[3] ,
    CLK);
  output [0:0]Q;
  output [0:0]E;
  output [0:0]D;
  output IS_ce;
  output KEY_REG_CE;
  input [1:0]out;
  input [0:0]\FSM_onehot_current_state_reg[3] ;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire IS_ce;
  wire KEY_REG_CE;
  wire [0:0]Q;
  wire [4:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [0:0]p_3_out;
  wire \temp_reg[31]_i_2__0_n_0 ;
  wire \temp_reg[31]_i_3_n_0 ;
  wire \temp_reg[31]_i_4_n_0 ;
  wire \xlnx_opt_D[0] ;
  wire \xlnx_opt_D[0]_1 ;

  LUT2 #(
    .INIT(4'h6)) 
    \long_lfsr.lfsr_internal[0]_i_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[4]),
        .O(p_3_out));
  LUT1 #(
    .INIT(2'h1)) 
    \long_lfsr.lfsr_internal[5]_i_1 
       (.I0(out[0]),
        .O(E));
  FDPE #(
    .INIT(1'b1)) 
    \long_lfsr.lfsr_internal_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_3_out),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[0]));
  FDPE #(
    .INIT(1'b1)) 
    \long_lfsr.lfsr_internal_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[0]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[1]));
  FDPE #(
    .INIT(1'b1)) 
    \long_lfsr.lfsr_internal_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[1]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[2]));
  FDPE #(
    .INIT(1'b1)) 
    \long_lfsr.lfsr_internal_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[2]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \long_lfsr.lfsr_internal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[3]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[4]));
  FDPE #(
    .INIT(1'b1)) 
    \long_lfsr.lfsr_internal_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[4]),
        .PRE(out[0]),
        .Q(Q));
  LUT4 #(
    .INIT(16'hCCB8)) 
    \temp_reg[31]_i_1 
       (.I0(\temp_reg[31]_i_3_n_0 ),
        .I1(out[1]),
        .I2(\temp_reg[31]_i_4_n_0 ),
        .I3(out[0]),
        .O(IS_ce));
  LUT3 #(
    .INIT(8'h54)) 
    \temp_reg[31]_i_1__0 
       (.I0(out[0]),
        .I1(\temp_reg[31]_i_2__0_n_0 ),
        .I2(out[1]),
        .O(KEY_REG_CE));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \temp_reg[31]_i_2__0 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[4]),
        .I2(Q),
        .I3(lfsr_parallel_out[2]),
        .I4(lfsr_parallel_out[1]),
        .I5(lfsr_parallel_out[0]),
        .O(\temp_reg[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \temp_reg[31]_i_3 
       (.I0(lfsr_parallel_out[1]),
        .I1(lfsr_parallel_out[4]),
        .I2(Q),
        .I3(lfsr_parallel_out[2]),
        .I4(lfsr_parallel_out[3]),
        .I5(lfsr_parallel_out[0]),
        .O(\temp_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7F3F)) 
    \temp_reg[31]_i_4 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[4]),
        .I2(Q),
        .I3(lfsr_parallel_out[2]),
        .I4(lfsr_parallel_out[1]),
        .I5(lfsr_parallel_out[0]),
        .O(\temp_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[1]),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[4]),
        .I5(lfsr_parallel_out[3]),
        .O(\xlnx_opt_D[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[1]),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[4]),
        .I5(lfsr_parallel_out[3]),
        .O(\xlnx_opt_D[0] ));
  LUT5 #(
    .INIT(32'h8CAE9DBF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_onehot_current_state_reg[3] ),
        .I3(\xlnx_opt_D[0]_1 ),
        .I4(\xlnx_opt_D[0] ),
        .O(D));
endmodule

module normal_shift_reg
   (\temp_reg_reg[31] ,
    KEY_REG_CE,
    KEY_INPUT_MUX_OUT,
    clk_IBUF_BUFG);
  output \temp_reg_reg[31] ;
  input KEY_REG_CE;
  input KEY_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;

  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[31] ;
  wire \temp_reg_reg[32]_srl32_n_1 ;
  wire \NLW_temp_reg_reg[0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[32]_srl32_Q_UNCONNECTED ;

  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[32]_srl32_n_1 ),
        .Q(\temp_reg_reg[31] ),
        .Q31(\NLW_temp_reg_reg[0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[32]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[32]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_INPUT_MUX_OUT),
        .Q(\NLW_temp_reg_reg[32]_srl32_Q_UNCONNECTED ),
        .Q31(\temp_reg_reg[32]_srl32_n_1 ));
endmodule

module tapped_shift_reg
   (KEY_REG_an5_out,
    A_KEY_REG_OUT,
    KEY_INPUT_MUX_OUT,
    KEY_REG_CE,
    B_KEY_REG_OUT,
    clk_IBUF_BUFG,
    KEY_REG_bn1_out,
    \cnt_internal_value_reg[2] ,
    out,
    \temp_reg_reg[0]_0 ,
    \FSM_onehot_current_state_reg[2] ,
    \cnt_internal_value_reg[6] );
  output KEY_REG_an5_out;
  output A_KEY_REG_OUT;
  output KEY_INPUT_MUX_OUT;
  input KEY_REG_CE;
  input B_KEY_REG_OUT;
  input clk_IBUF_BUFG;
  input KEY_REG_bn1_out;
  input \cnt_internal_value_reg[2] ;
  input [0:0]out;
  input \temp_reg_reg[0]_0 ;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input \cnt_internal_value_reg[6] ;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire KEY_REG_an1_out;
  wire KEY_REG_an5_out;
  wire KEY_REG_bn1_out;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[6] ;
  wire [0:0]out;
  wire \temp_reg_reg[0]_0 ;
  wire \temp_reg_reg[1]_srl26_n_0 ;
  wire \temp_reg_reg[28]_srl3_n_0 ;
  wire \temp_reg_reg[32]_srl32_i_2_n_0 ;
  wire \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_srl26_n_0 ),
        .Q(A_KEY_REG_OUT),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[1]_srl26 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl26 
       (.A({1'b1,1'b1,1'b0,1'b0,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_an5_out),
        .Q(\temp_reg_reg[1]_srl26_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[28]_srl3_n_0 ),
        .Q(KEY_REG_an5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[28]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[28]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_an1_out),
        .Q(\temp_reg_reg[28]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(B_KEY_REG_OUT),
        .Q(KEY_REG_an1_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h6F606060)) 
    \temp_reg_reg[32]_srl32_i_1 
       (.I0(\temp_reg_reg[32]_srl32_i_2_n_0 ),
        .I1(\temp_reg_reg[0]_0 ),
        .I2(out),
        .I3(\FSM_onehot_current_state_reg[2] ),
        .I4(\cnt_internal_value_reg[6] ),
        .O(KEY_INPUT_MUX_OUT));
  LUT5 #(
    .INIT(32'h65556AAA)) 
    \temp_reg_reg[32]_srl32_i_2 
       (.I0(A_KEY_REG_OUT),
        .I1(KEY_REG_bn1_out),
        .I2(\cnt_internal_value_reg[2] ),
        .I3(out),
        .I4(KEY_REG_an1_out),
        .O(\temp_reg_reg[32]_srl32_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_0
   (KEY_REG_bn1_out,
    KEY_REG_bn5_out,
    B_KEY_REG_OUT,
    KEY_REG_CE,
    \FSM_sequential_current_state_reg[0] ,
    clk_IBUF_BUFG);
  output KEY_REG_bn1_out;
  output KEY_REG_bn5_out;
  output B_KEY_REG_OUT;
  input KEY_REG_CE;
  input \FSM_sequential_current_state_reg[0] ;
  input clk_IBUF_BUFG;

  wire B_KEY_REG_OUT;
  wire \FSM_sequential_current_state_reg[0] ;
  wire KEY_REG_CE;
  wire KEY_REG_bn1_out;
  wire KEY_REG_bn5_out;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[1]_srl26_n_0 ;
  wire \temp_reg_reg[28]_srl3_n_0 ;
  wire \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_srl26_n_0 ),
        .Q(B_KEY_REG_OUT),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[1]_srl26 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl26 
       (.A({1'b1,1'b1,1'b0,1'b0,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_bn5_out),
        .Q(\temp_reg_reg[1]_srl26_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[28]_srl3_n_0 ),
        .Q(KEY_REG_bn5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[28]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[28]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_bn1_out),
        .Q(\temp_reg_reg[28]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0] ),
        .Q(KEY_REG_bn1_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_1
   (IS_left_reg_bn1_out,
    IS_left_reg_out,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[31]_1 ,
    IS_ce,
    IS_INPUT_MUX_OUT,
    clk_IBUF_BUFG,
    A_KEY_REG_OUT,
    IS_right_reg_an5_out,
    out,
    \cnt_internal_value_reg[3] ,
    lopt);
  output IS_left_reg_bn1_out;
  output IS_left_reg_out;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[31]_1 ;
  input IS_ce;
  input IS_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;
  input A_KEY_REG_OUT;
  input IS_right_reg_an5_out;
  input [1:0]out;
  input \cnt_internal_value_reg[3] ;
  output lopt;

  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_bn5_out;
  wire IS_left_reg_out;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[1]_srl26_n_0 ;
  wire \temp_reg_reg[28]_srl3_n_0 ;
  wire \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ;

  assign lopt = IS_left_reg_bn5_out;
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl26_n_0 ),
        .Q(IS_left_reg_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[1]_srl26 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl26 
       (.A({1'b1,1'b1,1'b0,1'b0,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_left_reg_bn5_out),
        .Q(\temp_reg_reg[1]_srl26_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[28]_srl3_n_0 ),
        .Q(IS_left_reg_bn5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[28]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[28]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_left_reg_bn1_out),
        .Q(\temp_reg_reg[28]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_INPUT_MUX_OUT),
        .Q(IS_left_reg_bn1_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_2
   (IS_right_reg_an5_out,
    IS_INPUT_MUX_OUT,
    D,
    IS_ce,
    IS_left_reg_out,
    clk_IBUF_BUFG,
    \temp_reg_reg[0]_0 ,
    \FSM_sequential_current_state_reg[1] ,
    out,
    Q,
    \cnt_internal_value_reg[5] ,
    IS_left_reg_bn1_out,
    \cnt_internal_value_reg[2] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \cnt_internal_value_reg[6] ,
    start_IBUF,
    R,
    \cnt_internal_value_reg[5]_0 ,
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
  output IS_right_reg_an5_out;
  output IS_INPUT_MUX_OUT;
  output [3:0]D;
  input IS_ce;
  input IS_left_reg_out;
  input clk_IBUF_BUFG;
  input \temp_reg_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[1] ;
  input [5:0]out;
  input [0:0]Q;
  input \cnt_internal_value_reg[5] ;
  input IS_left_reg_bn1_out;
  input \cnt_internal_value_reg[2] ;
  input [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  input \cnt_internal_value_reg[6] ;
  input start_IBUF;
  input R;
  input \cnt_internal_value_reg[5]_0 ;
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

  wire [3:0]D;
  wire \FSM_onehot_current_state[5]_i_2_n_0 ;
  wire \FSM_onehot_current_state[6]_i_2_n_0 ;
  wire [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_out;
  wire IS_right_reg_an1_out;
  wire IS_right_reg_an5_out;
  wire IS_right_reg_out;
  wire [0:0]Q;
  wire R;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[5]_0 ;
  wire \cnt_internal_value_reg[6] ;
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
  wire [5:0]out;
  wire start_IBUF;
  wire \temp_reg_reg[1]_srl26_n_0 ;
  wire \temp_reg_reg[28]_srl3_n_0 ;
  wire xlnx_opt_IS_INPUT_MUX_OUT;
  wire xlnx_opt_IS_INPUT_MUX_OUT_1;
  wire xlnx_opt_IS_INPUT_MUX_OUT_2;
  wire xlnx_opt_IS_INPUT_MUX_OUT_3;
  wire \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(start_IBUF),
        .I1(out[0]),
        .I2(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .I3(out[4]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8FFFFFFF88888888)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\cnt_internal_value_reg[5]_0 ),
        .I1(out[2]),
        .I2(IS_right_reg_out),
        .I3(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I4(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I5(out[3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(out[3]),
        .I2(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .I3(\cnt_internal_value_reg[6] ),
        .I4(out[4]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(IS_right_reg_out),
        .I1(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I2(\FSM_sequential_current_state_reg[1]_0 [1]),
        .O(\FSM_onehot_current_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(out[5]),
        .I1(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .I2(\cnt_internal_value_reg[6] ),
        .I3(out[4]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h9555)) 
    \FSM_onehot_current_state[6]_i_2 
       (.I0(R),
        .I1(IS_right_reg_out),
        .I2(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I3(\FSM_sequential_current_state_reg[1]_0 [1]),
        .O(\FSM_onehot_current_state[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl26_n_0 ),
        .Q(IS_right_reg_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[1]_srl26 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl26 
       (.A({1'b1,1'b1,1'b0,1'b0,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_right_reg_an5_out),
        .Q(\temp_reg_reg[1]_srl26_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[28]_srl3_n_0 ),
        .Q(IS_right_reg_an5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[28]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[28]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_right_reg_an1_out),
        .Q(\temp_reg_reg[28]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_left_reg_out),
        .Q(IS_right_reg_an1_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h9AAA9555)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2 
       (.I0(IS_right_reg_out),
        .I1(IS_left_reg_bn1_out),
        .I2(\cnt_internal_value_reg[2] ),
        .I3(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I4(IS_right_reg_an1_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_3));
  LUT6 #(
    .INIT(64'hC393C3336333C333)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2_1 
       (.I0(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I1(lopt),
        .I2(IS_left_reg_out),
        .I3(lopt_1),
        .I4(lopt_2),
        .I5(lopt_3),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_2));
  LUT2 #(
    .INIT(4'hD)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2_2 
       (.I0(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I1(\FSM_sequential_current_state_reg[1]_0 [0]),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hFF00C5E740FE6856)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2_3 
       (.I0(lopt_4),
        .I1(lopt_5),
        .I2(lopt_6),
        .I3(lopt_7),
        .I4(lopt_8),
        .I5(lopt_9),
        .O(xlnx_opt_IS_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h00000FF022220FF0)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2_4 
       (.I0(out[1]),
        .I1(Q),
        .I2(xlnx_opt_IS_INPUT_MUX_OUT_3),
        .I3(xlnx_opt_IS_INPUT_MUX_OUT_2),
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
