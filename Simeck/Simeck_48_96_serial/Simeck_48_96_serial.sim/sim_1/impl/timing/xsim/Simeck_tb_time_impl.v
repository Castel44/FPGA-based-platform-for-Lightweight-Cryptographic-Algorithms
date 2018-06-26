// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 26 01:42:09 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simeck/Simeck_48_96_serial/Simeck_48_96_serial.sim/sim_1/impl/timing/xsim/Simeck_tb_time_impl.v}
// Design      : Simeck_48_96_serial
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    Q,
    ciphertext_out_OBUF,
    out,
    start_IBUF,
    \short_lfsr.lfsr_internal_reg[1] ,
    data_ready_IBUF,
    sel_IN,
    \FSM_sequential_current_state_reg[1]_0 ,
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
    lopt_2);
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  output [1:0]Q;
  output [0:0]ciphertext_out_OBUF;
  input [1:0]out;
  input start_IBUF;
  input \short_lfsr.lfsr_internal_reg[1] ;
  input data_ready_IBUF;
  input sel_IN;
  input \FSM_sequential_current_state_reg[1]_0 ;
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

  wire [0:0]E;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire IS_right_reg_out;
  wire [1:0]Q;
  wire [0:0]ciphertext_out_OBUF;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ;
  wire data_ready_IBUF;
  wire ending_cnt_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire [1:0]out;
  wire [1:0]plusOp;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire pwropt_4;
  wire \short_lfsr.lfsr_internal_reg[1] ;
  wire start_IBUF;
  wire \xlnx_opt_FSM_sequential_current_state_reg[0] ;
  wire \xlnx_opt_FSM_sequential_current_state_reg[0]_1 ;

  LUT6 #(
    .INIT(64'h0000000062626240)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(start_IBUF),
        .I3(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I4(\short_lfsr.lfsr_internal_reg[1] ),
        .I5(data_ready_IBUF),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \ciphertext_out_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(IS_right_reg_out),
        .I3(out[1]),
        .I4(out[0]),
        .O(ciphertext_out_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_internal_value[1]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .O(ending_cnt_rst));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(ending_cnt_rst),
        .D(plusOp[0]),
        .Q(Q[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(ending_cnt_rst),
        .D(plusOp[1]),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'hD)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\xlnx_opt_FSM_sequential_current_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFBFBFBEAFBFBFBFB)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(start_IBUF),
        .I3(lopt),
        .I4(lopt_1),
        .I5(lopt_2),
        .O(\xlnx_opt_FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000400FF00FF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\short_lfsr.lfsr_internal_reg[1] ),
        .I3(data_ready_IBUF),
        .I4(\xlnx_opt_FSM_sequential_current_state_reg[0]_1 ),
        .I5(\xlnx_opt_FSM_sequential_current_state_reg[0] ),
        .O(\FSM_sequential_current_state_reg[0] ));
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
   (\temp_reg_reg[23] ,
    \temp_reg_reg[23]_0 ,
    \temp_reg_reg[23]_1 ,
    E,
    lfsr_change,
    AR,
    KEY_REG_bn5_out,
    B_KEY_REG_OUT,
    out,
    KEY_REG_an5_out,
    \short_lfsr.lfsr_internal_reg[4] ,
    \short_lfsr.lfsr_internal_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    pwropt_4);
  output \temp_reg_reg[23] ;
  output \temp_reg_reg[23]_0 ;
  output \temp_reg_reg[23]_1 ;
  output [0:0]E;
  output lfsr_change;
  output [0:0]AR;
  input KEY_REG_bn5_out;
  input B_KEY_REG_OUT;
  input [1:0]out;
  input KEY_REG_an5_out;
  input [0:0]\short_lfsr.lfsr_internal_reg[4] ;
  input \short_lfsr.lfsr_internal_reg[1] ;
  input [0:0]\FSM_sequential_current_state_reg[0] ;
  input clk_IBUF_BUFG;
  output pwropt;
  output pwropt_1;
  output pwropt_2;
  output pwropt_3;
  output pwropt_4;

  wire [0:0]AR;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_current_state_reg[0] ;
  wire clk_IBUF_BUFG;
  wire lfsr_change;
  wire [1:0]out;
  wire [4:0]p_0_in;
  wire [4:0]serial_cnt_out;
  wire \short_lfsr.lfsr_internal_reg[1] ;
  wire \temp_reg_reg[23]_0 ;
  wire \temp_reg_reg[23]_1 ;

  assign pwropt = serial_cnt_out[0];
  assign pwropt_1 = serial_cnt_out[1];
  assign pwropt_2 = serial_cnt_out[2];
  assign pwropt_3 = serial_cnt_out[3];
  assign pwropt_4 = serial_cnt_out[4];
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(serial_cnt_out[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \cnt_internal_value[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(lfsr_change),
        .I3(\short_lfsr.lfsr_internal_reg[1] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h7F7F0080)) 
    \cnt_internal_value[3]_i_1 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[4]),
        .I4(serial_cnt_out[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7F807F00)) 
    \cnt_internal_value[4]_i_1 
       (.I0(serial_cnt_out[1]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[4]),
        .I4(serial_cnt_out[3]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(serial_cnt_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(serial_cnt_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(serial_cnt_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(serial_cnt_out[4]));
  LUT5 #(
    .INIT(32'h40000000)) 
    lfsr_change_i_1
       (.I0(serial_cnt_out[3]),
        .I1(serial_cnt_out[4]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[0]),
        .I4(serial_cnt_out[1]),
        .O(lfsr_change));
  LUT2 #(
    .INIT(4'h2)) 
    \short_lfsr.lfsr_internal[4]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(AR));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \temp_reg[23]_i_6 
       (.I0(serial_cnt_out[4]),
        .I1(serial_cnt_out[3]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[0]),
        .I4(serial_cnt_out[2]),
        .I5(out[0]),
        .O(\temp_reg_reg[23]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAABBAAAAAABF)) 
    \temp_reg[23]_i_7 
       (.I0(out[0]),
        .I1(serial_cnt_out[2]),
        .I2(serial_cnt_out[0]),
        .I3(serial_cnt_out[4]),
        .I4(serial_cnt_out[3]),
        .I5(serial_cnt_out[1]),
        .O(\temp_reg_reg[23]_0 ));
endmodule

(* Datapath = "1" *) (* ECO_CHECKSUM = "582fa0a7" *) (* POWER_OPT_BRAM_CDC = "0" *) 
(* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) (* key_size = "96" *) 
(* plaintext_size = "48" *) 
(* NotValidForBitStream *)
module Simeck_48_96_serial
   (clk,
    data_ready,
    key_in,
    plaintext_in,
    busy,
    start,
    ciphertext_out);
  input clk;
  input data_ready;
  input [0:0]key_in;
  input [0:0]plaintext_in;
  output busy;
  input start;
  output [0:0]ciphertext_out;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire INST_ENCR_DONE_CNT_n_0;
  wire INST_ENCR_DONE_CNT_n_1;
  wire INST_LEFT_KEY_REG_n_0;
  wire INST_LFSR_n_1;
  wire INST_SERIAL_CNT_n_1;
  wire INST_SERIAL_CNT_n_2;
  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_out;
  wire IS_right_reg_an5_out;
  wire IS_right_reg_out;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire KEY_REG_an5_out;
  wire KEY_REG_bn1_out;
  wire KEY_REG_bn5_out;
  wire busy;
  wire busy_OBUF;
  wire [0:0]ciphertext_out;
  wire [0:0]ciphertext_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state;
  wire data_ready;
  wire data_ready_IBUF;
  wire ending_cnt_ce;
  wire [1:0]ending_cnt_out;
  wire [0:0]key_in;
  wire [0:0]key_in_IBUF;
  wire lfsr_change;
  wire lfsr_change_reg_n_0;
  wire [4:4]lfsr_parallel_out;
  wire lfsr_rst;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire [0:0]plaintext_in;
  wire [0:0]plaintext_in_IBUF;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire pwropt_4;
  wire start;
  wire start_IBUF;
  wire \NLW_INST_A_KEY_REG_temp_reg_reg[19]_0_UNCONNECTED ;
  wire \NLW_INST_ENCR_DONE_CNT_FSM_sequential_current_state_reg[1]_0_UNCONNECTED ;
  wire NLW_INST_ENCR_DONE_CNT_sel_IN_UNCONNECTED;
  wire \NLW_INST_IS_LEFT_REG_temp_reg_reg[23]_0_UNCONNECTED ;
  wire \NLW_INST_IS_RIGHT_REG_temp_reg_reg[0]_0_UNCONNECTED ;
  wire \NLW_INST_LFSR_FSM_sequential_current_state_reg[0]_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[23]_UNCONNECTED ;

initial begin
 $sdf_annotate("Simeck_tb_time_impl.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "loading:00,processing:10,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_ENCR_DONE_CNT_n_1),
        .Q(current_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_ENCR_DONE_CNT_n_0),
        .Q(current_state[1]),
        .R(1'b0));
  tapped_shift_reg INST_A_KEY_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .B_KEY_REG_OUT(B_KEY_REG_OUT),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_an5_out(KEY_REG_an5_out),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[4] (INST_SERIAL_CNT_n_2),
        .key_in_IBUF(key_in_IBUF),
        .lopt(pwropt_4),
        .lopt_1(pwropt_3),
        .lopt_2(pwropt_1),
        .lopt_3(pwropt_2),
        .lopt_4(pwropt),
        .lopt_5(lfsr_parallel_out),
        .lopt_6(KEY_REG_bn5_out),
        .lopt_7(INST_SERIAL_CNT_n_1),
        .lopt_8(KEY_REG_an5_out),
        .out(current_state[1]),
        .\temp_reg_reg[19]_0 (\NLW_INST_A_KEY_REG_temp_reg_reg[19]_0_UNCONNECTED ));
  tapped_shift_reg_0 INST_B_KEY_REG
       (.B_KEY_REG_OUT(B_KEY_REG_OUT),
        .\FSM_sequential_current_state_reg[1] (INST_LEFT_KEY_REG_n_0),
        .KEY_REG_CE(KEY_REG_CE),
        .KEY_REG_bn1_out(KEY_REG_bn1_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  CNT INST_ENCR_DONE_CNT
       (.E(ending_cnt_ce),
        .\FSM_sequential_current_state_reg[0] (INST_ENCR_DONE_CNT_n_1),
        .\FSM_sequential_current_state_reg[1] (INST_ENCR_DONE_CNT_n_0),
        .\FSM_sequential_current_state_reg[1]_0 (\NLW_INST_ENCR_DONE_CNT_FSM_sequential_current_state_reg[1]_0_UNCONNECTED ),
        .IS_right_reg_out(IS_right_reg_out),
        .Q(ending_cnt_out),
        .ciphertext_out_OBUF(ciphertext_out_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_ready_IBUF(data_ready_IBUF),
        .lopt(lopt_1),
        .lopt_1(lopt_2),
        .lopt_2(lfsr_parallel_out),
        .out(current_state),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .pwropt_4(pwropt_4),
        .sel_IN(NLW_INST_ENCR_DONE_CNT_sel_IN_UNCONNECTED),
        .\short_lfsr.lfsr_internal_reg[1] (INST_LFSR_n_1),
        .start_IBUF(start_IBUF));
  tapped_shift_reg_1 INST_IS_LEFT_REG
       (.A_KEY_REG_OUT(A_KEY_REG_OUT),
        .\FSM_sequential_current_state_reg[0] (INST_SERIAL_CNT_n_1),
        .IS_INPUT_MUX_OUT(IS_INPUT_MUX_OUT),
        .IS_ce(IS_ce),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .out(current_state[1]),
        .\temp_reg_reg[23]_0 (\NLW_INST_IS_LEFT_REG_temp_reg_reg[23]_0_UNCONNECTED ));
  tapped_shift_reg_2 INST_IS_RIGHT_REG
       (.IS_INPUT_MUX_OUT(IS_INPUT_MUX_OUT),
        .IS_ce(IS_ce),
        .IS_left_reg_bn1_out(IS_left_reg_bn1_out),
        .IS_left_reg_out(IS_left_reg_out),
        .IS_right_reg_an5_out(IS_right_reg_an5_out),
        .IS_right_reg_out(IS_right_reg_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[4] (INST_SERIAL_CNT_n_2),
        .lopt(A_KEY_REG_OUT),
        .lopt_1(lopt),
        .lopt_2(INST_SERIAL_CNT_n_1),
        .lopt_3(IS_right_reg_an5_out),
        .out(current_state),
        .plaintext_in_IBUF(plaintext_in_IBUF),
        .\temp_reg_reg[0]_0 (\NLW_INST_IS_RIGHT_REG_temp_reg_reg[0]_0_UNCONNECTED ));
  normal_shift_reg INST_LEFT_KEY_REG
       (.KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .KEY_REG_CE(KEY_REG_CE),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[23] (INST_LEFT_KEY_REG_n_0));
  lfsr INST_LFSR
       (.AR(lfsr_rst),
        .E(busy_OBUF),
        .\FSM_sequential_current_state_reg[0] (\NLW_INST_LFSR_FSM_sequential_current_state_reg[0]_UNCONNECTED ),
        .IS_ce(IS_ce),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(ending_cnt_out),
        .lfsr_change_reg(lfsr_change_reg_n_0),
        .lopt(lopt_1),
        .lopt_1(lopt_2),
        .out(current_state),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[23] (INST_LFSR_n_1),
        .\temp_reg_reg[23]_0 (lfsr_parallel_out));
  CNT_48 INST_SERIAL_CNT
       (.AR(lfsr_rst),
        .B_KEY_REG_OUT(B_KEY_REG_OUT),
        .E(ending_cnt_ce),
        .\FSM_sequential_current_state_reg[0] (busy_OBUF),
        .KEY_REG_an5_out(KEY_REG_an5_out),
        .KEY_REG_bn5_out(KEY_REG_bn5_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lfsr_change(lfsr_change),
        .out(current_state),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .pwropt_4(pwropt_4),
        .\short_lfsr.lfsr_internal_reg[1] (INST_LFSR_n_1),
        .\short_lfsr.lfsr_internal_reg[4] (lfsr_parallel_out),
        .\temp_reg_reg[23] (\NLW_INST_SERIAL_CNT_temp_reg_reg[23]_UNCONNECTED ),
        .\temp_reg_reg[23]_0 (INST_SERIAL_CNT_n_1),
        .\temp_reg_reg[23]_1 (INST_SERIAL_CNT_n_2));
  OBUF busy_OBUF_inst
       (.I(busy_OBUF),
        .O(busy));
  OBUF \ciphertext_out_OBUF[0]_inst 
       (.I(ciphertext_out_OBUF),
        .O(ciphertext_out));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF data_ready_IBUF_inst
       (.I(data_ready),
        .O(data_ready_IBUF));
  IBUF \key_in_IBUF[0]_inst 
       (.I(key_in),
        .O(key_in_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lfsr_change),
        .Q(lfsr_change_reg_n_0),
        .R(1'b0));
  IBUF \plaintext_in_IBUF[0]_inst 
       (.I(plaintext_in),
        .O(plaintext_in_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

module lfsr
   (IS_ce,
    \temp_reg_reg[23] ,
    KEY_REG_CE,
    \temp_reg_reg[23]_0 ,
    \FSM_sequential_current_state_reg[0] ,
    E,
    Q,
    out,
    start_IBUF,
    lfsr_change_reg,
    AR,
    lopt,
    lopt_1);
  output IS_ce;
  output \temp_reg_reg[23] ;
  output KEY_REG_CE;
  output [0:0]\temp_reg_reg[23]_0 ;
  output \FSM_sequential_current_state_reg[0] ;
  output [0:0]E;
  input [1:0]Q;
  input [1:0]out;
  input start_IBUF;
  input lfsr_change_reg;
  input [0:0]AR;
  output lopt;
  output lopt_1;

  wire [0:0]AR;
  wire [0:0]E;
  wire IS_ce;
  wire KEY_REG_CE;
  wire [1:0]Q;
  wire lfsr_change_reg;
  wire [3:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [0:0]p_2_out;
  wire \temp_reg[23]_i_2__0_n_0 ;
  wire \temp_reg[23]_i_3__0_n_0 ;
  wire \temp_reg[23]_i_3_n_0 ;
  wire \temp_reg_reg[23] ;
  wire [0:0]\temp_reg_reg[23]_0 ;

  assign lopt = \temp_reg[23]_i_3__0_n_0 ;
  assign lopt_1 = lfsr_parallel_out[1];
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(lfsr_parallel_out[1]),
        .I1(\temp_reg_reg[23]_0 ),
        .I2(lfsr_parallel_out[3]),
        .I3(lfsr_parallel_out[2]),
        .I4(lfsr_parallel_out[0]),
        .O(\temp_reg_reg[23] ));
  LUT1 #(
    .INIT(2'h1)) 
    busy_OBUF_inst_i_1
       (.I0(out[0]),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \short_lfsr.lfsr_internal[0]_i_1 
       (.I0(lfsr_parallel_out[2]),
        .I1(\temp_reg_reg[23]_0 ),
        .O(p_2_out));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[0] 
       (.C(lfsr_change_reg),
        .CE(E),
        .D(p_2_out),
        .PRE(AR),
        .Q(lfsr_parallel_out[0]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[1] 
       (.C(lfsr_change_reg),
        .CE(E),
        .D(lfsr_parallel_out[0]),
        .PRE(AR),
        .Q(lfsr_parallel_out[1]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[2] 
       (.C(lfsr_change_reg),
        .CE(E),
        .D(lfsr_parallel_out[1]),
        .PRE(AR),
        .Q(lfsr_parallel_out[2]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[3] 
       (.C(lfsr_change_reg),
        .CE(E),
        .D(lfsr_parallel_out[2]),
        .PRE(AR),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \short_lfsr.lfsr_internal_reg[4] 
       (.C(lfsr_change_reg),
        .CE(E),
        .D(lfsr_parallel_out[3]),
        .PRE(AR),
        .Q(\temp_reg_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h000000F0FFCFAAAA)) 
    \temp_reg[23]_i_1 
       (.I0(\temp_reg[23]_i_3_n_0 ),
        .I1(\temp_reg_reg[23] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(out[1]),
        .I5(out[0]),
        .O(IS_ce));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0B0F)) 
    \temp_reg[23]_i_1__0 
       (.I0(out[1]),
        .I1(\temp_reg[23]_i_2__0_n_0 ),
        .I2(out[0]),
        .I3(\temp_reg_reg[23]_0 ),
        .I4(\temp_reg[23]_i_3__0_n_0 ),
        .I5(lfsr_parallel_out[1]),
        .O(KEY_REG_CE));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \temp_reg[23]_i_2__0 
       (.I0(\temp_reg_reg[23]_0 ),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[1]),
        .I3(lfsr_parallel_out[0]),
        .O(\temp_reg[23]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEBBFFFF)) 
    \temp_reg[23]_i_3 
       (.I0(lfsr_parallel_out[1]),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[0]),
        .I4(\temp_reg_reg[23]_0 ),
        .O(\temp_reg[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \temp_reg[23]_i_3__0 
       (.I0(lfsr_parallel_out[0]),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[3]),
        .O(\temp_reg[23]_i_3__0_n_0 ));
endmodule

module normal_shift_reg
   (\temp_reg_reg[23] ,
    KEY_REG_CE,
    KEY_INPUT_MUX_OUT,
    clk_IBUF_BUFG);
  output \temp_reg_reg[23] ;
  input KEY_REG_CE;
  input KEY_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;

  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[16]_srl32_n_1 ;
  wire \temp_reg_reg[23] ;
  wire \NLW_temp_reg_reg[16]_srl32_Q_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_LEFT_KEY_REG/temp_reg_reg[0]_srl16 " *) 
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
  (* srl_bus_name = "\INST_LEFT_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_LEFT_KEY_REG/temp_reg_reg[16]_srl32 " *) 
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
   (KEY_REG_an5_out,
    A_KEY_REG_OUT,
    KEY_INPUT_MUX_OUT,
    KEY_REG_CE,
    B_KEY_REG_OUT,
    clk_IBUF_BUFG,
    KEY_REG_bn1_out,
    \cnt_internal_value_reg[4] ,
    out,
    key_in_IBUF,
    \temp_reg_reg[19]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8);
  output KEY_REG_an5_out;
  output A_KEY_REG_OUT;
  output KEY_INPUT_MUX_OUT;
  input KEY_REG_CE;
  input B_KEY_REG_OUT;
  input clk_IBUF_BUFG;
  input KEY_REG_bn1_out;
  input \cnt_internal_value_reg[4] ;
  input [0:0]out;
  input [0:0]key_in_IBUF;
  input \temp_reg_reg[19]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;
  input lopt_6;
  input lopt_7;
  input lopt_8;

  wire A_KEY_REG_OUT;
  wire B_KEY_REG_OUT;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_CE;
  wire KEY_REG_an1_out;
  wire KEY_REG_an5_out;
  wire KEY_REG_bn1_out;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[4] ;
  wire [0:0]key_in_IBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire [0:0]out;
  wire \temp_reg_reg[1]_srl18_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire xlnx_opt_KEY_INPUT_MUX_OUT;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_1;
  wire xlnx_opt_KEY_INPUT_MUX_OUT_2;
  wire \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[1]_srl18_n_0 ),
        .Q(A_KEY_REG_OUT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(KEY_REG_an5_out),
        .R(1'b0));
  (* srl_bus_name = "\INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_A_KEY_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_an5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\INST_A_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_A_KEY_REG/temp_reg_reg[20]_srl3 " *) 
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
  LUT5 #(
    .INIT(32'h9AAA9555)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl32_i_1 
       (.I0(A_KEY_REG_OUT),
        .I1(KEY_REG_bn1_out),
        .I2(\cnt_internal_value_reg[4] ),
        .I3(out),
        .I4(KEY_REG_an1_out),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_2));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl32_i_1_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hD0F080002F0F7FFF)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl32_i_1_2 
       (.I0(out),
        .I1(lopt_6),
        .I2(B_KEY_REG_OUT),
        .I3(lopt_7),
        .I4(lopt_8),
        .I5(xlnx_opt_KEY_INPUT_MUX_OUT_1),
        .O(xlnx_opt_KEY_INPUT_MUX_OUT));
  LUT4 #(
    .INIT(16'h4EE4)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl32_i_1_3 
       (.I0(out),
        .I1(key_in_IBUF),
        .I2(xlnx_opt_KEY_INPUT_MUX_OUT_2),
        .I3(xlnx_opt_KEY_INPUT_MUX_OUT),
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
  (* srl_bus_name = "\INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_B_KEY_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(KEY_REG_CE),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_bn5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\INST_B_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_B_KEY_REG/temp_reg_reg[20]_srl3 " *) 
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
        .D(\FSM_sequential_current_state_reg[1] ),
        .Q(KEY_REG_bn1_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_1
   (IS_left_reg_bn1_out,
    IS_left_reg_out,
    \temp_reg_reg[23]_0 ,
    IS_ce,
    IS_INPUT_MUX_OUT,
    clk_IBUF_BUFG,
    A_KEY_REG_OUT,
    \FSM_sequential_current_state_reg[0] ,
    out,
    IS_right_reg_an5_out,
    lopt);
  output IS_left_reg_bn1_out;
  output IS_left_reg_out;
  output \temp_reg_reg[23]_0 ;
  input IS_ce;
  input IS_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;
  input A_KEY_REG_OUT;
  input \FSM_sequential_current_state_reg[0] ;
  input [0:0]out;
  input IS_right_reg_an5_out;
  output lopt;

  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_bn5_out;
  wire IS_left_reg_out;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[1]_srl18_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ;

  assign lopt = IS_left_reg_bn5_out;
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
  (* srl_bus_name = "\INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_IS_LEFT_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_left_reg_bn5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\INST_IS_LEFT_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_IS_LEFT_REG/temp_reg_reg[20]_srl3 " *) 
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
endmodule

(* ORIG_REF_NAME = "tapped_shift_reg" *) 
module tapped_shift_reg_2
   (IS_right_reg_an5_out,
    IS_right_reg_out,
    IS_INPUT_MUX_OUT,
    IS_ce,
    IS_left_reg_out,
    clk_IBUF_BUFG,
    plaintext_in_IBUF,
    \temp_reg_reg[0]_0 ,
    out,
    IS_left_reg_bn1_out,
    \cnt_internal_value_reg[4] ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output IS_right_reg_an5_out;
  output IS_right_reg_out;
  output IS_INPUT_MUX_OUT;
  input IS_ce;
  input IS_left_reg_out;
  input clk_IBUF_BUFG;
  input [0:0]plaintext_in_IBUF;
  input \temp_reg_reg[0]_0 ;
  input [1:0]out;
  input IS_left_reg_bn1_out;
  input \cnt_internal_value_reg[4] ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;

  wire IS_INPUT_MUX_OUT;
  wire IS_ce;
  wire IS_left_reg_bn1_out;
  wire IS_left_reg_out;
  wire IS_right_reg_an1_out;
  wire IS_right_reg_an5_out;
  wire IS_right_reg_out;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[4] ;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [1:0]out;
  wire [0:0]plaintext_in_IBUF;
  wire \temp_reg_reg[1]_srl18_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire xlnx_opt_IS_INPUT_MUX_OUT;
  wire xlnx_opt_IS_INPUT_MUX_OUT_1;
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
  (* srl_bus_name = "\INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_IS_RIGHT_REG/temp_reg_reg[1]_srl18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[1]_srl18 
       (.A({1'b1,1'b0,1'b0,1'b0,1'b1}),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_right_reg_an5_out),
        .Q(\temp_reg_reg[1]_srl18_n_0 ),
        .Q31(\NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED ));
  (* srl_bus_name = "\INST_IS_RIGHT_REG/temp_reg_reg " *) 
  (* srl_name = "\INST_IS_RIGHT_REG/temp_reg_reg[20]_srl3 " *) 
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
  LUT5 #(
    .INIT(32'h9AAA9555)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2 
       (.I0(IS_right_reg_out),
        .I1(IS_left_reg_bn1_out),
        .I2(\cnt_internal_value_reg[4] ),
        .I3(out[1]),
        .I4(IS_right_reg_an1_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hC633CC3393333333)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2_1 
       (.I0(out[1]),
        .I1(lopt),
        .I2(lopt_1),
        .I3(IS_left_reg_out),
        .I4(lopt_2),
        .I5(lopt_3),
        .O(xlnx_opt_IS_INPUT_MUX_OUT));
  LUT5 #(
    .INIT(32'hC4CECEC4)) 
    \xlnx_opt_LUT_temp_reg[23]_i_2_2 
       (.I0(out[1]),
        .I1(plaintext_in_IBUF),
        .I2(out[0]),
        .I3(xlnx_opt_IS_INPUT_MUX_OUT_1),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT),
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
