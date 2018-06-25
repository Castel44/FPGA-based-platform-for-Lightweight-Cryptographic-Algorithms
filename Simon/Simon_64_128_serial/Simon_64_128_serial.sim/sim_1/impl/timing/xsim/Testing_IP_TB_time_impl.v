// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 25 18:22:00 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simon/Simon_64_128_serial/Simon_64_128_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\temp_reg_reg[100] ,
    Q,
    lfsr_change_0,
    \temp_reg_reg[100]_0 ,
    KEY_INPUT_MUX_OUT,
    \temp_reg_reg[63] ,
    \temp_reg_reg[100]_1 ,
    out,
    D,
    \cnt_internal_value_reg[0]_0 ,
    \lfsr_internal_reg[4] ,
    \temp_reg_reg[99] ,
    E,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8,
    lopt_9,
    lopt_10,
    lopt_11,
    lopt_12,
    lopt_13,
    lopt_14,
    lopt_15);
  output \temp_reg_reg[100] ;
  output [2:0]Q;
  output lfsr_change_0;
  output \temp_reg_reg[100]_0 ;
  output KEY_INPUT_MUX_OUT;
  output \temp_reg_reg[63] ;
  output \temp_reg_reg[100]_1 ;
  input [1:0]out;
  input [1:0]D;
  input \cnt_internal_value_reg[0]_0 ;
  input \lfsr_internal_reg[4] ;
  input \temp_reg_reg[99] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
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
  input lopt_10;
  input lopt_11;
  input lopt_12;
  input lopt_13;
  input lopt_14;
  input lopt_15;

  wire [1:0]D;
  wire [0:0]E;
  wire KEY_INPUT_MUX_OUT;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire lfsr_change_0;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_15;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [1:0]out;
  wire [4:0]plusOp;
  wire [2:1]serial_cnt_out;
  wire \temp_reg_reg[100] ;
  wire \temp_reg_reg[63] ;
  wire xlnx_opt_KEY_INPUT_MUX_OUT;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_1;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_2;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_3;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_4;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_5;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_6;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(serial_cnt_out[1]),
        .I1(Q[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1 
       (.I0(serial_cnt_out[1]),
        .I1(Q[0]),
        .I2(serial_cnt_out[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(Q[1]),
        .I1(serial_cnt_out[1]),
        .I2(Q[0]),
        .I3(serial_cnt_out[2]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_1 
       (.I0(Q[1]),
        .I1(serial_cnt_out[2]),
        .I2(Q[0]),
        .I3(serial_cnt_out[1]),
        .I4(Q[2]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(plusOp[0]),
        .Q(Q[0]));
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
        .D(plusOp[2]),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(plusOp[3]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out[0]),
        .D(plusOp[4]),
        .Q(Q[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    lfsr_change_i_1
       (.I0(Q[2]),
        .I1(serial_cnt_out[1]),
        .I2(Q[0]),
        .I3(serial_cnt_out[2]),
        .I4(Q[1]),
        .O(lfsr_change_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \temp_reg[63]_i_10 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[1]),
        .O(\temp_reg_reg[63] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg_reg[101]_srl27_i_8 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[2]),
        .O(\temp_reg_reg[100] ));
  LUT3 #(
    .INIT(8'hB0)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(lopt),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_6));
  LUT6 #(
    .INIT(64'hFFFF5F11FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1_1 
       (.I0(lopt_1),
        .I1(lopt_2),
        .I2(lopt_3),
        .I3(lopt_4),
        .I4(lopt_5),
        .I5(xlnx_opt_KEY_INPUT_MUX_OUT_6),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_5));
  LUT6 #(
    .INIT(64'hCEEEEEEEC4444444)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1_2 
       (.I0(out[1]),
        .I1(D[0]),
        .I2(serial_cnt_out[2]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(D[1]),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_4));
  LUT6 #(
    .INIT(64'hFF0600F900F9FF06)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1_3 
       (.I0(lopt_6),
        .I1(lopt_7),
        .I2(lopt_8),
        .I3(lopt_9),
        .I4(lopt_10),
        .I5(lopt_11),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_3));
  LUT6 #(
    .INIT(64'hD555D555D5555555)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1_4 
       (.I0(out[1]),
        .I1(serial_cnt_out[2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(lopt_8),
        .I5(serial_cnt_out[1]),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_2));
  LUT6 #(
    .INIT(64'hD555555555555555)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1_5 
       (.I0(out[1]),
        .I1(serial_cnt_out[2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(lopt_8),
        .I5(serial_cnt_out[1]),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hCC33AA55C3C3A5A5)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1_6 
       (.I0(lopt_12),
        .I1(lopt_13),
        .I2(lopt_14),
        .I3(lopt_15),
        .I4(xlnx_opt_KEY_INPUT_MUX_OUT_2),
        .I5(xlnx_opt_KEY_INPUT_MUX_OUT_1),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT));
  LUT5 #(
    .INIT(32'h3BB3B33B)) 
    \xlnx_opt_LUT_temp_reg_reg[101]_srl27_i_1_7 
       (.I0(out[1]),
        .I1(xlnx_opt_KEY_INPUT_MUX_OUT_5),
        .I2(xlnx_opt_KEY_INPUT_MUX_OUT_4),
        .I3(xlnx_opt_KEY_INPUT_MUX_OUT_3),
        .I4(xlnx_opt_KEY_INPUT_MUX_OUT),
        .O(KEY_INPUT_MUX_OUT));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT__parameterized0
   (\temp_reg_reg[100] ,
    \temp_reg_reg[63] ,
    D,
    \FSM_onehot_current_state_reg[6] ,
    \FSM_onehot_current_state_reg[5] ,
    \FSM_onehot_current_state_reg[3] ,
    \FSM_sequential_current_state_reg[0] ,
    out,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8);
  output \temp_reg_reg[100] ;
  output \temp_reg_reg[63] ;
  output [2:0]D;
  output \FSM_onehot_current_state_reg[6] ;
  output \FSM_onehot_current_state_reg[5] ;
  output \FSM_onehot_current_state_reg[3] ;
  input \FSM_sequential_current_state_reg[0] ;
  input [5:0]out;
  input [1:0]\FSM_sequential_current_state_reg[1] ;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;

  wire [2:0]D;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_3_n_0 ;
  wire \FSM_onehot_current_state[6]_i_4_n_0 ;
  wire \FSM_onehot_current_state_reg[3] ;
  wire \FSM_onehot_current_state_reg[5] ;
  wire \FSM_onehot_current_state_reg[6] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire clk_IBUF_BUFG;
  wire cnt_ce_W;
  wire \cnt_internal_value[0]_i_1_n_0 ;
  wire \cnt_internal_value[1]_i_1_n_0 ;
  wire \cnt_internal_value[2]_i_1__0_n_0 ;
  wire \cnt_internal_value[3]_i_1_n_0 ;
  wire \cnt_internal_value[4]_i_1__0_n_0 ;
  wire \cnt_internal_value[5]_i_1_n_0 ;
  wire \cnt_internal_value[6]_i_2_n_0 ;
  wire \cnt_internal_value[6]_i_4_n_0 ;
  wire [6:0]cnt_out_W;
  wire cnt_rst_W;
  wire [5:0]out;
  wire \temp_reg_reg[101]_srl27_i_6_n_0 ;

  assign lopt = cnt_out_W[0];
  assign lopt_1 = \FSM_onehot_current_state[4]_i_3_n_0 ;
  assign lopt_2 = cnt_out_W[5];
  assign lopt_3 = cnt_out_W[1];
  assign lopt_4 = \temp_reg_reg[101]_srl27_i_6_n_0 ;
  assign lopt_5 = cnt_out_W[3];
  assign lopt_6 = cnt_out_W[2];
  assign lopt_7 = cnt_out_W[4];
  assign lopt_8 = cnt_out_W[6];
  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(out[0]),
        .I1(cnt_out_W[6]),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(out[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(cnt_out_W[6]),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(out[1]),
        .I3(\FSM_onehot_current_state_reg[3] ),
        .I4(out[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[2]),
        .I5(cnt_out_W[5]),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[4]),
        .I3(cnt_out_W[6]),
        .I4(cnt_out_W[5]),
        .I5(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_current_state[4]_i_3 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[3]),
        .O(\FSM_onehot_current_state[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(out[5]),
        .I1(out[4]),
        .I2(\FSM_onehot_current_state_reg[6] ),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_onehot_current_state[6]_i_2 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[6]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[3]),
        .I5(\FSM_onehot_current_state[6]_i_4_n_0 ),
        .O(\FSM_onehot_current_state_reg[6] ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_current_state[6]_i_4 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .O(\FSM_onehot_current_state[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE858B32C995FA2BA)) 
    \FSM_onehot_current_state[6]_i_5 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[3]),
        .I5(cnt_out_W[2]),
        .O(\FSM_onehot_current_state_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .O(\cnt_internal_value[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .O(\cnt_internal_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[2]),
        .O(\cnt_internal_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_internal_value[4]_i_1__0 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[0]),
        .O(\cnt_internal_value[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_internal_value[5]_i_1 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[3]),
        .I5(cnt_out_W[2]),
        .O(\cnt_internal_value[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_1 
       (.I0(out[2]),
        .I1(out[4]),
        .I2(out[1]),
        .O(cnt_ce_W));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \cnt_internal_value[6]_i_2 
       (.I0(cnt_out_W[6]),
        .I1(cnt_out_W[5]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[3]),
        .I4(\cnt_internal_value[6]_i_4_n_0 ),
        .I5(cnt_out_W[4]),
        .O(\cnt_internal_value[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_3 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[5]),
        .O(cnt_rst_W));
  LUT2 #(
    .INIT(4'h7)) 
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
        .D(\cnt_internal_value[0]_i_1_n_0 ),
        .Q(cnt_out_W[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[1]_i_1_n_0 ),
        .Q(cnt_out_W[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(\cnt_internal_value[2]_i_1__0_n_0 ),
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
        .D(\cnt_internal_value[6]_i_2_n_0 ),
        .Q(cnt_out_W[6]));
  LUT5 #(
    .INIT(32'hCC44CF44)) 
    \temp_reg_reg[101]_srl27_i_6 
       (.I0(cnt_out_W[6]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[4]),
        .O(\temp_reg_reg[101]_srl27_i_6_n_0 ));
endmodule

module IS_SHIFT_REG
   (D,
    \FSM_onehot_current_state_reg[5] ,
    IS_ce,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[6] ,
    out,
    \cnt_internal_value_reg[2] ,
    Q,
    \cnt_internal_value_reg[4] ,
    start_IBUF,
    \FSM_onehot_current_state_reg[5]_0 ,
    \cnt_internal_value_reg[5] ,
    \cnt_internal_value_reg[5]_0 ,
    \cnt_internal_value_reg[1] ,
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
  output [2:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input IS_ce;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[6] ;
  input [1:0]out;
  input \cnt_internal_value_reg[2] ;
  input [0:0]Q;
  input [2:0]\cnt_internal_value_reg[4] ;
  input start_IBUF;
  input [3:0]\FSM_onehot_current_state_reg[5]_0 ;
  input \cnt_internal_value_reg[5] ;
  input \cnt_internal_value_reg[5]_0 ;
  input \cnt_internal_value_reg[1] ;
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

  wire [2:0]D;
  wire \FSM_onehot_current_state[5]_i_2_n_0 ;
  wire \FSM_onehot_current_state_reg[5] ;
  wire [3:0]\FSM_onehot_current_state_reg[5]_0 ;
  wire IS_2n1_out;
  wire IS_2n2_out;
  wire IS_2n8_out;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_n1_out;
  wire IS_n2_out;
  wire IS_n8_out;
  wire IS_out;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[2] ;
  wire [2:0]\cnt_internal_value_reg[4] ;
  wire \cnt_internal_value_reg[5] ;
  wire \cnt_internal_value_reg[5]_0 ;
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
  wire start_IBUF;
  wire \temp_reg_reg[1]_srl23_n_0 ;
  wire \temp_reg_reg[25]_srl5_n_0 ;
  wire \temp_reg_reg[32]_srl24_n_0 ;
  wire \temp_reg_reg[57]_srl5_n_0 ;
  wire xlnx_opt_IS_INPUT_MUX_OUT;
  wire xlnx_opt_IS_INPUT_MUX_OUT_1;
  wire xlnx_opt_IS_INPUT_MUX_OUT_2;
  wire xlnx_opt_IS_INPUT_MUX_OUT_3;
  wire xlnx_opt_IS_INPUT_MUX_OUT_4;
  wire xlnx_opt_IS_INPUT_MUX_OUT_5;
  wire \NLW_temp_reg_reg[1]_srl23_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[32]_srl24_Q31_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(start_IBUF),
        .I1(\FSM_onehot_current_state_reg[5]_0 [0]),
        .I2(\FSM_onehot_current_state_reg[5] ),
        .I3(\FSM_onehot_current_state_reg[5]_0 [3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF888FFFF88888888)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\cnt_internal_value_reg[1] ),
        .I1(\FSM_onehot_current_state_reg[5]_0 [1]),
        .I2(IS_out),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_current_state_reg[5]_0 [2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg[5]_0 [2]),
        .I2(\cnt_internal_value_reg[5] ),
        .I3(\FSM_onehot_current_state_reg[5]_0 [3]),
        .I4(\FSM_onehot_current_state_reg[5] ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h70)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(IS_out),
        .I1(out[1]),
        .I2(out[0]),
        .O(\FSM_onehot_current_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSM_onehot_current_state[6]_i_3 
       (.I0(out[1]),
        .I1(IS_out),
        .I2(out[0]),
        .I3(\cnt_internal_value_reg[5]_0 ),
        .O(\FSM_onehot_current_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl23_n_0 ),
        .Q(IS_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[1]_srl23 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl23 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_n8_out),
        .Q(\temp_reg_reg[1]_srl23_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl23_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[25]_srl5_n_0 ),
        .Q(IS_n8_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[25]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[25]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_n2_out),
        .Q(\temp_reg_reg[25]_srl5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_n1_out),
        .Q(IS_n2_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[32]_srl24_n_0 ),
        .Q(IS_n1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[32]_srl24 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[32]_srl24 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_2n8_out),
        .Q(\temp_reg_reg[32]_srl24_n_0 ),
        .Q31(\NLW_temp_reg_reg[32]_srl24_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[57]_srl5_n_0 ),
        .Q(IS_2n8_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[57]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[57]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_2n2_out),
        .Q(\temp_reg_reg[57]_srl5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_2n1_out),
        .Q(IS_2n2_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_INPUT_MUX_OUT),
        .Q(IS_2n1_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF34043DAD)) 
    \xlnx_opt_LUT_temp_reg[63]_i_2 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_5));
  LUT6 #(
    .INIT(64'hC3A4C33900000000)) 
    \xlnx_opt_LUT_temp_reg[63]_i_2_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBFBFFFF)) 
    \xlnx_opt_LUT_temp_reg[63]_i_2_2 
       (.I0(lopt_6),
        .I1(lopt_7),
        .I2(lopt_8),
        .I3(lopt_9),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT_5),
        .I5(xlnx_opt_IS_INPUT_MUX_OUT_4),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_3));
  LUT5 #(
    .INIT(32'hCCCECCC4)) 
    \xlnx_opt_LUT_temp_reg[63]_i_2_3 
       (.I0(lopt_8),
        .I1(IS_n8_out),
        .I2(\cnt_internal_value_reg[4] [1]),
        .I3(\cnt_internal_value_reg[4] [2]),
        .I4(IS_2n8_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_2));
  LUT5 #(
    .INIT(32'hFE020000)) 
    \xlnx_opt_LUT_temp_reg[63]_i_2_4 
       (.I0(IS_2n1_out),
        .I1(\cnt_internal_value_reg[2] ),
        .I2(\cnt_internal_value_reg[4] [0]),
        .I3(IS_n1_out),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT_2),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_1));
  LUT5 #(
    .INIT(32'hE41B1BE4)) 
    \xlnx_opt_LUT_temp_reg[63]_i_2_5 
       (.I0(\cnt_internal_value_reg[2] ),
        .I1(IS_2n2_out),
        .I2(IS_n2_out),
        .I3(Q),
        .I4(IS_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT));
  LUT5 #(
    .INIT(32'h0F2F2F0F)) 
    \xlnx_opt_LUT_temp_reg[63]_i_2_6 
       (.I0(lopt_8),
        .I1(lopt_9),
        .I2(xlnx_opt_IS_INPUT_MUX_OUT_3),
        .I3(xlnx_opt_IS_INPUT_MUX_OUT_1),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT),
        .O(IS_INPUT_MUX_OUT));
endmodule

module KEY_SHIFTREG
   (D,
    Q,
    \temp_reg_reg[100]_0 ,
    \temp_reg_reg[100]_1 ,
    \FSM_sequential_current_state_reg[0] ,
    KEY_INPUT_MUX_OUT,
    clk_IBUF_BUFG,
    out,
    \FSM_onehot_current_state_reg[2] ,
    \cnt_internal_value_reg[4] ,
    \cnt_internal_value_reg[3] ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [1:0]D;
  output [1:0]Q;
  output \temp_reg_reg[100]_0 ;
  output \temp_reg_reg[100]_1 ;
  input \FSM_sequential_current_state_reg[0] ;
  input KEY_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;
  input [1:0]out;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input \cnt_internal_value_reg[4] ;
  input \cnt_internal_value_reg[3] ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;

  wire [1:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_1_out;
  wire KEY_REG_2n3_out;
  wire KEY_REG_3n3_out;
  wire KEY_REG_n1_out;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[101]_srl27_n_0 ;
  wire \temp_reg_reg[2]_srl30_n_0 ;
  wire \temp_reg_reg[34]_srl1_n_0 ;
  wire \temp_reg_reg[35]_srl32_n_1 ;
  wire \temp_reg_reg[69]_srl30_n_0 ;
  wire \NLW_temp_reg_reg[101]_srl27_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[2]_srl30_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[35]_srl32_Q_UNCONNECTED ;
  wire \NLW_temp_reg_reg[69]_srl30_Q31_UNCONNECTED ;

  assign lopt = KEY_REG_3n3_out;
  assign lopt_1 = KEY_REG_2n3_out;
  assign lopt_2 = KEY_REG_n1_out;
  assign lopt_3 = KEY_REG_1_out;
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(KEY_REG_1_out),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[101]_srl27_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[101]_srl27 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[101]_srl27 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_INPUT_MUX_OUT),
        .Q(\temp_reg_reg[101]_srl27_n_0 ),
        .Q31(\NLW_temp_reg_reg[101]_srl27_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[2]_srl30_n_0 ),
        .Q(KEY_REG_1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[2]_srl30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[2]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(Q[1]),
        .Q(\temp_reg_reg[2]_srl30_n_0 ),
        .Q31(\NLW_temp_reg_reg[2]_srl30_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(KEY_REG_n1_out),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[34]_srl1_n_0 ),
        .Q(KEY_REG_n1_out),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[34]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[34]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[35]_srl32_n_1 ),
        .Q(\temp_reg_reg[34]_srl1_n_0 ));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[35]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[35]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_2n3_out),
        .Q(\NLW_temp_reg_reg[35]_srl32_Q_UNCONNECTED ),
        .Q31(\temp_reg_reg[35]_srl32_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(D[0]),
        .Q(KEY_REG_2n3_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[69]_srl30_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[69]_srl30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[69]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_3n3_out),
        .Q(\temp_reg_reg[69]_srl30_n_0 ),
        .Q31(\NLW_temp_reg_reg[69]_srl30_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(D[1]),
        .Q(KEY_REG_3n3_out),
        .R(1'b0));
endmodule

module Simon_64_128_bit_serial
   (out,
    \temp_reg_reg[100] ,
    D,
    \FSM_onehot_current_state_reg[5] ,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[6] ,
    \FSM_onehot_current_state_reg[5]_0 ,
    start_IBUF,
    \cnt_internal_value_reg[5] ,
    \cnt_internal_value_reg[5]_0 ,
    \cnt_internal_value_reg[1] ,
    \cnt_internal_value_reg[0] ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8,
    lopt_9,
    lopt_10);
  output [1:0]out;
  output \temp_reg_reg[100] ;
  output [2:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[6] ;
  input [5:0]\FSM_onehot_current_state_reg[5]_0 ;
  input start_IBUF;
  input \cnt_internal_value_reg[5] ;
  input \cnt_internal_value_reg[5]_0 ;
  input \cnt_internal_value_reg[1] ;
  input \cnt_internal_value_reg[0] ;
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
  input lopt_10;

  wire [2:0]D;
  wire \FSM_onehot_current_state_reg[5] ;
  wire [5:0]\FSM_onehot_current_state_reg[5]_0 ;
  wire INST_SERIAL_CNT_n_0;
  wire INST_SERIAL_CNT_n_7;
  wire INST_lfsr_n_4;
  wire IS_ce;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_2n4_out;
  wire KEY_REG_3n4_out;
  wire KEY_REG_OUT;
  wire KEY_REG_n_out;
  wire busy;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[5] ;
  wire \cnt_internal_value_reg[5]_0 ;
  wire end_encrypt_ce;
  wire end_encrypt_out;
  wire lfsr_change;
  wire lfsr_change_0;
  wire lopt;
  wire lopt_1;
  wire \^lopt_10 ;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_15;
  wire lopt_16;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire \^lopt_5 ;
  wire \^lopt_6 ;
  wire \^lopt_7 ;
  wire \^lopt_8 ;
  wire \^lopt_9 ;
  wire [1:0]nx_state;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire [4:0]serial_cnt_out;
  wire start_IBUF;
  wire \NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[6]_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_cnt_internal_value_reg[3]_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_cnt_internal_value_reg[4]_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_temp_reg_reg[100]_0_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_temp_reg_reg[100]_1_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_cnt_internal_value_reg[0]_0_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_lfsr_internal_reg[4]_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[100]_0_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[100]_1_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[99]_UNCONNECTED ;
  wire \NLW_INST_lfsr_temp_reg_reg[100]_UNCONNECTED ;

  assign lopt_11 = lopt_5;
  assign lopt_12 = lopt_6;
  assign lopt_13 = lopt_7;
  assign lopt_14 = lopt_8;
  assign lopt_15 = lopt_9;
  assign lopt_16 = lopt_10;
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(out[1]),
        .I1(\FSM_onehot_current_state_reg[5]_0 [3]),
        .I2(out[0]),
        .O(nx_state[1]));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[0]),
        .Q(out[0]),
        .R(\FSM_onehot_current_state_reg[5]_0 [1]));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[1]),
        .Q(out[1]),
        .R(\FSM_onehot_current_state_reg[5]_0 [1]));
  end_encrypt_shift_reg INST_END_ENCRYPT_FSR
       (.AS(out[0]),
        .E(end_encrypt_ce),
        .Q(end_encrypt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  IS_SHIFT_REG INST_IS_SHIFTREG
       (.D(D),
        .\FSM_onehot_current_state_reg[5] (\FSM_onehot_current_state_reg[5] ),
        .\FSM_onehot_current_state_reg[5]_0 ({\FSM_onehot_current_state_reg[5]_0 [5:3],\FSM_onehot_current_state_reg[5]_0 [0]}),
        .IS_ce(IS_ce),
        .Q(KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1] ),
        .\cnt_internal_value_reg[2] (INST_SERIAL_CNT_n_7),
        .\cnt_internal_value_reg[4] ({serial_cnt_out[4:3],serial_cnt_out[0]}),
        .\cnt_internal_value_reg[5] (\cnt_internal_value_reg[5] ),
        .\cnt_internal_value_reg[5]_0 (\cnt_internal_value_reg[5]_0 ),
        .\cnt_internal_value_reg[6] (\NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[6]_UNCONNECTED ),
        .lopt(lopt_11),
        .lopt_1(lopt_3),
        .lopt_2(lopt),
        .lopt_3(lopt_12),
        .lopt_4(lopt_13),
        .lopt_5(lopt_2),
        .lopt_6(lopt_14),
        .lopt_7(\FSM_onehot_current_state_reg[5]_0 [2]),
        .lopt_8(lopt_15),
        .lopt_9(lopt_16),
        .out(out),
        .start_IBUF(start_IBUF));
  KEY_SHIFTREG INST_KEY_REG
       (.D({KEY_REG_3n4_out,KEY_REG_2n4_out}),
        .\FSM_onehot_current_state_reg[2] (\FSM_onehot_current_state_reg[5]_0 [2]),
        .\FSM_sequential_current_state_reg[0] (INST_lfsr_n_4),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .Q({KEY_REG_n_out,KEY_REG_OUT}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[3] (\NLW_INST_KEY_REG_cnt_internal_value_reg[3]_UNCONNECTED ),
        .\cnt_internal_value_reg[4] (\NLW_INST_KEY_REG_cnt_internal_value_reg[4]_UNCONNECTED ),
        .lopt(\^lopt_7 ),
        .lopt_1(\^lopt_8 ),
        .lopt_2(\^lopt_9 ),
        .lopt_3(\^lopt_10 ),
        .out(out),
        .\temp_reg_reg[100]_0 (\NLW_INST_KEY_REG_temp_reg_reg[100]_0_UNCONNECTED ),
        .\temp_reg_reg[100]_1 (\NLW_INST_KEY_REG_temp_reg_reg[100]_1_UNCONNECTED ));
  CNT INST_SERIAL_CNT
       (.D({KEY_REG_3n4_out,KEY_REG_2n4_out}),
        .E(busy),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .Q({serial_cnt_out[4:3],serial_cnt_out[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0]_0 (\NLW_INST_SERIAL_CNT_cnt_internal_value_reg[0]_0_UNCONNECTED ),
        .lfsr_change_0(lfsr_change_0),
        .\lfsr_internal_reg[4] (\NLW_INST_SERIAL_CNT_lfsr_internal_reg[4]_UNCONNECTED ),
        .lopt(\FSM_onehot_current_state_reg[5]_0 [2]),
        .lopt_1(lopt),
        .lopt_10(KEY_REG_n_out),
        .lopt_11(KEY_REG_OUT),
        .lopt_12(\^lopt_7 ),
        .lopt_13(\^lopt_8 ),
        .lopt_14(\^lopt_9 ),
        .lopt_15(\^lopt_10 ),
        .lopt_2(lopt_1),
        .lopt_3(lopt_2),
        .lopt_4(lopt_3),
        .lopt_5(lopt_4),
        .lopt_6(\^lopt_5 ),
        .lopt_7(\^lopt_6 ),
        .lopt_8(serial_cnt_out[0]),
        .lopt_9(INST_SERIAL_CNT_n_0),
        .out(out),
        .\temp_reg_reg[100] (INST_SERIAL_CNT_n_0),
        .\temp_reg_reg[100]_0 (\NLW_INST_SERIAL_CNT_temp_reg_reg[100]_0_UNCONNECTED ),
        .\temp_reg_reg[100]_1 (\NLW_INST_SERIAL_CNT_temp_reg_reg[100]_1_UNCONNECTED ),
        .\temp_reg_reg[63] (INST_SERIAL_CNT_n_7),
        .\temp_reg_reg[99] (\NLW_INST_SERIAL_CNT_temp_reg_reg[99]_UNCONNECTED ));
  lfsr INST_lfsr
       (.CLK(lfsr_change),
        .D(nx_state[0]),
        .E(end_encrypt_ce),
        .\FSM_onehot_current_state_reg[3] (\FSM_onehot_current_state_reg[5]_0 [3]),
        .IS_ce(IS_ce),
        .Q(serial_cnt_out[0]),
        .\cnt_internal_value_reg[3] (INST_SERIAL_CNT_n_0),
        .lfsr_change_0(lfsr_change_0),
        .lopt(\^lopt_5 ),
        .lopt_1(\^lopt_6 ),
        .out(out),
        .\reg_internal_reg[1] (end_encrypt_out),
        .\t_sequence_reg[1]_0 (busy),
        .\temp_reg_reg[0] (INST_lfsr_n_4),
        .\temp_reg_reg[100] (\NLW_INST_lfsr_temp_reg_reg[100]_UNCONNECTED ),
        .\temp_reg_reg[32] ({KEY_REG_n_out,KEY_REG_OUT}));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lfsr_change_0),
        .Q(lfsr_change),
        .R(1'b0));
endmodule

(* Datapath = "32" *) (* ECO_CHECKSUM = "ae98406f" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_6;
  wire INST_CNT_n_7;
  wire Simon_DUT_n_0;
  wire Simon_DUT_n_3;
  wire Simon_DUT_n_4;
  wire Simon_DUT_n_5;
  wire Simon_DUT_n_6;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire data_ready_W;
  wire led_out;
  wire lfsr_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  (* RTL_KEEP = "yes" *) wire start_W;
  wire \NLW_INST_CNT_FSM_sequential_current_state_reg[0]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[100]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[63]_UNCONNECTED ;
  wire \NLW_Simon_DUT_cnt_internal_value_reg[0]_UNCONNECTED ;
  wire \NLW_Simon_DUT_cnt_internal_value_reg[6]_UNCONNECTED ;
  wire \NLW_Simon_DUT_temp_reg_reg[100]_UNCONNECTED ;

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
        .D(Simon_DUT_n_5),
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
        .D(Simon_DUT_n_4),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_3),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_2),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(rst_IBUF));
  CNT__parameterized0 INST_CNT
       (.D({INST_CNT_n_2,INST_CNT_n_3,INST_CNT_n_4}),
        .\FSM_onehot_current_state_reg[3] (INST_CNT_n_7),
        .\FSM_onehot_current_state_reg[5] (INST_CNT_n_6),
        .\FSM_onehot_current_state_reg[6] (INST_CNT_n_5),
        .\FSM_sequential_current_state_reg[0] (\NLW_INST_CNT_FSM_sequential_current_state_reg[0]_UNCONNECTED ),
        .\FSM_sequential_current_state_reg[1] ({Simon_DUT_n_0,lfsr_rst}),
        .\FSM_sequential_current_state_reg[1]_0 (Simon_DUT_n_6),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W}),
        .\temp_reg_reg[100] (\NLW_INST_CNT_temp_reg_reg[100]_UNCONNECTED ),
        .\temp_reg_reg[63] (\NLW_INST_CNT_temp_reg_reg[63]_UNCONNECTED ));
  Simon_64_128_bit_serial Simon_DUT
       (.D({Simon_DUT_n_3,Simon_DUT_n_4,Simon_DUT_n_5}),
        .\FSM_onehot_current_state_reg[5] (Simon_DUT_n_6),
        .\FSM_onehot_current_state_reg[5]_0 ({\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W,\FSM_onehot_current_state_reg_n_0_[0] }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\NLW_Simon_DUT_cnt_internal_value_reg[0]_UNCONNECTED ),
        .\cnt_internal_value_reg[1] (INST_CNT_n_7),
        .\cnt_internal_value_reg[5] (INST_CNT_n_5),
        .\cnt_internal_value_reg[5]_0 (INST_CNT_n_6),
        .\cnt_internal_value_reg[6] (\NLW_Simon_DUT_cnt_internal_value_reg[6]_UNCONNECTED ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_10(lfsr_rst),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .lopt_9(Simon_DUT_n_0),
        .out({Simon_DUT_n_0,lfsr_rst}),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[100] (\NLW_Simon_DUT_temp_reg_reg[100]_UNCONNECTED ));
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
   (Q,
    E,
    clk_IBUF_BUFG,
    AS);
  output [0:0]Q;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]E;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]reg_internal;

  FDPE #(
    .INIT(1'b1)) 
    \reg_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q),
        .PRE(AS),
        .Q(reg_internal));
  FDCE #(
    .INIT(1'b0)) 
    \reg_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AS),
        .D(reg_internal),
        .Q(Q));
endmodule

module lfsr
   (\temp_reg_reg[100] ,
    E,
    IS_ce,
    \t_sequence_reg[1]_0 ,
    \temp_reg_reg[0] ,
    D,
    Q,
    \cnt_internal_value_reg[3] ,
    \temp_reg_reg[32] ,
    lfsr_change_0,
    out,
    \reg_internal_reg[1] ,
    \FSM_onehot_current_state_reg[3] ,
    CLK,
    lopt,
    lopt_1);
  output \temp_reg_reg[100] ;
  output [0:0]E;
  output IS_ce;
  output [0:0]\t_sequence_reg[1]_0 ;
  output \temp_reg_reg[0] ;
  output [0:0]D;
  input [0:0]Q;
  input \cnt_internal_value_reg[3] ;
  input [1:0]\temp_reg_reg[32] ;
  input lfsr_change_0;
  input [1:0]out;
  input [0:0]\reg_internal_reg[1] ;
  input [0:0]\FSM_onehot_current_state_reg[3] ;
  input CLK;
  output lopt;
  output lopt_1;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire IS_ce;
  wire lfsr_change_0;
  wire [4:0]lfsr_parallel_out;
  wire [1:0]out;
  wire p_0_in4_in;
  wire [1:1]p_0_out;
  wire [0:0]p_2_out;
  wire [0:0]\reg_internal_reg[1] ;
  wire [0:0]\t_sequence_reg[1]_0 ;
  wire \t_sequence_reg_n_0_[0] ;
  wire \temp_reg[63]_i_3_n_0 ;
  wire \temp_reg_reg[0] ;

  assign lopt = lfsr_parallel_out[4];
  assign lopt_1 = p_0_in4_in;
  LUT6 #(
    .INIT(64'hEEFEEEFE44F4EEFE)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(\reg_internal_reg[1] ),
        .I3(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state_reg[3] ),
        .I5(out[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(lfsr_parallel_out[0]),
        .I1(lfsr_parallel_out[1]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[4]),
        .I4(out[1]),
        .I5(lfsr_parallel_out[3]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(out[1]),
        .I1(lfsr_parallel_out[4]),
        .I2(lfsr_parallel_out[3]),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[1]),
        .I5(lfsr_parallel_out[2]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(lfsr_parallel_out[4]),
        .I1(lfsr_parallel_out[2]),
        .O(p_2_out));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[2]_i_1 
       (.I0(lfsr_parallel_out[0]),
        .I1(lfsr_parallel_out[1]),
        .O(p_0_out));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .CLR(out[0]),
        .D(p_2_out),
        .Q(lfsr_parallel_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .CLR(out[0]),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .CLR(out[0]),
        .D(p_0_out),
        .Q(lfsr_parallel_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .CLR(out[0]),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .D(lfsr_parallel_out[3]),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \reg_internal[1]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I1(lfsr_change_0),
        .I2(out[0]),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \t_sequence[1]_i_1 
       (.I0(out[0]),
        .O(\t_sequence_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \t_sequence_reg[0] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .D(p_0_in4_in),
        .PRE(out[0]),
        .Q(\t_sequence_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \t_sequence_reg[1] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .CLR(out[0]),
        .D(\t_sequence_reg_n_0_[0] ),
        .Q(p_0_in4_in));
  LUT6 #(
    .INIT(64'h00000000EEEEE0EE)) 
    \temp_reg[63]_i_1 
       (.I0(\temp_reg[63]_i_3_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\reg_internal_reg[1] ),
        .I4(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I5(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(IS_ce));
  LUT6 #(
    .INIT(64'h5555555554155555)) 
    \temp_reg[63]_i_3 
       (.I0(out[0]),
        .I1(lfsr_parallel_out[0]),
        .I2(lfsr_parallel_out[3]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[2]),
        .I5(lfsr_parallel_out[4]),
        .O(\temp_reg[63]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \temp_reg[99]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(\temp_reg_reg[0] ));
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
