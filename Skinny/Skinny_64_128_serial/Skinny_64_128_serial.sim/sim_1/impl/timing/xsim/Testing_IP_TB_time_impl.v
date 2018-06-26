// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jun 21 15:14:03 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Skinny/Skinny_64_128_serial/Skinny_64_128_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\current_state_reg[2] ,
    \current_state_reg[0] ,
    \temp_reg_reg[14] ,
    Q,
    \temp_reg_reg[13] ,
    \temp_reg_reg[12] ,
    \temp_reg_reg[28] ,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    \temp_reg_reg[30] ,
    \temp_reg_reg[29] ,
    \temp_reg_reg[31] ,
    \temp_reg_reg[15] ,
    \temp_reg_reg[12]_0 ,
    current_state,
    rst_IBUF,
    \FSM_sequential_current_state_reg[1] ,
    \temp_reg_reg[13]_0 ,
    \FSM_sequential_current_state_reg[2] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \temp_reg_reg[14]_0 ,
    \current_state_reg[2]_2 ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1);
  output \current_state_reg[2] ;
  output \current_state_reg[0] ;
  output \temp_reg_reg[14] ;
  output [2:0]Q;
  output \temp_reg_reg[13] ;
  output \temp_reg_reg[12] ;
  output \temp_reg_reg[28] ;
  output \current_state_reg[2]_0 ;
  output \current_state_reg[2]_1 ;
  output \temp_reg_reg[30] ;
  output \temp_reg_reg[29] ;
  output \temp_reg_reg[31] ;
  output \temp_reg_reg[15] ;
  input \temp_reg_reg[12]_0 ;
  input [2:0]current_state;
  input rst_IBUF;
  input \FSM_sequential_current_state_reg[1] ;
  input \temp_reg_reg[13]_0 ;
  input \FSM_sequential_current_state_reg[2] ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \temp_reg_reg[14]_0 ;
  input \current_state_reg[2]_2 ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;

  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire [2:0]Q;
  wire ce;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[0]_i_1__0_n_0 ;
  wire \cnt_internal_value[2]_i_1__0_n_0 ;
  wire \cnt_internal_value[3]_i_1__0_n_0 ;
  wire \cnt_internal_value[4]_i_3__0_n_0 ;
  wire [2:1]cnt_out_W;
  wire [2:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[2]_i_12_n_0 ;
  wire \current_state[2]_i_13_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_9_n_0 ;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire \current_state_reg[2]_2 ;
  wire [4:1]plusOp__0;
  wire rst_IBUF;
  wire \temp_reg_reg[12] ;
  wire \temp_reg_reg[12]_0 ;
  wire \temp_reg_reg[14] ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[15] ;
  wire \temp_reg_reg[28] ;
  wire \temp_reg_reg[29] ;
  wire \temp_reg_reg[30] ;
  wire \temp_reg_reg[31] ;

  assign lopt = cnt_out_W[2];
  assign lopt_1 = cnt_out_W[1];
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(Q[0]),
        .O(\cnt_internal_value[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(Q[0]),
        .I1(cnt_out_W[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(Q[0]),
        .O(\cnt_internal_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(Q[1]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[2]),
        .I3(Q[0]),
        .O(\cnt_internal_value[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hA4)) 
    \cnt_internal_value[4]_i_1__0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(ce));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_internal_value[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(cnt_out_W[1]),
        .I3(Q[1]),
        .I4(cnt_out_W[2]),
        .O(plusOp__0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_internal_value[4]_i_3__0 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(\cnt_internal_value[4]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[4]_i_3__0_n_0 ),
        .D(\cnt_internal_value[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[4]_i_3__0_n_0 ),
        .D(plusOp__0[1]),
        .Q(cnt_out_W[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[4]_i_3__0_n_0 ),
        .D(\cnt_internal_value[2]_i_1__0_n_0 ),
        .Q(cnt_out_W[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[4]_i_3__0_n_0 ),
        .D(\cnt_internal_value[3]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[4]_i_3__0_n_0 ),
        .D(plusOp__0[4]),
        .Q(Q[2]));
  LUT5 #(
    .INIT(32'hFFFF04CC)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(cnt_out_W[1]),
        .I3(cnt_out_W[2]),
        .I4(Q[0]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111111)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\temp_reg_reg[12]_0 ),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(\current_state[2]_i_4_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[2] ));
  LUT5 #(
    .INIT(32'hEFFAAFAB)) 
    \current_state[2]_i_12 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(cnt_out_W[2]),
        .I3(Q[0]),
        .I4(cnt_out_W[1]),
        .O(\current_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \current_state[2]_i_13 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(current_state[0]),
        .I3(cnt_out_W[2]),
        .I4(Q[2]),
        .I5(cnt_out_W[1]),
        .O(\current_state[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h7EBEEEBA)) 
    \current_state[2]_i_16 
       (.I0(Q[2]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\current_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h6BBBEBBB)) 
    \current_state[2]_i_18 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(cnt_out_W[2]),
        .I3(Q[1]),
        .I4(cnt_out_W[1]),
        .O(\current_state_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \current_state[2]_i_2 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6FF6FFFFFFFF)) 
    \current_state[2]_i_4 
       (.I0(\current_state[2]_i_9_n_0 ),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(\FSM_sequential_current_state_reg[2]_0 ),
        .I3(\current_state[2]_i_12_n_0 ),
        .I4(\current_state[2]_i_13_n_0 ),
        .I5(\temp_reg_reg[14]_0 ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEAABABA)) 
    \current_state[2]_i_9 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[1]),
        .I4(Q[0]),
        .O(\current_state[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h08280AAA)) 
    \temp_reg_reg[10]_srl3_i_5 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(Q[0]),
        .I2(cnt_out_W[2]),
        .I3(Q[1]),
        .I4(cnt_out_W[1]),
        .O(\temp_reg_reg[14] ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg_reg[11]_srl3_i_9 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[2]),
        .O(\temp_reg_reg[15] ));
  LUT6 #(
    .INIT(64'h5000054144514055)) 
    \temp_reg_reg[24]_srl7_i_2__0 
       (.I0(\current_state_reg[2]_2 ),
        .I1(Q[2]),
        .I2(cnt_out_W[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(cnt_out_W[1]),
        .O(\temp_reg_reg[28] ));
  LUT6 #(
    .INIT(64'h000000003EE005F6)) 
    \temp_reg_reg[25]_srl7_i_2__0 
       (.I0(cnt_out_W[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(cnt_out_W[2]),
        .I4(Q[1]),
        .I5(\current_state_reg[2]_2 ),
        .O(\temp_reg_reg[29] ));
  LUT6 #(
    .INIT(64'h0000545151110140)) 
    \temp_reg_reg[26]_srl7_i_2__0 
       (.I0(\current_state_reg[2]_2 ),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[2]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\temp_reg_reg[30] ));
  LUT6 #(
    .INIT(64'h0440114455154511)) 
    \temp_reg_reg[27]_srl7_i_3 
       (.I0(\current_state_reg[2]_2 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(cnt_out_W[1]),
        .I5(cnt_out_W[2]),
        .O(\temp_reg_reg[31] ));
  LUT5 #(
    .INIT(32'h220A0A20)) 
    \temp_reg_reg[8]_srl3_i_3 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(cnt_out_W[2]),
        .I2(cnt_out_W[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\temp_reg_reg[12] ));
endmodule

module IS_shift_reg
   (\temp_reg_reg[15]_0 ,
    IS_serial_output_first_row_buf,
    \current_state_reg[1] ,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    IS_serial_in_fourth_row_buf,
    IS_serial_in_second_row_buf,
    \current_state_reg[2] ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[15]_1 ,
    \temp_reg_reg[14]_0 ,
    \temp_reg_reg[14]_1 ,
    IS_enable1_buf,
    IS_serial_in_first_row_buf,
    clk_IBUF_BUFG,
    current_state,
    start_IBUF,
    rst_IBUF,
    IS_serial_output_third_row_buf,
    out,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[0] ,
    IS_serial_output_fourth_row_buf,
    IS_serial_output_second_row_buf,
    \cnt_internal_value_reg[4] ,
    \lfsr_internal_reg[0] ,
    \FSM_sequential_current_state_reg[2] ,
    \cnt_internal_value_reg[4]_0 ,
    \lfsr_internal_reg[2] ,
    \temp_reg_reg[15]_2 ,
    \FSM_sequential_current_state_reg[1] ,
    \lfsr_internal_reg[0]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output \temp_reg_reg[15]_0 ;
  output [1:0]IS_serial_output_first_row_buf;
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[1]_1 ;
  output [0:0]IS_serial_in_fourth_row_buf;
  output [3:0]IS_serial_in_second_row_buf;
  output \current_state_reg[2] ;
  output \temp_reg_reg[12]_0 ;
  output \temp_reg_reg[13]_0 ;
  output \temp_reg_reg[15]_1 ;
  output \temp_reg_reg[14]_0 ;
  output \temp_reg_reg[14]_1 ;
  input IS_enable1_buf;
  input [3:0]IS_serial_in_first_row_buf;
  input clk_IBUF_BUFG;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input [3:0]IS_serial_output_third_row_buf;
  input [2:0]out;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[0] ;
  input [0:0]IS_serial_output_fourth_row_buf;
  input [3:0]IS_serial_output_second_row_buf;
  input \cnt_internal_value_reg[4] ;
  input \lfsr_internal_reg[0] ;
  input \FSM_sequential_current_state_reg[2] ;
  input \cnt_internal_value_reg[4]_0 ;
  input \lfsr_internal_reg[2] ;
  input \temp_reg_reg[15]_2 ;
  input \FSM_sequential_current_state_reg[1] ;
  input [0:0]\lfsr_internal_reg[0]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire IS_enable1_buf;
  wire [3:0]IS_serial_in_first_row_buf;
  wire [0:0]IS_serial_in_fourth_row_buf;
  wire [3:0]IS_serial_in_second_row_buf;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [0:0]IS_serial_output_fourth_row_buf;
  wire [3:0]IS_serial_output_second_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[4] ;
  wire \cnt_internal_value_reg[4]_0 ;
  wire [2:0]current_state;
  wire \current_state[2]_i_6_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[2] ;
  wire \lfsr_internal_reg[0] ;
  wire [0:0]\lfsr_internal_reg[0]_0 ;
  wire \lfsr_internal_reg[2] ;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [2:0]out;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire \temp_reg_reg[12]_0 ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[14]_1 ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[15]_2 ;
  wire \temp_reg_reg[8]_srl3_n_0 ;
  wire \temp_reg_reg[9]_srl3_n_0 ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[0] ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1 ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA2AA)) 
    \current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(start_IBUF),
        .I4(\current_state_reg[1]_1 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAA6AAA600060000)) 
    \current_state[2]_i_14 
       (.I0(\cnt_internal_value_reg[4] ),
        .I1(IS_serial_output_first_row_buf[1]),
        .I2(\lfsr_internal_reg[0] ),
        .I3(\FSM_sequential_current_state_reg[2] ),
        .I4(IS_serial_output_first_row_buf[0]),
        .I5(\cnt_internal_value_reg[4]_0 ),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000C0D00000)) 
    \current_state[2]_i_3 
       (.I0(\current_state_reg[1] ),
        .I1(\lfsr_internal_reg[2] ),
        .I2(\current_state[2]_i_6_n_0 ),
        .I3(\temp_reg_reg[15]_2 ),
        .I4(IS_serial_output_first_row_buf[1]),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(\current_state_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_state[2]_i_6 
       (.I0(IS_serial_output_first_row_buf[0]),
        .I1(\lfsr_internal_reg[0]_0 ),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\current_state[2]_i_6_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_first_row_buf[2]),
        .Q(\temp_reg_reg[10]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h333B3008033B0008)) 
    \temp_reg_reg[10]_srl3_i_1__0 
       (.I0(IS_serial_output_first_row_buf[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[2]),
        .I5(IS_serial_output_second_row_buf[2]),
        .O(IS_serial_in_second_row_buf[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    \temp_reg_reg[10]_srl3_i_2__0 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .O(\temp_reg_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \temp_reg_reg[10]_srl3_i_3__0 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\temp_reg_reg[14]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_first_row_buf[3]),
        .Q(\temp_reg_reg[11]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h303333BB30000088)) 
    \temp_reg_reg[11]_srl3_i_2__0 
       (.I0(\temp_reg_reg[15]_0 ),
        .I1(out[2]),
        .I2(IS_serial_output_second_row_buf[3]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(IS_serial_output_third_row_buf[3]),
        .O(IS_serial_in_second_row_buf[3]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[8]_srl3_n_0 ),
        .Q(\current_state_reg[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[9]_srl3_n_0 ),
        .Q(IS_serial_output_first_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[10]_srl3_n_0 ),
        .Q(IS_serial_output_first_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[11]_srl3_n_0 ),
        .Q(\temp_reg_reg[15]_0 ),
        .R(1'b0));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_first_row_buf[0]),
        .Q(\temp_reg_reg[8]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h333B3008033B0008)) 
    \temp_reg_reg[8]_srl3_i_1__0 
       (.I0(\current_state_reg[1] ),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[0]),
        .I5(IS_serial_output_second_row_buf[0]),
        .O(IS_serial_in_second_row_buf[0]));
  LUT6 #(
    .INIT(64'hEEFFEFFFEEFEFEEF)) 
    \temp_reg_reg[8]_srl3_i_7 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(IS_serial_output_first_row_buf[0]),
        .I4(\temp_reg_reg[15]_0 ),
        .I5(\current_state_reg[1] ),
        .O(\temp_reg_reg[12]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_first_row_buf[1]),
        .Q(\temp_reg_reg[9]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h333B3008033B0008)) 
    \temp_reg_reg[9]_srl3_i_1__0 
       (.I0(IS_serial_output_first_row_buf[0]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[1]),
        .I5(IS_serial_output_second_row_buf[1]),
        .O(IS_serial_in_second_row_buf[1]));
  LUT6 #(
    .INIT(64'h1100110011010010)) 
    \temp_reg_reg[9]_srl3_i_7 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(\temp_reg_reg[15]_0 ),
        .I3(IS_serial_output_first_row_buf[1]),
        .I4(\current_state_reg[1] ),
        .I5(IS_serial_output_first_row_buf[0]),
        .O(\temp_reg_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEEF)) 
    \xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(IS_serial_output_first_row_buf[0]),
        .I4(\temp_reg_reg[15]_0 ),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_2 ));
  LUT6 #(
    .INIT(64'hEFFF10FF10FFEFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_1 ));
  LUT6 #(
    .INIT(64'hFDCCECCCECCCFDCC)) 
    \xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1_2 
       (.I0(out[0]),
        .I1(\cnt_internal_value_reg[0] ),
        .I2(IS_serial_output_fourth_row_buf),
        .I3(out[1]),
        .I4(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_2 ),
        .I5(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_1 ),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[0] ));
  LUT6 #(
    .INIT(64'h3337337300040040)) 
    \xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1_3 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[2]),
        .I5(\xlnx_opt_IS_serial_in_fourth_row_buf[0] ),
        .O(IS_serial_in_fourth_row_buf));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_1
   (\temp_reg_reg[14]_0 ,
    \temp_reg_reg[15]_0 ,
    IS_serial_in_first_row_buf,
    IS_serial_in_third_row_buf,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[13]_1 ,
    IS_enable4_buf,
    \temp_reg_reg[14]_1 ,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[2] ,
    out,
    \temp_reg_reg[63] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \cnt_internal_value_reg[1] ,
    Q,
    \cnt_internal_value_reg[4] ,
    \cnt_internal_value_reg[2] ,
    \FSM_sequential_current_state_reg[2]_1 ,
    IS_serial_output_second_row_buf,
    IS_serial_output_third_row_buf,
    current_state,
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
    lopt_15,
    lopt_16,
    lopt_17,
    lopt_18);
  output [2:0]\temp_reg_reg[14]_0 ;
  output \temp_reg_reg[15]_0 ;
  output [0:0]IS_serial_in_first_row_buf;
  output [3:0]IS_serial_in_third_row_buf;
  output \temp_reg_reg[13]_0 ;
  output \temp_reg_reg[13]_1 ;
  input IS_enable4_buf;
  input [0:0]\temp_reg_reg[14]_1 ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_current_state_reg[2] ;
  input [2:0]out;
  input \temp_reg_reg[63] ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \cnt_internal_value_reg[1] ;
  input [2:0]Q;
  input \cnt_internal_value_reg[4] ;
  input \cnt_internal_value_reg[2] ;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input [3:0]IS_serial_output_second_row_buf;
  input [3:0]IS_serial_output_third_row_buf;
  input [1:0]current_state;
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
  input lopt_16;
  input lopt_17;
  input lopt_18;

  wire [0:0]\FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire IS_enable4_buf;
  wire [0:0]IS_serial_in_first_row_buf;
  wire [3:0]IS_serial_in_fourth_row_buf;
  wire [3:0]IS_serial_in_third_row_buf;
  wire [3:3]IS_serial_output_fourth_row_buf;
  wire [3:0]IS_serial_output_second_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[2] ;
  wire [1:0]current_state;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_15;
  wire lopt_16;
  wire lopt_17;
  wire lopt_18;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [2:0]out;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[13]_1 ;
  wire [2:0]\temp_reg_reg[14]_0 ;
  wire [0:0]\temp_reg_reg[14]_1 ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[8]_srl3_i_4_n_0 ;
  wire \temp_reg_reg[8]_srl3_n_0 ;
  wire \temp_reg_reg[9]_srl3_n_0 ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[0] ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1 ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2 ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[0]_3 ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[3] ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[3]_1 ;
  wire \xlnx_opt_IS_serial_in_fourth_row_buf[3]_2 ;

  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[14]_1 ),
        .Q(\temp_reg_reg[10]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CCCAAAAAA)) 
    \temp_reg_reg[10]_srl3_i_1__2 
       (.I0(\temp_reg_reg[14]_0 [2]),
        .I1(IS_serial_output_third_row_buf[2]),
        .I2(IS_serial_output_second_row_buf[2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(IS_serial_in_third_row_buf[2]));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_fourth_row_buf[3]),
        .Q(\temp_reg_reg[11]_srl3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \temp_reg_reg[11]_srl3_i_10 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(Q[2]),
        .O(\temp_reg_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hCCCCCFCCCFCC6F6C)) 
    \temp_reg_reg[11]_srl3_i_2__1 
       (.I0(IS_serial_output_fourth_row_buf),
        .I1(\FSM_sequential_current_state_reg[2]_0 ),
        .I2(out[2]),
        .I3(IS_serial_output_second_row_buf[3]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_first_row_buf));
  LUT6 #(
    .INIT(64'h0000003CCCAAAAAA)) 
    \temp_reg_reg[11]_srl3_i_2__2 
       (.I0(IS_serial_output_fourth_row_buf),
        .I1(IS_serial_output_third_row_buf[3]),
        .I2(IS_serial_output_second_row_buf[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(IS_serial_in_third_row_buf[3]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[8]_srl3_n_0 ),
        .Q(\temp_reg_reg[14]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[9]_srl3_n_0 ),
        .Q(\temp_reg_reg[14]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[10]_srl3_n_0 ),
        .Q(\temp_reg_reg[14]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[11]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf),
        .R(1'b0));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_fourth_row_buf[0]),
        .Q(\temp_reg_reg[8]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CCCAAAAAA)) 
    \temp_reg_reg[8]_srl3_i_1__2 
       (.I0(\temp_reg_reg[14]_0 [0]),
        .I1(IS_serial_output_third_row_buf[0]),
        .I2(IS_serial_output_second_row_buf[0]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(IS_serial_in_third_row_buf[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_reg_reg[8]_srl3_i_4 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\temp_reg_reg[8]_srl3_i_4_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\FSM_sequential_current_state_reg[2] ),
        .Q(\temp_reg_reg[9]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CCCAAAAAA)) 
    \temp_reg_reg[9]_srl3_i_1__2 
       (.I0(\temp_reg_reg[14]_0 [1]),
        .I1(IS_serial_output_third_row_buf[1]),
        .I2(IS_serial_output_second_row_buf[1]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(IS_serial_in_third_row_buf[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg_reg[9]_srl3_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\temp_reg_reg[13]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \temp_reg_reg[9]_srl3_i_9 
       (.I0(\temp_reg_reg[14]_0 [1]),
        .I1(out[1]),
        .I2(out[0]),
        .O(\temp_reg_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hFFFEEEEF)) 
    \xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(lopt),
        .I3(lopt_1),
        .I4(lopt_2),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[3]_2 ));
  LUT6 #(
    .INIT(64'h9F9F6F9F60609060)) 
    \xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2_1 
       (.I0(lopt_3),
        .I1(lopt_4),
        .I2(lopt_5),
        .I3(lopt_6),
        .I4(lopt_7),
        .I5(\xlnx_opt_IS_serial_in_fourth_row_buf[3]_2 ),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[3]_1 ));
  LUT6 #(
    .INIT(64'hFF8F8F8F88888888)) 
    \xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2_2 
       (.I0(\temp_reg_reg[8]_srl3_i_4_n_0 ),
        .I1(IS_serial_output_fourth_row_buf),
        .I2(\cnt_internal_value_reg[1] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[3] ));
  LUT6 #(
    .INIT(64'hFF33FF33FF10FF00)) 
    \xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2_3 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(\FSM_sequential_current_state_reg[2]_0 ),
        .I4(\xlnx_opt_IS_serial_in_fourth_row_buf[3]_1 ),
        .I5(\xlnx_opt_IS_serial_in_fourth_row_buf[3] ),
        .O(IS_serial_in_fourth_row_buf[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3C5A)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1 
       (.I0(lopt_8),
        .I1(lopt_9),
        .I2(lopt_10),
        .I3(lopt_11),
        .I4(lopt_12),
        .I5(lopt_13),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_3 ));
  LUT4 #(
    .INIT(16'hFEEF)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_1 
       (.I0(lopt_13),
        .I1(lopt_14),
        .I2(lopt_15),
        .I3(lopt_16),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_2 ));
  LUT6 #(
    .INIT(64'h05003700FA00C800)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_2 
       (.I0(lopt_10),
        .I1(lopt_14),
        .I2(lopt_17),
        .I3(lopt_18),
        .I4(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_3 ),
        .I5(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_2 ),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_1 ));
  LUT5 #(
    .INIT(32'hFFFDFDFF)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_3 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(IS_serial_output_third_row_buf[0]),
        .I4(lopt_2),
        .O(\xlnx_opt_IS_serial_in_fourth_row_buf[0] ));
  LUT6 #(
    .INIT(64'h55555444FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_4 
       (.I0(out[2]),
        .I1(\cnt_internal_value_reg[2] ),
        .I2(\temp_reg_reg[14]_0 [0]),
        .I3(\temp_reg_reg[8]_srl3_i_4_n_0 ),
        .I4(\xlnx_opt_IS_serial_in_fourth_row_buf[0]_1 ),
        .I5(\xlnx_opt_IS_serial_in_fourth_row_buf[0] ),
        .O(IS_serial_in_fourth_row_buf[0]));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_2
   (IS_serial_output_second_row_buf,
    IS_serial_in_first_row_buf,
    IS_enable2_buf,
    IS_serial_in_second_row_buf,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[2] ,
    \temp_reg_reg[14]_0 ,
    \FSM_sequential_current_state_reg[1] ,
    IS_serial_output_third_row_buf,
    IS_serial_output_first_row_buf,
    \temp_reg_reg[12]_0 );
  output [3:0]IS_serial_output_second_row_buf;
  output [2:0]IS_serial_in_first_row_buf;
  input IS_enable2_buf;
  input [3:0]IS_serial_in_second_row_buf;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[2] ;
  input [2:0]\temp_reg_reg[14]_0 ;
  input \FSM_sequential_current_state_reg[1] ;
  input [2:0]IS_serial_output_third_row_buf;
  input [1:0]IS_serial_output_first_row_buf;
  input [0:0]\temp_reg_reg[12]_0 ;

  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire IS_enable2_buf;
  wire [2:0]IS_serial_in_first_row_buf;
  wire [3:0]IS_serial_in_second_row_buf;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [3:0]IS_serial_output_second_row_buf;
  wire [2:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire [0:0]\temp_reg_reg[12]_0 ;
  wire [2:0]\temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[8]_srl3_n_0 ;
  wire \temp_reg_reg[9]_srl3_n_0 ;

  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_second_row_buf[2]),
        .Q(\temp_reg_reg[10]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'hF4444F444F44F444)) 
    \temp_reg_reg[10]_srl3_i_1__1 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(IS_serial_output_second_row_buf[2]),
        .I2(\temp_reg_reg[14]_0 [2]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(IS_serial_output_third_row_buf[2]),
        .I5(IS_serial_output_first_row_buf[1]),
        .O(IS_serial_in_first_row_buf[2]));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_second_row_buf[3]),
        .Q(\temp_reg_reg[11]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[8]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[9]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[10]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[11]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[3]),
        .R(1'b0));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_second_row_buf[0]),
        .Q(\temp_reg_reg[8]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'hF4444F444F44F444)) 
    \temp_reg_reg[8]_srl3_i_1__1 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(IS_serial_output_second_row_buf[0]),
        .I2(\temp_reg_reg[14]_0 [0]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(IS_serial_output_third_row_buf[0]),
        .I5(\temp_reg_reg[12]_0 ),
        .O(IS_serial_in_first_row_buf[0]));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_second_row_buf[1]),
        .Q(\temp_reg_reg[9]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'hF4444F444F44F444)) 
    \temp_reg_reg[9]_srl3_i_1__1 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(IS_serial_output_second_row_buf[1]),
        .I2(\temp_reg_reg[14]_0 [1]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(IS_serial_output_third_row_buf[1]),
        .I5(IS_serial_output_first_row_buf[0]),
        .O(IS_serial_in_first_row_buf[1]));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_3
   (IS_serial_output_third_row_buf,
    \temp_reg_reg[15]_0 ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[12]_0 ,
    IS_enable3_buf,
    IS_serial_in_third_row_buf,
    clk_IBUF_BUFG,
    out,
    \temp_reg_reg[15]_1 ,
    IS_serial_output_first_row_buf);
  output [3:0]IS_serial_output_third_row_buf;
  output \temp_reg_reg[15]_0 ;
  output \temp_reg_reg[13]_0 ;
  output \temp_reg_reg[12]_0 ;
  input IS_enable3_buf;
  input [3:0]IS_serial_in_third_row_buf;
  input clk_IBUF_BUFG;
  input [2:0]out;
  input [1:0]\temp_reg_reg[15]_1 ;
  input [0:0]IS_serial_output_first_row_buf;

  wire IS_enable3_buf;
  wire [3:0]IS_serial_in_third_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire \temp_reg_reg[15]_0 ;
  wire [1:0]\temp_reg_reg[15]_1 ;
  wire \temp_reg_reg[8]_srl3_n_0 ;
  wire \temp_reg_reg[9]_srl3_n_0 ;

  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_third_row_buf[2]),
        .Q(\temp_reg_reg[10]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_third_row_buf[3]),
        .Q(\temp_reg_reg[11]_srl3_n_0 ));
  LUT5 #(
    .INIT(32'h00020200)) 
    \temp_reg_reg[11]_srl3_i_5__0 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(IS_serial_output_third_row_buf[3]),
        .I4(\temp_reg_reg[15]_1 [1]),
        .O(\temp_reg_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[8]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[9]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[10]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[11]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[3]),
        .R(1'b0));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_third_row_buf[0]),
        .Q(\temp_reg_reg[8]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_third_row_buf[1]),
        .Q(\temp_reg_reg[9]_srl3_n_0 ));
endmodule

module SKINNY_CNT
   (state,
    Q,
    \temp_reg_reg[32] ,
    \temp_reg_reg[13] ,
    IS_enable1_buf,
    IS_enable4_buf,
    IS_enable2_buf,
    IS_enable3_buf,
    TK2_REG_serial_in_buf,
    \temp_reg_reg[31] ,
    \temp_reg_reg[28] ,
    state_0,
    \temp_reg_reg[32]_0 ,
    E,
    \temp_reg_reg[15] ,
    \temp_reg_reg[14] ,
    \temp_reg_reg[40] ,
    \temp_reg_reg[40]_0 ,
    \temp_reg_reg[12] ,
    \FSM_sequential_current_state_reg[2] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    out,
    \FSM_sequential_current_state_reg[1]_0 ,
    \cnt_internal_value_reg[3]_0 ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \lfsr_internal_reg[0] ,
    TK2_REG_parallel_out_buf,
    \cnt_internal_value_reg[4]_0 ,
    \cnt_internal_value_reg[1]_0 ,
    \cnt_internal_value_reg[1]_1 ,
    \cnt_internal_value_reg[4]_1 ,
    \current_state_reg[2] ,
    \lfsr_internal_reg[5] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    TK1_REG_parallel_out_buf,
    \FSM_sequential_current_state_reg[0]_2 ,
    current_state,
    \current_state_reg[2]_0 ,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
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
    lopt_13);
  output state;
  output [0:0]Q;
  output \temp_reg_reg[32] ;
  output [0:0]\temp_reg_reg[13] ;
  output IS_enable1_buf;
  output IS_enable4_buf;
  output IS_enable2_buf;
  output IS_enable3_buf;
  output [2:0]TK2_REG_serial_in_buf;
  output \temp_reg_reg[31] ;
  output \temp_reg_reg[28] ;
  output state_0;
  output \temp_reg_reg[32]_0 ;
  output [0:0]E;
  output \temp_reg_reg[15] ;
  output \temp_reg_reg[14] ;
  output \temp_reg_reg[40] ;
  output \temp_reg_reg[40]_0 ;
  output \temp_reg_reg[12] ;
  output \FSM_sequential_current_state_reg[2] ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  input [2:0]out;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input \cnt_internal_value_reg[3]_0 ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \lfsr_internal_reg[0] ;
  input [3:0]TK2_REG_parallel_out_buf;
  input \cnt_internal_value_reg[4]_0 ;
  input \cnt_internal_value_reg[1]_0 ;
  input \cnt_internal_value_reg[1]_1 ;
  input \cnt_internal_value_reg[4]_1 ;
  input \current_state_reg[2] ;
  input [5:0]\lfsr_internal_reg[5] ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input [3:0]TK1_REG_parallel_out_buf;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input [2:0]current_state;
  input \current_state_reg[2]_0 ;
  input clk_IBUF_BUFG;
  output pwropt;
  output pwropt_1;
  output pwropt_2;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  input lopt_4;
  input lopt_5;
  input lopt_6;
  input lopt_7;
  input lopt_8;
  input lopt_9;
  input lopt_10;
  input lopt_11;
  output lopt_12;
  output lopt_13;

  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[0]_i_5_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [0:0]Q;
  wire [3:0]TK1_REG_parallel_out_buf;
  wire [3:0]TK2_REG_parallel_out_buf;
  wire [2:0]TK2_REG_serial_in_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ;
  wire \cnt_internal_value_reg[1]_0 ;
  wire \cnt_internal_value_reg[1]_1 ;
  wire \cnt_internal_value_reg[4]_0 ;
  wire [3:0]cnt_out_buf;
  wire [2:0]current_state;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \lfsr_internal_reg[0] ;
  wire [5:0]\lfsr_internal_reg[5] ;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire \^lopt_6 ;
  wire \^lopt_7 ;
  wire [2:0]out;
  wire [4:0]plusOp;
  wire rst_CNT_buf;
  wire state;
  wire state_0;
  wire \temp_reg_reg[10]_srl3_i_6_n_0 ;
  wire \temp_reg_reg[11]_srl3_i_3__0_n_0 ;
  wire \temp_reg_reg[11]_srl3_i_3_n_0 ;
  wire \temp_reg_reg[11]_srl3_i_6_n_0 ;
  wire \temp_reg_reg[11]_srl3_i_7_n_0 ;
  wire [0:0]\temp_reg_reg[13] ;
  wire \temp_reg_reg[31] ;
  wire \temp_reg_reg[32] ;
  wire \temp_reg_reg[32]_0 ;
  wire \temp_reg_reg[40] ;
  wire \temp_reg_reg[40]_0 ;
  wire \temp_reg_reg[8]_srl3_i_8_n_0 ;
  wire \xlnx_opt_FSM_sequential_current_state_reg[2] ;
  wire \xlnx_opt_TK2_REG_serial_in_buf[0] ;
  wire \xlnx_opt_TK2_REG_serial_in_buf[1] ;
  wire \xlnx_opt_TK2_REG_serial_in_buf[2] ;
  wire \xlnx_opt_temp_reg_reg[13][0] ;
  wire \xlnx_opt_temp_reg_reg[13][0]_1 ;
  wire \xlnx_opt_temp_reg_reg[13][0]_2 ;
  wire \xlnx_opt_temp_reg_reg[13][0]_3 ;
  wire \xlnx_opt_temp_reg_reg[13][0]_4 ;

  assign \^lopt  = lopt_4;
  assign \^lopt_1  = lopt_5;
  assign \^lopt_2  = lopt_6;
  assign \^lopt_3  = lopt_7;
  assign \^lopt_4  = lopt_8;
  assign \^lopt_5  = lopt_9;
  assign \^lopt_6  = lopt_10;
  assign \^lopt_7  = lopt_11;
  assign lopt = \temp_reg_reg[11]_srl3_i_6_n_0 ;
  assign lopt_1 = \temp_reg_reg[11]_srl3_i_7_n_0 ;
  assign lopt_12 = cnt_out_buf[3];
  assign lopt_13 = \temp_reg_reg[8]_srl3_i_8_n_0 ;
  assign lopt_2 = \temp_reg_reg[10]_srl3_i_6_n_0 ;
  assign lopt_3 = cnt_out_buf[2];
  assign pwropt = rst_CNT_buf;
  assign pwropt_1 = \FSM_sequential_current_state[1]_i_2_n_0 ;
  assign pwropt_2 = \temp_reg_reg[11]_srl3_i_3_n_0 ;
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h434F404C505C404C)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\current_state_reg[2] ),
        .I4(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .I5(Q),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00102000)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_sequential_current_state[0]_i_5_n_0 ),
        .I3(cnt_out_buf[3]),
        .I4(Q),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(cnt_out_buf[3]),
        .I1(cnt_out_buf[1]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[2]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(cnt_out_buf[2]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[1]),
        .O(\FSM_sequential_current_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E4EEE0EA)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I4(\current_state_reg[2] ),
        .I5(\current_state_reg[2]_0 ),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(cnt_out_buf[2]),
        .I1(out[0]),
        .I2(cnt_out_buf[3]),
        .I3(Q),
        .I4(cnt_out_buf[1]),
        .I5(cnt_out_buf[0]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(cnt_out_buf[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1 
       (.I0(cnt_out_buf[2]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[1]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1 
       (.I0(cnt_out_buf[3]),
        .I1(cnt_out_buf[1]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[2]),
        .O(plusOp[3]));
  LUT3 #(
    .INIT(8'h8A)) 
    \cnt_internal_value[4]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(rst_CNT_buf));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_internal_value[4]_i_2__0 
       (.I0(out[1]),
        .I1(out[0]),
        .O(E));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_internal_value[4]_i_3 
       (.I0(Q),
        .I1(cnt_out_buf[2]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(cnt_out_buf[3]),
        .O(plusOp[4]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(plusOp[0]),
        .Q(cnt_out_buf[0]),
        .R(rst_CNT_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(plusOp[1]),
        .Q(cnt_out_buf[1]),
        .R(rst_CNT_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(plusOp[2]),
        .Q(cnt_out_buf[2]),
        .R(rst_CNT_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(plusOp[3]),
        .Q(cnt_out_buf[3]),
        .R(rst_CNT_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(plusOp[4]),
        .Q(Q),
        .R(rst_CNT_buf));
  LUT4 #(
    .INIT(16'hDD01)) 
    \temp_reg[59]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(Q),
        .I3(out[0]),
        .O(\temp_reg_reg[32]_0 ));
  LUT4 #(
    .INIT(16'hCCF2)) 
    \temp_reg[59]_i_3 
       (.I0(Q),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\temp_reg_reg[32] ));
  LUT4 #(
    .INIT(16'h5A5B)) 
    \temp_reg[63]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q),
        .O(\temp_reg_reg[40] ));
  LUT4 #(
    .INIT(16'h5FF4)) 
    \temp_reg[63]_i_1__0 
       (.I0(out[0]),
        .I1(Q),
        .I2(out[2]),
        .I3(out[1]),
        .O(\temp_reg_reg[40]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg_reg[10]_srl3_i_6 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .O(\temp_reg_reg[10]_srl3_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000503F0000503FF)) 
    \temp_reg_reg[11]_srl3_i_1 
       (.I0(\temp_reg_reg[11]_srl3_i_3_n_0 ),
        .I1(\lfsr_internal_reg[0] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(Q),
        .O(IS_enable1_buf));
  LUT5 #(
    .INIT(32'hA22AAAAA)) 
    \temp_reg_reg[11]_srl3_i_1__0 
       (.I0(IS_enable2_buf),
        .I1(out[1]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(\temp_reg_reg[11]_srl3_i_3__0_n_0 ),
        .O(IS_enable4_buf));
  LUT3 #(
    .INIT(8'h2A)) 
    \temp_reg_reg[11]_srl3_i_1__1 
       (.I0(IS_enable2_buf),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .O(IS_enable3_buf));
  LUT6 #(
    .INIT(64'h3333004733333347)) 
    \temp_reg_reg[11]_srl3_i_1__2 
       (.I0(\temp_reg_reg[11]_srl3_i_3_n_0 ),
        .I1(out[2]),
        .I2(Q),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\lfsr_internal_reg[0] ),
        .O(IS_enable2_buf));
  LUT5 #(
    .INIT(32'h00008000)) 
    \temp_reg_reg[11]_srl3_i_3 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[2]),
        .I3(Q),
        .I4(cnt_out_buf[3]),
        .O(\temp_reg_reg[11]_srl3_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \temp_reg_reg[11]_srl3_i_3__0 
       (.I0(Q),
        .I1(cnt_out_buf[3]),
        .I2(out[0]),
        .I3(cnt_out_buf[2]),
        .O(\temp_reg_reg[11]_srl3_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \temp_reg_reg[11]_srl3_i_6 
       (.I0(Q),
        .I1(cnt_out_buf[3]),
        .O(\temp_reg_reg[11]_srl3_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \temp_reg_reg[11]_srl3_i_7 
       (.I0(cnt_out_buf[2]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[1]),
        .O(\temp_reg_reg[11]_srl3_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1A1B)) 
    \temp_reg_reg[27]_srl7_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q),
        .O(state));
  LUT4 #(
    .INIT(16'h5F54)) 
    \temp_reg_reg[27]_srl7_i_1__0 
       (.I0(out[0]),
        .I1(Q),
        .I2(out[2]),
        .I3(out[1]),
        .O(state_0));
  LUT4 #(
    .INIT(16'h0004)) 
    \temp_reg_reg[27]_srl7_i_3__0 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(cnt_out_buf[3]),
        .I3(Q),
        .O(\temp_reg_reg[31] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \temp_reg_reg[8]_srl3_i_8 
       (.I0(cnt_out_buf[3]),
        .I1(Q),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .O(\temp_reg_reg[8]_srl3_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC077C377C077C077)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\lfsr_internal_reg[0] ),
        .I5(\temp_reg_reg[11]_srl3_i_3_n_0 ),
        .O(\xlnx_opt_FSM_sequential_current_state_reg[2] ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[2]_i_1_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(\xlnx_opt_FSM_sequential_current_state_reg[2] ),
        .O(\FSM_sequential_current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000000)) 
    \xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_52 
       (.I0(plusOp[3]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(\FSM_sequential_current_state_reg[0] ),
        .I3(rst_CNT_buf),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .I5(E),
        .O(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F088)) 
    \xlnx_opt_LUT_temp_reg_reg[25]_srl7_i_1 
       (.I0(\cnt_internal_value_reg[1]_1 ),
        .I1(Q),
        .I2(TK2_REG_parallel_out_buf[1]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\xlnx_opt_TK2_REG_serial_in_buf[0] ));
  LUT5 #(
    .INIT(32'hFB3B0000)) 
    \xlnx_opt_LUT_temp_reg_reg[25]_srl7_i_1_1 
       (.I0(TK2_REG_parallel_out_buf[1]),
        .I1(out[2]),
        .I2(\temp_reg_reg[31] ),
        .I3(TK2_REG_parallel_out_buf[0]),
        .I4(\xlnx_opt_TK2_REG_serial_in_buf[0] ),
        .O(TK2_REG_serial_in_buf[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F088)) 
    \xlnx_opt_LUT_temp_reg_reg[26]_srl7_i_1 
       (.I0(\cnt_internal_value_reg[1]_0 ),
        .I1(Q),
        .I2(TK2_REG_parallel_out_buf[2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\xlnx_opt_TK2_REG_serial_in_buf[1] ));
  LUT5 #(
    .INIT(32'hFB3B0000)) 
    \xlnx_opt_LUT_temp_reg_reg[26]_srl7_i_1_1 
       (.I0(TK2_REG_parallel_out_buf[2]),
        .I1(out[2]),
        .I2(\temp_reg_reg[31] ),
        .I3(TK2_REG_parallel_out_buf[1]),
        .I4(\xlnx_opt_TK2_REG_serial_in_buf[1] ),
        .O(TK2_REG_serial_in_buf[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F088)) 
    \xlnx_opt_LUT_temp_reg_reg[27]_srl7_i_2 
       (.I0(\cnt_internal_value_reg[4]_0 ),
        .I1(Q),
        .I2(TK2_REG_parallel_out_buf[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\xlnx_opt_TK2_REG_serial_in_buf[2] ));
  LUT5 #(
    .INIT(32'hFB3B0000)) 
    \xlnx_opt_LUT_temp_reg_reg[27]_srl7_i_2_1 
       (.I0(TK2_REG_parallel_out_buf[3]),
        .I1(out[2]),
        .I2(\temp_reg_reg[31] ),
        .I3(TK2_REG_parallel_out_buf[2]),
        .I4(\xlnx_opt_TK2_REG_serial_in_buf[2] ),
        .O(TK2_REG_serial_in_buf[2]));
  LUT4 #(
    .INIT(16'hFEEF)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1 
       (.I0(cnt_out_buf[3]),
        .I1(Q),
        .I2(TK1_REG_parallel_out_buf[1]),
        .I3(TK2_REG_parallel_out_buf[1]),
        .O(\xlnx_opt_temp_reg_reg[13][0]_4 ));
  LUT6 #(
    .INIT(64'hFFFBFFF00004000A)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_1 
       (.I0(cnt_out_buf[3]),
        .I1(\lfsr_internal_reg[5] [5]),
        .I2(cnt_out_buf[1]),
        .I3(cnt_out_buf[0]),
        .I4(cnt_out_buf[2]),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(\xlnx_opt_temp_reg_reg[13][0]_3 ));
  LUT6 #(
    .INIT(64'hF3F3F3F3C0C1C0D0)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_2 
       (.I0(cnt_out_buf[3]),
        .I1(Q),
        .I2(\FSM_sequential_current_state_reg[0]_1 ),
        .I3(\temp_reg_reg[11]_srl3_i_7_n_0 ),
        .I4(\lfsr_internal_reg[5] [1]),
        .I5(\xlnx_opt_temp_reg_reg[13][0]_3 ),
        .O(\xlnx_opt_temp_reg_reg[13][0]_2 ));
  LUT6 #(
    .INIT(64'hEAEEEEAAAEAAAEEA)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_3 
       (.I0(\^lopt ),
        .I1(\^lopt_1 ),
        .I2(\^lopt_2 ),
        .I3(\^lopt_3 ),
        .I4(\^lopt_4 ),
        .I5(\^lopt_5 ),
        .O(\xlnx_opt_temp_reg_reg[13][0]_1 ));
  LUT5 #(
    .INIT(32'hFFFDFDFF)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_4 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\^lopt_6 ),
        .I4(\^lopt_7 ),
        .O(\xlnx_opt_temp_reg_reg[13][0] ));
  LUT6 #(
    .INIT(64'h55554004FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_5 
       (.I0(out[2]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\xlnx_opt_temp_reg_reg[13][0]_4 ),
        .I3(\xlnx_opt_temp_reg_reg[13][0]_2 ),
        .I4(\xlnx_opt_temp_reg_reg[13][0]_1 ),
        .I5(\xlnx_opt_temp_reg_reg[13][0] ),
        .O(\temp_reg_reg[13] ));
endmodule

module Skinny_64_128
   (\current_state_reg[1] ,
    \current_state_reg[1]_0 ,
    \temp_reg_reg[15] ,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 ,
    \temp_reg_reg[28] ,
    \temp_reg_reg[13] ,
    \current_state_reg[2]_1 ,
    clk_IBUF_BUFG,
    current_state,
    start_IBUF,
    rst_IBUF,
    \cnt_internal_value_reg[1] ,
    Q,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[3] ,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[4] ,
    \cnt_internal_value_reg[1]_0 ,
    \cnt_internal_value_reg[1]_1 ,
    \cnt_internal_value_reg[4]_0 ,
    \cnt_internal_value_reg[4]_1 ,
    \cnt_internal_value_reg[4]_2 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \temp_reg_reg[15] ;
  output \current_state_reg[2] ;
  output \current_state_reg[2]_0 ;
  output \temp_reg_reg[28] ;
  output \temp_reg_reg[13] ;
  output \current_state_reg[2]_1 ;
  input clk_IBUF_BUFG;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \cnt_internal_value_reg[1] ;
  input [2:0]Q;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[3] ;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[4] ;
  input \cnt_internal_value_reg[1]_0 ;
  input \cnt_internal_value_reg[1]_1 ;
  input \cnt_internal_value_reg[4]_0 ;
  input \cnt_internal_value_reg[4]_1 ;
  input \cnt_internal_value_reg[4]_2 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;

  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_7 ;
  wire \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_8 ;
  wire INST_IS_n_10;
  wire INST_IS_n_7;
  wire INST_IS_n_8;
  wire INST_LFSR_n_0;
  wire INST_LFSR_n_1;
  wire INST_LFSR_n_11;
  wire INST_LFSR_n_9;
  wire INST_SKINNY_CNT_n_11;
  wire INST_SKINNY_CNT_n_14;
  wire INST_SKINNY_CNT_n_18;
  wire INST_SKINNY_CNT_n_19;
  wire INST_SKINNY_CNT_n_2;
  wire INST_SKINNY_CNT_n_21;
  wire INST_SKINNY_CNT_n_22;
  wire INST_SKINNY_CNT_n_23;
  wire INST_TK2_REG_n_4;
  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [1:1]IS_serial_in_fourth_row_buf;
  wire [3:0]IS_serial_output_first_row_buf;
  wire [2:0]Q;
  wire [31:28]TK1_REG_parallel_out_buf;
  wire [31:28]TK2_REG_parallel_out_buf;
  wire [3:1]TK2_REG_serial_in_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[1]_0 ;
  wire \cnt_internal_value_reg[1]_1 ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[4] ;
  wire \cnt_internal_value_reg[4]_0 ;
  wire \cnt_internal_value_reg[4]_1 ;
  wire \cnt_internal_value_reg[4]_2 ;
  wire [4:4]cnt_out_buf;
  wire [2:0]current_state;
  wire \current_state[2]_i_17_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire enable_CNT_buf;
  wire [5:0]lfsr_out_buf;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire lopt_10;
  wire lopt_11;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire rst_IBUF;
  wire start_IBUF;
  wire state;
  wire state_0;
  wire \temp_reg_reg[13] ;
  wire \temp_reg_reg[15] ;
  wire \temp_reg_reg[28] ;
  wire \NLW_INST_IS_cnt_internal_value_reg[2]_UNCONNECTED ;
  wire \NLW_INST_IS_cnt_internal_value_reg[4]_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[13]_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[15]_1_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[63]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[0]_2_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[2]_0_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[12]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[14]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[15]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[28]_UNCONNECTED ;
  wire \NLW_INST_TK2_REG_cnt_internal_value_reg[4]_UNCONNECTED ;

  assign lopt_4 = lopt;
  assign lopt_5 = lopt_1;
  assign lopt_6 = lopt_2;
  assign lopt_7 = lopt_3;
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,tw_perm:101,idle:001,tk2_update:110,rnd_end:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_SKINNY_CNT_n_23),
        .Q(current_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,tw_perm:101,idle:001,tk2_update:110,rnd_end:111" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* KEEP = "yes" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_7 ),
        .D(INST_SKINNY_CNT_n_22),
        .Q(current_state_0[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hfff4)) 
    \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_gate_62 
       (.I0(current_state_0[2]),
        .I1(pwropt_1),
        .I2(current_state[0]),
        .I3(current_state_0[0]),
        .O(\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_7 ));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,tw_perm:101,idle:001,tk2_update:110,rnd_end:111" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* KEEP = "yes" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_8 ),
        .D(INST_SKINNY_CNT_n_21),
        .Q(current_state_0[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hfff2)) 
    \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_gate_64 
       (.I0(pwropt_2),
        .I1(INST_LFSR_n_1),
        .I2(current_state[0]),
        .I3(current_state_0[1]),
        .O(\FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_8 ));
  skinny_shift_reg_64 INST_IS
       (.\FSM_sequential_current_state_reg[1] (INST_LFSR_n_0),
        .\FSM_sequential_current_state_reg[2] (IS_serial_in_fourth_row_buf),
        .\FSM_sequential_current_state_reg[2]_0 (\current_state[2]_i_17_n_0 ),
        .IS_enable1_buf(IS_enable1_buf),
        .IS_enable2_buf(IS_enable2_buf),
        .IS_enable3_buf(IS_enable3_buf),
        .IS_enable4_buf(IS_enable4_buf),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0] ),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1] ),
        .\cnt_internal_value_reg[2] (\NLW_INST_IS_cnt_internal_value_reg[2]_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_0 (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[4] (\NLW_INST_IS_cnt_internal_value_reg[4]_UNCONNECTED ),
        .\cnt_internal_value_reg[4]_0 (\cnt_internal_value_reg[4]_1 ),
        .\cnt_internal_value_reg[4]_1 (\cnt_internal_value_reg[4]_2 ),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[1]_0 (\current_state_reg[1]_0 ),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .\lfsr_internal_reg[0] (INST_LFSR_n_1),
        .\lfsr_internal_reg[0]_0 (lfsr_out_buf[0]),
        .\lfsr_internal_reg[2] (INST_LFSR_n_11),
        .lopt(TK2_REG_parallel_out_buf[31]),
        .lopt_1(TK1_REG_parallel_out_buf[31]),
        .lopt_10(lopt_8),
        .lopt_11(lopt_9),
        .lopt_12(lfsr_out_buf[4]),
        .lopt_13(INST_IS_n_7),
        .lopt_14(lopt_10),
        .lopt_15(cnt_out_buf),
        .lopt_16(TK1_REG_parallel_out_buf[28]),
        .lopt_17(TK2_REG_parallel_out_buf[28]),
        .lopt_18(lopt_11),
        .lopt_19(INST_IS_n_10),
        .lopt_2(\^lopt ),
        .lopt_3(lfsr_out_buf[3]),
        .lopt_4(\^lopt_1 ),
        .lopt_5(\^lopt_2 ),
        .lopt_6(\^lopt_3 ),
        .lopt_7(lfsr_out_buf[2]),
        .lopt_8(TK1_REG_parallel_out_buf[30]),
        .lopt_9(TK2_REG_parallel_out_buf[30]),
        .out(current_state_0),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[12] (INST_IS_n_7),
        .\temp_reg_reg[13] (\NLW_INST_IS_temp_reg_reg[13]_UNCONNECTED ),
        .\temp_reg_reg[13]_0 (INST_IS_n_8),
        .\temp_reg_reg[13]_1 (INST_IS_n_10),
        .\temp_reg_reg[13]_2 (\temp_reg_reg[13] ),
        .\temp_reg_reg[15] ({IS_serial_output_first_row_buf[3],IS_serial_output_first_row_buf[0]}),
        .\temp_reg_reg[15]_0 (\temp_reg_reg[15] ),
        .\temp_reg_reg[15]_1 (\NLW_INST_IS_temp_reg_reg[15]_1_UNCONNECTED ),
        .\temp_reg_reg[15]_2 (INST_LFSR_n_9),
        .\temp_reg_reg[63] (\NLW_INST_IS_temp_reg_reg[63]_UNCONNECTED ));
  lfsr INST_LFSR
       (.E(enable_CNT_buf),
        .Q(lfsr_out_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[1] (INST_LFSR_n_0),
        .\current_state_reg[1]_0 (INST_LFSR_n_9),
        .\current_state_reg[1]_1 (INST_LFSR_n_11),
        .\current_state_reg[2] (\current_state_reg[2]_0 ),
        .\current_state_reg[2]_0 (\current_state_reg[2]_1 ),
        .out(current_state_0),
        .\temp_reg_reg[12] (INST_LFSR_n_1),
        .\temp_reg_reg[15] ({IS_serial_output_first_row_buf[3],IS_serial_output_first_row_buf[0]}));
  SKINNY_CNT INST_SKINNY_CNT
       (.E(enable_CNT_buf),
        .\FSM_sequential_current_state_reg[0] (INST_SKINNY_CNT_n_23),
        .\FSM_sequential_current_state_reg[0]_0 (INST_IS_n_7),
        .\FSM_sequential_current_state_reg[0]_1 (INST_IS_n_8),
        .\FSM_sequential_current_state_reg[0]_2 (\NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[0]_2_UNCONNECTED ),
        .\FSM_sequential_current_state_reg[1] (INST_SKINNY_CNT_n_22),
        .\FSM_sequential_current_state_reg[1]_0 (INST_IS_n_10),
        .\FSM_sequential_current_state_reg[2] (INST_SKINNY_CNT_n_21),
        .\FSM_sequential_current_state_reg[2]_0 (\NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[2]_0_UNCONNECTED ),
        .IS_enable1_buf(IS_enable1_buf),
        .IS_enable2_buf(IS_enable2_buf),
        .IS_enable3_buf(IS_enable3_buf),
        .IS_enable4_buf(IS_enable4_buf),
        .Q(cnt_out_buf),
        .TK1_REG_parallel_out_buf(TK1_REG_parallel_out_buf),
        .TK2_REG_parallel_out_buf(TK2_REG_parallel_out_buf),
        .TK2_REG_serial_in_buf(TK2_REG_serial_in_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1]_0 (\cnt_internal_value_reg[1]_0 ),
        .\cnt_internal_value_reg[1]_1 (\cnt_internal_value_reg[1]_1 ),
        .\cnt_internal_value_reg[3]_0 (\NLW_INST_SKINNY_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[4]_0 (\cnt_internal_value_reg[4] ),
        .\cnt_internal_value_reg[4]_1 (\cnt_internal_value_reg[4]_0 ),
        .current_state(current_state),
        .\current_state_reg[2] (\FSM_sequential_current_state[1]_i_3_n_0 ),
        .\current_state_reg[2]_0 (\FSM_sequential_current_state[1]_i_4_n_0 ),
        .\lfsr_internal_reg[0] (INST_LFSR_n_1),
        .\lfsr_internal_reg[5] (lfsr_out_buf),
        .lopt(\^lopt ),
        .lopt_1(\^lopt_1 ),
        .lopt_10(lopt_8),
        .lopt_11(lopt_9),
        .lopt_12(lopt_10),
        .lopt_13(lopt_11),
        .lopt_2(\^lopt_2 ),
        .lopt_3(\^lopt_3 ),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(Q[1]),
        .lopt_7(Q[0]),
        .lopt_8(lopt_6),
        .lopt_9(lopt_7),
        .out(current_state_0),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .state(state_0),
        .state_0(state),
        .\temp_reg_reg[12] (\NLW_INST_SKINNY_CNT_temp_reg_reg[12]_UNCONNECTED ),
        .\temp_reg_reg[13] (IS_serial_in_fourth_row_buf),
        .\temp_reg_reg[14] (\NLW_INST_SKINNY_CNT_temp_reg_reg[14]_UNCONNECTED ),
        .\temp_reg_reg[15] (\NLW_INST_SKINNY_CNT_temp_reg_reg[15]_UNCONNECTED ),
        .\temp_reg_reg[28] (\NLW_INST_SKINNY_CNT_temp_reg_reg[28]_UNCONNECTED ),
        .\temp_reg_reg[31] (INST_SKINNY_CNT_n_11),
        .\temp_reg_reg[32] (INST_SKINNY_CNT_n_2),
        .\temp_reg_reg[32]_0 (INST_SKINNY_CNT_n_14),
        .\temp_reg_reg[40] (INST_SKINNY_CNT_n_18),
        .\temp_reg_reg[40]_0 (INST_SKINNY_CNT_n_19));
  shift_reg INST_TK1_REG
       (.\FSM_sequential_current_state_reg[1] (INST_SKINNY_CNT_n_18),
        .\FSM_sequential_current_state_reg[2] (INST_TK2_REG_n_4),
        .Q(cnt_out_buf),
        .TK1_REG_parallel_out_buf(TK1_REG_parallel_out_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1]_1 ),
        .\cnt_internal_value_reg[1]_0 (\cnt_internal_value_reg[1]_0 ),
        .\cnt_internal_value_reg[4] (INST_SKINNY_CNT_n_2),
        .\cnt_internal_value_reg[4]_0 (\cnt_internal_value_reg[4]_0 ),
        .\cnt_internal_value_reg[4]_1 (\cnt_internal_value_reg[4] ),
        .current_state({current_state[2],current_state[0]}),
        .out(current_state_0),
        .pwropt(INST_SKINNY_CNT_n_23),
        .pwropt_1(INST_SKINNY_CNT_n_22),
        .pwropt_2(INST_SKINNY_CNT_n_21),
        .pwropt_3(pwropt),
        .state(state_0),
        .\temp_reg_reg[28]_0 (\temp_reg_reg[28] ));
  shift_reg_0 INST_TK2_REG
       (.\FSM_sequential_current_state_reg[0] (INST_SKINNY_CNT_n_11),
        .\FSM_sequential_current_state_reg[0]_0 (INST_SKINNY_CNT_n_19),
        .\FSM_sequential_current_state_reg[1] (INST_SKINNY_CNT_n_14),
        .TK2_REG_parallel_out_buf(TK2_REG_parallel_out_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[4] (\NLW_INST_TK2_REG_cnt_internal_value_reg[4]_UNCONNECTED ),
        .lopt(\cnt_internal_value_reg[4]_0 ),
        .lopt_1(cnt_out_buf),
        .lopt_2(TK2_REG_parallel_out_buf[28]),
        .out(current_state_0),
        .state(state),
        .\temp_reg_reg[32]_0 (INST_TK2_REG_n_4),
        .\temp_reg_reg[63]_0 (TK2_REG_serial_in_buf));
  LUT3 #(
    .INIT(8'hFB)) 
    \current_state[2]_i_17 
       (.I0(current_state_0[2]),
        .I1(current_state_0[0]),
        .I2(current_state_0[1]),
        .O(\current_state[2]_i_17_n_0 ));
endmodule

(* ECO_CHECKSUM = "897ee930" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
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
  wire INST_CNT_n_1;
  wire INST_CNT_n_10;
  wire INST_CNT_n_11;
  wire INST_CNT_n_12;
  wire INST_CNT_n_13;
  wire INST_CNT_n_14;
  wire INST_CNT_n_2;
  wire INST_CNT_n_7;
  wire INST_CNT_n_8;
  wire INST_CNT_n_9;
  wire Skinny_DUT_n_0;
  wire Skinny_DUT_n_1;
  wire Skinny_DUT_n_2;
  wire Skinny_DUT_n_3;
  wire Skinny_DUT_n_4;
  wire Skinny_DUT_n_5;
  wire Skinny_DUT_n_6;
  wire Skinny_DUT_n_7;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]cnt_out_W;
  wire [2:0]current_state;
  wire led_out;
  wire led_out_OBUF;
  wire lopt;
  wire lopt_1;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  wire \NLW_INST_CNT_temp_reg_reg[13]_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[3]_UNCONNECTED ;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  CNT INST_CNT
       (.\FSM_sequential_current_state_reg[1] (Skinny_DUT_n_2),
        .\FSM_sequential_current_state_reg[2] (Skinny_DUT_n_7),
        .\FSM_sequential_current_state_reg[2]_0 (Skinny_DUT_n_4),
        .Q({cnt_out_W[4:3],cnt_out_W[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_1),
        .\current_state_reg[2] (INST_CNT_n_0),
        .\current_state_reg[2]_0 (INST_CNT_n_9),
        .\current_state_reg[2]_1 (INST_CNT_n_10),
        .\current_state_reg[2]_2 (Skinny_DUT_n_5),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[12] (INST_CNT_n_7),
        .\temp_reg_reg[12]_0 (Skinny_DUT_n_1),
        .\temp_reg_reg[13] (\NLW_INST_CNT_temp_reg_reg[13]_UNCONNECTED ),
        .\temp_reg_reg[13]_0 (Skinny_DUT_n_6),
        .\temp_reg_reg[14] (INST_CNT_n_2),
        .\temp_reg_reg[14]_0 (Skinny_DUT_n_3),
        .\temp_reg_reg[15] (INST_CNT_n_14),
        .\temp_reg_reg[28] (INST_CNT_n_8),
        .\temp_reg_reg[29] (INST_CNT_n_12),
        .\temp_reg_reg[30] (INST_CNT_n_11),
        .\temp_reg_reg[31] (INST_CNT_n_13));
  Skinny_64_128 Skinny_DUT
       (.Q({cnt_out_W[4:3],cnt_out_W[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (INST_CNT_n_2),
        .\cnt_internal_value_reg[1] (INST_CNT_n_14),
        .\cnt_internal_value_reg[1]_0 (INST_CNT_n_11),
        .\cnt_internal_value_reg[1]_1 (INST_CNT_n_12),
        .\cnt_internal_value_reg[2] (INST_CNT_n_7),
        .\cnt_internal_value_reg[3] (\NLW_Skinny_DUT_cnt_internal_value_reg[3]_UNCONNECTED ),
        .\cnt_internal_value_reg[4] (INST_CNT_n_13),
        .\cnt_internal_value_reg[4]_0 (INST_CNT_n_8),
        .\cnt_internal_value_reg[4]_1 (INST_CNT_n_9),
        .\cnt_internal_value_reg[4]_2 (INST_CNT_n_10),
        .current_state(current_state),
        .\current_state_reg[1] (Skinny_DUT_n_0),
        .\current_state_reg[1]_0 (Skinny_DUT_n_1),
        .\current_state_reg[2] (Skinny_DUT_n_3),
        .\current_state_reg[2]_0 (Skinny_DUT_n_4),
        .\current_state_reg[2]_1 (Skinny_DUT_n_7),
        .lopt(Skinny_DUT_n_6),
        .lopt_1(Skinny_DUT_n_2),
        .lopt_2(lopt),
        .lopt_3(lopt_1),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[13] (Skinny_DUT_n_6),
        .\temp_reg_reg[15] (Skinny_DUT_n_2),
        .\temp_reg_reg[28] (Skinny_DUT_n_5));
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
        .D(INST_CNT_n_1),
        .Q(current_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Skinny_DUT_n_0),
        .Q(current_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_CNT_n_0),
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
   (\current_state_reg[1] ,
    \temp_reg_reg[12] ,
    Q,
    \current_state_reg[2] ,
    \current_state_reg[1]_0 ,
    \current_state_reg[2]_0 ,
    \current_state_reg[1]_1 ,
    out,
    E,
    \temp_reg_reg[15] ,
    clk_IBUF_BUFG);
  output \current_state_reg[1] ;
  output \temp_reg_reg[12] ;
  output [5:0]Q;
  output \current_state_reg[2] ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[2]_0 ;
  output \current_state_reg[1]_1 ;
  input [2:0]out;
  input [0:0]E;
  input [1:0]\temp_reg_reg[15] ;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;
  wire \current_state[2]_i_15_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \lfsr_internal[0]_i_1_n_0 ;
  wire \lfsr_internal[5]_i_1_n_0 ;
  wire \lfsr_internal[5]_i_2_n_0 ;
  wire [2:0]out;
  wire \temp_reg_reg[12] ;
  wire [1:0]\temp_reg_reg[15] ;

  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \current_state[2]_i_10 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\temp_reg_reg[12] ),
        .I4(\temp_reg_reg[15] [1]),
        .O(\current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \current_state[2]_i_11 
       (.I0(\current_state[2]_i_15_n_0 ),
        .I1(out[2]),
        .I2(E),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\current_state_reg[2] ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \current_state[2]_i_15 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\temp_reg_reg[15] [0]),
        .O(\current_state[2]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \current_state[2]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\current_state_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hAA08)) 
    \current_state[2]_i_7 
       (.I0(\temp_reg_reg[15] [1]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\current_state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \current_state[2]_i_8 
       (.I0(\temp_reg_reg[12] ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\current_state_reg[1] ));
  LUT2 #(
    .INIT(4'h9)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\lfsr_internal[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \lfsr_internal[5]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\lfsr_internal[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \lfsr_internal[5]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\lfsr_internal[5]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal[5]_i_2_n_0 ),
        .D(\lfsr_internal[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(\lfsr_internal[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal[5]_i_2_n_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(\lfsr_internal[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal[5]_i_2_n_0 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(\lfsr_internal[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal[5]_i_2_n_0 ),
        .D(Q[2]),
        .Q(Q[3]),
        .R(\lfsr_internal[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal[5]_i_2_n_0 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(\lfsr_internal[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal[5]_i_2_n_0 ),
        .D(Q[4]),
        .Q(Q[5]),
        .R(\lfsr_internal[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \temp_reg_reg[11]_srl3_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\temp_reg_reg[12] ));
endmodule

module shift_reg
   (TK1_REG_parallel_out_buf,
    \temp_reg_reg[28]_0 ,
    state,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[2] ,
    \cnt_internal_value_reg[4] ,
    out,
    Q,
    \cnt_internal_value_reg[4]_0 ,
    \cnt_internal_value_reg[1] ,
    \cnt_internal_value_reg[1]_0 ,
    \cnt_internal_value_reg[4]_1 ,
    current_state,
    \FSM_sequential_current_state_reg[1] ,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3);
  output [3:0]TK1_REG_parallel_out_buf;
  output \temp_reg_reg[28]_0 ;
  input state;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[2] ;
  input \cnt_internal_value_reg[4] ;
  input [2:0]out;
  input [0:0]Q;
  input \cnt_internal_value_reg[4]_0 ;
  input \cnt_internal_value_reg[1] ;
  input \cnt_internal_value_reg[1]_0 ;
  input \cnt_internal_value_reg[4]_1 ;
  input [1:0]current_state;
  input \FSM_sequential_current_state_reg[1] ;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;

  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire [0:0]Q;
  wire [3:0]TK1_REG_parallel_out_buf;
  wire [3:0]TK1_REG_serial_in_buf;
  wire [27:0]TWEAKEY_permutation_IN;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[1]_0 ;
  wire \cnt_internal_value_reg[4] ;
  wire \cnt_internal_value_reg[4]_0 ;
  wire \cnt_internal_value_reg[4]_1 ;
  wire [1:0]current_state;
  wire [2:0]out;
  wire [59:32]p_1_in;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire state;
  wire \temp_reg_reg[24]_srl7_n_0 ;
  wire \temp_reg_reg[25]_srl7_n_0 ;
  wire \temp_reg_reg[26]_srl7_n_0 ;
  wire \temp_reg_reg[27]_srl7_n_0 ;
  wire \temp_reg_reg[28]_0 ;
  wire \temp_reg_reg[32]_CE_cooolgate_en_sig_1 ;
  wire \temp_reg_reg[60]_CE_cooolgate_en_sig_6 ;
  wire \temp_reg_reg_n_0_[28] ;
  wire \temp_reg_reg_n_0_[29] ;
  wire \temp_reg_reg_n_0_[30] ;
  wire \temp_reg_reg_n_0_[31] ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[32]_i_1 
       (.I0(TWEAKEY_permutation_IN[16]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[0]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(\temp_reg_reg_n_0_[28] ),
        .O(p_1_in[32]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[33]_i_1 
       (.I0(TWEAKEY_permutation_IN[17]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[1]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(\temp_reg_reg_n_0_[29] ),
        .O(p_1_in[33]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[34]_i_1 
       (.I0(TWEAKEY_permutation_IN[18]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[2]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(\temp_reg_reg_n_0_[30] ),
        .O(p_1_in[34]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[35]_i_1 
       (.I0(TWEAKEY_permutation_IN[19]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[3]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(\temp_reg_reg_n_0_[31] ),
        .O(p_1_in[35]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[36]_i_1 
       (.I0(TWEAKEY_permutation_IN[12]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[4]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[0]),
        .O(p_1_in[36]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[37]_i_1 
       (.I0(TWEAKEY_permutation_IN[13]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[5]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[1]),
        .O(p_1_in[37]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[38]_i_1 
       (.I0(TWEAKEY_permutation_IN[14]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[6]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[2]),
        .O(p_1_in[38]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[39]_i_1 
       (.I0(TWEAKEY_permutation_IN[15]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[7]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[3]),
        .O(p_1_in[39]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[44]_i_1 
       (.I0(TWEAKEY_permutation_IN[20]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[12]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[8]),
        .O(p_1_in[44]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[45]_i_1 
       (.I0(TWEAKEY_permutation_IN[21]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[13]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[9]),
        .O(p_1_in[45]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[46]_i_1 
       (.I0(TWEAKEY_permutation_IN[22]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[14]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[10]),
        .O(p_1_in[46]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[47]_i_1 
       (.I0(TWEAKEY_permutation_IN[23]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[15]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[11]),
        .O(p_1_in[47]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[48]_i_1 
       (.I0(TWEAKEY_permutation_IN[8]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[16]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[12]),
        .O(p_1_in[48]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[49]_i_1 
       (.I0(TWEAKEY_permutation_IN[9]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[17]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[13]),
        .O(p_1_in[49]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[50]_i_1 
       (.I0(TWEAKEY_permutation_IN[10]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[18]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[14]),
        .O(p_1_in[50]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[51]_i_1 
       (.I0(TWEAKEY_permutation_IN[11]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[19]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[15]),
        .O(p_1_in[51]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[52]_i_1 
       (.I0(TK1_REG_parallel_out_buf[0]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[20]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[16]),
        .O(p_1_in[52]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[53]_i_1 
       (.I0(TK1_REG_parallel_out_buf[1]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[21]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[17]),
        .O(p_1_in[53]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[54]_i_1 
       (.I0(TK1_REG_parallel_out_buf[2]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[22]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[18]),
        .O(p_1_in[54]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[55]_i_1 
       (.I0(TK1_REG_parallel_out_buf[3]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[23]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[19]),
        .O(p_1_in[55]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[56]_i_1 
       (.I0(TWEAKEY_permutation_IN[0]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[24]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[20]),
        .O(p_1_in[56]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[57]_i_1 
       (.I0(TWEAKEY_permutation_IN[1]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[25]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[21]),
        .O(p_1_in[57]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[58]_i_1 
       (.I0(TWEAKEY_permutation_IN[2]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[26]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[22]),
        .O(p_1_in[58]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[59]_i_1 
       (.I0(TWEAKEY_permutation_IN[3]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(TWEAKEY_permutation_IN[27]),
        .I3(\cnt_internal_value_reg[4] ),
        .I4(TWEAKEY_permutation_IN[23]),
        .O(p_1_in[59]));
  (* srl_bus_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[24]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[24]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TK1_REG_serial_in_buf[0]),
        .Q(\temp_reg_reg[24]_srl7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \temp_reg_reg[24]_srl7_i_1__0 
       (.I0(TK1_REG_parallel_out_buf[0]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(Q),
        .I4(out[2]),
        .I5(\cnt_internal_value_reg[4]_0 ),
        .O(TK1_REG_serial_in_buf[0]));
  (* srl_bus_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[25]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[25]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TK1_REG_serial_in_buf[1]),
        .Q(\temp_reg_reg[25]_srl7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \temp_reg_reg[25]_srl7_i_1__0 
       (.I0(TK1_REG_parallel_out_buf[1]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(Q),
        .I4(out[2]),
        .I5(\cnt_internal_value_reg[1] ),
        .O(TK1_REG_serial_in_buf[1]));
  (* srl_bus_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[26]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[26]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TK1_REG_serial_in_buf[2]),
        .Q(\temp_reg_reg[26]_srl7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \temp_reg_reg[26]_srl7_i_1__0 
       (.I0(TK1_REG_parallel_out_buf[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(Q),
        .I4(out[2]),
        .I5(\cnt_internal_value_reg[1]_0 ),
        .O(TK1_REG_serial_in_buf[2]));
  (* srl_bus_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[27]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[27]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TK1_REG_serial_in_buf[3]),
        .Q(\temp_reg_reg[27]_srl7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \temp_reg_reg[27]_srl7_i_2__0 
       (.I0(TK1_REG_parallel_out_buf[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(Q),
        .I4(out[2]),
        .I5(\cnt_internal_value_reg[4]_1 ),
        .O(TK1_REG_serial_in_buf[3]));
  LUT2 #(
    .INIT(4'h7)) 
    \temp_reg_reg[27]_srl7_i_4__0 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\temp_reg_reg[28]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[24]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[25]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[26]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[27]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[31] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[32]),
        .Q(TWEAKEY_permutation_IN[0]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hd)) 
    \temp_reg_reg[32]_CE_cooolgate_en_gate_1 
       (.I0(\cnt_internal_value_reg[4] ),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .O(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[33]),
        .Q(TWEAKEY_permutation_IN[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[34]),
        .Q(TWEAKEY_permutation_IN[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[35]),
        .Q(TWEAKEY_permutation_IN[3]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[36]),
        .Q(TWEAKEY_permutation_IN[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[37]),
        .Q(TWEAKEY_permutation_IN[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[38]),
        .Q(TWEAKEY_permutation_IN[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[39]),
        .Q(TWEAKEY_permutation_IN[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(TWEAKEY_permutation_IN[4]),
        .Q(TWEAKEY_permutation_IN[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(TWEAKEY_permutation_IN[5]),
        .Q(TWEAKEY_permutation_IN[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(TWEAKEY_permutation_IN[6]),
        .Q(TWEAKEY_permutation_IN[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(TWEAKEY_permutation_IN[7]),
        .Q(TWEAKEY_permutation_IN[11]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[44]),
        .Q(TWEAKEY_permutation_IN[12]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[45]),
        .Q(TWEAKEY_permutation_IN[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[46]),
        .Q(TWEAKEY_permutation_IN[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[47]),
        .Q(TWEAKEY_permutation_IN[15]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[48]),
        .Q(TWEAKEY_permutation_IN[16]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[49]),
        .Q(TWEAKEY_permutation_IN[17]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[50]),
        .Q(TWEAKEY_permutation_IN[18]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[51]),
        .Q(TWEAKEY_permutation_IN[19]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[52]),
        .Q(TWEAKEY_permutation_IN[20]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[53]),
        .Q(TWEAKEY_permutation_IN[21]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[54]),
        .Q(TWEAKEY_permutation_IN[22]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[55]),
        .Q(TWEAKEY_permutation_IN[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[56]),
        .Q(TWEAKEY_permutation_IN[24]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[57]),
        .Q(TWEAKEY_permutation_IN[25]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[58]),
        .Q(TWEAKEY_permutation_IN[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[59]),
        .Q(TWEAKEY_permutation_IN[27]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_6 ),
        .D(TWEAKEY_permutation_IN[24]),
        .Q(TK1_REG_parallel_out_buf[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_6 ),
        .D(TWEAKEY_permutation_IN[25]),
        .Q(TK1_REG_parallel_out_buf[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_6 ),
        .D(TWEAKEY_permutation_IN[26]),
        .Q(TK1_REG_parallel_out_buf[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_6 ),
        .D(TWEAKEY_permutation_IN[27]),
        .Q(TK1_REG_parallel_out_buf[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \xlnx_opt_LUT_temp_reg_reg[60]_CE_cooolgate_en_gate_58 
       (.I0(pwropt_3),
        .I1(pwropt_2),
        .I2(pwropt_1),
        .I3(pwropt),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .O(\temp_reg_reg[60]_CE_cooolgate_en_sig_6 ));
endmodule

(* ORIG_REF_NAME = "shift_reg" *) 
module shift_reg_0
   (TK2_REG_parallel_out_buf,
    \temp_reg_reg[32]_0 ,
    state,
    \temp_reg_reg[63]_0 ,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[0] ,
    out,
    \cnt_internal_value_reg[4] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    lopt,
    lopt_1,
    lopt_2);
  output [3:0]TK2_REG_parallel_out_buf;
  output \temp_reg_reg[32]_0 ;
  input state;
  input [2:0]\temp_reg_reg[63]_0 ;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[0] ;
  input [2:0]out;
  input \cnt_internal_value_reg[4] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input lopt;
  input lopt_1;
  input lopt_2;

  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [3:0]TK2_REG_parallel_out_buf;
  wire [0:0]TK2_REG_serial_in_buf;
  wire [27:0]TWEAKEY_permutation_IN__0;
  wire clk_IBUF_BUFG;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire [2:0]out;
  wire state;
  wire \temp_reg[32]_i_1__0_n_0 ;
  wire \temp_reg[33]_i_1__0_n_0 ;
  wire \temp_reg[34]_i_1__0_n_0 ;
  wire \temp_reg[35]_i_1__0_n_0 ;
  wire \temp_reg[36]_i_1__0_n_0 ;
  wire \temp_reg[37]_i_1__0_n_0 ;
  wire \temp_reg[38]_i_1__0_n_0 ;
  wire \temp_reg[39]_i_1__0_n_0 ;
  wire \temp_reg[44]_i_1__0_n_0 ;
  wire \temp_reg[45]_i_1__0_n_0 ;
  wire \temp_reg[46]_i_1__0_n_0 ;
  wire \temp_reg[47]_i_1__0_n_0 ;
  wire \temp_reg[48]_i_1__0_n_0 ;
  wire \temp_reg[49]_i_1__0_n_0 ;
  wire \temp_reg[50]_i_1__0_n_0 ;
  wire \temp_reg[51]_i_1__0_n_0 ;
  wire \temp_reg[52]_i_1__0_n_0 ;
  wire \temp_reg[53]_i_1__0_n_0 ;
  wire \temp_reg[54]_i_1__0_n_0 ;
  wire \temp_reg[55]_i_1__0_n_0 ;
  wire \temp_reg[56]_i_1__0_n_0 ;
  wire \temp_reg[57]_i_1__0_n_0 ;
  wire \temp_reg[58]_i_1__0_n_0 ;
  wire \temp_reg[59]_i_1__0_n_0 ;
  wire \temp_reg_reg[24]_srl7_n_0 ;
  wire \temp_reg_reg[25]_srl7_n_0 ;
  wire \temp_reg_reg[26]_srl7_n_0 ;
  wire \temp_reg_reg[27]_srl7_n_0 ;
  wire \temp_reg_reg[32]_0 ;
  wire \temp_reg_reg[32]_CE_cooolgate_en_sig_2 ;
  wire [2:0]\temp_reg_reg[63]_0 ;
  wire \temp_reg_reg_n_0_[28] ;
  wire \temp_reg_reg_n_0_[29] ;
  wire \temp_reg_reg_n_0_[30] ;
  wire \temp_reg_reg_n_0_[31] ;
  wire \xlnx_opt_TK2_REG_serial_in_buf[0] ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[32]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[16]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[0]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(\temp_reg_reg_n_0_[28] ),
        .O(\temp_reg[32]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[33]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[17]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[1]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(\temp_reg_reg_n_0_[29] ),
        .O(\temp_reg[33]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[34]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[18]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[2]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(\temp_reg_reg_n_0_[30] ),
        .O(\temp_reg[34]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[35]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[19]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[3]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(\temp_reg_reg_n_0_[31] ),
        .O(\temp_reg[35]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[36]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[12]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[4]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[0]),
        .O(\temp_reg[36]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[37]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[13]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[5]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[1]),
        .O(\temp_reg[37]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[38]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[14]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[6]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[2]),
        .O(\temp_reg[38]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[39]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[15]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[7]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[3]),
        .O(\temp_reg[39]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[44]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[20]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[12]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[8]),
        .O(\temp_reg[44]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[45]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[21]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[13]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[9]),
        .O(\temp_reg[45]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[46]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[22]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[14]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[10]),
        .O(\temp_reg[46]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[47]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[23]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[15]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[11]),
        .O(\temp_reg[47]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[48]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[8]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[16]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[12]),
        .O(\temp_reg[48]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[49]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[9]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[17]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[13]),
        .O(\temp_reg[49]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[50]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[10]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[18]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[14]),
        .O(\temp_reg[50]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[51]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[11]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[19]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[15]),
        .O(\temp_reg[51]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[52]_i_1__0 
       (.I0(TK2_REG_parallel_out_buf[0]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[20]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[16]),
        .O(\temp_reg[52]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[53]_i_1__0 
       (.I0(TK2_REG_parallel_out_buf[1]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[21]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[17]),
        .O(\temp_reg[53]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[54]_i_1__0 
       (.I0(TK2_REG_parallel_out_buf[2]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[22]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[18]),
        .O(\temp_reg[54]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[55]_i_1__0 
       (.I0(TK2_REG_parallel_out_buf[3]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[23]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[19]),
        .O(\temp_reg[55]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[56]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[0]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[24]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[20]),
        .O(\temp_reg[56]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[57]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[1]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[25]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[21]),
        .O(\temp_reg[57]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[58]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[2]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[26]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[22]),
        .O(\temp_reg[58]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_reg[59]_i_1__0 
       (.I0(TWEAKEY_permutation_IN__0[3]),
        .I1(\temp_reg_reg[32]_0 ),
        .I2(TWEAKEY_permutation_IN__0[27]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(TWEAKEY_permutation_IN__0[23]),
        .O(\temp_reg[59]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \temp_reg[59]_i_2__0 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\temp_reg_reg[32]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[24]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[24]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TK2_REG_serial_in_buf),
        .Q(\temp_reg_reg[24]_srl7_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[25]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[25]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[63]_0 [0]),
        .Q(\temp_reg_reg[25]_srl7_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[26]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[26]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[63]_0 [1]),
        .Q(\temp_reg_reg[26]_srl7_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[27]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[27]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[63]_0 [2]),
        .Q(\temp_reg_reg[27]_srl7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[24]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[25]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[26]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[27]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[31] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[32]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[0]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hd)) 
    \temp_reg_reg[32]_CE_cooolgate_en_gate_26 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(\temp_reg_reg[32]_0 ),
        .O(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[33]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[34]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[35]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[3]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[36]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[37]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[38]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[39]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[4]),
        .Q(TWEAKEY_permutation_IN__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[5]),
        .Q(TWEAKEY_permutation_IN__0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[6]),
        .Q(TWEAKEY_permutation_IN__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[7]),
        .Q(TWEAKEY_permutation_IN__0[11]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[44]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[12]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[45]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[46]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[47]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[15]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[48]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[16]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[49]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[17]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[50]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[18]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[51]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[19]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[52]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[20]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[53]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[21]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[54]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[22]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[55]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[56]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[24]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[57]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[25]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[58]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg[59]_i_1__0_n_0 ),
        .Q(TWEAKEY_permutation_IN__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[24]),
        .Q(TK2_REG_parallel_out_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[25]),
        .Q(TK2_REG_parallel_out_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[26]),
        .Q(TK2_REG_parallel_out_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(TWEAKEY_permutation_IN__0[27]),
        .Q(TK2_REG_parallel_out_buf[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F088)) 
    \xlnx_opt_LUT_temp_reg_reg[24]_srl7_i_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\xlnx_opt_TK2_REG_serial_in_buf[0] ));
  LUT6 #(
    .INIT(64'h3FF3BBBB00000000)) 
    \xlnx_opt_LUT_temp_reg_reg[24]_srl7_i_1_1 
       (.I0(lopt_2),
        .I1(out[2]),
        .I2(TK2_REG_parallel_out_buf[3]),
        .I3(TK2_REG_parallel_out_buf[2]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\xlnx_opt_TK2_REG_serial_in_buf[0] ),
        .O(TK2_REG_serial_in_buf));
endmodule

module skinny_shift_reg_64
   (\temp_reg_reg[15] ,
    \current_state_reg[1] ,
    \current_state_reg[1]_0 ,
    \temp_reg_reg[15]_0 ,
    \temp_reg_reg[13] ,
    \current_state_reg[2] ,
    \temp_reg_reg[12] ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[15]_1 ,
    \temp_reg_reg[13]_1 ,
    \temp_reg_reg[13]_2 ,
    IS_enable1_buf,
    clk_IBUF_BUFG,
    IS_enable2_buf,
    IS_enable3_buf,
    IS_enable4_buf,
    \FSM_sequential_current_state_reg[2] ,
    current_state,
    start_IBUF,
    rst_IBUF,
    out,
    \temp_reg_reg[63] ,
    \cnt_internal_value_reg[1] ,
    Q,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[4] ,
    \cnt_internal_value_reg[2]_0 ,
    \cnt_internal_value_reg[4]_0 ,
    \lfsr_internal_reg[0] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \cnt_internal_value_reg[4]_1 ,
    \lfsr_internal_reg[2] ,
    \temp_reg_reg[15]_2 ,
    \FSM_sequential_current_state_reg[1] ,
    \lfsr_internal_reg[0]_0 ,
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
    lopt_15,
    lopt_16,
    lopt_17,
    lopt_18,
    lopt_19);
  output [1:0]\temp_reg_reg[15] ;
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \temp_reg_reg[15]_0 ;
  output \temp_reg_reg[13] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[12] ;
  output \temp_reg_reg[13]_0 ;
  output \temp_reg_reg[15]_1 ;
  output \temp_reg_reg[13]_1 ;
  output \temp_reg_reg[13]_2 ;
  input IS_enable1_buf;
  input clk_IBUF_BUFG;
  input IS_enable2_buf;
  input IS_enable3_buf;
  input IS_enable4_buf;
  input [0:0]\FSM_sequential_current_state_reg[2] ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input [2:0]out;
  input \temp_reg_reg[63] ;
  input \cnt_internal_value_reg[1] ;
  input [2:0]Q;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[4] ;
  input \cnt_internal_value_reg[2]_0 ;
  input \cnt_internal_value_reg[4]_0 ;
  input \lfsr_internal_reg[0] ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \cnt_internal_value_reg[4]_1 ;
  input \lfsr_internal_reg[2] ;
  input \temp_reg_reg[15]_2 ;
  input \FSM_sequential_current_state_reg[1] ;
  input [0:0]\lfsr_internal_reg[0]_0 ;
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
  output lopt_10;
  output lopt_11;
  input lopt_12;
  input lopt_13;
  input lopt_14;
  input lopt_15;
  input lopt_16;
  input lopt_17;
  input lopt_18;
  input lopt_19;

  wire \FSM_sequential_current_state_reg[1] ;
  wire [0:0]\FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire INST_FIRST_ROW_SHIFT_REG_n_15;
  wire INST_FIRST_ROW_SHIFT_REG_n_16;
  wire INST_THIRD_ROW_SHIFT_REG_n_4;
  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [3:0]IS_serial_in_first_row_buf;
  wire [2:2]IS_serial_in_fourth_row_buf;
  wire [3:0]IS_serial_in_second_row_buf;
  wire [3:0]IS_serial_in_third_row_buf;
  wire [2:1]IS_serial_output_first_row_buf;
  wire [2:0]IS_serial_output_fourth_row_buf;
  wire [3:0]IS_serial_output_second_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[2]_0 ;
  wire \cnt_internal_value_reg[4]_0 ;
  wire \cnt_internal_value_reg[4]_1 ;
  wire [2:0]current_state;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[2] ;
  wire \lfsr_internal_reg[0] ;
  wire [0:0]\lfsr_internal_reg[0]_0 ;
  wire \lfsr_internal_reg[2] ;
  wire lopt;
  wire lopt_1;
  wire \^lopt_10 ;
  wire \^lopt_11 ;
  wire \^lopt_12 ;
  wire \^lopt_13 ;
  wire \^lopt_14 ;
  wire \^lopt_15 ;
  wire \^lopt_16 ;
  wire \^lopt_17 ;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [2:0]out;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg_reg[12] ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[13]_1 ;
  wire \temp_reg_reg[13]_2 ;
  wire [1:0]\temp_reg_reg[15] ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[15]_2 ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[2]_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[15]_1_UNCONNECTED ;
  wire \NLW_INST_FOURTH_ROW_SHIFT_REG_FSM_sequential_current_state_reg[2]_1_UNCONNECTED ;
  wire \NLW_INST_FOURTH_ROW_SHIFT_REG_cnt_internal_value_reg[4]_UNCONNECTED ;
  wire \NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[63]_UNCONNECTED ;
  wire \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[12]_0_UNCONNECTED ;
  wire \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[13]_0_UNCONNECTED ;

  assign \^lopt_10  = lopt_12;
  assign \^lopt_11  = lopt_13;
  assign \^lopt_12  = lopt_14;
  assign \^lopt_13  = lopt_15;
  assign \^lopt_14  = lopt_16;
  assign \^lopt_15  = lopt_17;
  assign \^lopt_16  = lopt_18;
  assign \^lopt_17  = lopt_19;
  assign lopt_10 = IS_serial_output_third_row_buf[1];
  assign lopt_11 = IS_serial_output_first_row_buf[1];
  IS_shift_reg INST_FIRST_ROW_SHIFT_REG
       (.\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[2] (\FSM_sequential_current_state_reg[2]_0 ),
        .IS_enable1_buf(IS_enable1_buf),
        .IS_serial_in_first_row_buf(IS_serial_in_first_row_buf),
        .IS_serial_in_fourth_row_buf(IS_serial_in_fourth_row_buf),
        .IS_serial_in_second_row_buf(IS_serial_in_second_row_buf),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf[2]),
        .IS_serial_output_second_row_buf(IS_serial_output_second_row_buf),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0] ),
        .\cnt_internal_value_reg[2] (\NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[2]_UNCONNECTED ),
        .\cnt_internal_value_reg[4] (\cnt_internal_value_reg[4]_0 ),
        .\cnt_internal_value_reg[4]_0 (\cnt_internal_value_reg[4]_1 ),
        .current_state(current_state),
        .\current_state_reg[1] (\temp_reg_reg[15] [0]),
        .\current_state_reg[1]_0 (\current_state_reg[1] ),
        .\current_state_reg[1]_1 (\current_state_reg[1]_0 ),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .\lfsr_internal_reg[0] (\lfsr_internal_reg[0] ),
        .\lfsr_internal_reg[0]_0 (\lfsr_internal_reg[0]_0 ),
        .\lfsr_internal_reg[2] (\lfsr_internal_reg[2] ),
        .lopt(lopt_5),
        .lopt_1(lopt_6),
        .lopt_2(lopt_7),
        .lopt_3(lopt_2),
        .lopt_4(lopt_8),
        .lopt_5(lopt_9),
        .out(out),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[12]_0 (\temp_reg_reg[12] ),
        .\temp_reg_reg[13]_0 (\temp_reg_reg[13]_0 ),
        .\temp_reg_reg[14]_0 (INST_FIRST_ROW_SHIFT_REG_n_15),
        .\temp_reg_reg[14]_1 (INST_FIRST_ROW_SHIFT_REG_n_16),
        .\temp_reg_reg[15]_0 (\temp_reg_reg[15] [1]),
        .\temp_reg_reg[15]_1 (\NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[15]_1_UNCONNECTED ),
        .\temp_reg_reg[15]_2 (\temp_reg_reg[15]_2 ));
  IS_shift_reg_1 INST_FOURTH_ROW_SHIFT_REG
       (.\FSM_sequential_current_state_reg[2] (\FSM_sequential_current_state_reg[2] ),
        .\FSM_sequential_current_state_reg[2]_0 (INST_THIRD_ROW_SHIFT_REG_n_4),
        .\FSM_sequential_current_state_reg[2]_1 (\NLW_INST_FOURTH_ROW_SHIFT_REG_FSM_sequential_current_state_reg[2]_1_UNCONNECTED ),
        .IS_enable4_buf(IS_enable4_buf),
        .IS_serial_in_first_row_buf(IS_serial_in_first_row_buf[3]),
        .IS_serial_in_third_row_buf(IS_serial_in_third_row_buf),
        .IS_serial_output_second_row_buf(IS_serial_output_second_row_buf),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1] ),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2]_0 ),
        .\cnt_internal_value_reg[4] (\NLW_INST_FOURTH_ROW_SHIFT_REG_cnt_internal_value_reg[4]_UNCONNECTED ),
        .current_state({current_state[2],current_state[0]}),
        .lopt(\temp_reg_reg[15] [1]),
        .lopt_1(IS_serial_output_first_row_buf[2]),
        .lopt_10(\^lopt_11 ),
        .lopt_11(lopt_6),
        .lopt_12(lopt_5),
        .lopt_13(\^lopt_12 ),
        .lopt_14(\^lopt_13 ),
        .lopt_15(\^lopt_14 ),
        .lopt_16(\^lopt_15 ),
        .lopt_17(\^lopt_16 ),
        .lopt_18(\^lopt_17 ),
        .lopt_2(\temp_reg_reg[15] [0]),
        .lopt_3(lopt),
        .lopt_4(lopt_1),
        .lopt_5(lopt_2),
        .lopt_6(lopt_3),
        .lopt_7(lopt_4),
        .lopt_8(\lfsr_internal_reg[0]_0 ),
        .lopt_9(\^lopt_10 ),
        .out(out),
        .\temp_reg_reg[13]_0 (\temp_reg_reg[13]_1 ),
        .\temp_reg_reg[13]_1 (\temp_reg_reg[13]_2 ),
        .\temp_reg_reg[14]_0 (IS_serial_output_fourth_row_buf),
        .\temp_reg_reg[14]_1 (IS_serial_in_fourth_row_buf),
        .\temp_reg_reg[15]_0 (\temp_reg_reg[15]_0 ),
        .\temp_reg_reg[63] (\NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[63]_UNCONNECTED ));
  IS_shift_reg_2 INST_SECOND_ROW_SHIFT_REG
       (.\FSM_sequential_current_state_reg[1] (INST_FIRST_ROW_SHIFT_REG_n_16),
        .\FSM_sequential_current_state_reg[2] (INST_FIRST_ROW_SHIFT_REG_n_15),
        .IS_enable2_buf(IS_enable2_buf),
        .IS_serial_in_first_row_buf(IS_serial_in_first_row_buf[2:0]),
        .IS_serial_in_second_row_buf(IS_serial_in_second_row_buf),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf),
        .IS_serial_output_second_row_buf(IS_serial_output_second_row_buf),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf[2:0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[12]_0 (\temp_reg_reg[15] [0]),
        .\temp_reg_reg[14]_0 (IS_serial_output_fourth_row_buf));
  IS_shift_reg_3 INST_THIRD_ROW_SHIFT_REG
       (.IS_enable3_buf(IS_enable3_buf),
        .IS_serial_in_third_row_buf(IS_serial_in_third_row_buf),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf[1]),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out),
        .\temp_reg_reg[12]_0 (\NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[12]_0_UNCONNECTED ),
        .\temp_reg_reg[13]_0 (\NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[13]_0_UNCONNECTED ),
        .\temp_reg_reg[15]_0 (INST_THIRD_ROW_SHIFT_REG_n_4),
        .\temp_reg_reg[15]_1 (\temp_reg_reg[15] ));
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
