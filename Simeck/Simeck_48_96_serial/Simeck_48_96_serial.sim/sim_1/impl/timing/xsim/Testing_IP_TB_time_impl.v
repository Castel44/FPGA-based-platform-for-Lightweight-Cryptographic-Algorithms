// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 26 01:55:58 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simeck/Simeck_48_96_serial/Simeck_48_96_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (D,
    Q,
    \FSM_onehot_current_state_reg[5] ,
    \FSM_onehot_current_state_reg[5]_0 ,
    \FSM_onehot_current_state_reg[5]_1 ,
    AR,
    \FSM_sequential_current_state_reg[0] ,
    \short_lfsr.lfsr_internal_reg[2] ,
    out,
    \FSM_onehot_current_state_reg[5]_2 ,
    start_IBUF,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[5] ,
    IS_right_reg_out,
    E,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    pwropt_4,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [0:0]D;
  output [1:0]Q;
  output [1:0]\FSM_onehot_current_state_reg[5] ;
  output \FSM_onehot_current_state_reg[5]_0 ;
  output \FSM_onehot_current_state_reg[5]_1 ;
  output [0:0]AR;
  output \FSM_sequential_current_state_reg[0] ;
  input \short_lfsr.lfsr_internal_reg[2] ;
  input [1:0]out;
  input [3:0]\FSM_onehot_current_state_reg[5]_2 ;
  input start_IBUF;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[5] ;
  input IS_right_reg_out;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;
  input pwropt_4;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_current_state_reg[5] ;
  wire \FSM_onehot_current_state_reg[5]_0 ;
  wire \FSM_onehot_current_state_reg[5]_1 ;
  wire [3:0]\FSM_onehot_current_state_reg[5]_2 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire IS_right_reg_out;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ;
  wire \cnt_internal_value_reg[2] ;
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
  wire \short_lfsr.lfsr_internal_reg[2] ;
  wire start_IBUF;
  wire \xlnx_opt_FSM_onehot_current_state_reg[5]_0 ;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(start_IBUF),
        .I1(\FSM_onehot_current_state_reg[5]_2 [0]),
        .I2(\FSM_onehot_current_state_reg[5]_0 ),
        .I3(\FSM_onehot_current_state_reg[5]_2 [3]),
        .O(\FSM_onehot_current_state_reg[5] [0]));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg[5]_1 ),
        .I1(\FSM_onehot_current_state_reg[5]_2 [2]),
        .I2(\cnt_internal_value_reg[2] ),
        .I3(\FSM_onehot_current_state_reg[5]_2 [3]),
        .I4(\FSM_onehot_current_state_reg[5]_0 ),
        .O(\FSM_onehot_current_state_reg[5] [1]));
  LUT5 #(
    .INIT(32'hFB00FF00)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(IS_right_reg_out),
        .O(\FSM_onehot_current_state_reg[5]_1 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\short_lfsr.lfsr_internal_reg[2] ),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h00FBFF0000FB0000)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\short_lfsr.lfsr_internal_reg[2] ),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\FSM_onehot_current_state_reg[5]_2 [1]),
        .O(D));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(plusOp[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_internal_value[1]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .O(AR));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(Q[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'h854B50E401E41A50)) 
    \xlnx_opt_LUT_FSM_onehot_current_state[6]_i_3 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(\xlnx_opt_FSM_onehot_current_state_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF04000000)) 
    \xlnx_opt_LUT_FSM_onehot_current_state[6]_i_3_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(IS_right_reg_out),
        .I5(\xlnx_opt_FSM_onehot_current_state_reg[5]_0 ),
        .O(\FSM_onehot_current_state_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_2 
       (.I0(pwropt_4),
        .I1(pwropt_3),
        .I2(pwropt_2),
        .I3(pwropt_1),
        .I4(pwropt),
        .I5(E),
        .O(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ));
endmodule

module CNT_48
   (KEY_INPUT_MUX_OUT,
    E,
    lfsr_change_0,
    \temp_reg_reg[23] ,
    \temp_reg_reg[23]_0 ,
    \cnt_internal_value_reg[4]_0 ,
    AR,
    \temp_reg_reg[0] ,
    \FSM_sequential_current_state_reg[1] ,
    out,
    \cnt_internal_value_reg[6] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \short_lfsr.lfsr_internal_reg[2] ,
    KEY_REG_an1_out,
    KEY_REG_bn1_out,
    IS_right_reg_an1_out,
    IS_left_reg_bn1_out,
    \short_lfsr.lfsr_internal_reg[4] ,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    pwropt_4,
    lopt,
    lopt_1);
  output KEY_INPUT_MUX_OUT;
  output [0:0]E;
  output lfsr_change_0;
  output \temp_reg_reg[23] ;
  output \temp_reg_reg[23]_0 ;
  output [0:0]\cnt_internal_value_reg[4]_0 ;
  output [0:0]AR;
  input \temp_reg_reg[0] ;
  input \FSM_sequential_current_state_reg[1] ;
  input [0:0]out;
  input \cnt_internal_value_reg[6] ;
  input [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  input \short_lfsr.lfsr_internal_reg[2] ;
  input KEY_REG_an1_out;
  input KEY_REG_bn1_out;
  input IS_right_reg_an1_out;
  input IS_left_reg_bn1_out;
  input [0:0]\short_lfsr.lfsr_internal_reg[4] ;
  input clk_IBUF_BUFG;
  output pwropt;
  output pwropt_1;
  output pwropt_2;
  output pwropt_3;
  output pwropt_4;
  output lopt;
  output lopt_1;

  wire [0:0]AR;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_an1_out;
  wire KEY_REG_bn1_out;
  wire clk_IBUF_BUFG;
  wire [0:0]\cnt_internal_value_reg[4]_0 ;
  wire \cnt_internal_value_reg[6] ;
  wire lfsr_change_0;
  wire [0:0]out;
  wire [4:0]p_0_in;
  wire [4:0]serial_cnt_out;
  wire \short_lfsr.lfsr_internal_reg[2] ;
  wire [0:0]\short_lfsr.lfsr_internal_reg[4] ;
  wire \temp_reg[23]_i_10_n_0 ;
  wire \temp_reg[23]_i_9_n_0 ;
  wire \temp_reg_reg[0] ;
  wire \temp_reg_reg[16]_srl32_i_3_n_0 ;
  wire \temp_reg_reg[16]_srl32_i_4_n_0 ;
  wire \temp_reg_reg[23]_0 ;

  assign lopt = \temp_reg[23]_i_9_n_0 ;
  assign lopt_1 = \temp_reg[23]_i_10_n_0 ;
  assign pwropt = serial_cnt_out[0];
  assign pwropt_1 = serial_cnt_out[1];
  assign pwropt_2 = serial_cnt_out[2];
  assign pwropt_3 = serial_cnt_out[3];
  assign pwropt_4 = serial_cnt_out[4];
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(serial_cnt_out[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt_internal_value[1]_i_1 
       (.I0(lfsr_change_0),
        .I1(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I2(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I3(\short_lfsr.lfsr_internal_reg[2] ),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__1 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h7F7F0080)) 
    \cnt_internal_value[3]_i_1 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[4]),
        .I4(serial_cnt_out[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7F807F00)) 
    \cnt_internal_value[4]_i_1 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[4]),
        .I4(serial_cnt_out[3]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(serial_cnt_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(serial_cnt_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(serial_cnt_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(serial_cnt_out[4]));
  LUT5 #(
    .INIT(32'h40000000)) 
    lfsr_change_i_1
       (.I0(serial_cnt_out[3]),
        .I1(serial_cnt_out[4]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[0]),
        .I4(serial_cnt_out[2]),
        .O(lfsr_change_0));
  LUT1 #(
    .INIT(2'h1)) 
    \short_lfsr.lfsr_internal[4]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_0 [0]),
        .O(\cnt_internal_value_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \short_lfsr.lfsr_internal[4]_i_2 
       (.I0(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I1(\FSM_sequential_current_state_reg[1]_0 [1]),
        .O(AR));
  LUT2 #(
    .INIT(4'h1)) 
    \temp_reg[23]_i_10 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .O(\temp_reg[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3333333333332220)) 
    \temp_reg[23]_i_8 
       (.I0(serial_cnt_out[2]),
        .I1(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[0]),
        .I4(serial_cnt_out[4]),
        .I5(serial_cnt_out[3]),
        .O(\temp_reg_reg[23]_0 ));
  LUT4 #(
    .INIT(16'h5554)) 
    \temp_reg[23]_i_9 
       (.I0(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I1(serial_cnt_out[2]),
        .I2(serial_cnt_out[4]),
        .I3(serial_cnt_out[3]),
        .O(\temp_reg[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9600960096FF9600)) 
    \temp_reg_reg[16]_srl32_i_1 
       (.I0(\temp_reg_reg[0] ),
        .I1(\temp_reg_reg[16]_srl32_i_3_n_0 ),
        .I2(\temp_reg_reg[16]_srl32_i_4_n_0 ),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(out),
        .I5(\cnt_internal_value_reg[6] ),
        .O(KEY_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \temp_reg_reg[16]_srl32_i_3 
       (.I0(\short_lfsr.lfsr_internal_reg[4] ),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[2]),
        .I4(serial_cnt_out[4]),
        .I5(serial_cnt_out[3]),
        .O(\temp_reg_reg[16]_srl32_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAAA2A2A2AA)) 
    \temp_reg_reg[16]_srl32_i_4 
       (.I0(KEY_REG_an1_out),
        .I1(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I2(\temp_reg[23]_i_9_n_0 ),
        .I3(\temp_reg[23]_i_10_n_0 ),
        .I4(\FSM_sequential_current_state_reg[1]_0 [0]),
        .I5(KEY_REG_bn1_out),
        .O(\temp_reg_reg[16]_srl32_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT__parameterized0
   (D,
    \temp_reg_reg[23] ,
    \temp_reg_reg[23]_0 ,
    \FSM_onehot_current_state_reg[6] ,
    \FSM_onehot_current_state_reg[5] ,
    out,
    \cnt_internal_value_reg[1]_0 ,
    \cnt_internal_value_reg[1]_1 ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6);
  output [3:0]D;
  output \temp_reg_reg[23] ;
  output \temp_reg_reg[23]_0 ;
  output \FSM_onehot_current_state_reg[6] ;
  output \FSM_onehot_current_state_reg[5] ;
  input [5:0]out;
  input \cnt_internal_value_reg[1]_0 ;
  input \cnt_internal_value_reg[1]_1 ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;

  wire [3:0]D;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_3_n_0 ;
  wire \FSM_onehot_current_state[6]_i_4_n_0 ;
  wire \FSM_onehot_current_state_reg[6] ;
  wire clk_IBUF_BUFG;
  wire cnt_ce_W;
  wire \cnt_internal_value[0]_i_1_n_0 ;
  wire \cnt_internal_value[1]_i_1__0_n_0 ;
  wire \cnt_internal_value[2]_i_1__0_n_0 ;
  wire \cnt_internal_value[3]_i_1__0_n_0 ;
  wire \cnt_internal_value[4]_i_1__0_n_0 ;
  wire \cnt_internal_value[5]_i_1_n_0 ;
  wire \cnt_internal_value[6]_i_4_n_0 ;
  wire \cnt_internal_value_reg[1]_0 ;
  wire \cnt_internal_value_reg[1]_1 ;
  wire [6:0]cnt_out_W;
  wire cnt_rst_W;
  wire [5:0]out;
  wire [6:6]plusOp__0;
  wire \temp_reg_reg[16]_srl32_i_6_n_0 ;
  wire \temp_reg_reg[16]_srl32_i_7_n_0 ;
  wire \temp_reg_reg[23] ;

  assign lopt = cnt_out_W[5];
  assign lopt_1 = cnt_out_W[4];
  assign lopt_2 = cnt_out_W[1];
  assign lopt_3 = cnt_out_W[2];
  assign lopt_4 = cnt_out_W[0];
  assign lopt_5 = cnt_out_W[3];
  assign lopt_6 = cnt_out_W[6];
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(out[0]),
        .I1(cnt_out_W[6]),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(cnt_out_W[5]),
        .I4(out[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(cnt_out_W[6]),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(cnt_out_W[5]),
        .I3(out[1]),
        .I4(\FSM_onehot_current_state[4]_i_2_n_0 ),
        .I5(out[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[1]),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\cnt_internal_value_reg[1]_0 ),
        .I3(out[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[5]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I5(cnt_out_W[6]),
        .O(\FSM_onehot_current_state[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
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
        .I3(\cnt_internal_value_reg[1]_1 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_current_state[6]_i_2 
       (.I0(\FSM_onehot_current_state[6]_i_4_n_0 ),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[6]),
        .O(\FSM_onehot_current_state_reg[6] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_current_state[6]_i_4 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[5]),
        .I3(cnt_out_W[4]),
        .O(\FSM_onehot_current_state[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .O(\cnt_internal_value[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .O(\cnt_internal_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[2]),
        .O(\cnt_internal_value[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_internal_value[4]_i_1__0 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[1]),
        .O(\cnt_internal_value[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_internal_value[5]_i_1 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[2]),
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
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \cnt_internal_value[6]_i_2 
       (.I0(cnt_out_W[6]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[3]),
        .I4(\cnt_internal_value[6]_i_4_n_0 ),
        .I5(cnt_out_W[5]),
        .O(plusOp__0));
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
        .D(\cnt_internal_value[2]_i_1__0_n_0 ),
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
        .Q(cnt_out_W[6]));
  MUXF7 \temp_reg_reg[16]_srl32_i_5 
       (.I0(\temp_reg_reg[16]_srl32_i_6_n_0 ),
        .I1(\temp_reg_reg[16]_srl32_i_7_n_0 ),
        .O(\temp_reg_reg[23] ),
        .S(cnt_out_W[6]));
  LUT6 #(
    .INIT(64'hFFF7FFF79DF6DBFD)) 
    \temp_reg_reg[16]_srl32_i_6 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[3]),
        .I5(cnt_out_W[2]),
        .O(\temp_reg_reg[16]_srl32_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFF016FD)) 
    \temp_reg_reg[16]_srl32_i_7 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[3]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[2]),
        .O(\temp_reg_reg[16]_srl32_i_7_n_0 ));
endmodule

module Simeck_48_96_serial
   (D,
    \FSM_onehot_current_state_reg[5] ,
    \FSM_onehot_current_state_reg[5]_0 ,
    clk_IBUF_BUFG,
    \FSM_onehot_current_state_reg[2] ,
    out,
    \cnt_internal_value_reg[6] ,
    start_IBUF,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[5] ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6);
  output [1:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  output \FSM_onehot_current_state_reg[5]_0 ;
  input clk_IBUF_BUFG;
  input \FSM_onehot_current_state_reg[2] ;
  input [5:0]out;
  input \cnt_internal_value_reg[6] ;
  input start_IBUF;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[5] ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;
  input lopt_6;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire [1:0]D;
  wire \FSM_onehot_current_state_reg[5] ;
  wire \FSM_onehot_current_state_reg[5]_0 ;
  wire INST_A_KEY_REG_n_2;
  wire INST_ENCR_DONE_CNT_n_8;
  wire INST_LEFT_KEY_REG_n_0;
  wire INST_LEFT_KEY_REG_n_1;
  wire INST_LFSR_n_3;
  wire INST_SERIAL_CNT_n_4;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_out;
  wire IS_right_reg_an1_out;
  wire IS_right_reg_an5_out;
  wire IS_right_reg_out;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire KEY_REG_an1_out;
  wire KEY_REG_bn1_out;
  wire KEY_REG_bn5_out;
  wire busy;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[6] ;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state;
  wire ending_cnt_ce;
  wire [1:0]ending_cnt_out;
  wire ending_cnt_rst;
  wire lfsr_change;
  wire lfsr_change_0;
  wire [4:4]lfsr_parallel_out;
  wire lfsr_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire \^lopt_6 ;
  wire lopt_7;
  wire lopt_8;
  wire [1:0]nx_state;
  wire [5:0]out;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire pwropt_4;
  wire start_IBUF;
  wire \NLW_INST_ENCR_DONE_CNT_cnt_internal_value_reg[5]_UNCONNECTED ;
  wire \NLW_INST_IS_LEFT_REG_FSM_onehot_current_state_reg[2]_UNCONNECTED ;
  wire \NLW_INST_IS_LEFT_REG_temp_reg_reg[23]_0_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[23]_UNCONNECTED ;

  assign lopt_8 = lopt_6;
  (* FSM_ENCODED_STATES = "loading:00,processing:10,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[0]),
        .Q(current_state[0]),
        .R(out[1]));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[1]),
        .Q(current_state[1]),
        .R(out[1]));
  tapped_shift_reg INST_A_KEY_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .B_KEY_REG_OUT(B_KEY_REG_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_an1_out(KEY_REG_an1_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_SERIAL_CNT_n_4),
        .out(current_state[1]),
        .\temp_reg_reg[23]_0 (INST_A_KEY_REG_n_2));
  tapped_shift_reg_0 INST_B_KEY_REG
       (.B_KEY_REG_OUT(B_KEY_REG_OUT),
        .\FSM_sequential_current_state_reg[0] (INST_LEFT_KEY_REG_n_0),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  CNT INST_ENCR_DONE_CNT
       (.AR(ending_cnt_rst),
        .D(nx_state[1]),
        .E(ending_cnt_ce),
        .\FSM_onehot_current_state_reg[5] (D),
        .\FSM_onehot_current_state_reg[5]_0 (\FSM_onehot_current_state_reg[5] ),
        .\FSM_onehot_current_state_reg[5]_1 (\FSM_onehot_current_state_reg[5]_0 ),
        .\FSM_onehot_current_state_reg[5]_2 ({out[5:3],out[0]}),
        .\FSM_sequential_current_state_reg[0] (INST_ENCR_DONE_CNT_n_8),
        .IS_right_reg_out(IS_right_reg_out),
        .Q(ending_cnt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[5] (\NLW_INST_ENCR_DONE_CNT_cnt_internal_value_reg[5]_UNCONNECTED ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .out(current_state),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .pwropt_4(pwropt_4),
        .\short_lfsr.lfsr_internal_reg[2] (INST_LFSR_n_3),
        .start_IBUF(start_IBUF));
  tapped_shift_reg_1 INST_IS_LEFT_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .\FSM_onehot_current_state_reg[2] (\NLW_INST_IS_LEFT_REG_FSM_onehot_current_state_reg[2]_UNCONNECTED ),
        .\FSM_sequential_current_state_reg[1] (INST_LEFT_KEY_REG_n_1),
        .IS_ce(IS_ce),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .IS_right_reg_out(IS_right_reg_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_SERIAL_CNT_n_4),
        .lopt(IS_right_reg_an1_out),
        .lopt_1(\^lopt_6 ),
        .lopt_10(lopt_5),
        .lopt_11(out[2]),
        .lopt_12(lopt_8),
        .lopt_2(lopt_7),
        .lopt_3(current_state[0]),
        .lopt_4(IS_left_reg_bn1_out),
        .lopt_5(lopt),
        .lopt_6(lopt_1),
        .lopt_7(lopt_2),
        .lopt_8(lopt_4),
        .lopt_9(lopt_3),
        .out(current_state[1]),
        .\temp_reg_reg[23]_0 (\NLW_INST_IS_LEFT_REG_temp_reg_reg[23]_0_UNCONNECTED ));
  tapped_shift_reg_2 INST_IS_RIGHT_REG
       (.IS_ce(IS_ce),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an1_out(IS_right_reg_an1_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .IS_right_reg_out(IS_right_reg_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  normal_shift_reg INST_LEFT_KEY_REG
       (.KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(current_state),
        .\temp_reg_reg[23] (INST_LEFT_KEY_REG_n_0),
        .\temp_reg_reg[23]_0 (INST_LEFT_KEY_REG_n_1));
  lfsr INST_LFSR
       (.AR(ending_cnt_rst),
        .CLK(lfsr_change),
        .D(nx_state[0]),
        .E(busy),
        .\FSM_sequential_current_state_reg[0] (lfsr_rst),
        .\FSM_sequential_current_state_reg[1] (current_state),
        .IS_ce(IS_ce),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(ending_cnt_out),
        .\cnt_internal_value_reg[1] (INST_ENCR_DONE_CNT_n_8),
        .out(out[3]),
        .\short_lfsr.lfsr_internal_reg[0]_0 (lfsr_parallel_out),
        .\temp_reg_reg[23] (INST_LFSR_n_3));
  CNT_48 INST_SERIAL_CNT
       (.AR(lfsr_rst),
        .E(ending_cnt_ce),
        .\FSM_sequential_current_state_reg[1] (INST_LEFT_KEY_REG_n_1),
        .\FSM_sequential_current_state_reg[1]_0 (current_state),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_right_reg_an1_out(IS_right_reg_an1_out),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_an1_out(KEY_REG_an1_out),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[4]_0 (busy),
        .\cnt_internal_value_reg[6] (\cnt_internal_value_reg[6] ),
        .lfsr_change_0(lfsr_change_0),
        .lopt(\^lopt_6 ),
        .lopt_1(lopt_7),
        .out(out[2]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .pwropt_4(pwropt_4),
        .\short_lfsr.lfsr_internal_reg[2] (INST_LFSR_n_3),
        .\short_lfsr.lfsr_internal_reg[4] (lfsr_parallel_out),
        .\temp_reg_reg[0] (INST_A_KEY_REG_n_2),
        .\temp_reg_reg[23] (\NLW_INST_SERIAL_CNT_temp_reg_reg[23]_UNCONNECTED ),
        .\temp_reg_reg[23]_0 (INST_SERIAL_CNT_n_4));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lfsr_change_0),
        .Q(lfsr_change),
        .R(1'b0));
endmodule

(* Datapath = "24" *) (* ECO_CHECKSUM = "ecfd847b" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_6;
  wire Simeck_DUT_n_0;
  wire Simeck_DUT_n_1;
  wire Simeck_DUT_n_2;
  wire Simeck_DUT_n_3;
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
  wire lopt_5;
  wire lopt_6;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  (* RTL_KEEP = "yes" *) wire start_W;
  wire \NLW_INST_CNT_FSM_onehot_current_state_reg[5]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[23]_0_UNCONNECTED ;
  wire \NLW_Simeck_DUT_FSM_onehot_current_state_reg[2]_UNCONNECTED ;
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
        .D(Simeck_DUT_n_1),
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
        .D(INST_CNT_n_1),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simeck_DUT_n_0),
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
       (.D({INST_CNT_n_0,INST_CNT_n_1,INST_CNT_n_2,INST_CNT_n_3}),
        .\FSM_onehot_current_state_reg[5] (\NLW_INST_CNT_FSM_onehot_current_state_reg[5]_UNCONNECTED ),
        .\FSM_onehot_current_state_reg[6] (INST_CNT_n_6),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1]_0 (Simeck_DUT_n_3),
        .\cnt_internal_value_reg[1]_1 (Simeck_DUT_n_2),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W}),
        .\temp_reg_reg[23] (INST_CNT_n_4),
        .\temp_reg_reg[23]_0 (\NLW_INST_CNT_temp_reg_reg[23]_0_UNCONNECTED ));
  Simeck_48_96_serial Simeck_DUT
       (.D({Simeck_DUT_n_0,Simeck_DUT_n_1}),
        .\FSM_onehot_current_state_reg[2] (\NLW_Simeck_DUT_FSM_onehot_current_state_reg[2]_UNCONNECTED ),
        .\FSM_onehot_current_state_reg[5] (Simeck_DUT_n_2),
        .\FSM_onehot_current_state_reg[5]_0 (Simeck_DUT_n_3),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_CNT_n_6),
        .\cnt_internal_value_reg[5] (\NLW_Simeck_DUT_cnt_internal_value_reg[5]_UNCONNECTED ),
        .\cnt_internal_value_reg[6] (INST_CNT_n_4),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .out({\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W,\FSM_onehot_current_state_reg_n_0_[0] }),
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
   (D,
    KEY_REG_CE,
    IS_ce,
    \temp_reg_reg[23] ,
    \short_lfsr.lfsr_internal_reg[0]_0 ,
    out,
    \FSM_sequential_current_state_reg[1] ,
    \cnt_internal_value_reg[1] ,
    Q,
    AR,
    E,
    CLK,
    \FSM_sequential_current_state_reg[0] );
  output [0:0]D;
  output KEY_REG_CE;
  output IS_ce;
  output \temp_reg_reg[23] ;
  output [0:0]\short_lfsr.lfsr_internal_reg[0]_0 ;
  input [0:0]out;
  input [1:0]\FSM_sequential_current_state_reg[1] ;
  input \cnt_internal_value_reg[1] ;
  input [1:0]Q;
  input [0:0]AR;
  input [0:0]E;
  input CLK;
  input [0:0]\FSM_sequential_current_state_reg[0] ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[0] ;
  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire IS_ce;
  wire KEY_REG_CE;
  wire [1:0]Q;
  wire \cnt_internal_value_reg[1] ;
  wire [3:0]lfsr_parallel_out;
  wire [0:0]out;
  wire [0:0]p_2_out;
  wire [0:0]\short_lfsr.lfsr_internal_reg[0]_0 ;
  wire \temp_reg_reg[23] ;
  wire xlnx_opt_IS_ce;

  LUT5 #(
    .INIT(32'h01F50105)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(out),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .I3(\FSM_sequential_current_state_reg[1] [0]),
        .I4(\cnt_internal_value_reg[1] ),
        .O(D));
  LUT6 #(
    .INIT(64'h5555555555455555)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[3]),
        .I4(\short_lfsr.lfsr_internal_reg[0]_0 ),
        .I5(lfsr_parallel_out[1]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(lfsr_parallel_out[2]),
        .I1(\short_lfsr.lfsr_internal_reg[0]_0 ),
        .I2(lfsr_parallel_out[1]),
        .I3(lfsr_parallel_out[3]),
        .I4(lfsr_parallel_out[0]),
        .O(\temp_reg_reg[23] ));
  LUT2 #(
    .INIT(4'h6)) 
    \short_lfsr.lfsr_internal[0]_i_1 
       (.I0(\short_lfsr.lfsr_internal_reg[0]_0 ),
        .I1(lfsr_parallel_out[2]),
        .O(p_2_out));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_2_out),
        .PRE(\FSM_sequential_current_state_reg[0] ),
        .Q(lfsr_parallel_out[0]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[0]),
        .PRE(\FSM_sequential_current_state_reg[0] ),
        .Q(lfsr_parallel_out[1]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[1]),
        .PRE(\FSM_sequential_current_state_reg[0] ),
        .Q(lfsr_parallel_out[2]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[2]),
        .PRE(\FSM_sequential_current_state_reg[0] ),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[3]),
        .PRE(\FSM_sequential_current_state_reg[0] ),
        .Q(\short_lfsr.lfsr_internal_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \temp_reg[23]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(\FSM_sequential_current_state_reg[1] [1]),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(KEY_REG_CE));
  LUT6 #(
    .INIT(64'hAAAAAAAAA08AAAAA)) 
    \xlnx_opt_LUT_temp_reg[23]_i_1__0 
       (.I0(AR),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[3]),
        .I4(\short_lfsr.lfsr_internal_reg[0]_0 ),
        .I5(lfsr_parallel_out[1]),
        .O(xlnx_opt_IS_ce));
  LUT6 #(
    .INIT(64'hFFFFFFFF0030EF00)) 
    \xlnx_opt_LUT_temp_reg[23]_i_1__0_1 
       (.I0(\temp_reg_reg[23] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_sequential_current_state_reg[1] [1]),
        .I4(\FSM_sequential_current_state_reg[1] [0]),
        .I5(xlnx_opt_IS_ce),
        .O(IS_ce));
endmodule

module normal_shift_reg
   (\temp_reg_reg[23] ,
    \temp_reg_reg[23]_0 ,
    KEY_REG_CE,
    KEY_INPUT_MUX_OUT,
    clk_IBUF_BUFG,
    out);
  output \temp_reg_reg[23] ;
  output \temp_reg_reg[23]_0 ;
  input KEY_REG_CE;
  input KEY_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;
  input [1:0]out;

  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire clk_IBUF_BUFG;
  wire [1:0]out;
  wire \temp_reg_reg[16]_srl32_n_1 ;
  wire \temp_reg_reg[23] ;
  wire \temp_reg_reg[23]_0 ;
  wire \NLW_temp_reg_reg[16]_srl32_Q_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[23]_i_6 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\temp_reg_reg[23]_0 ));
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[0]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[16]_srl32_n_1 ),
        .Q(\temp_reg_reg[23] ));
  (* srl_bus_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[16]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_INPUT_MUX_OUT),
        .Q(\NLW_temp_reg_reg[16]_srl32_Q_UNCONNECTED ),
        .Q31(\temp_reg_reg[16]_srl32_n_1 ));
endmodule

module tapped_shift_reg
   (KEY_REG_an1_out,
    A_KEY_REG_OUT,
    \temp_reg_reg[23]_0 ,
    KEY_REG_CE,
    B_KEY_REG_OUT,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[2] ,
    out,
    KEY_REG_bn5_out);
  output KEY_REG_an1_out;
  output A_KEY_REG_OUT;
  output \temp_reg_reg[23]_0 ;
  input KEY_REG_CE;
  input B_KEY_REG_OUT;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[2] ;
  input [0:0]out;
  input KEY_REG_bn5_out;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire KEY_REG_CE;
  wire KEY_REG_an1_out;
  wire KEY_REG_an5_out;
  wire KEY_REG_bn5_out;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire [0:0]out;
  wire \temp_reg_reg[1]_srl18_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \temp_reg_reg[23]_0 ;
  wire \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_srl18_n_0 ),
        .Q(A_KEY_REG_OUT),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h65666A66AAAAAAAA)) 
    \temp_reg_reg[16]_srl32_i_2 
       (.I0(A_KEY_REG_OUT),
        .I1(KEY_REG_an5_out),
        .I2(\cnt_internal_value_reg[2] ),
        .I3(out),
        .I4(KEY_REG_bn5_out),
        .I5(B_KEY_REG_OUT),
        .O(\temp_reg_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(KEY_REG_an5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_an5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_an1_out),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(B_KEY_REG_OUT),
        .Q(KEY_REG_an1_out),
        .R(1'b0));
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
  wire \temp_reg_reg[1]_srl18_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_srl18_n_0 ),
        .Q(B_KEY_REG_OUT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(KEY_REG_bn5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_bn5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_bn1_out),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
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
    IS_ce,
    clk_IBUF_BUFG,
    A_KEY_REG_OUT,
    IS_right_reg_out,
    \temp_reg_reg[23]_0 ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_onehot_current_state_reg[2] ,
    out,
    \cnt_internal_value_reg[2] ,
    IS_right_reg_an5_out,
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
  output IS_left_reg_bn1_out;
  output IS_left_reg_out;
  input IS_ce;
  input clk_IBUF_BUFG;
  input A_KEY_REG_OUT;
  input IS_right_reg_out;
  input \temp_reg_reg[23]_0 ;
  input \FSM_sequential_current_state_reg[1] ;
  input \FSM_onehot_current_state_reg[2] ;
  input [0:0]out;
  input \cnt_internal_value_reg[2] ;
  input IS_right_reg_an5_out;
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

  wire A_KEY_REG_OUT;
  wire \FSM_sequential_current_state_reg[1] ;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_bn5_out;
  wire IS_left_reg_out;
  wire IS_right_reg_an5_out;
  wire IS_right_reg_out;
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
  wire [0:0]out;
  wire \temp_reg_reg[1]_srl18_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire xlnx_opt_IS_INPUT_MUX_OUT;
  wire xlnx_opt_IS_INPUT_MUX_OUT_1;
  wire xlnx_opt_IS_INPUT_MUX_OUT_2;
  wire xlnx_opt_IS_INPUT_MUX_OUT_3;
  wire \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl18_n_0 ),
        .Q(IS_left_reg_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(IS_left_reg_bn5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_left_reg_bn5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_left_reg_bn1_out),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_INPUT_MUX_OUT),
        .Q(IS_left_reg_bn1_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA8A0080)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2 
       (.I0(IS_left_reg_out),
        .I1(IS_left_reg_bn5_out),
        .I2(out),
        .I3(\cnt_internal_value_reg[2] ),
        .I4(IS_right_reg_an5_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_3));
  LUT6 #(
    .INIT(64'hCECECECCC4C4C4CC)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2_1 
       (.I0(out),
        .I1(lopt),
        .I2(lopt_1),
        .I3(lopt_2),
        .I4(lopt_3),
        .I5(lopt_4),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_2));
  LUT6 #(
    .INIT(64'hF88DF9EBF8CFCEED)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2_2 
       (.I0(lopt_5),
        .I1(lopt_6),
        .I2(lopt_7),
        .I3(lopt_8),
        .I4(lopt_9),
        .I5(lopt_10),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_1));
  LUT3 #(
    .INIT(8'hFD)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2_3 
       (.I0(lopt_11),
        .I1(lopt_12),
        .I2(xlnx_opt_IS_INPUT_MUX_OUT_1),
        .O(xlnx_opt_IS_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h609090606F9F9F6F)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2_4 
       (.I0(A_KEY_REG_OUT),
        .I1(IS_right_reg_out),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(xlnx_opt_IS_INPUT_MUX_OUT_3),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT_2),
        .I5(xlnx_opt_IS_INPUT_MUX_OUT),
        .O(IS_INPUT_MUX_OUT));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_2
   (IS_right_reg_an1_out,
    IS_right_reg_an5_out,
    IS_right_reg_out,
    IS_ce,
    IS_left_reg_out,
    clk_IBUF_BUFG);
  output IS_right_reg_an1_out;
  output IS_right_reg_an5_out;
  output IS_right_reg_out;
  input IS_ce;
  input IS_left_reg_out;
  input clk_IBUF_BUFG;

  wire IS_ce;
  wire IS_left_reg_out;
  wire IS_right_reg_an1_out;
  wire IS_right_reg_an5_out;
  wire IS_right_reg_out;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[1]_srl18_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl18_n_0 ),
        .Q(IS_right_reg_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(IS_right_reg_an5_out),
        .R(1'b0));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_right_reg_an5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_right_reg_an1_out),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_left_reg_out),
        .Q(IS_right_reg_an1_out),
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
