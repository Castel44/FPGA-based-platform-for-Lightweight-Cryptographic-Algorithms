// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 25 18:00:53 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simon/Simon_48_96_serial/Simon_48_96_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\temp_reg_reg[47] ,
    Q,
    \temp_reg_reg[76] ,
    D,
    \FSM_onehot_current_state_reg[6] ,
    \FSM_onehot_current_state_reg[5] ,
    \FSM_onehot_current_state_reg[3] ,
    out,
    \FSM_sequential_current_state_reg[0] ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output \temp_reg_reg[47] ;
  output [0:0]Q;
  output \temp_reg_reg[76] ;
  output [2:0]D;
  output \FSM_onehot_current_state_reg[6] ;
  output \FSM_onehot_current_state_reg[5] ;
  output \FSM_onehot_current_state_reg[3] ;
  input [5:0]out;
  input \FSM_sequential_current_state_reg[0] ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [2:0]D;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_3_n_0 ;
  wire \FSM_onehot_current_state[6]_i_4_n_0 ;
  wire \FSM_onehot_current_state_reg[3] ;
  wire \FSM_onehot_current_state_reg[5] ;
  wire \FSM_onehot_current_state_reg[6] ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire cnt_ce_W;
  wire \cnt_internal_value[0]_i_1__0_n_0 ;
  wire \cnt_internal_value[1]_i_1_n_0 ;
  wire \cnt_internal_value[2]_i_1__0_n_0 ;
  wire \cnt_internal_value[3]_i_1__0_n_0 ;
  wire \cnt_internal_value[4]_i_1__0_n_0 ;
  wire \cnt_internal_value[5]_i_1_n_0 ;
  wire \cnt_internal_value[6]_i_4_n_0 ;
  wire [5:0]cnt_out_W;
  wire cnt_rst_W;
  wire [5:0]out;
  wire [6:6]plusOp;
  wire \temp_reg_reg[76] ;
  wire \temp_reg_reg[77]_srl19_i_10_n_0 ;
  wire \temp_reg_reg[77]_srl19_i_11_n_0 ;

  assign lopt = cnt_out_W[5];
  assign lopt_1 = cnt_out_W[4];
  assign lopt_2 = cnt_out_W[2];
  assign lopt_3 = cnt_out_W[3];
  assign lopt_4 = cnt_out_W[1];
  assign lopt_5 = cnt_out_W[0];
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(out[0]),
        .I1(Q),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(cnt_out_W[5]),
        .I4(out[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4444F44444444444)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg[3] ),
        .I1(out[2]),
        .I2(Q),
        .I3(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I4(cnt_out_W[5]),
        .I5(out[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[4]),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[5]),
        .I4(cnt_out_W[4]),
        .I5(Q),
        .O(\FSM_onehot_current_state_reg[3] ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_current_state[4]_i_3 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .O(\FSM_onehot_current_state[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(out[5]),
        .I1(out[4]),
        .I2(\FSM_onehot_current_state_reg[6] ),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_current_state[6]_i_2 
       (.I0(Q),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[5]),
        .I3(\FSM_onehot_current_state[6]_i_4_n_0 ),
        .O(\FSM_onehot_current_state_reg[6] ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_current_state[6]_i_4 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[4]),
        .O(\FSM_onehot_current_state[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFAEEAB5B4E100B54)) 
    \FSM_onehot_current_state[6]_i_5 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[0]),
        .I5(cnt_out_W[1]),
        .O(\FSM_onehot_current_state_reg[5] ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[1]),
        .O(\cnt_internal_value[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[0]),
        .O(\cnt_internal_value[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[1]),
        .O(\cnt_internal_value[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_1__0 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[4]),
        .O(\cnt_internal_value[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_internal_value[5]_i_1 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[3]),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[0]),
        .I5(cnt_out_W[1]),
        .O(\cnt_internal_value[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_1 
       (.I0(out[2]),
        .I1(out[4]),
        .I2(out[1]),
        .O(cnt_ce_W));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \cnt_internal_value[6]_i_2 
       (.I0(Q),
        .I1(cnt_out_W[5]),
        .I2(\cnt_internal_value[6]_i_4_n_0 ),
        .I3(cnt_out_W[2]),
        .I4(cnt_out_W[3]),
        .I5(cnt_out_W[4]),
        .O(plusOp));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_internal_value[6]_i_3 
       (.I0(out[3]),
        .I1(out[5]),
        .I2(out[0]),
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
        .D(\cnt_internal_value[0]_i_1__0_n_0 ),
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
        .D(plusOp),
        .Q(Q));
  LUT6 #(
    .INIT(64'hFFF79FD6FFF7DFBD)) 
    \temp_reg_reg[77]_srl19_i_10 
       (.I0(cnt_out_W[5]),
        .I1(cnt_out_W[4]),
        .I2(cnt_out_W[0]),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[2]),
        .I5(cnt_out_W[3]),
        .O(\temp_reg_reg[77]_srl19_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF3F7C7C9)) 
    \temp_reg_reg[77]_srl19_i_11 
       (.I0(cnt_out_W[4]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[3]),
        .I4(cnt_out_W[1]),
        .O(\temp_reg_reg[77]_srl19_i_11_n_0 ));
  MUXF7 \temp_reg_reg[77]_srl19_i_5 
       (.I0(\temp_reg_reg[77]_srl19_i_10_n_0 ),
        .I1(\temp_reg_reg[77]_srl19_i_11_n_0 ),
        .O(\temp_reg_reg[76] ),
        .S(Q));
endmodule

module CNT24
   (KEY_INPUT_MUX_OUT,
    E,
    Q,
    \temp_reg_reg[47] ,
    \temp_reg_reg[47]_0 ,
    \temp_reg_reg[76] ,
    lfsr_change_0,
    \cnt_internal_value_reg[4]_0 ,
    \temp_reg_reg[24] ,
    \FSM_sequential_current_state_reg[1] ,
    out,
    \cnt_internal_value_reg[6] ,
    \lfsr_internal_reg[1] ,
    D,
    \lfsr_internal_reg[4] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6);
  output KEY_INPUT_MUX_OUT;
  output [0:0]E;
  output [1:0]Q;
  output \temp_reg_reg[47] ;
  output \temp_reg_reg[47]_0 ;
  output \temp_reg_reg[76] ;
  output lfsr_change_0;
  output [0:0]\cnt_internal_value_reg[4]_0 ;
  input \temp_reg_reg[24] ;
  input \FSM_sequential_current_state_reg[1] ;
  input [0:0]out;
  input \cnt_internal_value_reg[6] ;
  input \lfsr_internal_reg[1] ;
  input [3:0]D;
  input [0:0]\lfsr_internal_reg[4] ;
  input [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;
  input lopt_6;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]\FSM_sequential_current_state_reg[1]_0 ;
  wire KEY_INPUT_MUX_OUT;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]\cnt_internal_value_reg[4]_0 ;
  wire \cnt_internal_value_reg[6] ;
  wire lfsr_change_0;
  wire [0:0]\lfsr_internal_reg[4] ;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire [0:0]out;
  wire [4:0]p_0_in;
  wire [2:0]serial_cnt_out;
  wire \temp_reg_reg[24] ;
  wire \temp_reg_reg[47]_0 ;
  wire \temp_reg_reg[76] ;
  wire \temp_reg_reg[77]_srl19_i_2_n_0 ;
  wire \temp_reg_reg[77]_srl19_i_3_n_0 ;
  wire \temp_reg_reg[77]_srl19_i_6_n_0 ;
  wire \temp_reg_reg[77]_srl19_i_7_n_0 ;
  wire \temp_reg_reg[77]_srl19_i_8_n_0 ;
  wire \xlnx_opt_E[0] ;

  assign \^lopt  = lopt_3;
  assign \^lopt_1  = lopt_4;
  assign \^lopt_2  = lopt_5;
  assign \^lopt_3  = lopt_6;
  assign lopt = serial_cnt_out[2];
  assign lopt_1 = serial_cnt_out[1];
  assign lopt_2 = serial_cnt_out[0];
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(serial_cnt_out[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(serial_cnt_out[0]),
        .I1(serial_cnt_out[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \cnt_internal_value[3]_i_1 
       (.I0(Q[1]),
        .I1(serial_cnt_out[1]),
        .I2(serial_cnt_out[0]),
        .I3(serial_cnt_out[2]),
        .I4(Q[0]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h4AAAAAAA)) 
    \cnt_internal_value[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[0]),
        .I4(serial_cnt_out[1]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(\FSM_sequential_current_state_reg[1]_0 [0]),
        .D(p_0_in[0]),
        .Q(serial_cnt_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(\FSM_sequential_current_state_reg[1]_0 [0]),
        .D(p_0_in[1]),
        .Q(serial_cnt_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(\FSM_sequential_current_state_reg[1]_0 [0]),
        .D(p_0_in[2]),
        .Q(serial_cnt_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(\FSM_sequential_current_state_reg[1]_0 [0]),
        .D(p_0_in[3]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[4]_0 ),
        .CLR(\FSM_sequential_current_state_reg[1]_0 [0]),
        .D(p_0_in[4]),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    lfsr_change_i_1
       (.I0(serial_cnt_out[0]),
        .I1(serial_cnt_out[1]),
        .I2(serial_cnt_out[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(lfsr_change_0));
  LUT1 #(
    .INIT(2'h1)) 
    \lfsr_internal[4]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_0 [0]),
        .O(\cnt_internal_value_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \temp_reg[47]_i_10 
       (.I0(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I1(serial_cnt_out[1]),
        .I2(serial_cnt_out[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\temp_reg_reg[47]_0 ));
  LUT6 #(
    .INIT(64'h9600960096FF9600)) 
    \temp_reg_reg[77]_srl19_i_1 
       (.I0(\temp_reg_reg[77]_srl19_i_2_n_0 ),
        .I1(\temp_reg_reg[77]_srl19_i_3_n_0 ),
        .I2(\temp_reg_reg[24] ),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(out),
        .I5(\cnt_internal_value_reg[6] ),
        .O(KEY_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'hFFFFEAFF00002A00)) 
    \temp_reg_reg[77]_srl19_i_2 
       (.I0(D[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I4(\temp_reg_reg[77]_srl19_i_6_n_0 ),
        .I5(D[0]),
        .O(\temp_reg_reg[77]_srl19_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1D1DE2E21DE2)) 
    \temp_reg_reg[77]_srl19_i_3 
       (.I0(D[2]),
        .I1(\temp_reg_reg[77]_srl19_i_7_n_0 ),
        .I2(D[3]),
        .I3(\lfsr_internal_reg[4] ),
        .I4(serial_cnt_out[0]),
        .I5(\temp_reg_reg[77]_srl19_i_8_n_0 ),
        .O(\temp_reg_reg[77]_srl19_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \temp_reg_reg[77]_srl19_i_6 
       (.I0(Q[1]),
        .I1(serial_cnt_out[2]),
        .I2(serial_cnt_out[1]),
        .I3(serial_cnt_out[0]),
        .O(\temp_reg_reg[77]_srl19_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0C4C)) 
    \temp_reg_reg[77]_srl19_i_7 
       (.I0(Q[0]),
        .I1(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I2(Q[1]),
        .I3(serial_cnt_out[2]),
        .O(\temp_reg_reg[77]_srl19_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg_reg[77]_srl19_i_8 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[1]),
        .O(\temp_reg_reg[77]_srl19_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF005700FF00)) 
    \temp_reg_reg[77]_srl19_i_9 
       (.I0(serial_cnt_out[2]),
        .I1(serial_cnt_out[0]),
        .I2(serial_cnt_out[1]),
        .I3(\FSM_sequential_current_state_reg[1]_0 [1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\temp_reg_reg[76] ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \xlnx_opt_LUT_reg_internal[1]_i_1 
       (.I0(\^lopt ),
        .I1(\^lopt_1 ),
        .I2(\^lopt_2 ),
        .I3(\^lopt_3 ),
        .I4(\lfsr_internal_reg[4] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(\xlnx_opt_E[0] ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \xlnx_opt_LUT_reg_internal[1]_i_1_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(serial_cnt_out[2]),
        .I3(serial_cnt_out[1]),
        .I4(serial_cnt_out[0]),
        .I5(\xlnx_opt_E[0] ),
        .O(E));
endmodule

module IS_SHIFT_REG
   (\temp_reg_reg[47]_0 ,
    D,
    \FSM_onehot_current_state_reg[5] ,
    IS_ce,
    clk_IBUF_BUFG,
    out,
    \cnt_internal_value_reg[5] ,
    Q,
    \FSM_sequential_current_state_reg[1] ,
    start_IBUF,
    \cnt_internal_value_reg[6] ,
    \cnt_internal_value_reg[5]_0 ,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[4] ,
    \temp_reg_reg[0]_0 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \cnt_internal_value_reg[4]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8);
  output \temp_reg_reg[47]_0 ;
  output [2:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input IS_ce;
  input clk_IBUF_BUFG;
  input [4:0]out;
  input \cnt_internal_value_reg[5] ;
  input [0:0]Q;
  input [1:0]\FSM_sequential_current_state_reg[1] ;
  input start_IBUF;
  input \cnt_internal_value_reg[6] ;
  input \cnt_internal_value_reg[5]_0 ;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[4] ;
  input [0:0]\temp_reg_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input [1:0]\cnt_internal_value_reg[4]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;
  input lopt_6;
  input lopt_7;
  input lopt_8;

  wire [2:0]D;
  wire \FSM_onehot_current_state[5]_i_2_n_0 ;
  wire \FSM_onehot_current_state_reg[5] ;
  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
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
  wire \cnt_internal_value_reg[2] ;
  wire [1:0]\cnt_internal_value_reg[4]_0 ;
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
  wire [4:0]out;
  wire start_IBUF;
  wire [0:0]\temp_reg_reg[0]_0 ;
  wire \temp_reg_reg[17]_srl5_n_0 ;
  wire \temp_reg_reg[1]_srl15_n_0 ;
  wire \temp_reg_reg[24]_srl16_n_0 ;
  wire \temp_reg_reg[41]_srl5_n_0 ;
  wire \temp_reg_reg[47]_0 ;
  wire xlnx_opt_IS_INPUT_MUX_OUT;
  wire xlnx_opt_IS_INPUT_MUX_OUT_1;
  wire xlnx_opt_IS_INPUT_MUX_OUT_2;
  wire xlnx_opt_IS_INPUT_MUX_OUT_3;
  wire xlnx_opt_IS_INPUT_MUX_OUT_4;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg[5] ),
        .I1(out[4]),
        .I2(start_IBUF),
        .I3(out[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFD500D500D500)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(IS_out),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .I3(out[3]),
        .I4(\cnt_internal_value_reg[2] ),
        .I5(out[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(out[3]),
        .I2(\cnt_internal_value_reg[6] ),
        .I3(out[4]),
        .I4(\FSM_onehot_current_state_reg[5] ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(IS_out),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .O(\FSM_onehot_current_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSM_onehot_current_state[6]_i_3 
       (.I0(\FSM_sequential_current_state_reg[1] [0]),
        .I1(IS_out),
        .I2(\FSM_sequential_current_state_reg[1] [1]),
        .I3(\cnt_internal_value_reg[5]_0 ),
        .O(\FSM_onehot_current_state_reg[5] ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[47]_i_6 
       (.I0(\FSM_sequential_current_state_reg[1] [1]),
        .I1(\FSM_sequential_current_state_reg[1] [0]),
        .O(\temp_reg_reg[47]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[1]_srl15_n_0 ),
        .Q(IS_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[17]_srl5_n_0 ),
        .Q(IS_n8_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[17]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[17]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_n2_out),
        .Q(\temp_reg_reg[17]_srl5_n_0 ));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[1]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[1]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_n8_out),
        .Q(\temp_reg_reg[1]_srl15_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_n1_out),
        .Q(IS_n2_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[24]_srl16_n_0 ),
        .Q(IS_n1_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[24]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[24]_srl16 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_2n8_out),
        .Q(\temp_reg_reg[24]_srl16_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(\temp_reg_reg[41]_srl5_n_0 ),
        .Q(IS_2n8_out),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_IS_SHIFTREG/temp_reg_reg[41]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[41]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(IS_ce),
        .CLK(clk_IBUF_BUFG),
        .D(IS_2n2_out),
        .Q(\temp_reg_reg[41]_srl5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_2n1_out),
        .Q(IS_2n2_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_ce),
        .D(IS_INPUT_MUX_OUT),
        .Q(IS_2n1_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \xlnx_opt_LUT_temp_reg[47]_i_2 
       (.I0(IS_2n8_out),
        .I1(\FSM_sequential_current_state_reg[1] [1]),
        .I2(\cnt_internal_value_reg[4]_0 [1]),
        .I3(\cnt_internal_value_reg[4]_0 [0]),
        .I4(IS_n8_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \xlnx_opt_LUT_temp_reg[47]_i_2_1 
       (.I0(\FSM_sequential_current_state_reg[1] [1]),
        .I1(\cnt_internal_value_reg[4]_0 [1]),
        .I2(\cnt_internal_value_reg[4]_0 [0]),
        .I3(lopt),
        .I4(lopt_1),
        .I5(lopt_2),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_3));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \xlnx_opt_LUT_temp_reg[47]_i_2_2 
       (.I0(IS_n1_out),
        .I1(IS_2n1_out),
        .I2(xlnx_opt_IS_INPUT_MUX_OUT_4),
        .I3(xlnx_opt_IS_INPUT_MUX_OUT_3),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_2));
  LUT5 #(
    .INIT(32'h99966696)) 
    \xlnx_opt_LUT_temp_reg[47]_i_2_3 
       (.I0(IS_out),
        .I1(\temp_reg_reg[0]_0 ),
        .I2(IS_n2_out),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(IS_2n2_out),
        .O(xlnx_opt_IS_INPUT_MUX_OUT_1));
  LUT6 #(
    .INIT(64'hFFFC898E8ECEDBFD)) 
    \xlnx_opt_LUT_temp_reg[47]_i_2_4 
       (.I0(lopt_3),
        .I1(lopt_4),
        .I2(lopt_5),
        .I3(lopt_6),
        .I4(lopt_7),
        .I5(lopt_8),
        .O(xlnx_opt_IS_INPUT_MUX_OUT));
  LUT6 #(
    .INIT(64'h00AAAA0004AEAE04)) 
    \xlnx_opt_LUT_temp_reg[47]_i_2_5 
       (.I0(\temp_reg_reg[47]_0 ),
        .I1(out[1]),
        .I2(Q),
        .I3(xlnx_opt_IS_INPUT_MUX_OUT_2),
        .I4(xlnx_opt_IS_INPUT_MUX_OUT_1),
        .I5(xlnx_opt_IS_INPUT_MUX_OUT),
        .O(IS_INPUT_MUX_OUT));
endmodule

module KEY_SHIFTREG
   (D,
    \temp_reg_reg[76]_0 ,
    Q,
    \FSM_sequential_current_state_reg[0] ,
    KEY_INPUT_MUX_OUT,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[2] );
  output [3:0]D;
  output \temp_reg_reg[76]_0 ;
  output [0:0]Q;
  input \FSM_sequential_current_state_reg[0] ;
  input KEY_INPUT_MUX_OUT;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[2] ;

  wire [3:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_2n3_out;
  wire KEY_REG_3n3_out;
  wire KEY_REG_n_out;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire \temp_reg_reg[26]_srl25_n_0 ;
  wire \temp_reg_reg[2]_srl22_n_0 ;
  wire \temp_reg_reg[53]_srl22_n_0 ;
  wire \temp_reg_reg[76]_0 ;
  wire \temp_reg_reg[77]_srl19_n_0 ;
  wire \NLW_temp_reg_reg[26]_srl25_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[2]_srl22_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[53]_srl22_Q31_UNCONNECTED ;
  wire \NLW_temp_reg_reg[77]_srl19_Q31_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(D[0]),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[2]_srl22_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(D[1]),
        .Q(KEY_REG_n_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[26]_srl25_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[26]_srl25 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[26]_srl25 
       (.A({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_2n3_out),
        .Q(\temp_reg_reg[26]_srl25_n_0 ),
        .Q31(\NLW_temp_reg_reg[26]_srl25_Q31_UNCONNECTED ));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[2]_srl22 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[2]_srl22 
       (.A({1'b1,1'b0,1'b1,1'b0,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_n_out),
        .Q(\temp_reg_reg[2]_srl22_n_0 ),
        .Q31(\NLW_temp_reg_reg[2]_srl22_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(D[2]),
        .Q(KEY_REG_2n3_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[53]_srl22_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[53]_srl22 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[53]_srl22 
       (.A({1'b1,1'b0,1'b1,1'b0,1'b1}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_REG_3n3_out),
        .Q(\temp_reg_reg[53]_srl22_n_0 ),
        .Q31(\NLW_temp_reg_reg[53]_srl22_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(D[3]),
        .Q(KEY_REG_3n3_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .D(\temp_reg_reg[77]_srl19_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  (* srl_bus_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg " *) 
  (* srl_name = "\Simon_DUT/INST_KEY_REG/temp_reg_reg[77]_srl19 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \temp_reg_reg[77]_srl19 
       (.A({1'b1,1'b0,1'b0,1'b1,1'b0}),
        .CE(\FSM_sequential_current_state_reg[0] ),
        .CLK(clk_IBUF_BUFG),
        .D(KEY_INPUT_MUX_OUT),
        .Q(\temp_reg_reg[77]_srl19_n_0 ),
        .Q31(\NLW_temp_reg_reg[77]_srl19_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \temp_reg_reg[77]_srl19_i_4 
       (.I0(KEY_REG_n_out),
        .I1(Q),
        .I2(KEY_REG_2n3_out),
        .I3(\cnt_internal_value_reg[2] ),
        .I4(KEY_REG_3n3_out),
        .O(\temp_reg_reg[76]_0 ));
endmodule

module Simon_48_96_bit_serial
   (D,
    \FSM_onehot_current_state_reg[5] ,
    clk_IBUF_BUFG,
    out,
    \cnt_internal_value_reg[6] ,
    \cnt_internal_value_reg[5] ,
    Q,
    start_IBUF,
    \cnt_internal_value_reg[6]_0 ,
    \cnt_internal_value_reg[5]_0 ,
    \cnt_internal_value_reg[2] ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [2:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input clk_IBUF_BUFG;
  input [5:0]out;
  input \cnt_internal_value_reg[6] ;
  input \cnt_internal_value_reg[5] ;
  input [0:0]Q;
  input start_IBUF;
  input \cnt_internal_value_reg[6]_0 ;
  input \cnt_internal_value_reg[5]_0 ;
  input \cnt_internal_value_reg[2] ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire [2:0]D;
  wire \FSM_onehot_current_state_reg[5] ;
  wire INST_IS_SHIFTREG_n_0;
  wire INST_KEY_REG_n_4;
  wire INST_SERIAL_CNT_n_5;
  wire INST_SERIAL_CNT_n_6;
  wire INST_lfsr_n_3;
  wire IS_ce;
  wire KEY_INPUT_MUX_OUT;
  wire KEY_REG_1_out;
  wire KEY_REG_2n4_out;
  wire KEY_REG_3n4_out;
  wire KEY_REG_OUT;
  wire KEY_REG_n1_out;
  wire [0:0]Q;
  wire busy;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[5]_0 ;
  wire \cnt_internal_value_reg[6] ;
  wire \cnt_internal_value_reg[6]_0 ;
  (* RTL_KEEP = "yes" *) wire [1:1]current_state;
  wire end_encrypt_ce;
  wire end_encrypt_out;
  wire lfsr_change;
  wire lfsr_change_0;
  wire [4:4]lfsr_parallel_out;
  (* RTL_KEEP = "yes" *) wire lfsr_rst;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [1:0]nx_state;
  wire [5:0]out;
  wire [4:3]serial_cnt_out;
  wire start_IBUF;
  wire \NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[4]_UNCONNECTED ;
  wire \NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[5]_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_lfsr_internal_reg[1]_UNCONNECTED ;
  wire \NLW_INST_SERIAL_CNT_temp_reg_reg[47]_UNCONNECTED ;
  wire \NLW_INST_lfsr_reg_internal_reg[1]_UNCONNECTED ;

  assign \^lopt_3  = lopt;
  assign \^lopt_4  = lopt_1;
  assign \^lopt_5  = lopt_2;
  assign lopt_6 = lopt_3;
  assign lopt_7 = lopt_4;
  assign lopt_8 = lopt_5;
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
  end_encrypt_shift_reg INST_END_ENCRYPT_FSR
       (.E(end_encrypt_ce),
        .Q(end_encrypt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(lfsr_rst));
  IS_SHIFT_REG INST_IS_SHIFTREG
       (.D(D),
        .\FSM_onehot_current_state_reg[5] (\FSM_onehot_current_state_reg[5] ),
        .\FSM_sequential_current_state_reg[1] ({current_state,lfsr_rst}),
        .\FSM_sequential_current_state_reg[1]_0 (INST_SERIAL_CNT_n_5),
        .IS_ce(IS_ce),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[4] (\NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[4]_UNCONNECTED ),
        .\cnt_internal_value_reg[4]_0 (serial_cnt_out),
        .\cnt_internal_value_reg[5] (\NLW_INST_IS_SHIFTREG_cnt_internal_value_reg[5]_UNCONNECTED ),
        .\cnt_internal_value_reg[5]_0 (\cnt_internal_value_reg[5]_0 ),
        .\cnt_internal_value_reg[6] (\cnt_internal_value_reg[6]_0 ),
        .lopt(\^lopt ),
        .lopt_1(\^lopt_1 ),
        .lopt_2(\^lopt_2 ),
        .lopt_3(\^lopt_3 ),
        .lopt_4(\^lopt_4 ),
        .lopt_5(\^lopt_5 ),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .out({out[5:2],out[0]}),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[0]_0 (KEY_REG_OUT),
        .\temp_reg_reg[47]_0 (INST_IS_SHIFTREG_n_0));
  KEY_SHIFTREG INST_KEY_REG
       (.D({KEY_REG_3n4_out,KEY_REG_2n4_out,KEY_REG_n1_out,KEY_REG_1_out}),
        .\FSM_sequential_current_state_reg[0] (INST_lfsr_n_3),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .Q(KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_SERIAL_CNT_n_6),
        .\temp_reg_reg[76]_0 (INST_KEY_REG_n_4));
  CNT24 INST_SERIAL_CNT
       (.D({KEY_REG_3n4_out,KEY_REG_2n4_out,KEY_REG_n1_out,KEY_REG_1_out}),
        .E(end_encrypt_ce),
        .\FSM_sequential_current_state_reg[1] (INST_IS_SHIFTREG_n_0),
        .\FSM_sequential_current_state_reg[1]_0 ({current_state,lfsr_rst}),
        .KEY_INPUT_MUX_OUT(KEY_INPUT_MUX_OUT),
        .Q(serial_cnt_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[4]_0 (busy),
        .\cnt_internal_value_reg[6] (\cnt_internal_value_reg[6] ),
        .lfsr_change_0(lfsr_change_0),
        .\lfsr_internal_reg[1] (\NLW_INST_SERIAL_CNT_lfsr_internal_reg[1]_UNCONNECTED ),
        .\lfsr_internal_reg[4] (lfsr_parallel_out),
        .lopt(\^lopt ),
        .lopt_1(\^lopt_1 ),
        .lopt_2(\^lopt_2 ),
        .lopt_3(lopt_9),
        .lopt_4(lopt_10),
        .lopt_5(lopt_11),
        .lopt_6(lopt_12),
        .out(out[2]),
        .\temp_reg_reg[24] (INST_KEY_REG_n_4),
        .\temp_reg_reg[47] (\NLW_INST_SERIAL_CNT_temp_reg_reg[47]_UNCONNECTED ),
        .\temp_reg_reg[47]_0 (INST_SERIAL_CNT_n_5),
        .\temp_reg_reg[76] (INST_SERIAL_CNT_n_6));
  lfsr INST_lfsr
       (.CLK(lfsr_change),
        .D(nx_state[0]),
        .E(busy),
        .\FSM_onehot_current_state_reg[3] (out[3]),
        .\FSM_sequential_current_state_reg[1] (INST_IS_SHIFTREG_n_0),
        .IS_ce(IS_ce),
        .Q(end_encrypt_out),
        .\lfsr_internal_reg[0]_0 (lfsr_parallel_out),
        .lopt(lopt_9),
        .lopt_1(lopt_10),
        .lopt_2(lopt_11),
        .lopt_3(lopt_12),
        .out({current_state,lfsr_rst}),
        .\reg_internal_reg[1] (\NLW_INST_lfsr_reg_internal_reg[1]_UNCONNECTED ),
        .\temp_reg_reg[0] (INST_lfsr_n_3));
  FDRE #(
    .INIT(1'b0)) 
    lfsr_change_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lfsr_change_0),
        .Q(lfsr_change),
        .R(1'b0));
endmodule

(* Datapath = "24" *) (* ECO_CHECKSUM = "20fba81c" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_8;
  wire Simon_DUT_n_0;
  wire Simon_DUT_n_1;
  wire Simon_DUT_n_2;
  wire Simon_DUT_n_3;
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
  wire \NLW_INST_CNT_temp_reg_reg[47]_UNCONNECTED ;
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
        .D(Simon_DUT_n_2),
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
        .D(Simon_DUT_n_0),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_3),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(rst_IBUF));
  CNT INST_CNT
       (.D({INST_CNT_n_3,INST_CNT_n_4,INST_CNT_n_5}),
        .\FSM_onehot_current_state_reg[3] (INST_CNT_n_8),
        .\FSM_onehot_current_state_reg[5] (INST_CNT_n_7),
        .\FSM_onehot_current_state_reg[6] (INST_CNT_n_6),
        .\FSM_sequential_current_state_reg[0] (Simon_DUT_n_3),
        .Q(cnt_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .out({\FSM_onehot_current_state_reg_n_0_[6] ,\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,\FSM_onehot_current_state_reg_n_0_[2] ,data_ready_W}),
        .\temp_reg_reg[47] (\NLW_INST_CNT_temp_reg_reg[47]_UNCONNECTED ),
        .\temp_reg_reg[76] (INST_CNT_n_2));
  Simon_48_96_bit_serial Simon_DUT
       (.D({Simon_DUT_n_0,Simon_DUT_n_1,Simon_DUT_n_2}),
        .\FSM_onehot_current_state_reg[5] (Simon_DUT_n_3),
        .Q(cnt_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_CNT_n_8),
        .\cnt_internal_value_reg[5] (\NLW_Simon_DUT_cnt_internal_value_reg[5]_UNCONNECTED ),
        .\cnt_internal_value_reg[5]_0 (INST_CNT_n_7),
        .\cnt_internal_value_reg[6] (INST_CNT_n_2),
        .\cnt_internal_value_reg[6]_0 (INST_CNT_n_6),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
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
   (IS_ce,
    \lfsr_internal_reg[0]_0 ,
    \reg_internal_reg[1] ,
    \temp_reg_reg[0] ,
    D,
    Q,
    out,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_onehot_current_state_reg[3] ,
    E,
    CLK,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output IS_ce;
  output [0:0]\lfsr_internal_reg[0]_0 ;
  output \reg_internal_reg[1] ;
  output \temp_reg_reg[0] ;
  output [0:0]D;
  input [0:0]Q;
  input [1:0]out;
  input \FSM_sequential_current_state_reg[1] ;
  input [0:0]\FSM_onehot_current_state_reg[3] ;
  input [0:0]E;
  input CLK;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_current_state_reg[3] ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire IS_ce;
  wire [0:0]Q;
  wire [0:0]\lfsr_internal_reg[0]_0 ;
  wire [3:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [1:1]p_0_out;
  wire [0:0]p_2_out;
  wire \temp_reg[47]_i_3_n_0 ;
  wire \temp_reg_reg[0] ;

  assign lopt = lfsr_parallel_out[1];
  assign lopt_1 = lfsr_parallel_out[0];
  assign lopt_2 = lfsr_parallel_out[3];
  assign lopt_3 = lfsr_parallel_out[2];
  LUT6 #(
    .INIT(64'hEFEEEFEE4444EEEE)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I3(Q),
        .I4(\FSM_onehot_current_state_reg[3] ),
        .I5(out[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(out[1]),
        .I1(lfsr_parallel_out[1]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[3]),
        .I4(lfsr_parallel_out[2]),
        .I5(\lfsr_internal_reg[0]_0 ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(\lfsr_internal_reg[0]_0 ),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[3]),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[1]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(lfsr_parallel_out[2]),
        .I1(\lfsr_internal_reg[0]_0 ),
        .O(p_2_out));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[2]_i_1 
       (.I0(lfsr_parallel_out[1]),
        .I1(lfsr_parallel_out[0]),
        .O(p_0_out));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(out[0]),
        .D(p_2_out),
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
        .D(p_0_out),
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
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(lfsr_parallel_out[3]),
        .PRE(out[0]),
        .Q(\lfsr_internal_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h3322332233220322)) 
    \temp_reg[47]_i_1 
       (.I0(\temp_reg[47]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(Q),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .O(IS_ce));
  LUT6 #(
    .INIT(64'h5555515555515555)) 
    \temp_reg[47]_i_3 
       (.I0(out[0]),
        .I1(lfsr_parallel_out[2]),
        .I2(\lfsr_internal_reg[0]_0 ),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[1]),
        .I5(lfsr_parallel_out[3]),
        .O(\temp_reg[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \temp_reg[75]_i_1 
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
