// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 25 18:29:09 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simon/Simon_128_128_serial/Simon_128_128_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\temp_reg_reg[127] ,
    \temp_reg_reg[127]_0 ,
    Q,
    \temp_reg_reg[68] ,
    \temp_reg_reg[68]_0 ,
    lfsr_change_0,
    \temp_reg_reg[68]_1 ,
    out,
    \cnt_internal_value_reg[6] ,
    \temp_reg_reg[0] ,
    \FSM_sequential_current_state_reg[1] ,
    D,
    IS_2n8_out,
    IS_n8_out,
    \temp_reg_reg[67] ,
    E,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    pwropt_4);
  output [0:0]\temp_reg_reg[127] ;
  output \temp_reg_reg[127]_0 ;
  output [0:0]Q;
  output \temp_reg_reg[68] ;
  output \temp_reg_reg[68]_0 ;
  output lfsr_change_0;
  output \temp_reg_reg[68]_1 ;
  input [0:0]out;
  input \cnt_internal_value_reg[6] ;
  input \temp_reg_reg[0] ;
  input [1:0]\FSM_sequential_current_state_reg[1] ;
  input [1:0]D;
  input IS_2n8_out;
  input IS_n8_out;
  input [1:0]\temp_reg_reg[67] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  output pwropt;
  output pwropt_1;
  output pwropt_2;
  output pwropt_3;
  output pwropt_4;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire IS_2n8_out;
  wire IS_n8_out;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[4]_i_1__0_n_0 ;
  wire \cnt_internal_value_reg[6] ;
  wire lfsr_change_0;
  wire [0:0]out;
  wire [5:0]plusOp__0;
  wire [5:1]serial_cnt_out;
  wire \temp_reg[127]_i_4_n_0 ;
  wire \temp_reg[127]_i_8_n_0 ;
  wire \temp_reg[127]_i_9_n_0 ;
  wire \temp_reg_reg[0] ;
  wire [0:0]\temp_reg_reg[127] ;
  wire \temp_reg_reg[127]_0 ;
  wire \temp_reg_reg[68]_0 ;

  assign pwropt = serial_cnt_out[1];
  assign pwropt_1 = serial_cnt_out[2];
  assign pwropt_2 = serial_cnt_out[3];
  assign pwropt_3 = serial_cnt_out[4];
  assign pwropt_4 = serial_cnt_out[5];
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__1 
       (.I0(Q),
        .I1(serial_cnt_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[1]),
        .I2(Q),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(serial_cnt_out[3]),
        .I1(Q),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_internal_value[4]_i_1__0 
       (.I0(serial_cnt_out[4]),
        .I1(Q),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[2]),
        .I4(serial_cnt_out[3]),
        .O(\cnt_internal_value[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_internal_value[5]_i_1__0 
       (.I0(serial_cnt_out[5]),
        .I1(serial_cnt_out[3]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[1]),
        .I4(Q),
        .I5(serial_cnt_out[4]),
        .O(plusOp__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_current_state_reg[1] [0]),
        .D(plusOp__0[0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_current_state_reg[1] [0]),
        .D(plusOp__0[1]),
        .Q(serial_cnt_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_current_state_reg[1] [0]),
        .D(plusOp__0[2]),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_current_state_reg[1] [0]),
        .D(plusOp__0[3]),
        .Q(serial_cnt_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_current_state_reg[1] [0]),
        .D(\cnt_internal_value[4]_i_1__0_n_0 ),
        .Q(serial_cnt_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_current_state_reg[1] [0]),
        .D(plusOp__0[5]),
        .Q(serial_cnt_out[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    lfsr_change_i_1
       (.I0(serial_cnt_out[5]),
        .I1(serial_cnt_out[4]),
        .I2(Q),
        .I3(serial_cnt_out[1]),
        .I4(serial_cnt_out[2]),
        .I5(serial_cnt_out[3]),
        .O(lfsr_change_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \temp_reg[127]_i_10 
       (.I0(serial_cnt_out[5]),
        .I1(serial_cnt_out[4]),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .I3(serial_cnt_out[3]),
        .I4(serial_cnt_out[2]),
        .I5(serial_cnt_out[1]),
        .O(\temp_reg_reg[127]_0 ));
  LUT6 #(
    .INIT(64'h88888888F00F8888)) 
    \temp_reg[127]_i_2 
       (.I0(out),
        .I1(\cnt_internal_value_reg[6] ),
        .I2(\temp_reg[127]_i_4_n_0 ),
        .I3(\temp_reg_reg[0] ),
        .I4(\FSM_sequential_current_state_reg[1] [1]),
        .I5(\FSM_sequential_current_state_reg[1] [0]),
        .O(\temp_reg_reg[127] ));
  LUT6 #(
    .INIT(64'h8888888A88888880)) 
    \temp_reg[127]_i_4 
       (.I0(\temp_reg[127]_i_8_n_0 ),
        .I1(D[0]),
        .I2(\temp_reg[127]_i_9_n_0 ),
        .I3(serial_cnt_out[2]),
        .I4(serial_cnt_out[3]),
        .I5(D[1]),
        .O(\temp_reg[127]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \temp_reg[127]_i_8 
       (.I0(IS_2n8_out),
        .I1(serial_cnt_out[3]),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .I3(serial_cnt_out[4]),
        .I4(serial_cnt_out[5]),
        .I5(IS_n8_out),
        .O(\temp_reg[127]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \temp_reg[127]_i_9 
       (.I0(\FSM_sequential_current_state_reg[1] [1]),
        .I1(serial_cnt_out[4]),
        .I2(serial_cnt_out[5]),
        .I3(serial_cnt_out[1]),
        .I4(Q),
        .O(\temp_reg[127]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \temp_reg_reg[96]_srl32_i_7 
       (.I0(\FSM_sequential_current_state_reg[1] [1]),
        .I1(serial_cnt_out[4]),
        .I2(serial_cnt_out[5]),
        .I3(serial_cnt_out[2]),
        .I4(serial_cnt_out[3]),
        .O(\temp_reg_reg[68]_0 ));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT__parameterized1
   (\cnt_internal_value_reg[1]_0 ,
    Q,
    out,
    E,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    pwropt_4,
    pwropt_5,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output \cnt_internal_value_reg[1]_0 ;
  output [1:0]Q;
  input [1:0]out;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;
  input pwropt_4;
  input pwropt_5;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ;
  wire \cnt_internal_value_reg[1]_0 ;
  wire end_cnt_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [1:0]out;
  wire [1:0]plusOp;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire pwropt_4;
  wire pwropt_5;
  wire \xlnx_opt_cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ;
  wire \xlnx_opt_cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2_1 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_internal_value[1]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .O(end_cnt_rst));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_internal_value[1]_i_5 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\cnt_internal_value_reg[1]_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(end_cnt_rst),
        .D(plusOp[0]),
        .Q(Q[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(end_cnt_rst),
        .D(plusOp[1]),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_2 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(\xlnx_opt_cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2_1 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_2_1 
       (.I0(pwropt_5),
        .I1(pwropt_4),
        .I2(pwropt_3),
        .I3(pwropt_2),
        .I4(pwropt_1),
        .I5(pwropt),
        .O(\xlnx_opt_cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ));
  LUT2 #(
    .INIT(4'h4)) 
    \xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_2_2 
       (.I0(\xlnx_opt_cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2_1 ),
        .I1(\xlnx_opt_cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ),
        .O(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT__parameterized2
   (\temp_reg_reg[68] ,
    \temp_reg_reg[127] ,
    D,
    \FSM_onehot_current_state_reg[6] ,
    \FSM_onehot_current_state_reg[6]_0 ,
    \FSM_onehot_current_state_reg[3] ,
    \temp_reg_reg[68]_0 ,
    \FSM_sequential_current_state_reg[0] ,
    out,
    \FSM_sequential_current_state_reg[1] ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output \temp_reg_reg[68] ;
  output \temp_reg_reg[127] ;
  output [2:0]D;
  output \FSM_onehot_current_state_reg[6] ;
  output \FSM_onehot_current_state_reg[6]_0 ;
  output \FSM_onehot_current_state_reg[3] ;
  output \temp_reg_reg[68]_0 ;
  input \FSM_sequential_current_state_reg[0] ;
  input [5:0]out;
  input \FSM_sequential_current_state_reg[1] ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;

  wire [2:0]D;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_3_n_0 ;
  wire \FSM_onehot_current_state[6]_i_6_n_0 ;
  wire \FSM_onehot_current_state[6]_i_7_n_0 ;
  wire \FSM_onehot_current_state[6]_i_8_n_0 ;
  wire \FSM_onehot_current_state[6]_i_9_n_0 ;
  wire \FSM_onehot_current_state_reg[3] ;
  wire \FSM_onehot_current_state_reg[6] ;
  wire \FSM_onehot_current_state_reg[6]_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire clk_IBUF_BUFG;
  wire cnt_ce_W;
  wire \cnt_internal_value[0]_i_1__0_n_0 ;
  wire \cnt_internal_value[1]_i_1__0_n_0 ;
  wire \cnt_internal_value[2]_i_1_n_0 ;
  wire \cnt_internal_value[3]_i_1_n_0 ;
  wire \cnt_internal_value[4]_i_1_n_0 ;
  wire \cnt_internal_value[5]_i_1_n_0 ;
  wire \cnt_internal_value[6]_i_2_n_0 ;
  wire \cnt_internal_value[6]_i_4_n_0 ;
  wire [6:0]cnt_out_W;
  wire cnt_rst_W;
  wire [5:0]out;
  wire \temp_reg[127]_i_6_n_0 ;
  wire \temp_reg[127]_i_7_n_0 ;
  wire \temp_reg_reg[127] ;
  wire \temp_reg_reg[68]_0 ;
  wire \xlnx_opt_FSM_onehot_current_state_reg[6] ;

  assign lopt = cnt_out_W[3];
  assign lopt_1 = cnt_out_W[0];
  assign lopt_2 = cnt_out_W[1];
  assign lopt_3 = cnt_out_W[5];
  assign lopt_4 = cnt_out_W[4];
  LUT4 #(
    .INIT(16'hBFAA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(out[0]),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(cnt_out_W[6]),
        .I3(out[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg[3] ),
        .I1(out[2]),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(cnt_out_W[6]),
        .I4(out[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[3]),
        .I5(cnt_out_W[2]),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[3]),
        .I2(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I3(cnt_out_W[4]),
        .I4(cnt_out_W[6]),
        .I5(cnt_out_W[5]),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[4]_i_3 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .O(\FSM_onehot_current_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAEAAA)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(out[5]),
        .I1(out[4]),
        .I2(\FSM_onehot_current_state_reg[6] ),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(\FSM_onehot_current_state_reg[6]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h088008800880F88F)) 
    \FSM_onehot_current_state[6]_i_4 
       (.I0(\FSM_onehot_current_state[6]_i_6_n_0 ),
        .I1(\FSM_onehot_current_state[6]_i_7_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(cnt_out_W[6]),
        .I4(\FSM_onehot_current_state[6]_i_8_n_0 ),
        .I5(\FSM_onehot_current_state[6]_i_9_n_0 ),
        .O(\FSM_onehot_current_state_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h7AFAEAFEEABAEAEE)) 
    \FSM_onehot_current_state[6]_i_6 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[0]),
        .I5(cnt_out_W[1]),
        .O(\FSM_onehot_current_state[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDF5DF7F7FF7F7555)) 
    \FSM_onehot_current_state[6]_i_7 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[2]),
        .I5(cnt_out_W[4]),
        .O(\FSM_onehot_current_state[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000001A9399F6)) 
    \FSM_onehot_current_state[6]_i_8 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[3]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[0]),
        .I5(cnt_out_W[5]),
        .O(\FSM_onehot_current_state[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h51B9611300000000)) 
    \FSM_onehot_current_state[6]_i_9 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[4]),
        .I5(cnt_out_W[5]),
        .O(\FSM_onehot_current_state[6]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .O(\cnt_internal_value[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .O(\cnt_internal_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[2]),
        .O(\cnt_internal_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_1 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[4]),
        .O(\cnt_internal_value[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_internal_value[5]_i_1 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[1]),
        .I5(cnt_out_W[4]),
        .O(\cnt_internal_value[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_1 
       (.I0(out[2]),
        .I1(out[4]),
        .I2(out[1]),
        .O(cnt_ce_W));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_internal_value[6]_i_2 
       (.I0(cnt_out_W[6]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(\cnt_internal_value[6]_i_4_n_0 ),
        .I4(cnt_out_W[4]),
        .I5(cnt_out_W[5]),
        .O(\cnt_internal_value[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_3 
       (.I0(out[3]),
        .I1(out[5]),
        .I2(out[0]),
        .O(cnt_rst_W));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_internal_value[6]_i_4 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
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
  LUT6 #(
    .INIT(64'h0088FF06FEBA1660)) 
    \temp_reg[127]_i_6 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[1]),
        .I5(cnt_out_W[0]),
        .O(\temp_reg[127]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000BF23FF9C1CAD)) 
    \temp_reg[127]_i_7 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[0]),
        .I5(cnt_out_W[1]),
        .O(\temp_reg[127]_i_7_n_0 ));
  MUXF7 \temp_reg_reg[127]_i_3 
       (.I0(\temp_reg[127]_i_6_n_0 ),
        .I1(\temp_reg[127]_i_7_n_0 ),
        .O(\temp_reg_reg[127] ),
        .S(cnt_out_W[6]));
  LUT4 #(
    .INIT(16'h4555)) 
    \temp_reg_reg[96]_srl32_i_3 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[6]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[1]),
        .O(\temp_reg_reg[68]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \xlnx_opt_LUT_FSM_onehot_current_state[6]_i_2 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[2]),
        .O(\xlnx_opt_FSM_onehot_current_state_reg[6] ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \xlnx_opt_LUT_FSM_onehot_current_state[6]_i_2_1 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[5]),
        .I2(cnt_out_W[6]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[4]),
        .I5(\xlnx_opt_FSM_onehot_current_state_reg[6] ),
        .O(\FSM_onehot_current_state_reg[6] ));
endmodule

module IS_SHIFT_REG
   (IS_2n8_out,
    D,
    IS_n8_out,
    \temp_reg_reg[127]_0 ,
    \FSM_onehot_current_state_reg[5] ,
    \FSM_onehot_current_state_reg[5]_0 ,
    IS_ce,
    clk_IBUF_BUFG,
    KEY_REG_OUT,
    \cnt_internal_value_reg[5] ,
    \cnt_internal_value_reg[6] ,
    out,
    start_IBUF,
    \FSM_sequential_current_state_reg[1] ,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[2] ,
    \FSM_onehot_current_state_reg[2] );
  output IS_2n8_out;
  output [1:0]D;
  output IS_n8_out;
  output \temp_reg_reg[127]_0 ;
  output [2:0]\FSM_onehot_current_state_reg[5] ;
  output \FSM_onehot_current_state_reg[5]_0 ;
  input IS_ce;
  input clk_IBUF_BUFG;
  input KEY_REG_OUT;
  input \cnt_internal_value_reg[5] ;
  input \cnt_internal_value_reg[6] ;
  input [3:0]out;
  input start_IBUF;
  input [1:0]\FSM_sequential_current_state_reg[1] ;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[2] ;
  input [0:0]\FSM_onehot_current_state_reg[2] ;

  wire [1:0]D;
  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire [2:0]\FSM_onehot_current_state_reg[5] ;
  wire \FSM_onehot_current_state_reg[5]_0 ;
  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire IS_2n2_out;
  wire IS_2n8_out;
  wire IS_ce;
  wire IS_n2_out;
  wire IS_n8_out;
  wire IS_out;
  wire KEY_REG_OUT;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[5] ;
  wire \cnt_internal_value_reg[6] ;
  wire [3:0]out;
  wire start_IBUF;
  wire \temp_reg_reg[121]_srl5_n_0 ;
  wire \temp_reg_reg[127]_0 ;
  wire \temp_reg_reg[1]_srl23_n_0 ;
  wire \temp_reg_reg[24]_srl32_n_1 ;
  wire \temp_reg_reg[57]_srl5_n_0 ;
  wire \temp_reg_reg[64]_srl24_n_0 ;
  wire \temp_reg_reg[88]_srl32_n_1 ;
  wire \NLW_temp_reg_reg[1]_srl23_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[24]_srl32_Q_UNCONNECTED ;
  wire \NLW_temp_reg_reg[64]_srl24_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[88]_srl32_Q_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h90FF9090)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg[5]_0 ),
        .I1(\cnt_internal_value_reg[6] ),
        .I2(out[3]),
        .I3(start_IBUF),
        .I4(out[0]),
        .O(\FSM_onehot_current_state_reg[5] [0]));
  LUT6 #(
    .INIT(64'hFFFFD500D500D500)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(IS_out),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .I3(out[2]),
        .I4(\cnt_internal_value_reg[2] ),
        .I5(out[1]),
        .O(\FSM_onehot_current_state_reg[5] [1]));
  LUT6 #(
    .INIT(64'h00008F880F008888)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(out[2]),
        .I2(\cnt_internal_value_reg[0] ),
        .I3(out[3]),
        .I4(\FSM_onehot_current_state_reg[5]_0 ),
        .I5(\cnt_internal_value_reg[6] ),
        .O(\FSM_onehot_current_state_reg[5] [2]));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_current_state[6]_i_3 
       (.I0(\FSM_sequential_current_state_reg[1] [1]),
        .I1(IS_out),
        .I2(\FSM_sequential_current_state_reg[1] [0]),
        .O(\FSM_onehot_current_state_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h66699969)) 
    \temp_reg[127]_i_5 
       (.I0(IS_out),
        .I1(KEY_REG_OUT),
        .I2(IS_n2_out),
        .I3(\cnt_internal_value_reg[5] ),
        .I4(IS_2n2_out),
        .O(\temp_reg_reg[127]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl23_n_0 ),
        .Q(IS_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[121]_srl5_n_0 ),
        .Q(IS_2n8_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[121]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[121]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_2n2_out),
        .Q(\temp_reg_reg[121]_srl5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(D[1]),
        .Q(IS_2n2_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\FSM_onehot_current_state_reg[2] ),
        .Q(D[1]),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[1]_srl23 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl23 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[24]_srl32_n_1 ),
        .Q(\temp_reg_reg[1]_srl23_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl23_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[24]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_n8_out),
        .Q(\NLW_temp_reg_reg[24]_srl32_Q_UNCONNECTED ),
        .Q31(\temp_reg_reg[24]_srl32_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[57]_srl5_n_0 ),
        .Q(IS_n8_out),
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
        .D(IS_n2_out),
        .Q(\temp_reg_reg[57]_srl5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(D[0]),
        .Q(IS_n2_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[64]_srl24_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[64]_srl24 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[64]_srl24 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[88]_srl32_n_1 ),
        .Q(\temp_reg_reg[64]_srl24_n_0 ),
        .Q31(\NLW_temp_reg_reg[64]_srl24_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[88]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[88]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_2n8_out),
        .Q(\NLW_temp_reg_reg[88]_srl32_Q_UNCONNECTED ),
        .Q31(\temp_reg_reg[88]_srl32_n_1 ));
endmodule

module KEY_SHIFTREG
   (Q,
    KEY_REG_OUT,
    \temp_reg_reg[68]_0 ,
    \FSM_sequential_current_state_reg[0] ,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[3] ,
    \cnt_internal_value_reg[2] ,
    \temp_reg_reg[67]_0 ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \t_sequence_reg[1] ,
    \cnt_internal_value_reg[4] ,
    out,
    \FSM_onehot_current_state_reg[2] ,
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
    lopt_12);
  output [1:0]Q;
  output KEY_REG_OUT;
  output \temp_reg_reg[68]_0 ;
  input \FSM_sequential_current_state_reg[0] ;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[3] ;
  input \cnt_internal_value_reg[2] ;
  input \temp_reg_reg[67]_0 ;
  input \FSM_sequential_current_state_reg[1] ;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input \t_sequence_reg[1] ;
  input \cnt_internal_value_reg[4] ;
  input [1:0]out;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
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

  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_4_out;
  wire KEY_REG_OUT;
  wire KEY_REG_n4_out;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [1:0]out;
  wire \t_sequence_reg[1] ;
  wire \temp_reg_reg[1]_srl2_n_0 ;
  wire \temp_reg_reg[35]_srl32_n_1 ;
  wire \temp_reg_reg[5]_srl30_n_0 ;
  wire \temp_reg_reg[69]_srl27_n_0 ;
  wire \temp_reg_reg[96]_srl32_n_1 ;
  wire xlnx_opt_KEY_INPUT_MUX_OUT;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_1;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_2;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_3;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_4;
  wire \NLW_temp_reg_reg[35]_srl32_Q_UNCONNECTED ;
  wire \NLW_temp_reg_reg[5]_srl30_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[69]_srl27_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[96]_srl32_Q_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[1]_srl2_n_0 ),
        .Q(KEY_REG_OUT),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(Q[0]),
        .Q(\temp_reg_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[35]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[35]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(Q[1]),
        .Q(\NLW_temp_reg_reg[35]_srl32_Q_UNCONNECTED ),
        .Q31(\temp_reg_reg[35]_srl32_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(KEY_REG_4_out),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[5]_srl30_n_0 ),
        .Q(KEY_REG_4_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[5]_srl30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[5]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[35]_srl32_n_1 ),
        .Q(\temp_reg_reg[5]_srl30_n_0 ),
        .Q31(\NLW_temp_reg_reg[5]_srl30_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(KEY_REG_n4_out),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[69]_srl27_n_0 ),
        .Q(KEY_REG_n4_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[69]_srl27 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[69]_srl27 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[96]_srl32_n_1 ),
        .Q(\temp_reg_reg[69]_srl27_n_0 ),
        .Q31(\NLW_temp_reg_reg[69]_srl27_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[96]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[96]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_INPUT_MUX_OUT),
        .Q(\NLW_temp_reg_reg[96]_srl32_Q_UNCONNECTED ),
        .Q31(\temp_reg_reg[96]_srl32_n_1 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \xlnx_opt_LUT_temp_reg_reg[96]_srl32_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_onehot_current_state_reg[2] ),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_4));
  LUT6 #(
    .INIT(64'h01310D3DFFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[96]_srl32_i_1_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(xlnx_opt_KEY_INPUT_MUX_OUT_4),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_3));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \xlnx_opt_LUT_temp_reg_reg[96]_srl32_i_1_2 
       (.I0(lopt_5),
        .I1(lopt_6),
        .I2(lopt_7),
        .I3(lopt_8),
        .I4(lopt_9),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_2));
  LUT5 #(
    .INIT(32'hE2E2E21D)) 
    \xlnx_opt_LUT_temp_reg_reg[96]_srl32_i_1_3 
       (.I0(KEY_REG_4_out),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(KEY_REG_n4_out),
        .I3(\t_sequence_reg[1] ),
        .I4(xlnx_opt_KEY_INPUT_MUX_OUT_2),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hFF0FFF0DF000F200)) 
    \xlnx_opt_LUT_temp_reg_reg[96]_srl32_i_1_4 
       (.I0(out[1]),
        .I1(lopt_6),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(lopt_10),
        .I4(lopt_11),
        .I5(lopt_12),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h30BAC0EAC0EA30BA)) 
    \xlnx_opt_LUT_temp_reg_reg[96]_srl32_i_1_5 
       (.I0(\cnt_internal_value_reg[2] ),
        .I1(KEY_REG_OUT),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(xlnx_opt_KEY_INPUT_MUX_OUT_3),
        .I4(xlnx_opt_KEY_INPUT_MUX_OUT_1),
        .I5(xlnx_opt_KEY_INPUT_MUX_OUT),
        .O(KEY_INPUT_MUX_OUT));
endmodule

module Simon_128_128_bit_serial
   (\temp_reg_reg[68] ,
    D,
    \FSM_onehot_current_state_reg[5] ,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[3] ,
    \cnt_internal_value_reg[2] ,
    out,
    \cnt_internal_value_reg[6] ,
    \cnt_internal_value_reg[6]_0 ,
    start_IBUF,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[2]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output \temp_reg_reg[68] ;
  output [2:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[3] ;
  input \cnt_internal_value_reg[2] ;
  input [5:0]out;
  input \cnt_internal_value_reg[6] ;
  input \cnt_internal_value_reg[6]_0 ;
  input start_IBUF;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[2]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;

  wire [2:0]D;
  wire \FSM_onehot_current_state_reg[5] ;
  wire INST_END_ENCRYPT_2Bit_CNT_n_0;
  wire INST_IS_SHIFTREG_n_4;
  wire INST_SERIAL_CNT_n_1;
  wire INST_SERIAL_CNT_n_4;
  wire INST_lfsr_n_1;
  wire INST_lfsr_n_4;
  wire IS_2n1_out;
  wire IS_2n8_out;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_n1_out;
  wire IS_n8_out;
  wire KEY_REG_3_out;
  wire KEY_REG_OUT;
  wire KEY_REG_n3_out;
  wire busy;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[2]_0 ;
  wire \cnt_internal_value_reg[6] ;
  wire \cnt_internal_value_reg[6]_0 ;
  (* RTL_KEEP = "yes" *) wire [1:1]current_state;
  wire [1:0]end_cnt_out;
  wire lfsr_change;
  wire lfsr_change_0;
  (* RTL_KEEP = "yes" *) wire lfsr_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire [1:0]nx_state;
  wire [5:0]out;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire pwropt_4;
  wire [0:0]serial_cnt_out;
  wire start_IBUF;
  wire [0:0]NLW_INST_END_ENCRYPT_2Bit_CNT_E_UNCONNECTED;
  wire \NLW_INST_KEY_REG_cnt_internal_value_reg[3]_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_cnt_internal_value_reg[4]_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_temp_reg_reg[67]_0_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_temp_reg_reg[68]_0_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[68]_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[68]_1_UNCONNECTED ;
  wire [0:0]NLW_INST_lfsr_E_UNCONNECTED;

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
  CNT__parameterized1 INST_END_ENCRYPT_2Bit_CNT
       (.E(NLW_INST_END_ENCRYPT_2Bit_CNT_E_UNCONNECTED[0]),
        .Q(end_cnt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1]_0 (INST_END_ENCRYPT_2Bit_CNT_n_0),
        .lopt(lfsr_change_0),
        .lopt_1(lopt_5),
        .lopt_2(INST_END_ENCRYPT_2Bit_CNT_n_0),
        .lopt_3(lopt_6),
        .lopt_4(lopt_7),
        .lopt_5(lopt_8),
        .out({current_state,lfsr_rst}),
        .pwropt(serial_cnt_out),
        .pwropt_1(pwropt),
        .pwropt_2(pwropt_1),
        .pwropt_3(pwropt_2),
        .pwropt_4(pwropt_3),
        .pwropt_5(pwropt_4));
  IS_SHIFT_REG INST_IS_SHIFTREG
       (.D({IS_2n1_out,IS_n1_out}),
        .\FSM_onehot_current_state_reg[2] (IS_INPUT_MUX_OUT),
        .\FSM_onehot_current_state_reg[5] (D),
        .\FSM_onehot_current_state_reg[5]_0 (\FSM_onehot_current_state_reg[5] ),
        .\FSM_sequential_current_state_reg[1] ({current_state,lfsr_rst}),
        .IS_2n8_out(IS_2n8_out),
        .IS_ce(IS_ce),
        .IS_n8_out(IS_n8_out),
        .KEY_REG_OUT(KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0] ),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2]_0 ),
        .\cnt_internal_value_reg[5] (INST_SERIAL_CNT_n_1),
        .\cnt_internal_value_reg[6] (\cnt_internal_value_reg[6]_0 ),
        .out({out[5:3],out[0]}),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[127]_0 (INST_IS_SHIFTREG_n_4));
  KEY_SHIFTREG INST_KEY_REG
       (.\FSM_onehot_current_state_reg[2] (out[2]),
        .\FSM_sequential_current_state_reg[0] (INST_lfsr_n_4),
        .\FSM_sequential_current_state_reg[1] (INST_END_ENCRYPT_2Bit_CNT_n_0),
        .\FSM_sequential_current_state_reg[1]_0 (INST_SERIAL_CNT_n_4),
        .KEY_REG_OUT(KEY_REG_OUT),
        .Q({KEY_REG_n3_out,KEY_REG_3_out}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[3] (\NLW_INST_KEY_REG_cnt_internal_value_reg[3]_UNCONNECTED ),
        .\cnt_internal_value_reg[4] (\NLW_INST_KEY_REG_cnt_internal_value_reg[4]_UNCONNECTED ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_10(KEY_REG_n3_out),
        .lopt_11(serial_cnt_out),
        .lopt_12(KEY_REG_3_out),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(pwropt_3),
        .lopt_6(pwropt),
        .lopt_7(pwropt_1),
        .lopt_8(pwropt_2),
        .lopt_9(pwropt_4),
        .out({current_state,lfsr_rst}),
        .\t_sequence_reg[1] (INST_lfsr_n_1),
        .\temp_reg_reg[67]_0 (\NLW_INST_KEY_REG_temp_reg_reg[67]_0_UNCONNECTED ),
        .\temp_reg_reg[68]_0 (\NLW_INST_KEY_REG_temp_reg_reg[68]_0_UNCONNECTED ));
  CNT INST_SERIAL_CNT
       (.D({IS_2n1_out,IS_n1_out}),
        .E(busy),
        .\FSM_sequential_current_state_reg[1] ({current_state,lfsr_rst}),
        .IS_2n8_out(IS_2n8_out),
        .IS_n8_out(IS_n8_out),
        .Q(serial_cnt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[6] (\cnt_internal_value_reg[6] ),
        .lfsr_change_0(lfsr_change_0),
        .out(out[2]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .pwropt_4(pwropt_4),
        .\temp_reg_reg[0] (INST_IS_SHIFTREG_n_4),
        .\temp_reg_reg[127] (IS_INPUT_MUX_OUT),
        .\temp_reg_reg[127]_0 (INST_SERIAL_CNT_n_1),
        .\temp_reg_reg[67] ({KEY_REG_n3_out,KEY_REG_3_out}),
        .\temp_reg_reg[68] (\NLW_INST_SERIAL_CNT_temp_reg_reg[68]_UNCONNECTED ),
        .\temp_reg_reg[68]_0 (INST_SERIAL_CNT_n_4),
        .\temp_reg_reg[68]_1 (\NLW_INST_SERIAL_CNT_temp_reg_reg[68]_1_UNCONNECTED ));
  lfsr INST_lfsr
       (.CLK(lfsr_change),
        .D(nx_state[0]),
        .E(NLW_INST_lfsr_E_UNCONNECTED[0]),
        .\FSM_onehot_current_state_reg[3] (out[3]),
        .\FSM_sequential_current_state_reg[1] (INST_END_ENCRYPT_2Bit_CNT_n_0),
        .IS_ce(IS_ce),
        .Q(serial_cnt_out),
        .\cnt_internal_value_reg[1] (end_cnt_out),
        .lfsr_change_0(lfsr_change_0),
        .lopt(lopt_5),
        .lopt_1(lopt_6),
        .lopt_2(lopt_7),
        .lopt_3(lopt_8),
        .out({current_state,lfsr_rst}),
        .\t_sequence_reg[1]_0 (busy),
        .\temp_reg_reg[3] (INST_lfsr_n_4),
        .\temp_reg_reg[68] (INST_lfsr_n_1));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lfsr_change_0),
        .Q(lfsr_change),
        .R(1'b0));
endmodule

(* Datapath = "64" *) (* ECO_CHECKSUM = "7b3f5451" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_1;
  wire INST_CNT_n_2;
  wire INST_CNT_n_3;
  wire INST_CNT_n_4;
  wire INST_CNT_n_5;
  wire INST_CNT_n_6;
  wire INST_CNT_n_7;
  wire INST_CNT_n_8;
  wire Simon_DUT_n_1;
  wire Simon_DUT_n_2;
  wire Simon_DUT_n_3;
  wire Simon_DUT_n_4;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire data_ready_W;
  wire led_out;
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
  wire \NLW_INST_CNT_FSM_sequential_current_state_reg[0]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[68]_UNCONNECTED ;
  wire \NLW_Simon_DUT_cnt_internal_value_reg[3]_UNCONNECTED ;
  wire \NLW_Simon_DUT_temp_reg_reg[68]_UNCONNECTED ;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(start_IBUF),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_3),
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
        .D(Simon_DUT_n_2),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_1),
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
  CNT__parameterized2 INST_CNT
       (.D({INST_CNT_n_2,INST_CNT_n_3,INST_CNT_n_4}),
        .\FSM_onehot_current_state_reg[3] (INST_CNT_n_7),
        .\FSM_onehot_current_state_reg[6] (INST_CNT_n_5),
        .\FSM_onehot_current_state_reg[6]_0 (INST_CNT_n_6),
        .\FSM_sequential_current_state_reg[0] (\NLW_INST_CNT_FSM_sequential_current_state_reg[0]_UNCONNECTED ),
        .\FSM_sequential_current_state_reg[1] (Simon_DUT_n_4),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W}),
        .\temp_reg_reg[127] (INST_CNT_n_1),
        .\temp_reg_reg[68] (\NLW_INST_CNT_temp_reg_reg[68]_UNCONNECTED ),
        .\temp_reg_reg[68]_0 (INST_CNT_n_8));
  Simon_128_128_bit_serial Simon_DUT
       (.D({Simon_DUT_n_1,Simon_DUT_n_2,Simon_DUT_n_3}),
        .\FSM_onehot_current_state_reg[5] (Simon_DUT_n_4),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (INST_CNT_n_5),
        .\cnt_internal_value_reg[2] (INST_CNT_n_8),
        .\cnt_internal_value_reg[2]_0 (INST_CNT_n_7),
        .\cnt_internal_value_reg[3] (\NLW_Simon_DUT_cnt_internal_value_reg[3]_UNCONNECTED ),
        .\cnt_internal_value_reg[6] (INST_CNT_n_1),
        .\cnt_internal_value_reg[6]_0 (INST_CNT_n_6),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .out({\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W,\FSM_onehot_current_state_reg_n_0_[0] }),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[68] (\NLW_Simon_DUT_temp_reg_reg[68]_UNCONNECTED ));
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
   (E,
    \temp_reg_reg[68] ,
    \t_sequence_reg[1]_0 ,
    IS_ce,
    \temp_reg_reg[3] ,
    D,
    lfsr_change_0,
    \FSM_sequential_current_state_reg[1] ,
    Q,
    out,
    \cnt_internal_value_reg[1] ,
    \FSM_onehot_current_state_reg[3] ,
    CLK,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]E;
  output \temp_reg_reg[68] ;
  output [0:0]\t_sequence_reg[1]_0 ;
  output IS_ce;
  output \temp_reg_reg[3] ;
  output [0:0]D;
  input lfsr_change_0;
  input \FSM_sequential_current_state_reg[1] ;
  input [0:0]Q;
  input [1:0]out;
  input [1:0]\cnt_internal_value_reg[1] ;
  input [0:0]\FSM_onehot_current_state_reg[3] ;
  input CLK;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;

  wire CLK;
  wire [0:0]D;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire IS_ce;
  wire [0:0]Q;
  wire \cnt_internal_value[1]_i_4_n_0 ;
  wire [1:0]\cnt_internal_value_reg[1] ;
  wire lfsr_internal0;
  wire [4:0]lfsr_parallel_out;
  wire [1:0]out;
  wire p_0_in;
  wire [0:0]p_3_out;
  wire [0:0]\t_sequence_reg[1]_0 ;
  wire \t_sequence_reg_n_0_[0] ;
  wire \temp_reg_reg[3] ;
  wire \temp_reg_reg[68] ;

  assign lopt = \cnt_internal_value[1]_i_4_n_0 ;
  assign lopt_1 = lfsr_parallel_out[1];
  assign lopt_2 = lfsr_parallel_out[0];
  assign lopt_3 = lfsr_parallel_out[2];
  LUT5 #(
    .INIT(32'h98BADCFE)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state_reg[3] ),
        .I4(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .O(D));
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(lfsr_parallel_out[4]),
        .I1(lfsr_parallel_out[1]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[3]),
        .I4(lfsr_parallel_out[2]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(lfsr_parallel_out[0]),
        .I1(\cnt_internal_value_reg[1] [1]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[1]),
        .I4(\cnt_internal_value[1]_i_4_n_0 ),
        .I5(\cnt_internal_value_reg[1] [0]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_internal_value[1]_i_4 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[4]),
        .O(\cnt_internal_value[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(lfsr_parallel_out[4]),
        .I1(lfsr_parallel_out[2]),
        .O(p_3_out));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[4]_i_1 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[4]),
        .O(lfsr_internal0));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .CLR(out[0]),
        .D(p_3_out),
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
        .D(lfsr_parallel_out[1]),
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
        .D(lfsr_internal0),
        .PRE(out[0]),
        .Q(lfsr_parallel_out[4]));
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
        .D(p_0_in),
        .PRE(out[0]),
        .Q(\t_sequence_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \t_sequence_reg[1] 
       (.C(CLK),
        .CE(\t_sequence_reg[1]_0 ),
        .CLR(out[0]),
        .D(\t_sequence_reg_n_0_[0] ),
        .Q(p_0_in));
  LUT4 #(
    .INIT(16'hC8CB)) 
    \temp_reg[127]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(IS_ce));
  LUT3 #(
    .INIT(8'h45)) 
    \temp_reg[67]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(\temp_reg_reg[3] ));
  LUT3 #(
    .INIT(8'h06)) 
    \temp_reg_reg[96]_srl32_i_8 
       (.I0(p_0_in),
        .I1(lfsr_parallel_out[4]),
        .I2(Q),
        .O(\temp_reg_reg[68] ));
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
