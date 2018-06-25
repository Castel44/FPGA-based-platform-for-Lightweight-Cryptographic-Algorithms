// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Jun 24 22:02:03 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simon/Simon_32_64_serial/Simon_32_64_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\temp_reg_reg[52] ,
    \reg_internal_reg[1] ,
    \temp_reg_reg[31] ,
    \temp_reg_reg[31]_0 ,
    E,
    \temp_reg_reg[52]_0 ,
    lfsr_change_0,
    \temp_reg_reg[52]_1 ,
    \temp_reg_reg[52]_2 ,
    Q,
    \temp_reg_reg[30] ,
    out,
    \lfsr_internal_reg[2] ,
    \FSM_sequential_current_state_reg[0] ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1);
  output \temp_reg_reg[52] ;
  output [1:0]\reg_internal_reg[1] ;
  output \temp_reg_reg[31] ;
  output \temp_reg_reg[31]_0 ;
  output [0:0]E;
  output \temp_reg_reg[52]_0 ;
  output lfsr_change_0;
  output \temp_reg_reg[52]_1 ;
  output \temp_reg_reg[52]_2 ;
  input [0:0]Q;
  input [1:0]\temp_reg_reg[30] ;
  input [1:0]out;
  input \lfsr_internal_reg[2] ;
  input [0:0]\FSM_sequential_current_state_reg[0] ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;

  wire [0:0]E;
  wire [0:0]\FSM_sequential_current_state_reg[0] ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire lfsr_change_0;
  wire \lfsr_internal_reg[2] ;
  wire [1:0]out;
  wire [3:0]plusOp;
  wire [1:0]\reg_internal_reg[1] ;
  wire [2:1]serial_cnt_out;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[52] ;
  wire \temp_reg_reg[52]_0 ;
  wire \temp_reg_reg[52]_1 ;
  wire \temp_reg_reg[52]_2 ;

  assign lopt = serial_cnt_out[1];
  assign lopt_1 = serial_cnt_out[2];
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(\reg_internal_reg[1] [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(\reg_internal_reg[1] [0]),
        .I1(serial_cnt_out[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(\reg_internal_reg[1] [0]),
        .I1(serial_cnt_out[1]),
        .I2(serial_cnt_out[2]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(\reg_internal_reg[1] [1]),
        .I1(\reg_internal_reg[1] [0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[2]),
        .O(plusOp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(out[0]),
        .D(plusOp[0]),
        .Q(\reg_internal_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(out[0]),
        .D(plusOp[1]),
        .Q(serial_cnt_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(out[0]),
        .D(plusOp[2]),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(out[0]),
        .D(plusOp[3]),
        .Q(\reg_internal_reg[1] [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    lfsr_change_i_1
       (.I0(\reg_internal_reg[1] [1]),
        .I1(serial_cnt_out[2]),
        .I2(serial_cnt_out[1]),
        .I3(\reg_internal_reg[1] [0]),
        .O(lfsr_change_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \reg_internal[1]_i_1 
       (.I0(\reg_internal_reg[1] [0]),
        .I1(serial_cnt_out[1]),
        .I2(serial_cnt_out[2]),
        .I3(\reg_internal_reg[1] [1]),
        .I4(\lfsr_internal_reg[2] ),
        .O(E));
  LUT4 #(
    .INIT(16'h0002)) 
    \temp_reg[31]_i_11 
       (.I0(out[1]),
        .I1(serial_cnt_out[1]),
        .I2(\reg_internal_reg[1] [1]),
        .I3(serial_cnt_out[2]),
        .O(\temp_reg_reg[31]_0 ));
  LUT5 #(
    .INIT(32'h777F0000)) 
    \temp_reg_reg[53]_srl11_i_5 
       (.I0(serial_cnt_out[2]),
        .I1(\reg_internal_reg[1] [1]),
        .I2(\reg_internal_reg[1] [0]),
        .I3(serial_cnt_out[1]),
        .I4(out[1]),
        .O(\temp_reg_reg[52]_1 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \temp_reg_reg[53]_srl11_i_6 
       (.I0(out[1]),
        .I1(\reg_internal_reg[1] [0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[2]),
        .I4(\reg_internal_reg[1] [1]),
        .O(\temp_reg_reg[52]_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \temp_reg_reg[53]_srl11_i_7 
       (.I0(out[1]),
        .I1(\reg_internal_reg[1] [1]),
        .I2(serial_cnt_out[2]),
        .O(\temp_reg_reg[52]_2 ));
  LUT5 #(
    .INIT(32'h0000000D)) 
    \temp_reg_reg[53]_srl11_i_8 
       (.I0(Q),
        .I1(\reg_internal_reg[1] [0]),
        .I2(serial_cnt_out[1]),
        .I3(\reg_internal_reg[1] [1]),
        .I4(serial_cnt_out[2]),
        .O(\temp_reg_reg[52] ));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT__parameterized0
   (\temp_reg_reg[31] ,
    Q,
    D,
    \temp_reg_reg[52] ,
    \FSM_onehot_current_state_reg[3] ,
    \cnt_internal_value_reg[5]_0 ,
    out,
    start_IBUF,
    \FSM_sequential_current_state_reg[1] ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output \temp_reg_reg[31] ;
  output [0:0]Q;
  output [4:0]D;
  output \temp_reg_reg[52] ;
  output \FSM_onehot_current_state_reg[3] ;
  input \cnt_internal_value_reg[5]_0 ;
  input [6:0]out;
  input start_IBUF;
  input \FSM_sequential_current_state_reg[1] ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;

  wire [4:0]D;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_3_n_0 ;
  wire \FSM_onehot_current_state[6]_i_2_n_0 ;
  wire \FSM_onehot_current_state[6]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg[3] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire cnt_ce_W;
  wire \cnt_internal_value[0]_i_1_n_0 ;
  wire \cnt_internal_value[1]_i_1__0_n_0 ;
  wire \cnt_internal_value[2]_i_1_n_0 ;
  wire \cnt_internal_value[3]_i_1_n_0 ;
  wire \cnt_internal_value[4]_i_1_n_0 ;
  wire \cnt_internal_value[6]_i_4_n_0 ;
  wire [6:0]cnt_out_W;
  wire cnt_rst_W;
  wire [6:0]out;
  wire [6:5]plusOp__0;
  wire start_IBUF;
  wire \xlnx_opt_FSM_onehot_current_state[6]_i_2_n_0 ;

  assign lopt = cnt_out_W[2];
  assign lopt_1 = cnt_out_W[3];
  assign lopt_2 = cnt_out_W[1];
  assign lopt_3 = cnt_out_W[0];
  assign lopt_4 = cnt_out_W[4];
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state[6]_i_3_n_0 ),
        .I1(out[5]),
        .I2(start_IBUF),
        .I3(out[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(out[1]),
        .I1(cnt_out_W[6]),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(out[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg[3] ),
        .I1(out[3]),
        .I2(cnt_out_W[6]),
        .I3(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I4(out[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[2]),
        .I5(Q),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[6]),
        .I3(cnt_out_W[4]),
        .I4(Q),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_current_state[4]_i_3 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[3]),
        .O(\FSM_onehot_current_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(out[4]),
        .I2(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .I3(out[5]),
        .I4(\FSM_onehot_current_state[6]_i_3_n_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(out[6]),
        .I1(out[5]),
        .I2(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[6]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hA959669AAA9A599A)) 
    \FSM_onehot_current_state[6]_i_3 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[2]),
        .I5(cnt_out_W[4]),
        .O(\FSM_onehot_current_state[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
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
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[2]),
        .O(\cnt_internal_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_internal_value[4]_i_1 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[1]),
        .O(\cnt_internal_value[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_internal_value[5]_i_1 
       (.I0(Q),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[1]),
        .I5(cnt_out_W[4]),
        .O(plusOp__0[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_1 
       (.I0(out[3]),
        .I1(out[5]),
        .I2(out[2]),
        .O(cnt_ce_W));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \cnt_internal_value[6]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(\cnt_internal_value[6]_i_4_n_0 ),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(Q),
        .I5(cnt_out_W[6]),
        .O(plusOp__0[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_3 
       (.I0(out[4]),
        .I1(out[6]),
        .I2(out[1]),
        .O(cnt_rst_W));
  LUT2 #(
    .INIT(4'h7)) 
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
        .D(\cnt_internal_value[0]_i_1_n_0 ),
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
        .D(plusOp__0[5]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ce_W),
        .CLR(cnt_rst_W),
        .D(plusOp__0[6]),
        .Q(cnt_out_W[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \xlnx_opt_LUT_FSM_onehot_current_state[6]_i_2 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[3]),
        .O(\xlnx_opt_FSM_onehot_current_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \xlnx_opt_LUT_FSM_onehot_current_state[6]_i_2_1 
       (.I0(Q),
        .I1(cnt_out_W[6]),
        .I2(cnt_out_W[4]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[1]),
        .I5(\xlnx_opt_FSM_onehot_current_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[6]_i_2_n_0 ));
endmodule

module IS_SHIFT_REG
   (Q,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[31]_1 ,
    D,
    \FSM_onehot_current_state_reg[5] ,
    IS_ce,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[2] ,
    \temp_reg_reg[30]_0 ,
    \temp_reg_reg[0]_0 ,
    \cnt_internal_value_reg[3] ,
    \FSM_sequential_current_state_reg[1] ,
    out,
    \cnt_internal_value_reg[5] ,
    \FSM_onehot_current_state_reg[4] ,
    \cnt_internal_value_reg[2]_0 ,
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
  output [1:0]Q;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[31]_1 ;
  output [0:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input IS_ce;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[2] ;
  input \temp_reg_reg[30]_0 ;
  input [0:0]\temp_reg_reg[0]_0 ;
  input [1:0]\cnt_internal_value_reg[3] ;
  input \FSM_sequential_current_state_reg[1] ;
  input [1:0]out;
  input [0:0]\cnt_internal_value_reg[5] ;
  input [2:0]\FSM_onehot_current_state_reg[4] ;
  input \cnt_internal_value_reg[2]_0 ;
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

  wire [0:0]D;
  wire [2:0]\FSM_onehot_current_state_reg[4] ;
  wire \FSM_onehot_current_state_reg[5] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire IS_2n1_out;
  wire IS_2n8_out;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_n1_out;
  wire IS_n8_out;
  wire IS_out;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2]_0 ;
  wire [1:0]\cnt_internal_value_reg[3] ;
  wire [0:0]\cnt_internal_value_reg[5] ;
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
  wire \temp_reg[31]_i_10_n_0 ;
  wire [0:0]\temp_reg_reg[0]_0 ;
  wire \temp_reg_reg[16]_srl8_n_0 ;
  wire \temp_reg_reg[1]_srl7_n_0 ;
  wire \temp_reg_reg[25]_srl5_n_0 ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[31]_1 ;
  wire \temp_reg_reg[9]_srl5_n_0 ;
  wire xlnx_opt_IS_INPUT_MUX_OUT;
  wire xlnx_opt_IS_INPUT_MUX_OUT_1;
  wire xlnx_opt_IS_INPUT_MUX_OUT_2;

  LUT6 #(
    .INIT(64'hFFFF7F007F007F00)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(out[1]),
        .I1(IS_out),
        .I2(out[0]),
        .I3(\FSM_onehot_current_state_reg[4] [2]),
        .I4(\cnt_internal_value_reg[2]_0 ),
        .I5(\FSM_onehot_current_state_reg[4] [1]),
        .O(D));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(out[1]),
        .I1(IS_out),
        .I2(out[0]),
        .O(\FSM_onehot_current_state_reg[5] ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \temp_reg[31]_i_10 
       (.I0(IS_2n8_out),
        .I1(out[1]),
        .I2(\cnt_internal_value_reg[3] [1]),
        .I3(IS_n8_out),
        .O(\temp_reg[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[31]_i_8 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\temp_reg_reg[31]_0 ));
  LUT4 #(
    .INIT(16'hBBFB)) 
    \temp_reg[31]_i_9 
       (.I0(\cnt_internal_value_reg[5] ),
        .I1(\FSM_onehot_current_state_reg[4] [0]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\temp_reg_reg[31]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl7_n_0 ),
        .Q(IS_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_n1_out),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[16]_srl8_n_0 ),
        .Q(IS_n1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[16]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[16]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_2n8_out),
        .Q(\temp_reg_reg[16]_srl8_n_0 ));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[1]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[1]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_n8_out),
        .Q(\temp_reg_reg[1]_srl7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[25]_srl5_n_0 ),
        .Q(IS_2n8_out),
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
        .D(Q[1]),
        .Q(\temp_reg_reg[25]_srl5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_2n1_out),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_INPUT_MUX_OUT),
        .Q(IS_2n1_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[9]_srl5_n_0 ),
        .Q(IS_n8_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[9]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[9]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(Q[0]),
        .Q(\temp_reg_reg[9]_srl5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD2D297C0)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_2));
  LUT5 #(
    .INIT(32'h8A888088)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2_1 
       (.I0(\temp_reg[31]_i_10_n_0 ),
        .I1(IS_n1_out),
        .I2(\cnt_internal_value_reg[3] [0]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(IS_2n1_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2_2 
       (.I0(lopt_6),
        .I1(out[1]),
        .I2(lopt_7),
        .I3(\cnt_internal_value_reg[3] [1]),
        .I4(lopt_8),
        .I5(lopt_9),
        .O(xlnx_opt_IS_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h60FF90FF90FF60FF)) 
    \xlnx_opt_LUT_temp_reg[31]_i_2_3 
       (.I0(\temp_reg_reg[0]_0 ),
        .I1(IS_out),
        .I2(\temp_reg_reg[31]_0 ),
        .I3(xlnx_opt_IS_INPUT_MUX_OUT_2),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT_1),
        .I5(xlnx_opt_IS_INPUT_MUX_OUT),
        .O(IS_INPUT_MUX_OUT));
endmodule

module KEY_SHIFTREG
   (Q,
    KEY_REG_CE,
    clk_IBUF_BUFG,
    out,
    \FSM_onehot_current_state_reg[2] ,
    \cnt_internal_value_reg[5] ,
    \FSM_sequential_current_state_reg[1] ,
    \lfsr_internal_reg[4] ,
    \cnt_internal_value_reg[2] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [0:0]Q;
  input KEY_REG_CE;
  input clk_IBUF_BUFG;
  input [1:0]out;
  input [0:0]\FSM_onehot_current_state_reg[2] ;
  input \cnt_internal_value_reg[5] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \lfsr_internal_reg[4] ;
  input \cnt_internal_value_reg[2] ;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire [0:0]\FSM_onehot_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_1_out;
  wire KEY_REG_2n3_out;
  wire KEY_REG_2n4_out;
  wire KEY_REG_3n3_out;
  wire KEY_REG_3n4_out;
  wire KEY_REG_CE;
  wire KEY_REG_n1_out;
  wire KEY_REG_n_out;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire \lfsr_internal_reg[4] ;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [1:0]out;
  wire \temp_reg_reg[18]_srl17_n_0 ;
  wire \temp_reg_reg[2]_srl14_n_0 ;
  wire \temp_reg_reg[37]_srl14_n_0 ;
  wire \temp_reg_reg[53]_srl11_n_0 ;
  wire xlnx_opt_KEY_INPUT_MUX_OUT;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_1;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_2;
  wire \NLW_temp_reg_reg[18]_srl17_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_1_out),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_n1_out),
        .Q(KEY_REG_n_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[18]_srl17_n_0 ),
        .Q(KEY_REG_n1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[18]_srl17 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[18]_srl17 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_2n3_out),
        .Q(\temp_reg_reg[18]_srl17_n_0 ),
        .Q31(\NLW_temp_reg_reg[18]_srl17_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[2]_srl14_n_0 ),
        .Q(KEY_REG_1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[2]_srl14 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[2]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_n_out),
        .Q(\temp_reg_reg[2]_srl14_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_2n4_out),
        .Q(KEY_REG_2n3_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[37]_srl14_n_0 ),
        .Q(KEY_REG_2n4_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[37]_srl14 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[37]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_3n3_out),
        .Q(\temp_reg_reg[37]_srl14_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(KEY_REG_3n4_out),
        .Q(KEY_REG_3n3_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[53]_srl11_n_0 ),
        .Q(KEY_REG_3n4_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[53]_srl11 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[53]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_INPUT_MUX_OUT),
        .Q(\temp_reg_reg[53]_srl11_n_0 ));
  LUT6 #(
    .INIT(64'hD8D8D8272727D827)) 
    \xlnx_opt_LUT_temp_reg_reg[53]_srl11_i_1 
       (.I0(\cnt_internal_value_reg[2] ),
        .I1(KEY_REG_3n3_out),
        .I2(KEY_REG_2n3_out),
        .I3(KEY_REG_1_out),
        .I4(\FSM_sequential_current_state_reg[1]_0 ),
        .I5(KEY_REG_n1_out),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_2));
  LUT6 #(
    .INIT(64'hE21D1DE21DE2E21D)) 
    \xlnx_opt_LUT_temp_reg_reg[53]_srl11_i_1_1 
       (.I0(KEY_REG_2n4_out),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .I2(KEY_REG_3n4_out),
        .I3(\lfsr_internal_reg[4] ),
        .I4(Q),
        .I5(KEY_REG_n_out),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hCCFFFF47FFFFFF47)) 
    \xlnx_opt_LUT_temp_reg_reg[53]_srl11_i_1_2 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h22000022F2D0D0F2)) 
    \xlnx_opt_LUT_temp_reg_reg[53]_srl11_i_1_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_onehot_current_state_reg[2] ),
        .I3(xlnx_opt_KEY_INPUT_MUX_OUT_2),
        .I4(xlnx_opt_KEY_INPUT_MUX_OUT_1),
        .I5(xlnx_opt_KEY_INPUT_MUX_OUT),
        .O(KEY_INPUT_MUX_OUT));
endmodule

module Simon_32_64_bit_serial
   (\temp_reg_reg[31] ,
    D,
    \FSM_onehot_current_state_reg[5] ,
    clk_IBUF_BUFG,
    out,
    \cnt_internal_value_reg[5] ,
    \cnt_internal_value_reg[2] ,
    Q,
    \cnt_internal_value_reg[2]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output \temp_reg_reg[31] ;
  output [0:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input clk_IBUF_BUFG;
  input [3:0]out;
  input \cnt_internal_value_reg[5] ;
  input \cnt_internal_value_reg[2] ;
  input [0:0]Q;
  input \cnt_internal_value_reg[2]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire [0:0]D;
  wire \FSM_onehot_current_state_reg[5] ;
  wire INST_IS_SHIFTREG_n_2;
  wire INST_SERIAL_CNT_n_0;
  wire INST_SERIAL_CNT_n_4;
  wire INST_SERIAL_CNT_n_6;
  wire INST_SERIAL_CNT_n_8;
  wire INST_SERIAL_CNT_n_9;
  wire INST_lfsr_n_0;
  wire IS_2n2_out;
  wire IS_ce;
  wire IS_n2_out;
  wire KEY_REG_CE;
  wire KEY_REG_OUT;
  wire [0:0]Q;
  wire busy;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2]_0 ;
  (* RTL_KEEP = "yes" *) wire [1:1]current_state;
  wire end_encrypt_ce;
  wire end_encrypt_out;
  wire lfsr_change;
  wire lfsr_change_0;
  wire [4:4]lfsr_parallel_out;
  (* RTL_KEEP = "yes" *) wire lfsr_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire [1:0]nx_state;
  wire [3:0]out;
  wire [3:0]serial_cnt_out;
  wire \temp_reg_reg[31] ;
  wire \NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[2]_UNCONNECTED ;
  wire \NLW_INST_IS_SHIFTREG_temp_reg_reg[30]_0_UNCONNECTED ;
  wire \NLW_INST_KEY_REG_cnt_internal_value_reg[5]_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[31]_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state),
        .I1(out[2]),
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
        .R(out[0]));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[1]),
        .Q(current_state),
        .R(out[0]));
  end_encrypt_shift_reg INST_END_ENCRYPT_FSR
       (.E(end_encrypt_ce),
        .Q(end_encrypt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(lfsr_rst));
  IS_SHIFT_REG INST_IS_SHIFTREG
       (.D(D),
        .\FSM_onehot_current_state_reg[4] (out[3:1]),
        .\FSM_onehot_current_state_reg[5] (\FSM_onehot_current_state_reg[5] ),
        .\FSM_sequential_current_state_reg[1] (INST_SERIAL_CNT_n_4),
        .IS_ce(IS_ce),
        .Q({IS_2n2_out,IS_n2_out}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (\NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[2]_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_0 (\cnt_internal_value_reg[2]_0 ),
        .\cnt_internal_value_reg[3] ({serial_cnt_out[3],serial_cnt_out[0]}),
        .\cnt_internal_value_reg[5] (Q),
        .lopt(lopt),
        .lopt_1(lopt_2),
        .lopt_2(lopt_3),
        .lopt_3(lopt_1),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(IS_2n2_out),
        .lopt_7(lopt_6),
        .lopt_8(lopt_7),
        .lopt_9(IS_n2_out),
        .out({current_state,lfsr_rst}),
        .\temp_reg_reg[0]_0 (KEY_REG_OUT),
        .\temp_reg_reg[30]_0 (\NLW_INST_IS_SHIFTREG_temp_reg_reg[30]_0_UNCONNECTED ),
        .\temp_reg_reg[31]_0 (INST_IS_SHIFTREG_n_2),
        .\temp_reg_reg[31]_1 (\temp_reg_reg[31] ));
  KEY_SHIFTREG INST_KEY_REG
       (.\FSM_onehot_current_state_reg[2] (out[1]),
        .\FSM_sequential_current_state_reg[1] (INST_SERIAL_CNT_n_9),
        .\FSM_sequential_current_state_reg[1]_0 (INST_SERIAL_CNT_n_6),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_SERIAL_CNT_n_8),
        .\cnt_internal_value_reg[5] (\NLW_INST_KEY_REG_cnt_internal_value_reg[5]_UNCONNECTED ),
        .\lfsr_internal_reg[4] (INST_SERIAL_CNT_n_0),
        .lopt(Q),
        .lopt_1(lopt),
        .lopt_2(lopt_1),
        .lopt_3(lopt_2),
        .lopt_4(lopt_3),
        .lopt_5(lopt_4),
        .out({current_state,lfsr_rst}));
  CNT INST_SERIAL_CNT
       (.E(end_encrypt_ce),
        .\FSM_sequential_current_state_reg[0] (busy),
        .Q(lfsr_parallel_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lfsr_change_0(lfsr_change_0),
        .\lfsr_internal_reg[2] (INST_lfsr_n_0),
        .lopt(lopt_6),
        .lopt_1(lopt_7),
        .out({current_state,lfsr_rst}),
        .\reg_internal_reg[1] ({serial_cnt_out[3],serial_cnt_out[0]}),
        .\temp_reg_reg[30] ({IS_2n2_out,IS_n2_out}),
        .\temp_reg_reg[31] (\NLW_INST_SERIAL_CNT_temp_reg_reg[31]_UNCONNECTED ),
        .\temp_reg_reg[31]_0 (INST_SERIAL_CNT_n_4),
        .\temp_reg_reg[52] (INST_SERIAL_CNT_n_0),
        .\temp_reg_reg[52]_0 (INST_SERIAL_CNT_n_6),
        .\temp_reg_reg[52]_1 (INST_SERIAL_CNT_n_8),
        .\temp_reg_reg[52]_2 (INST_SERIAL_CNT_n_9));
  lfsr INST_lfsr
       (.CLK(lfsr_change),
        .D(nx_state[0]),
        .E(busy),
        .\FSM_onehot_current_state_reg[3] (out[2]),
        .\FSM_sequential_current_state_reg[1] (INST_IS_SHIFTREG_n_2),
        .IS_ce(IS_ce),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(lfsr_parallel_out),
        .out({current_state,lfsr_rst}),
        .\reg_internal_reg[1] (end_encrypt_out),
        .\temp_reg_reg[31] (INST_lfsr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lfsr_change_0),
        .Q(lfsr_change),
        .R(1'b0));
endmodule

(* Datapath = "16" *) (* ECO_CHECKSUM = "6b8ed52d" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_8;
  wire Simon_DUT_n_0;
  wire Simon_DUT_n_1;
  wire Simon_DUT_n_2;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [5:5]cnt_out_W;
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
  wire \NLW_INST_CNT_temp_reg_reg[31]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[52]_UNCONNECTED ;
  wire \NLW_Simon_DUT_cnt_internal_value_reg[2]_UNCONNECTED ;
  wire \NLW_Simon_DUT_cnt_internal_value_reg[5]_UNCONNECTED ;

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
        .D(INST_CNT_n_6),
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
        .D(INST_CNT_n_5),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_4),
        .Q(start_W),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_1),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_3),
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
       (.D({INST_CNT_n_2,INST_CNT_n_3,INST_CNT_n_4,INST_CNT_n_5,INST_CNT_n_6}),
        .\FSM_onehot_current_state_reg[3] (INST_CNT_n_8),
        .\FSM_sequential_current_state_reg[1] (Simon_DUT_n_2),
        .Q(cnt_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[5]_0 (Simon_DUT_n_0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W,\FSM_onehot_current_state_reg_n_0_[0] }),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[31] (\NLW_INST_CNT_temp_reg_reg[31]_UNCONNECTED ),
        .\temp_reg_reg[52] (\NLW_INST_CNT_temp_reg_reg[52]_UNCONNECTED ));
  Simon_32_64_bit_serial Simon_DUT
       (.D(Simon_DUT_n_1),
        .\FSM_onehot_current_state_reg[5] (Simon_DUT_n_2),
        .Q(cnt_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (\NLW_Simon_DUT_cnt_internal_value_reg[2]_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_0 (INST_CNT_n_8),
        .\cnt_internal_value_reg[5] (\NLW_Simon_DUT_cnt_internal_value_reg[5]_UNCONNECTED ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(Simon_DUT_n_0),
        .out({\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W}),
        .\temp_reg_reg[31] (Simon_DUT_n_0));
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
    out);
  output [0:0]Q;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]out;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]out;
  wire [0:0]reg_internal;

  FDPE #(
    .INIT(1'b1)) 
    \reg_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q),
        .PRE(out),
        .Q(reg_internal));
  FDCE #(
    .INIT(1'b0)) 
    \reg_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(out),
        .D(reg_internal),
        .Q(Q));
endmodule

module lfsr
   (\temp_reg_reg[31] ,
    Q,
    E,
    KEY_REG_CE,
    D,
    IS_ce,
    \FSM_sequential_current_state_reg[1] ,
    out,
    \reg_internal_reg[1] ,
    \FSM_onehot_current_state_reg[3] ,
    CLK);
  output \temp_reg_reg[31] ;
  output [0:0]Q;
  output [0:0]E;
  output KEY_REG_CE;
  output [0:0]D;
  output IS_ce;
  input \FSM_sequential_current_state_reg[1] ;
  input [1:0]out;
  input [0:0]\reg_internal_reg[1] ;
  input [0:0]\FSM_onehot_current_state_reg[3] ;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire IS_ce;
  wire KEY_REG_CE;
  wire [0:0]Q;
  wire lfsr_internal0;
  wire [3:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [0:0]p_3_out;
  wire [0:0]\reg_internal_reg[1] ;
  wire \temp_reg[31]_i_3_n_0 ;
  wire \temp_reg_reg[31] ;

  LUT5 #(
    .INIT(32'hEFEF44EE)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state_reg[3] ),
        .I4(out[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(lfsr_parallel_out[1]),
        .I1(Q),
        .I2(lfsr_parallel_out[0]),
        .I3(out[1]),
        .I4(lfsr_parallel_out[3]),
        .I5(lfsr_parallel_out[2]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(lfsr_parallel_out[1]),
        .I1(lfsr_parallel_out[2]),
        .I2(\reg_internal_reg[1] ),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[3]),
        .I5(Q),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .O(p_3_out));
  LUT1 #(
    .INIT(2'h1)) 
    \lfsr_internal[4]_i_1 
       (.I0(out[0]),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[4]_i_2 
       (.I0(lfsr_parallel_out[3]),
        .I1(Q),
        .O(lfsr_internal0));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(out[0]),
        .D(p_3_out),
        .Q(lfsr_parallel_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(out[0]),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(out[0]),
        .D(lfsr_parallel_out[1]),
        .Q(lfsr_parallel_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(out[0]),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_internal0),
        .PRE(out[0]),
        .Q(Q));
  LUT6 #(
    .INIT(64'hFF100000FF10FF10)) 
    \temp_reg[31]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(\temp_reg[31]_i_3_n_0 ),
        .I3(out[1]),
        .I4(\temp_reg_reg[31] ),
        .I5(\reg_internal_reg[1] ),
        .O(IS_ce));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \temp_reg[31]_i_3 
       (.I0(Q),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[1]),
        .O(\temp_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \temp_reg[31]_i_4 
       (.I0(lfsr_parallel_out[2]),
        .I1(lfsr_parallel_out[1]),
        .I2(lfsr_parallel_out[3]),
        .I3(Q),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .I5(lfsr_parallel_out[0]),
        .O(\temp_reg_reg[31] ));
  LUT2 #(
    .INIT(4'h1)) 
    \temp_reg[51]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(KEY_REG_CE));
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
