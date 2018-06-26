// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jun 21 15:55:42 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Skinny/Skinny_128_128_serial/Skinny_128_128_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\current_state_reg[0] ,
    \current_state_reg[0]_0 ,
    \temp_reg_reg[25] ,
    Q,
    \temp_reg_reg[26] ,
    \temp_reg_reg[27] ,
    \temp_reg_reg[29] ,
    \temp_reg_reg[24] ,
    \temp_reg_reg[28] ,
    \temp_reg_reg[28]_0 ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[26]_0 ,
    \temp_reg_reg[31] ,
    p_1_in,
    \temp_reg_reg[30] ,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    \current_state_reg[2]_2 ,
    \current_state_reg[2]_3 ,
    \current_state_reg[2]_4 ,
    \current_state_reg[2]_5 ,
    \temp_reg_reg[30]_0 ,
    \current_state_reg[2]_6 ,
    \current_state_reg[2]_7 ,
    current_state,
    rst_IBUF,
    \temp_reg_reg[25]_1 ,
    \FSM_sequential_current_state_reg[0] ,
    \temp_reg_reg[26]_1 ,
    \temp_reg_reg[27]_0 ,
    \cnt_internal_value_reg[3]_0 ,
    \temp_reg_reg[24]_0 ,
    \current_state_reg[2]_8 ,
    out,
    \FSM_sequential_current_state_reg[2] ,
    \temp_reg_reg[120] ,
    \temp_reg_reg[121] ,
    \temp_reg_reg[122] ,
    \temp_reg_reg[123] ,
    \temp_reg_reg[124] ,
    \temp_reg_reg[125] ,
    \temp_reg_reg[126] ,
    \temp_reg_reg[127] ,
    \temp_reg_reg[24]_1 ,
    \temp_reg_reg[30]_1 ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output \current_state_reg[0] ;
  output \current_state_reg[0]_0 ;
  output \temp_reg_reg[25] ;
  output [3:0]Q;
  output \temp_reg_reg[26] ;
  output \temp_reg_reg[27] ;
  output \temp_reg_reg[29] ;
  output \temp_reg_reg[24] ;
  output \temp_reg_reg[28] ;
  output \temp_reg_reg[28]_0 ;
  output \temp_reg_reg[25]_0 ;
  output \temp_reg_reg[26]_0 ;
  output \temp_reg_reg[31] ;
  output [7:0]p_1_in;
  output \temp_reg_reg[30] ;
  output \current_state_reg[2] ;
  output \current_state_reg[2]_0 ;
  output \current_state_reg[2]_1 ;
  output \current_state_reg[2]_2 ;
  output \current_state_reg[2]_3 ;
  output \current_state_reg[2]_4 ;
  output \current_state_reg[2]_5 ;
  output \temp_reg_reg[30]_0 ;
  output \current_state_reg[2]_6 ;
  output \current_state_reg[2]_7 ;
  input [2:0]current_state;
  input rst_IBUF;
  input \temp_reg_reg[25]_1 ;
  input \FSM_sequential_current_state_reg[0] ;
  input \temp_reg_reg[26]_1 ;
  input \temp_reg_reg[27]_0 ;
  input \cnt_internal_value_reg[3]_0 ;
  input \temp_reg_reg[24]_0 ;
  input \current_state_reg[2]_8 ;
  input [2:0]out;
  input \FSM_sequential_current_state_reg[2] ;
  input \temp_reg_reg[120] ;
  input \temp_reg_reg[121] ;
  input \temp_reg_reg[122] ;
  input \temp_reg_reg[123] ;
  input \temp_reg_reg[124] ;
  input \temp_reg_reg[125] ;
  input \temp_reg_reg[126] ;
  input \temp_reg_reg[127] ;
  input \temp_reg_reg[24]_1 ;
  input \temp_reg_reg[30]_1 ;
  input clk_IBUF_BUFG;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;
  input lopt_6;
  input lopt_7;

  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire [3:0]Q;
  wire ce;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[0]_i_1_n_0 ;
  wire \cnt_internal_value[3]_i_3_n_0 ;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire \current_state_reg[2]_2 ;
  wire \current_state_reg[2]_3 ;
  wire \current_state_reg[2]_4 ;
  wire \current_state_reg[2]_5 ;
  wire \current_state_reg[2]_6 ;
  wire \current_state_reg[2]_7 ;
  wire \current_state_reg[2]_8 ;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire [2:0]out;
  wire [7:0]p_1_in;
  wire [3:1]plusOp;
  wire rst_IBUF;
  wire \temp_reg_reg[120] ;
  wire \temp_reg_reg[121] ;
  wire \temp_reg_reg[122] ;
  wire \temp_reg_reg[123] ;
  wire \temp_reg_reg[124] ;
  wire \temp_reg_reg[125] ;
  wire \temp_reg_reg[126] ;
  wire \temp_reg_reg[127] ;
  wire \temp_reg_reg[27] ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[28] ;
  wire \temp_reg_reg[29] ;
  wire \temp_reg_reg[30] ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[31] ;
  wire \xlnx_opt_temp_reg_reg[29] ;
  wire \xlnx_opt_temp_reg_reg[29]_1 ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q[0]),
        .O(\cnt_internal_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cnt_internal_value[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(plusOp[2]));
  LUT3 #(
    .INIT(8'hC2)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .O(ce));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_internal_value[3]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\cnt_internal_value[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(\cnt_internal_value[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(plusOp[3]),
        .Q(Q[3]));
  LUT5 #(
    .INIT(32'hFFFF4C44)) 
    \current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\current_state_reg[0]_0 ),
        .I4(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\current_state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h8AB6)) 
    \current_state[2]_i_10 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\current_state_reg[2]_5 ));
  LUT4 #(
    .INIT(16'h96C4)) 
    \current_state[2]_i_17 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\current_state_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h0695)) 
    \current_state[2]_i_19 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\current_state_reg[2]_3 ));
  LUT4 #(
    .INIT(16'h5D21)) 
    \current_state[2]_i_20 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\current_state_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h5B99)) 
    \current_state[2]_i_21 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\current_state_reg[2]_4 ));
  LUT4 #(
    .INIT(16'h808A)) 
    \current_state[2]_i_22 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\current_state_reg[2]_6 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \current_state[2]_i_23 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .O(\current_state_reg[2]_7 ));
  LUT4 #(
    .INIT(16'h3F71)) 
    \current_state[2]_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\current_state_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hAFBAAAAAFFBAAAAA)) 
    \temp_reg_reg[19]_srl3_i_5 
       (.I0(\temp_reg_reg[27]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(Q[3]),
        .O(\temp_reg_reg[27] ));
  LUT5 #(
    .INIT(32'h8800C00C)) 
    \temp_reg_reg[20]_srl3_i_5 
       (.I0(Q[1]),
        .I1(\current_state_reg[2]_8 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\temp_reg_reg[28] ));
  LUT5 #(
    .INIT(32'h54450000)) 
    \temp_reg_reg[22]_srl3_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .O(\temp_reg_reg[30] ));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg_reg[22]_srl3_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\temp_reg_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h1445550100000000)) 
    \temp_reg_reg[23]_srl3_i_5 
       (.I0(out[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\current_state_reg[2]_8 ),
        .O(\temp_reg_reg[31] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF880882AA)) 
    \temp_reg_reg[48]_srl7_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\temp_reg_reg[120] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8828A82)) 
    \temp_reg_reg[49]_srl7_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\temp_reg_reg[121] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF65DB0000)) 
    \temp_reg_reg[50]_srl7_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\temp_reg_reg[122] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hBEBBABEBAAAAAAAA)) 
    \temp_reg_reg[51]_srl7_i_1 
       (.I0(\temp_reg_reg[123] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\FSM_sequential_current_state_reg[2] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCFB20000)) 
    \temp_reg_reg[52]_srl7_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\temp_reg_reg[124] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF1A0C0000)) 
    \temp_reg_reg[53]_srl7_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\temp_reg_reg[125] ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF419F0000)) 
    \temp_reg_reg[54]_srl7_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\temp_reg_reg[126] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF862E0000)) 
    \temp_reg_reg[55]_srl7_i_2 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\temp_reg_reg[127] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hF7FF07030703F7FF)) 
    \xlnx_opt_LUT_temp_reg_reg[21]_srl3_i_1 
       (.I0(lopt),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(lopt_1),
        .I5(lopt_2),
        .O(\xlnx_opt_temp_reg_reg[29]_1 ));
  LUT6 #(
    .INIT(64'h10E000F0FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[21]_srl3_i_1_1 
       (.I0(lopt_3),
        .I1(lopt_4),
        .I2(lopt_5),
        .I3(lopt_6),
        .I4(lopt_7),
        .I5(\xlnx_opt_temp_reg_reg[29]_1 ),
        .O(\xlnx_opt_temp_reg_reg[29] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF50703010)) 
    \xlnx_opt_LUT_temp_reg_reg[21]_srl3_i_1_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_sequential_current_state_reg[0] ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\xlnx_opt_temp_reg_reg[29] ),
        .O(\temp_reg_reg[29] ));
endmodule

module IS_shift_reg
   (IS_serial_output_first_row_buf,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[28]_0 ,
    \temp_reg_reg[27]_0 ,
    \temp_reg_reg[26]_0 ,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 ,
    \current_state_reg[1] ,
    \temp_reg_reg[28]_1 ,
    \current_state_reg[2]_1 ,
    \current_state_reg[2]_2 ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[26]_1 ,
    \temp_reg_reg[31]_1 ,
    \temp_reg_reg[30]_0 ,
    \temp_reg_reg[24]_0 ,
    \temp_reg_reg[24]_1 ,
    IS_enable1_buf,
    \temp_reg_reg[31]_2 ,
    clk_IBUF_BUFG,
    \temp_reg_reg[30]_1 ,
    \temp_reg_reg[29]_1 ,
    \temp_reg_reg[28]_2 ,
    \temp_reg_reg[27]_1 ,
    \temp_reg_reg[26]_2 ,
    \temp_reg_reg[25]_1 ,
    \temp_reg_reg[24]_2 ,
    \current_state_reg[2]_3 ,
    current_state,
    \temp_reg_reg[25]_2 ,
    \cnt_internal_value_reg[2] ,
    rst_IBUF,
    \cnt_internal_value_reg[1] ,
    \current_state_reg[0] ,
    \lfsr_internal_reg[4] ,
    \FSM_sequential_current_state_reg[1] ,
    \lfsr_internal_reg[2] ,
    \lfsr_internal_reg[2]_0 ,
    out,
    \temp_reg_reg[28]_3 ,
    \cnt_internal_value_reg[1]_0 ,
    \cnt_internal_value_reg[1]_1 ,
    \cnt_internal_value_reg[1]_2 ,
    \lfsr_internal_reg[3] ,
    \cnt_internal_value_reg[3] ,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[1]_3 ,
    \lfsr_internal_reg[5] ,
    \lfsr_internal_reg[2]_1 ,
    \cnt_internal_value_reg[3]_0 ,
    \cnt_internal_value_reg[1]_4 ,
    IS_serial_output_third_row_buf,
    IS_serial_output_fourth_row_buf,
    TW_REG_parallel_out_buf,
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
  output [2:0]IS_serial_output_first_row_buf;
  output \temp_reg_reg[29]_0 ;
  output \temp_reg_reg[28]_0 ;
  output \temp_reg_reg[27]_0 ;
  output \temp_reg_reg[26]_0 ;
  output \current_state_reg[2] ;
  output \current_state_reg[2]_0 ;
  output \current_state_reg[1] ;
  output \temp_reg_reg[28]_1 ;
  output \current_state_reg[2]_1 ;
  output \current_state_reg[2]_2 ;
  output \temp_reg_reg[25]_0 ;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[26]_1 ;
  output \temp_reg_reg[31]_1 ;
  output \temp_reg_reg[30]_0 ;
  output \temp_reg_reg[24]_0 ;
  output \temp_reg_reg[24]_1 ;
  input IS_enable1_buf;
  input \temp_reg_reg[31]_2 ;
  input clk_IBUF_BUFG;
  input \temp_reg_reg[30]_1 ;
  input \temp_reg_reg[29]_1 ;
  input \temp_reg_reg[28]_2 ;
  input \temp_reg_reg[27]_1 ;
  input \temp_reg_reg[26]_2 ;
  input \temp_reg_reg[25]_1 ;
  input \temp_reg_reg[24]_2 ;
  input \current_state_reg[2]_3 ;
  input [2:0]current_state;
  input \temp_reg_reg[25]_2 ;
  input \cnt_internal_value_reg[2] ;
  input rst_IBUF;
  input \cnt_internal_value_reg[1] ;
  input \current_state_reg[0] ;
  input \lfsr_internal_reg[4] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \lfsr_internal_reg[2] ;
  input \lfsr_internal_reg[2]_0 ;
  input [2:0]out;
  input \temp_reg_reg[28]_3 ;
  input \cnt_internal_value_reg[1]_0 ;
  input \cnt_internal_value_reg[1]_1 ;
  input \cnt_internal_value_reg[1]_2 ;
  input \lfsr_internal_reg[3] ;
  input \cnt_internal_value_reg[3] ;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[1]_3 ;
  input \lfsr_internal_reg[5] ;
  input [0:0]\lfsr_internal_reg[2]_1 ;
  input \cnt_internal_value_reg[3]_0 ;
  input \cnt_internal_value_reg[1]_4 ;
  input [0:0]IS_serial_output_third_row_buf;
  input [0:0]IS_serial_output_fourth_row_buf;
  input [1:0]TW_REG_parallel_out_buf;
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

  wire IS_enable1_buf;
  wire [2:0]IS_serial_output_first_row_buf;
  wire [0:0]IS_serial_output_fourth_row_buf;
  wire [0:0]IS_serial_output_third_row_buf;
  wire [1:0]TW_REG_parallel_out_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[1]_1 ;
  wire \cnt_internal_value_reg[1]_2 ;
  wire \cnt_internal_value_reg[1]_3 ;
  wire \cnt_internal_value_reg[3] ;
  wire \cnt_internal_value_reg[3]_0 ;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_3 ;
  wire \lfsr_internal_reg[2] ;
  wire \lfsr_internal_reg[2]_0 ;
  wire \lfsr_internal_reg[3] ;
  wire \lfsr_internal_reg[4] ;
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
  wire [2:0]out;
  wire rst_IBUF;
  wire \temp_reg_reg[16]_srl3_n_0 ;
  wire \temp_reg_reg[17]_srl3_n_0 ;
  wire \temp_reg_reg[18]_srl3_n_0 ;
  wire \temp_reg_reg[19]_srl3_n_0 ;
  wire \temp_reg_reg[20]_srl3_i_7_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \temp_reg_reg[21]_srl3_n_0 ;
  wire \temp_reg_reg[22]_srl3_n_0 ;
  wire \temp_reg_reg[23]_srl3_n_0 ;
  wire \temp_reg_reg[24]_1 ;
  wire \temp_reg_reg[24]_2 ;
  wire \temp_reg_reg[25]_1 ;
  wire \temp_reg_reg[26]_0 ;
  wire \temp_reg_reg[26]_2 ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[27]_1 ;
  wire \temp_reg_reg[28]_0 ;
  wire \temp_reg_reg[28]_1 ;
  wire \temp_reg_reg[28]_2 ;
  wire \temp_reg_reg[29]_0 ;
  wire \temp_reg_reg[29]_1 ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[30]_1 ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[31]_1 ;
  wire \temp_reg_reg[31]_2 ;
  wire \xlnx_opt_current_state_reg[2]_0 ;
  wire \xlnx_opt_current_state_reg[2]_0_1 ;
  wire \xlnx_opt_current_state_reg[2]_0_2 ;
  wire \xlnx_opt_current_state_reg[2]_0_3 ;
  wire \xlnx_opt_current_state_reg[2]_0_4 ;
  wire \xlnx_opt_current_state_reg[2]_0_5 ;
  wire \xlnx_opt_current_state_reg[2]_0_6 ;
  wire \xlnx_opt_current_state_reg[2]_0_7 ;
  wire \xlnx_opt_temp_reg_reg[28]_1 ;
  wire \xlnx_opt_temp_reg_reg[28]_1_1 ;
  wire \xlnx_opt_temp_reg_reg[28]_1_2 ;
  wire \xlnx_opt_temp_reg_reg[28]_1_3 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \current_state[1]_i_3 
       (.I0(current_state[2]),
        .I1(IS_serial_output_first_row_buf[1]),
        .I2(IS_serial_output_first_row_buf[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(IS_serial_output_first_row_buf[0]),
        .O(\current_state_reg[1] ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[24]_2 ),
        .Q(\temp_reg_reg[16]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[25]_1 ),
        .Q(\temp_reg_reg[17]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[26]_2 ),
        .Q(\temp_reg_reg[18]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[27]_1 ),
        .Q(\temp_reg_reg[19]_srl3_n_0 ));
  LUT4 #(
    .INIT(16'h14EB)) 
    \temp_reg_reg[19]_srl3_i_10 
       (.I0(\temp_reg_reg[27]_0 ),
        .I1(\temp_reg_reg[26]_0 ),
        .I2(IS_serial_output_first_row_buf[0]),
        .I3(\current_state_reg[2] ),
        .O(\temp_reg_reg[24]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[28]_2 ),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  LUT5 #(
    .INIT(32'hDDD7EEEB)) 
    \temp_reg_reg[20]_srl3_i_7 
       (.I0(\temp_reg_reg[29]_0 ),
        .I1(\temp_reg_reg[28]_0 ),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(IS_serial_output_first_row_buf[2]),
        .I4(\temp_reg_reg[31]_1 ),
        .O(\temp_reg_reg[20]_srl3_i_7_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[21]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[21]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[29]_1 ),
        .Q(\temp_reg_reg[21]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[22]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[22]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[30]_1 ),
        .Q(\temp_reg_reg[22]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE11EE1E1)) 
    \temp_reg_reg[22]_srl3_i_4 
       (.I0(IS_serial_output_first_row_buf[2]),
        .I1(IS_serial_output_first_row_buf[1]),
        .I2(\temp_reg_reg[28]_0 ),
        .I3(\cnt_internal_value_reg[3]_0 ),
        .I4(TW_REG_parallel_out_buf[1]),
        .I5(out[0]),
        .O(\temp_reg_reg[30]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[23]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[23]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable1_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[31]_2 ),
        .Q(\temp_reg_reg[23]_srl3_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \temp_reg_reg[23]_srl3_i_10 
       (.I0(\temp_reg_reg[27]_0 ),
        .I1(\temp_reg_reg[26]_0 ),
        .I2(IS_serial_output_first_row_buf[0]),
        .O(\temp_reg_reg[31]_1 ));
  LUT5 #(
    .INIT(32'h02A8FD57)) 
    \temp_reg_reg[23]_srl3_i_8 
       (.I0(\temp_reg_reg[31]_1 ),
        .I1(IS_serial_output_first_row_buf[2]),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(\temp_reg_reg[28]_0 ),
        .I4(\temp_reg_reg[29]_0 ),
        .O(\temp_reg_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[16]_srl3_n_0 ),
        .Q(IS_serial_output_first_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[17]_srl3_n_0 ),
        .Q(\current_state_reg[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[18]_srl3_n_0 ),
        .Q(\temp_reg_reg[26]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[19]_srl3_n_0 ),
        .Q(\temp_reg_reg[27]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(\temp_reg_reg[28]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[21]_srl3_n_0 ),
        .Q(\temp_reg_reg[29]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[22]_srl3_n_0 ),
        .Q(IS_serial_output_first_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[23]_srl3_n_0 ),
        .Q(IS_serial_output_first_row_buf[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h98)) 
    \xlnx_opt_LUT_current_state[2]_i_1 
       (.I0(lopt_4),
        .I1(out[2]),
        .I2(lopt_3),
        .O(\xlnx_opt_current_state_reg[2]_0_7 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_1_1 
       (.I0(\temp_reg_reg[27]_0 ),
        .I1(\lfsr_internal_reg[2] ),
        .I2(\lfsr_internal_reg[2]_0 ),
        .I3(\temp_reg_reg[29]_0 ),
        .I4(\current_state_reg[1] ),
        .I5(\xlnx_opt_current_state_reg[2]_0_7 ),
        .O(\xlnx_opt_current_state_reg[2]_0_6 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFB00FB)) 
    \xlnx_opt_LUT_current_state[2]_i_1_2 
       (.I0(\cnt_internal_value_reg[1] ),
        .I1(\current_state_reg[0] ),
        .I2(current_state[1]),
        .I3(\current_state_reg[2] ),
        .I4(\lfsr_internal_reg[4] ),
        .I5(\xlnx_opt_current_state_reg[2]_0_6 ),
        .O(\xlnx_opt_current_state_reg[2]_0_5 ));
  LUT6 #(
    .INIT(64'hFFFFFDDF00FFF22F)) 
    \xlnx_opt_LUT_current_state[2]_i_1_3 
       (.I0(\temp_reg_reg[27]_0 ),
        .I1(\lfsr_internal_reg[2]_0 ),
        .I2(lopt_5),
        .I3(lopt_6),
        .I4(\lfsr_internal_reg[3] ),
        .I5(lopt_7),
        .O(\xlnx_opt_current_state_reg[2]_0_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3DED2FF)) 
    \xlnx_opt_LUT_current_state[2]_i_1_4 
       (.I0(\current_state_reg[2] ),
        .I1(\lfsr_internal_reg[4] ),
        .I2(lopt_8),
        .I3(lopt_9),
        .I4(lopt_10),
        .I5(\xlnx_opt_current_state_reg[2]_0_4 ),
        .O(\xlnx_opt_current_state_reg[2]_0_3 ));
  LUT6 #(
    .INIT(64'hFBFFFFFBFEFF0504)) 
    \xlnx_opt_LUT_current_state[2]_i_1_5 
       (.I0(\lfsr_internal_reg[2]_0 ),
        .I1(\temp_reg_reg[29]_0 ),
        .I2(\lfsr_internal_reg[3] ),
        .I3(IS_serial_output_first_row_buf[0]),
        .I4(\cnt_internal_value_reg[1]_2 ),
        .I5(\cnt_internal_value_reg[3] ),
        .O(\xlnx_opt_current_state_reg[2]_0_2 ));
  LUT6 #(
    .INIT(64'hEE00EF1001100000)) 
    \xlnx_opt_LUT_current_state[2]_i_1_6 
       (.I0(\lfsr_internal_reg[2]_0 ),
        .I1(\lfsr_internal_reg[3] ),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(\cnt_internal_value_reg[0] ),
        .I4(IS_serial_output_first_row_buf[2]),
        .I5(\cnt_internal_value_reg[1]_3 ),
        .O(\xlnx_opt_current_state_reg[2]_0_1 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_1_7 
       (.I0(lopt_11),
        .I1(lopt_2),
        .I2(lopt_12),
        .I3(lopt_1),
        .I4(\xlnx_opt_current_state_reg[2]_0_2 ),
        .I5(\xlnx_opt_current_state_reg[2]_0_1 ),
        .O(\xlnx_opt_current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0A000A000A000B00)) 
    \xlnx_opt_LUT_current_state[2]_i_1_8 
       (.I0(\current_state_reg[2]_3 ),
        .I1(current_state[0]),
        .I2(rst_IBUF),
        .I3(\xlnx_opt_current_state_reg[2]_0_5 ),
        .I4(\xlnx_opt_current_state_reg[2]_0_3 ),
        .I5(\xlnx_opt_current_state_reg[2]_0 ),
        .O(\current_state_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xlnx_opt_LUT_temp_reg_reg[20]_srl3_i_1 
       (.I0(IS_serial_output_third_row_buf),
        .I1(lopt),
        .O(\xlnx_opt_temp_reg_reg[28]_1_3 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[20]_srl3_i_1_1 
       (.I0(lopt_1),
        .I1(lopt_2),
        .I2(lopt_3),
        .I3(lopt_4),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(\xlnx_opt_temp_reg_reg[28]_1_2 ));
  LUT6 #(
    .INIT(64'hBBFBFFBFFFBFBBFB)) 
    \xlnx_opt_LUT_temp_reg_reg[20]_srl3_i_1_2 
       (.I0(lopt_3),
        .I1(lopt_4),
        .I2(TW_REG_parallel_out_buf[0]),
        .I3(\cnt_internal_value_reg[3]_0 ),
        .I4(\temp_reg_reg[27]_0 ),
        .I5(\temp_reg_reg[20]_srl3_i_7_n_0 ),
        .O(\xlnx_opt_temp_reg_reg[28]_1_1 ));
  LUT6 #(
    .INIT(64'hFFFFF060FFFF0060)) 
    \xlnx_opt_LUT_temp_reg_reg[20]_srl3_i_1_3 
       (.I0(IS_serial_output_third_row_buf),
        .I1(lopt),
        .I2(lopt_3),
        .I3(lopt_4),
        .I4(out[2]),
        .I5(IS_serial_output_fourth_row_buf),
        .O(\xlnx_opt_temp_reg_reg[28]_1 ));
  LUT6 #(
    .INIT(64'h5F5F5F5F4C5F5F5F)) 
    \xlnx_opt_LUT_temp_reg_reg[20]_srl3_i_1_4 
       (.I0(out[2]),
        .I1(\cnt_internal_value_reg[1]_1 ),
        .I2(\xlnx_opt_temp_reg_reg[28]_1_3 ),
        .I3(\xlnx_opt_temp_reg_reg[28]_1_2 ),
        .I4(\xlnx_opt_temp_reg_reg[28]_1_1 ),
        .I5(\xlnx_opt_temp_reg_reg[28]_1 ),
        .O(\temp_reg_reg[28]_1 ));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_0
   (IS_serial_output_fourth_row_buf,
    \FSM_sequential_current_state_reg[2] ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[26]_0 ,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[30]_0 ,
    \temp_reg_reg[27]_0 ,
    \temp_reg_reg[29]_1 ,
    \temp_reg_reg[24]_0 ,
    \temp_reg_reg[24]_1 ,
    IS_enable4_buf,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[1] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \cnt_internal_value_reg[2] ,
    \temp_reg_reg[122] ,
    \temp_reg_reg[121] ,
    \FSM_sequential_current_state_reg[2]_1 ,
    \cnt_internal_value_reg[1]_0 ,
    \cnt_internal_value_reg[0] ,
    out,
    \temp_reg_reg[31]_1 ,
    IS_serial_output_third_row_buf,
    \temp_reg_reg[25]_1 ,
    \temp_reg_reg[26]_1 ,
    Q,
    \temp_reg_reg[27]_1 ,
    TW_REG_parallel_out_buf,
    \temp_reg_reg[29]_2 ,
    \FSM_sequential_current_state_reg[2]_2 ,
    \cnt_internal_value_reg[3] ,
    \temp_reg_reg[31]_2 ,
    IS_serial_output_first_row_buf,
    current_state,
    \cnt_internal_value_reg[0]_0 );
  output [7:0]IS_serial_output_fourth_row_buf;
  output \FSM_sequential_current_state_reg[2] ;
  output \temp_reg_reg[25]_0 ;
  output \temp_reg_reg[26]_0 ;
  output \temp_reg_reg[29]_0 ;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[30]_0 ;
  output \temp_reg_reg[27]_0 ;
  output \temp_reg_reg[29]_1 ;
  output \temp_reg_reg[24]_0 ;
  output \temp_reg_reg[24]_1 ;
  input IS_enable4_buf;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[1] ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \cnt_internal_value_reg[2] ;
  input \temp_reg_reg[122] ;
  input \temp_reg_reg[121] ;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input \cnt_internal_value_reg[1]_0 ;
  input \cnt_internal_value_reg[0] ;
  input [2:0]out;
  input \temp_reg_reg[31]_1 ;
  input [3:0]IS_serial_output_third_row_buf;
  input \temp_reg_reg[25]_1 ;
  input \temp_reg_reg[26]_1 ;
  input [1:0]Q;
  input \temp_reg_reg[27]_1 ;
  input [1:0]TW_REG_parallel_out_buf;
  input \temp_reg_reg[29]_2 ;
  input \FSM_sequential_current_state_reg[2]_2 ;
  input \cnt_internal_value_reg[3] ;
  input \temp_reg_reg[31]_2 ;
  input [0:0]IS_serial_output_first_row_buf;
  input [1:0]current_state;
  input [0:0]\cnt_internal_value_reg[0]_0 ;

  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[2]_2 ;
  wire IS_enable4_buf;
  wire [0:0]IS_serial_output_first_row_buf;
  wire [7:0]IS_serial_output_fourth_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire [1:0]TW_REG_parallel_out_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire [0:0]\cnt_internal_value_reg[0]_0 ;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[1]_0 ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[3] ;
  wire [1:0]current_state;
  wire [2:0]out;
  wire \temp_reg_reg[121] ;
  wire \temp_reg_reg[122] ;
  wire \temp_reg_reg[16]_srl3_n_0 ;
  wire \temp_reg_reg[17]_srl3_n_0 ;
  wire \temp_reg_reg[18]_srl3_n_0 ;
  wire \temp_reg_reg[19]_srl3_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \temp_reg_reg[21]_srl3_n_0 ;
  wire \temp_reg_reg[22]_srl3_i_1_n_0 ;
  wire \temp_reg_reg[22]_srl3_n_0 ;
  wire \temp_reg_reg[23]_srl3_i_2_n_0 ;
  wire \temp_reg_reg[23]_srl3_i_4_n_0 ;
  wire \temp_reg_reg[23]_srl3_n_0 ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[24]_1 ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[29]_1 ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[31]_1 ;
  wire \temp_reg_reg[31]_2 ;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .O(\FSM_sequential_current_state_reg[2] ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\FSM_sequential_current_state_reg[2]_1 ),
        .Q(\temp_reg_reg[16]_srl3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \temp_reg_reg[16]_srl3_i_5 
       (.I0(out[0]),
        .I1(IS_serial_output_fourth_row_buf[0]),
        .I2(out[1]),
        .O(\temp_reg_reg[24]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[121] ),
        .Q(\temp_reg_reg[17]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[122] ),
        .Q(\temp_reg_reg[18]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[2] ),
        .Q(\temp_reg_reg[19]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \temp_reg_reg[19]_srl3_i_4 
       (.I0(out[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\cnt_internal_value_reg[0]_0 ),
        .O(\temp_reg_reg[27]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\FSM_sequential_current_state_reg[2]_0 ),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[21]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[21]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] ),
        .Q(\temp_reg_reg[21]_srl3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \temp_reg_reg[21]_srl3_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(out[2]),
        .O(\temp_reg_reg[29]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[22]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[22]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[22]_srl3_i_1_n_0 ),
        .Q(\temp_reg_reg[22]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFCFCFCFCFCFC)) 
    \temp_reg_reg[22]_srl3_i_1 
       (.I0(IS_serial_output_fourth_row_buf[6]),
        .I1(\cnt_internal_value_reg[1]_0 ),
        .I2(\cnt_internal_value_reg[0] ),
        .I3(out[0]),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\temp_reg_reg[31]_1 ),
        .O(\temp_reg_reg[22]_srl3_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \temp_reg_reg[22]_srl3_i_6 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(\temp_reg_reg[30]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[23]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[23]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable4_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[23]_srl3_i_2_n_0 ),
        .Q(\temp_reg_reg[23]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEFFEEEFEE)) 
    \temp_reg_reg[23]_srl3_i_2 
       (.I0(\temp_reg_reg[23]_srl3_i_4_n_0 ),
        .I1(\FSM_sequential_current_state_reg[2]_2 ),
        .I2(TW_REG_parallel_out_buf[1]),
        .I3(\temp_reg_reg[31]_0 ),
        .I4(\cnt_internal_value_reg[3] ),
        .I5(\temp_reg_reg[31]_2 ),
        .O(\temp_reg_reg[23]_srl3_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800F8FCF8FC0800)) 
    \temp_reg_reg[23]_srl3_i_4 
       (.I0(IS_serial_output_fourth_row_buf[7]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[3]),
        .I5(IS_serial_output_first_row_buf),
        .O(\temp_reg_reg[23]_srl3_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_reg[23]_srl3_i_6 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .O(\temp_reg_reg[31]_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \temp_reg_reg[23]_srl3_i_9 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\temp_reg_reg[24]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[16]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[17]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[18]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[19]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[21]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[22]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[23]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_1
   (\temp_reg_reg[24]_0 ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[26]_0 ,
    \temp_reg_reg[27]_0 ,
    \temp_reg_reg[28]_0 ,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[30]_0 ,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[24]_1 ,
    \temp_reg_reg[25]_1 ,
    \temp_reg_reg[26]_1 ,
    \temp_reg_reg[27]_1 ,
    \temp_reg_reg[28]_1 ,
    \temp_reg_reg[29]_1 ,
    \temp_reg_reg[30]_1 ,
    \temp_reg_reg[31]_1 ,
    IS_enable2_buf,
    clk_IBUF_BUFG,
    IS_serial_output_third_row_buf,
    IS_serial_output_first_row_buf,
    out,
    IS_serial_output_fourth_row_buf,
    \temp_reg_reg[25]_2 ,
    \temp_reg_reg[26]_2 ,
    \temp_reg_reg[27]_2 ,
    \temp_reg_reg[28]_2 ,
    \temp_reg_reg[29]_2 );
  output \temp_reg_reg[24]_0 ;
  output \temp_reg_reg[25]_0 ;
  output \temp_reg_reg[26]_0 ;
  output \temp_reg_reg[27]_0 ;
  output \temp_reg_reg[28]_0 ;
  output \temp_reg_reg[29]_0 ;
  output \temp_reg_reg[30]_0 ;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[24]_1 ;
  output \temp_reg_reg[25]_1 ;
  output \temp_reg_reg[26]_1 ;
  output \temp_reg_reg[27]_1 ;
  output \temp_reg_reg[28]_1 ;
  output \temp_reg_reg[29]_1 ;
  output \temp_reg_reg[30]_1 ;
  output \temp_reg_reg[31]_1 ;
  input IS_enable2_buf;
  input clk_IBUF_BUFG;
  input [7:0]IS_serial_output_third_row_buf;
  input [2:0]IS_serial_output_first_row_buf;
  input [2:0]out;
  input [7:0]IS_serial_output_fourth_row_buf;
  input \temp_reg_reg[25]_2 ;
  input \temp_reg_reg[26]_2 ;
  input \temp_reg_reg[27]_2 ;
  input \temp_reg_reg[28]_2 ;
  input \temp_reg_reg[29]_2 ;

  wire IS_enable2_buf;
  wire [2:0]IS_serial_output_first_row_buf;
  wire [7:0]IS_serial_output_fourth_row_buf;
  wire [7:0]IS_serial_output_second_row_buf;
  wire [7:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire \temp_reg_reg[16]_srl3_i_1__1_n_0 ;
  wire \temp_reg_reg[16]_srl3_n_0 ;
  wire \temp_reg_reg[17]_srl3_i_1__1_n_0 ;
  wire \temp_reg_reg[17]_srl3_n_0 ;
  wire \temp_reg_reg[18]_srl3_i_1__1_n_0 ;
  wire \temp_reg_reg[18]_srl3_n_0 ;
  wire \temp_reg_reg[19]_srl3_i_1__1_n_0 ;
  wire \temp_reg_reg[19]_srl3_n_0 ;
  wire \temp_reg_reg[20]_srl3_i_1__1_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \temp_reg_reg[21]_srl3_i_1__1_n_0 ;
  wire \temp_reg_reg[21]_srl3_n_0 ;
  wire \temp_reg_reg[22]_srl3_i_1__1_n_0 ;
  wire \temp_reg_reg[22]_srl3_n_0 ;
  wire \temp_reg_reg[23]_srl3_i_2__1_n_0 ;
  wire \temp_reg_reg[23]_srl3_n_0 ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[24]_1 ;
  wire \temp_reg_reg[25]_0 ;
  wire \temp_reg_reg[25]_1 ;
  wire \temp_reg_reg[25]_2 ;
  wire \temp_reg_reg[26]_0 ;
  wire \temp_reg_reg[26]_1 ;
  wire \temp_reg_reg[26]_2 ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[27]_1 ;
  wire \temp_reg_reg[27]_2 ;
  wire \temp_reg_reg[28]_0 ;
  wire \temp_reg_reg[28]_1 ;
  wire \temp_reg_reg[28]_2 ;
  wire \temp_reg_reg[29]_0 ;
  wire \temp_reg_reg[29]_1 ;
  wire \temp_reg_reg[29]_2 ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[30]_1 ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[31]_1 ;

  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[16]_srl3_i_1__1_n_0 ),
        .Q(\temp_reg_reg[16]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h00AAC3AA00AA3CAA)) 
    \temp_reg_reg[16]_srl3_i_1__0 
       (.I0(IS_serial_output_second_row_buf[0]),
        .I1(IS_serial_output_third_row_buf[0]),
        .I2(IS_serial_output_first_row_buf[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(IS_serial_output_fourth_row_buf[0]),
        .O(\temp_reg_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[16]_srl3_i_1__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[0]),
        .I2(IS_serial_output_third_row_buf[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(IS_serial_output_first_row_buf[0]),
        .O(\temp_reg_reg[16]_srl3_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[16]_srl3_i_1__2 
       (.I0(IS_serial_output_second_row_buf[0]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[0]),
        .I5(IS_serial_output_fourth_row_buf[0]),
        .O(\temp_reg_reg[24]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[17]_srl3_i_1__1_n_0 ),
        .Q(\temp_reg_reg[17]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A0A3A0A3A3A0A)) 
    \temp_reg_reg[17]_srl3_i_1__0 
       (.I0(IS_serial_output_second_row_buf[1]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(\temp_reg_reg[25]_2 ),
        .I4(IS_serial_output_third_row_buf[1]),
        .I5(IS_serial_output_fourth_row_buf[1]),
        .O(\temp_reg_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[17]_srl3_i_1__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[1]),
        .I2(IS_serial_output_third_row_buf[1]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\temp_reg_reg[25]_2 ),
        .O(\temp_reg_reg[17]_srl3_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[17]_srl3_i_1__2 
       (.I0(IS_serial_output_second_row_buf[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[1]),
        .I5(IS_serial_output_fourth_row_buf[1]),
        .O(\temp_reg_reg[25]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[18]_srl3_i_1__1_n_0 ),
        .Q(\temp_reg_reg[18]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A0A3A0A3A3A0A)) 
    \temp_reg_reg[18]_srl3_i_1__0 
       (.I0(IS_serial_output_second_row_buf[2]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(\temp_reg_reg[26]_2 ),
        .I4(IS_serial_output_third_row_buf[2]),
        .I5(IS_serial_output_fourth_row_buf[2]),
        .O(\temp_reg_reg[26]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[18]_srl3_i_1__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[2]),
        .I2(IS_serial_output_third_row_buf[2]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\temp_reg_reg[26]_2 ),
        .O(\temp_reg_reg[18]_srl3_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[18]_srl3_i_1__2 
       (.I0(IS_serial_output_second_row_buf[2]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[2]),
        .I5(IS_serial_output_fourth_row_buf[2]),
        .O(\temp_reg_reg[26]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[19]_srl3_i_1__1_n_0 ),
        .Q(\temp_reg_reg[19]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAAC33CAAAA)) 
    \temp_reg_reg[19]_srl3_i_1__0 
       (.I0(IS_serial_output_second_row_buf[3]),
        .I1(IS_serial_output_third_row_buf[3]),
        .I2(\temp_reg_reg[27]_2 ),
        .I3(IS_serial_output_fourth_row_buf[3]),
        .I4(out[2]),
        .I5(out[1]),
        .O(\temp_reg_reg[27]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[19]_srl3_i_1__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[3]),
        .I2(IS_serial_output_third_row_buf[3]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\temp_reg_reg[27]_2 ),
        .O(\temp_reg_reg[19]_srl3_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[19]_srl3_i_1__2 
       (.I0(IS_serial_output_second_row_buf[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[3]),
        .I5(IS_serial_output_fourth_row_buf[3]),
        .O(\temp_reg_reg[27]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[20]_srl3_i_1__1_n_0 ),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAAC33CAAAA)) 
    \temp_reg_reg[20]_srl3_i_1__0 
       (.I0(IS_serial_output_second_row_buf[4]),
        .I1(IS_serial_output_third_row_buf[4]),
        .I2(\temp_reg_reg[28]_2 ),
        .I3(IS_serial_output_fourth_row_buf[4]),
        .I4(out[2]),
        .I5(out[1]),
        .O(\temp_reg_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[20]_srl3_i_1__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[4]),
        .I2(IS_serial_output_third_row_buf[4]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\temp_reg_reg[28]_2 ),
        .O(\temp_reg_reg[20]_srl3_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[20]_srl3_i_1__2 
       (.I0(IS_serial_output_second_row_buf[4]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[4]),
        .I5(IS_serial_output_fourth_row_buf[4]),
        .O(\temp_reg_reg[28]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[21]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[21]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[21]_srl3_i_1__1_n_0 ),
        .Q(\temp_reg_reg[21]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A0A3A0A3A3A0A)) 
    \temp_reg_reg[21]_srl3_i_1__0 
       (.I0(IS_serial_output_second_row_buf[5]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(\temp_reg_reg[29]_2 ),
        .I4(IS_serial_output_third_row_buf[5]),
        .I5(IS_serial_output_fourth_row_buf[5]),
        .O(\temp_reg_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[21]_srl3_i_1__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[5]),
        .I2(IS_serial_output_third_row_buf[5]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\temp_reg_reg[29]_2 ),
        .O(\temp_reg_reg[21]_srl3_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[21]_srl3_i_1__2 
       (.I0(IS_serial_output_second_row_buf[5]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[5]),
        .I5(IS_serial_output_fourth_row_buf[5]),
        .O(\temp_reg_reg[29]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[22]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[22]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[22]_srl3_i_1__1_n_0 ),
        .Q(\temp_reg_reg[22]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A0A3A0A3A3A0A)) 
    \temp_reg_reg[22]_srl3_i_1__0 
       (.I0(IS_serial_output_second_row_buf[6]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(IS_serial_output_first_row_buf[1]),
        .I4(IS_serial_output_third_row_buf[6]),
        .I5(IS_serial_output_fourth_row_buf[6]),
        .O(\temp_reg_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[22]_srl3_i_1__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[6]),
        .I2(IS_serial_output_third_row_buf[6]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(IS_serial_output_first_row_buf[1]),
        .O(\temp_reg_reg[22]_srl3_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[22]_srl3_i_1__2 
       (.I0(IS_serial_output_second_row_buf[6]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[6]),
        .I5(IS_serial_output_fourth_row_buf[6]),
        .O(\temp_reg_reg[30]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[23]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[23]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable2_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[23]_srl3_i_2__1_n_0 ),
        .Q(\temp_reg_reg[23]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h3A0A0A3A0A3A3A0A)) 
    \temp_reg_reg[23]_srl3_i_2__0 
       (.I0(IS_serial_output_second_row_buf[7]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(IS_serial_output_first_row_buf[2]),
        .I4(IS_serial_output_third_row_buf[7]),
        .I5(IS_serial_output_fourth_row_buf[7]),
        .O(\temp_reg_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h00FFD8F00000D8F0)) 
    \temp_reg_reg[23]_srl3_i_2__1 
       (.I0(out[0]),
        .I1(IS_serial_output_second_row_buf[7]),
        .I2(IS_serial_output_third_row_buf[7]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(IS_serial_output_first_row_buf[2]),
        .O(\temp_reg_reg[23]_srl3_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h337703BB30440088)) 
    \temp_reg_reg[23]_srl3_i_2__2 
       (.I0(IS_serial_output_second_row_buf[7]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_serial_output_third_row_buf[7]),
        .I5(IS_serial_output_fourth_row_buf[7]),
        .O(\temp_reg_reg[31]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[16]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[17]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[18]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[19]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[21]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[22]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable2_buf),
        .D(\temp_reg_reg[23]_srl3_n_0 ),
        .Q(IS_serial_output_second_row_buf[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_2
   (IS_serial_output_third_row_buf,
    \temp_reg_reg[27]_0 ,
    \temp_reg_reg[30]_0 ,
    \temp_reg_reg[24]_0 ,
    \temp_reg_reg[24]_1 ,
    \temp_reg_reg[28]_0 ,
    \temp_reg_reg[27]_1 ,
    IS_enable3_buf,
    \temp_reg_reg[31]_0 ,
    clk_IBUF_BUFG,
    \temp_reg_reg[30]_1 ,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[28]_1 ,
    \temp_reg_reg[27]_2 ,
    \temp_reg_reg[26]_0 ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[24]_2 ,
    \temp_reg_reg[27]_3 ,
    IS_serial_output_fourth_row_buf,
    out,
    \FSM_sequential_current_state_reg[2] ,
    \cnt_internal_value_reg[1] ,
    \cnt_internal_value_reg[2] ,
    \FSM_sequential_current_state_reg[0] ,
    IS_serial_output_first_row_buf,
    \cnt_internal_value_reg[1]_0 ,
    \temp_reg_reg[120] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \temp_reg_reg[28]_2 ,
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
    lopt_14);
  output [7:0]IS_serial_output_third_row_buf;
  output \temp_reg_reg[27]_0 ;
  output \temp_reg_reg[30]_0 ;
  output \temp_reg_reg[24]_0 ;
  output \temp_reg_reg[24]_1 ;
  output \temp_reg_reg[28]_0 ;
  output \temp_reg_reg[27]_1 ;
  input IS_enable3_buf;
  input \temp_reg_reg[31]_0 ;
  input clk_IBUF_BUFG;
  input \temp_reg_reg[30]_1 ;
  input \temp_reg_reg[29]_0 ;
  input \temp_reg_reg[28]_1 ;
  input \temp_reg_reg[27]_2 ;
  input \temp_reg_reg[26]_0 ;
  input \temp_reg_reg[25]_0 ;
  input \temp_reg_reg[24]_2 ;
  input \temp_reg_reg[27]_3 ;
  input [0:0]IS_serial_output_fourth_row_buf;
  input [2:0]out;
  input \FSM_sequential_current_state_reg[2] ;
  input [0:0]\cnt_internal_value_reg[1] ;
  input \cnt_internal_value_reg[2] ;
  input \FSM_sequential_current_state_reg[0] ;
  input [1:0]IS_serial_output_first_row_buf;
  input \cnt_internal_value_reg[1]_0 ;
  input \temp_reg_reg[120] ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input [0:0]\temp_reg_reg[28]_2 ;
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

  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire IS_enable3_buf;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [0:0]IS_serial_output_fourth_row_buf;
  wire [7:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire [0:0]\cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[2] ;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [2:0]out;
  wire \temp_reg_reg[16]_srl3_i_2_n_0 ;
  wire \temp_reg_reg[16]_srl3_n_0 ;
  wire \temp_reg_reg[17]_srl3_n_0 ;
  wire \temp_reg_reg[18]_srl3_n_0 ;
  wire \temp_reg_reg[19]_srl3_n_0 ;
  wire \temp_reg_reg[20]_srl3_n_0 ;
  wire \temp_reg_reg[21]_srl3_n_0 ;
  wire \temp_reg_reg[22]_srl3_n_0 ;
  wire \temp_reg_reg[23]_srl3_n_0 ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[24]_1 ;
  wire \temp_reg_reg[24]_2 ;
  wire \temp_reg_reg[25]_0 ;
  wire \temp_reg_reg[26]_0 ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[27]_1 ;
  wire \temp_reg_reg[27]_2 ;
  wire \temp_reg_reg[27]_3 ;
  wire \temp_reg_reg[28]_1 ;
  wire [0:0]\temp_reg_reg[28]_2 ;
  wire \temp_reg_reg[29]_0 ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[30]_1 ;
  wire \temp_reg_reg[31]_0 ;
  wire \xlnx_opt_temp_reg_reg[24]_0 ;
  wire \xlnx_opt_temp_reg_reg[24]_0_1 ;
  wire \xlnx_opt_temp_reg_reg[24]_0_2 ;
  wire \xlnx_opt_temp_reg_reg[24]_0_3 ;
  wire \xlnx_opt_temp_reg_reg[24]_0_4 ;

  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[24]_2 ),
        .Q(\temp_reg_reg[16]_srl3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg_reg[16]_srl3_i_2 
       (.I0(IS_serial_output_third_row_buf[0]),
        .I1(IS_serial_output_first_row_buf[0]),
        .O(\temp_reg_reg[16]_srl3_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0060)) 
    \temp_reg_reg[16]_srl3_i_6 
       (.I0(IS_serial_output_third_row_buf[0]),
        .I1(IS_serial_output_first_row_buf[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(\temp_reg_reg[24]_1 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[25]_0 ),
        .Q(\temp_reg_reg[17]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[26]_0 ),
        .Q(\temp_reg_reg[18]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[27]_2 ),
        .Q(\temp_reg_reg[19]_srl3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_reg_reg[19]_srl3_i_8 
       (.I0(IS_serial_output_third_row_buf[3]),
        .I1(\temp_reg_reg[27]_3 ),
        .O(\temp_reg_reg[27]_1 ));
  LUT6 #(
    .INIT(64'h66F0660066006600)) 
    \temp_reg_reg[19]_srl3_i_9 
       (.I0(IS_serial_output_third_row_buf[3]),
        .I1(\temp_reg_reg[27]_3 ),
        .I2(IS_serial_output_fourth_row_buf),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\temp_reg_reg[27]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[28]_1 ),
        .Q(\temp_reg_reg[20]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[21]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[21]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[29]_0 ),
        .Q(\temp_reg_reg[21]_srl3_n_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[22]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[22]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[30]_1 ),
        .Q(\temp_reg_reg[22]_srl3_n_0 ));
  LUT6 #(
    .INIT(64'h080808FF08FF0808)) 
    \temp_reg_reg[22]_srl3_i_2 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(\cnt_internal_value_reg[1] ),
        .I2(\cnt_internal_value_reg[2] ),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(IS_serial_output_third_row_buf[6]),
        .I5(IS_serial_output_first_row_buf[1]),
        .O(\temp_reg_reg[30]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[23]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[23]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(IS_enable3_buf),
        .CLK(clk_IBUF_BUFG),
        .D(\temp_reg_reg[31]_0 ),
        .Q(\temp_reg_reg[23]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[16]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[17]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[18]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[19]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[20]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[21]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[22]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable3_buf),
        .D(\temp_reg_reg[23]_srl3_n_0 ),
        .Q(IS_serial_output_third_row_buf[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBEBAAAAAABAEAAAA)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl3_i_1 
       (.I0(lopt),
        .I1(\cnt_internal_value_reg[1] ),
        .I2(lopt_1),
        .I3(lopt_2),
        .I4(lopt_3),
        .I5(lopt_4),
        .O(\xlnx_opt_temp_reg_reg[24]_0_4 ));
  LUT6 #(
    .INIT(64'hFFA9FFA9FFA9A9FF)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl3_i_1_1 
       (.I0(\temp_reg_reg[28]_2 ),
        .I1(IS_serial_output_first_row_buf[1]),
        .I2(lopt_5),
        .I3(IS_serial_output_first_row_buf[0]),
        .I4(lopt_6),
        .I5(\temp_reg_reg[27]_3 ),
        .O(\xlnx_opt_temp_reg_reg[24]_0_3 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl3_i_1_2 
       (.I0(IS_serial_output_first_row_buf[1]),
        .I1(lopt_6),
        .I2(lopt_7),
        .O(\xlnx_opt_temp_reg_reg[24]_0_2 ));
  LUT6 #(
    .INIT(64'h9C9C9C9C9C6C6C9C)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl3_i_1_3 
       (.I0(lopt_5),
        .I1(lopt_6),
        .I2(lopt_8),
        .I3(lopt_9),
        .I4(\xlnx_opt_temp_reg_reg[24]_0_3 ),
        .I5(\xlnx_opt_temp_reg_reg[24]_0_2 ),
        .O(\xlnx_opt_temp_reg_reg[24]_0_1 ));
  LUT6 #(
    .INIT(64'hFFDEFFDD00210022)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl3_i_1_4 
       (.I0(lopt_10),
        .I1(lopt_11),
        .I2(lopt_12),
        .I3(lopt_13),
        .I4(lopt_14),
        .I5(\xlnx_opt_temp_reg_reg[24]_0_1 ),
        .O(\xlnx_opt_temp_reg_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hDDDDDD00DDDDD000)) 
    \xlnx_opt_LUT_temp_reg_reg[16]_srl3_i_1_5 
       (.I0(out[2]),
        .I1(\temp_reg_reg[16]_srl3_i_2_n_0 ),
        .I2(out[0]),
        .I3(\FSM_sequential_current_state_reg[0]_0 ),
        .I4(\xlnx_opt_temp_reg_reg[24]_0_4 ),
        .I5(\xlnx_opt_temp_reg_reg[24]_0 ),
        .O(\temp_reg_reg[24]_0 ));
endmodule

module SKINNY_CNT
   (\temp_reg_reg[25] ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[27] ,
    rst_CNT_buf,
    \cnt_internal_value_reg[4]_0 ,
    IS_enable4_buf,
    IS_enable2_buf,
    IS_enable3_buf,
    \FSM_sequential_current_state_reg[2] ,
    \temp_reg_reg[24] ,
    \temp_reg_reg[25]_1 ,
    \temp_reg_reg[26] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    \cnt_internal_value_reg[0]_0 ,
    TW_REG_parallel_out_buf,
    \FSM_sequential_current_state_reg[2]_1 ,
    \temp_reg_reg[31] ,
    \cnt_internal_value_reg[0]_1 ,
    Q,
    \FSM_sequential_current_state_reg[2]_2 ,
    \cnt_internal_value_reg[2]_0 ,
    \temp_reg_reg[27]_0 ,
    out,
    \lfsr_internal_reg[5] ,
    current_state,
    \temp_reg_reg[29] ,
    \lfsr_internal_reg[5]_0 ,
    \temp_reg_reg[27]_1 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[2]_3 ,
    data_ready,
    \current_state_reg[2] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    clk_IBUF_BUFG,
    pwropt,
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
    lopt_11);
  output \temp_reg_reg[25] ;
  output \temp_reg_reg[25]_0 ;
  output \temp_reg_reg[27] ;
  output rst_CNT_buf;
  output [1:0]\cnt_internal_value_reg[4]_0 ;
  output IS_enable4_buf;
  output IS_enable2_buf;
  output IS_enable3_buf;
  output \FSM_sequential_current_state_reg[2] ;
  output \temp_reg_reg[24] ;
  output \temp_reg_reg[25]_1 ;
  output \temp_reg_reg[26] ;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  input \cnt_internal_value_reg[0]_0 ;
  input [2:0]TW_REG_parallel_out_buf;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input \temp_reg_reg[31] ;
  input \cnt_internal_value_reg[0]_1 ;
  input [2:0]Q;
  input \FSM_sequential_current_state_reg[2]_2 ;
  input \cnt_internal_value_reg[2]_0 ;
  input \temp_reg_reg[27]_0 ;
  input [2:0]out;
  input \lfsr_internal_reg[5] ;
  input [2:0]current_state;
  input \temp_reg_reg[29] ;
  input [4:0]\lfsr_internal_reg[5]_0 ;
  input \temp_reg_reg[27]_1 ;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[2]_3 ;
  input data_ready;
  input \current_state_reg[2] ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input clk_IBUF_BUFG;
  output pwropt;
  output lopt;
  output lopt_1;
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

  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[2]_2 ;
  wire \FSM_sequential_current_state_reg[2]_3 ;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [2:0]Q;
  wire [2:0]TW_REG_parallel_out_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2]_0 ;
  wire [1:0]\cnt_internal_value_reg[4]_0 ;
  wire [2:0]cnt_out_buf;
  wire [2:0]current_state;
  wire \current_state_reg[2] ;
  wire data_ready;
  wire \lfsr_internal_reg[5] ;
  wire [4:0]\lfsr_internal_reg[5]_0 ;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire \^lopt_6 ;
  wire \^lopt_7 ;
  wire \^lopt_8 ;
  wire \^lopt_9 ;
  wire [2:0]out;
  wire [4:0]plusOp__0;
  wire rst_CNT_buf;
  wire \temp_reg_reg[16]_srl3_i_7_n_0 ;
  wire \temp_reg_reg[16]_srl3_i_9_n_0 ;
  wire \temp_reg_reg[19]_srl3_i_2_n_0 ;
  wire \temp_reg_reg[19]_srl3_i_3_n_0 ;
  wire \temp_reg_reg[19]_srl3_i_6_n_0 ;
  wire \temp_reg_reg[19]_srl3_i_7_n_0 ;
  wire \temp_reg_reg[23]_srl3_i_3_n_0 ;
  wire \temp_reg_reg[25] ;
  wire \temp_reg_reg[25]_0 ;
  wire \temp_reg_reg[26] ;
  wire \temp_reg_reg[27] ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[27]_1 ;
  wire \xlnx_opt_FSM_sequential_current_state_reg[0] ;
  wire \xlnx_opt_temp_reg_reg[25] ;
  wire \xlnx_opt_temp_reg_reg[25]_1 ;
  wire \xlnx_opt_temp_reg_reg[25]_2 ;
  wire \xlnx_opt_temp_reg_reg[25]_3 ;
  wire \xlnx_opt_temp_reg_reg[25]_4 ;

  assign \^lopt  = lopt_2;
  assign \^lopt_1  = lopt_3;
  assign \^lopt_2  = lopt_4;
  assign \^lopt_3  = lopt_5;
  assign \^lopt_4  = lopt_6;
  assign \^lopt_5  = lopt_7;
  assign \^lopt_6  = lopt_8;
  assign \^lopt_7  = lopt_9;
  assign \^lopt_8  = lopt_10;
  assign \^lopt_9  = lopt_11;
  assign lopt = \temp_reg_reg[16]_srl3_i_7_n_0 ;
  assign lopt_1 = \temp_reg_reg[16]_srl3_i_9_n_0 ;
  assign pwropt = \FSM_sequential_current_state[2]_i_3_n_0 ;
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\cnt_internal_value_reg[4]_0 [1]),
        .I1(\cnt_internal_value_reg[4]_0 [0]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(cnt_out_buf[2]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I1(out[1]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEA40)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I3(out[0]),
        .I4(\current_state_reg[2] ),
        .I5(data_ready),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000F2F2F222)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_0 ),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_current_state_reg[2]_3 ),
        .I3(\FSM_sequential_current_state_reg[2] ),
        .I4(\lfsr_internal_reg[5] ),
        .I5(data_ready),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(out[0]),
        .I1(\cnt_internal_value_reg[4]_0 [1]),
        .I2(\cnt_internal_value_reg[4]_0 [0]),
        .I3(cnt_out_buf[2]),
        .I4(cnt_out_buf[1]),
        .I5(cnt_out_buf[0]),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(\cnt_internal_value_reg[4]_0 [1]),
        .I1(\cnt_internal_value_reg[4]_0 [0]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(cnt_out_buf[2]),
        .O(\FSM_sequential_current_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(cnt_out_buf[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .O(plusOp__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1 
       (.I0(\cnt_internal_value_reg[4]_0 [0]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[1]),
        .I3(cnt_out_buf[2]),
        .O(plusOp__0[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_internal_value[4]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(rst_CNT_buf));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_2 
       (.I0(\cnt_internal_value_reg[4]_0 [0]),
        .I1(cnt_out_buf[2]),
        .I2(cnt_out_buf[1]),
        .I3(cnt_out_buf[0]),
        .I4(\cnt_internal_value_reg[4]_0 [1]),
        .O(plusOp__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(plusOp__0[0]),
        .Q(cnt_out_buf[0]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(plusOp__0[1]),
        .Q(cnt_out_buf[1]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(plusOp__0[2]),
        .Q(cnt_out_buf[2]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(plusOp__0[3]),
        .Q(\cnt_internal_value_reg[4]_0 [0]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_0 ),
        .D(plusOp__0[4]),
        .Q(\cnt_internal_value_reg[4]_0 [1]),
        .R(rst_CNT_buf));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg_reg[16]_srl3_i_7 
       (.I0(cnt_out_buf[0]),
        .I1(cnt_out_buf[1]),
        .O(\temp_reg_reg[16]_srl3_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \temp_reg_reg[16]_srl3_i_9 
       (.I0(\lfsr_internal_reg[5]_0 [0]),
        .I1(cnt_out_buf[1]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[2]),
        .I4(\lfsr_internal_reg[5]_0 [3]),
        .O(\temp_reg_reg[16]_srl3_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \temp_reg_reg[18]_srl3_i_5 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[2]),
        .O(\temp_reg_reg[26] ));
  LUT6 #(
    .INIT(64'hFFEFEEEEEEEEEEEE)) 
    \temp_reg_reg[19]_srl3_i_1 
       (.I0(\temp_reg_reg[19]_srl3_i_2_n_0 ),
        .I1(\temp_reg_reg[19]_srl3_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_sequential_current_state_reg[2]_2 ),
        .O(\temp_reg_reg[27] ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \temp_reg_reg[19]_srl3_i_2 
       (.I0(\cnt_internal_value_reg[2]_0 ),
        .I1(TW_REG_parallel_out_buf[2]),
        .I2(\temp_reg_reg[19]_srl3_i_6_n_0 ),
        .I3(\temp_reg_reg[19]_srl3_i_7_n_0 ),
        .I4(rst_CNT_buf),
        .I5(\temp_reg_reg[27]_0 ),
        .O(\temp_reg_reg[19]_srl3_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30303010)) 
    \temp_reg_reg[19]_srl3_i_3 
       (.I0(TW_REG_parallel_out_buf[2]),
        .I1(\temp_reg_reg[19]_srl3_i_7_n_0 ),
        .I2(\FSM_sequential_current_state_reg[2]_1 ),
        .I3(\cnt_internal_value_reg[4]_0 [1]),
        .I4(\cnt_internal_value_reg[4]_0 [0]),
        .O(\temp_reg_reg[19]_srl3_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \temp_reg_reg[19]_srl3_i_6 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(\cnt_internal_value_reg[4]_0 [1]),
        .I4(\cnt_internal_value_reg[4]_0 [0]),
        .O(\temp_reg_reg[19]_srl3_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    \temp_reg_reg[19]_srl3_i_7 
       (.I0(\temp_reg_reg[25]_0 ),
        .I1(cnt_out_buf[2]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(\lfsr_internal_reg[5]_0 [2]),
        .I5(\temp_reg_reg[27]_1 ),
        .O(\temp_reg_reg[19]_srl3_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC88CCCCCCCCCCCCC)) 
    \temp_reg_reg[23]_srl3_i_1 
       (.I0(\temp_reg_reg[23]_srl3_i_3_n_0 ),
        .I1(IS_enable2_buf),
        .I2(cnt_out_buf[1]),
        .I3(cnt_out_buf[0]),
        .I4(out[1]),
        .I5(out[0]),
        .O(IS_enable4_buf));
  LUT3 #(
    .INIT(8'hD0)) 
    \temp_reg_reg[23]_srl3_i_1__0 
       (.I0(out[1]),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I2(IS_enable2_buf),
        .O(IS_enable3_buf));
  LUT5 #(
    .INIT(32'h02CF02FF)) 
    \temp_reg_reg[23]_srl3_i_1__1 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\lfsr_internal_reg[5] ),
        .O(IS_enable2_buf));
  LUT3 #(
    .INIT(8'hFD)) 
    \temp_reg_reg[23]_srl3_i_3 
       (.I0(\cnt_internal_value_reg[4]_0 [1]),
        .I1(\cnt_internal_value_reg[4]_0 [0]),
        .I2(cnt_out_buf[2]),
        .O(\temp_reg_reg[23]_srl3_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg_reg[23]_srl3_i_7 
       (.I0(\cnt_internal_value_reg[4]_0 [0]),
        .I1(\cnt_internal_value_reg[4]_0 [1]),
        .O(\temp_reg_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAFFFFFFFF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1 
       (.I0(out[2]),
        .I1(current_state[2]),
        .I2(rst_CNT_buf),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .O(\xlnx_opt_FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h000002020000FFCE)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(\FSM_sequential_current_state_reg[2] ),
        .I3(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I4(data_ready),
        .I5(\xlnx_opt_FSM_sequential_current_state_reg[0] ),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'hF7FF07030703F7FF)) 
    \xlnx_opt_LUT_temp_reg_reg[17]_srl3_i_1 
       (.I0(\^lopt ),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(\^lopt_1 ),
        .I5(\^lopt_2 ),
        .O(\xlnx_opt_temp_reg_reg[25]_4 ));
  LUT6 #(
    .INIT(64'h20002020FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[17]_srl3_i_1_1 
       (.I0(\^lopt_3 ),
        .I1(\^lopt_4 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\xlnx_opt_temp_reg_reg[25]_4 ),
        .O(\xlnx_opt_temp_reg_reg[25]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0FFD3)) 
    \xlnx_opt_LUT_temp_reg_reg[17]_srl3_i_1_2 
       (.I0(\lfsr_internal_reg[5]_0 [4]),
        .I1(\cnt_internal_value_reg[4]_0 [0]),
        .I2(cnt_out_buf[2]),
        .I3(\temp_reg_reg[16]_srl3_i_7_n_0 ),
        .I4(\lfsr_internal_reg[5]_0 [1]),
        .I5(\cnt_internal_value_reg[4]_0 [1]),
        .O(\xlnx_opt_temp_reg_reg[25]_2 ));
  LUT6 #(
    .INIT(64'hC396CCCC3C693333)) 
    \xlnx_opt_LUT_temp_reg_reg[17]_srl3_i_1_3 
       (.I0(\^lopt_2 ),
        .I1(\^lopt_5 ),
        .I2(\^lopt_6 ),
        .I3(\^lopt_7 ),
        .I4(\^lopt_8 ),
        .I5(\xlnx_opt_temp_reg_reg[25]_2 ),
        .O(\xlnx_opt_temp_reg_reg[25]_1 ));
  LUT6 #(
    .INIT(64'hFFBBFABAFFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[17]_srl3_i_1_4 
       (.I0(out[2]),
        .I1(\^lopt_4 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\^lopt_9 ),
        .O(\xlnx_opt_temp_reg_reg[25] ));
  LUT6 #(
    .INIT(64'hFFB0FF40FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[17]_srl3_i_1_5 
       (.I0(\temp_reg_reg[25]_0 ),
        .I1(TW_REG_parallel_out_buf[1]),
        .I2(\FSM_sequential_current_state_reg[2]_1 ),
        .I3(\xlnx_opt_temp_reg_reg[25]_3 ),
        .I4(\xlnx_opt_temp_reg_reg[25]_1 ),
        .I5(\xlnx_opt_temp_reg_reg[25] ),
        .O(\temp_reg_reg[25] ));
endmodule

module Skinny_128_128
   (out,
    \current_state_reg[2] ,
    \current_state_reg[1] ,
    \temp_reg_reg[25] ,
    \temp_reg_reg[26] ,
    \temp_reg_reg[27] ,
    \temp_reg_reg[29] ,
    \temp_reg_reg[56] ,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[24] ,
    \temp_reg_reg[56]_0 ,
    \temp_reg_reg[57] ,
    \temp_reg_reg[58] ,
    \temp_reg_reg[59] ,
    \temp_reg_reg[60] ,
    \temp_reg_reg[61] ,
    \temp_reg_reg[62] ,
    \temp_reg_reg[63] ,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    \temp_reg_reg[24]_0 ,
    \cnt_internal_value_reg[1] ,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[1]_0 ,
    \current_state_reg[2]_2 ,
    current_state,
    \cnt_internal_value_reg[2] ,
    rst_IBUF,
    start_IBUF,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[0]_0 ,
    \cnt_internal_value_reg[0]_1 ,
    \cnt_internal_value_reg[2]_0 ,
    \cnt_internal_value_reg[2]_1 ,
    Q,
    \cnt_internal_value_reg[2]_2 ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \cnt_internal_value_reg[2]_3 ,
    \cnt_internal_value_reg[1]_1 ,
    \current_state_reg[0] ,
    \cnt_internal_value_reg[1]_2 ,
    \cnt_internal_value_reg[1]_3 ,
    \cnt_internal_value_reg[1]_4 ,
    \cnt_internal_value_reg[1]_5 ,
    \cnt_internal_value_reg[3] ,
    \cnt_internal_value_reg[0]_2 ,
    \cnt_internal_value_reg[0]_3 ,
    \cnt_internal_value_reg[1]_6 ,
    \cnt_internal_value_reg[0]_4 ,
    \cnt_internal_value_reg[0]_5 ,
    \cnt_internal_value_reg[1]_7 ,
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
    lopt_16);
  output [2:0]out;
  output \current_state_reg[2] ;
  output \current_state_reg[1] ;
  output \temp_reg_reg[25] ;
  output \temp_reg_reg[26] ;
  output \temp_reg_reg[27] ;
  output \temp_reg_reg[29] ;
  output \temp_reg_reg[56] ;
  output \temp_reg_reg[29]_0 ;
  output \temp_reg_reg[24] ;
  output \temp_reg_reg[56]_0 ;
  output \temp_reg_reg[57] ;
  output \temp_reg_reg[58] ;
  output \temp_reg_reg[59] ;
  output \temp_reg_reg[60] ;
  output \temp_reg_reg[61] ;
  output \temp_reg_reg[62] ;
  output \temp_reg_reg[63] ;
  output \current_state_reg[2]_0 ;
  output \current_state_reg[2]_1 ;
  output \temp_reg_reg[24]_0 ;
  input [7:0]\cnt_internal_value_reg[1] ;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[1]_0 ;
  input \current_state_reg[2]_2 ;
  input [2:0]current_state;
  input \cnt_internal_value_reg[2] ;
  input rst_IBUF;
  input start_IBUF;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[0]_0 ;
  input \cnt_internal_value_reg[0]_1 ;
  input \cnt_internal_value_reg[2]_0 ;
  input \cnt_internal_value_reg[2]_1 ;
  input [3:0]Q;
  input \cnt_internal_value_reg[2]_2 ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \cnt_internal_value_reg[2]_3 ;
  input \cnt_internal_value_reg[1]_1 ;
  input \current_state_reg[0] ;
  input \cnt_internal_value_reg[1]_2 ;
  input \cnt_internal_value_reg[1]_3 ;
  input \cnt_internal_value_reg[1]_4 ;
  input \cnt_internal_value_reg[1]_5 ;
  input \cnt_internal_value_reg[3] ;
  input \cnt_internal_value_reg[0]_2 ;
  input \cnt_internal_value_reg[0]_3 ;
  input \cnt_internal_value_reg[1]_6 ;
  input \cnt_internal_value_reg[0]_4 ;
  input \cnt_internal_value_reg[0]_5 ;
  input \cnt_internal_value_reg[1]_7 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;
  output lopt_9;
  output lopt_10;
  input lopt_11;
  input lopt_12;
  input lopt_13;
  input lopt_14;
  input lopt_15;
  input lopt_16;

  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_3 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_2 ;
  wire INST_IS_n_11;
  wire INST_IS_n_12;
  wire INST_IS_n_13;
  wire INST_IS_n_22;
  wire INST_IS_n_23;
  wire INST_IS_n_6;
  wire INST_LFSR_n_1;
  wire INST_LFSR_n_13;
  wire INST_LFSR_n_2;
  wire INST_LFSR_n_3;
  wire INST_LFSR_n_5;
  wire INST_SKINNY_CNT_n_0;
  wire INST_SKINNY_CNT_n_1;
  wire INST_SKINNY_CNT_n_12;
  wire INST_SKINNY_CNT_n_13;
  wire INST_SKINNY_CNT_n_14;
  wire INST_SKINNY_CNT_n_15;
  wire INST_SKINNY_CNT_n_2;
  wire INST_SKINNY_CNT_n_9;
  wire INST_TW_REG_n_0;
  wire INST_TW_REG_n_8;
  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [5:1]IS_serial_output_first_row_buf;
  wire [3:0]Q;
  wire [63:56]TW_REG_parallel_out_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[0]_2 ;
  wire \cnt_internal_value_reg[0]_3 ;
  wire \cnt_internal_value_reg[0]_4 ;
  wire \cnt_internal_value_reg[0]_5 ;
  wire [7:0]\cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[1]_0 ;
  wire \cnt_internal_value_reg[1]_1 ;
  wire \cnt_internal_value_reg[1]_4 ;
  wire \cnt_internal_value_reg[1]_5 ;
  wire \cnt_internal_value_reg[1]_6 ;
  wire \cnt_internal_value_reg[1]_7 ;
  wire \cnt_internal_value_reg[2]_2 ;
  wire \cnt_internal_value_reg[2]_3 ;
  wire \cnt_internal_value_reg[3] ;
  wire [4:3]cnt_out_buf;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_2 ;
  wire data_ready;
  wire [5:0]lfsr_out_buf;
  wire lopt;
  wire lopt_1;
  wire \^lopt_10 ;
  wire \^lopt_11 ;
  wire \^lopt_12 ;
  wire \^lopt_13 ;
  wire \^lopt_14 ;
  wire \^lopt_15 ;
  wire \^lopt_16 ;
  wire lopt_17;
  wire lopt_18;
  wire lopt_19;
  wire \^lopt_2 ;
  wire lopt_20;
  wire lopt_21;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire \^lopt_6 ;
  wire \^lopt_7 ;
  wire \^lopt_8 ;
  wire \^lopt_9 ;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire pwropt;
  wire rst_CNT_buf;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg_reg[24] ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[27] ;
  wire \temp_reg_reg[29]_0 ;
  wire \temp_reg_reg[56] ;
  wire \temp_reg_reg[56]_0 ;
  wire \temp_reg_reg[57] ;
  wire \temp_reg_reg[58] ;
  wire \temp_reg_reg[59] ;
  wire \temp_reg_reg[60] ;
  wire \temp_reg_reg[61] ;
  wire \temp_reg_reg[62] ;
  wire \temp_reg_reg[63] ;
  wire \NLW_INST_IS_FSM_sequential_current_state_reg[1]_UNCONNECTED ;
  wire \NLW_INST_IS_cnt_internal_value_reg[1]_2_UNCONNECTED ;
  wire \NLW_INST_IS_cnt_internal_value_reg[1]_3_UNCONNECTED ;
  wire \NLW_INST_IS_cnt_internal_value_reg[2]_0_UNCONNECTED ;
  wire \NLW_INST_IS_current_state_reg[2]_0_UNCONNECTED ;
  wire \NLW_INST_IS_current_state_reg[2]_1_UNCONNECTED ;
  wire \NLW_INST_IS_lfsr_internal_reg[5]_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[120]_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[24]_1_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[25]_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[25]_0_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[25]_1_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[26]_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[26]_0_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[29]_0_UNCONNECTED ;
  wire \NLW_INST_LFSR_current_state_reg[2]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_cnt_internal_value_reg[0]_0_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_cnt_internal_value_reg[0]_1_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[24]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[25]_1_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[29]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_temp_reg_reg[31]_UNCONNECTED ;
  wire \NLW_INST_TW_REG_cnt_internal_value_reg[2]_UNCONNECTED ;
  wire \NLW_INST_TW_REG_cnt_internal_value_reg[2]_0_UNCONNECTED ;
  wire \NLW_INST_TW_REG_lfsr_internal_reg[2]_UNCONNECTED ;

  assign \^lopt_10  = lopt_12;
  assign \^lopt_11  = lopt_13;
  assign \^lopt_12  = lopt_14;
  assign \^lopt_5  = lopt_2;
  assign \^lopt_9  = lopt_11;
  assign lopt_10 = TW_REG_parallel_out_buf[61];
  assign lopt_17 = lopt_15;
  assign lopt_20 = lopt_16;
  assign lopt_3 = \^lopt_6 ;
  assign lopt_4 = \^lopt_7 ;
  assign lopt_5 = IS_serial_output_first_row_buf[5];
  assign lopt_6 = cnt_out_buf[3];
  assign lopt_7 = cnt_out_buf[4];
  assign lopt_8 = INST_IS_n_11;
  assign lopt_9 = \^lopt_8 ;
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(current_state[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(out[2]),
        .I1(out[0]),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(data_ready));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_SKINNY_CNT_n_15),
        .Q(out[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* KEEP = "yes" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_3 ),
        .D(INST_SKINNY_CNT_n_14),
        .Q(out[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hfffd)) 
    \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_gate_52 
       (.I0(pwropt),
        .I1(current_state[0]),
        .I2(out[2]),
        .I3(out[0]),
        .O(\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_3 ));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* KEEP = "yes" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_2 ),
        .D(INST_SKINNY_CNT_n_13),
        .Q(out[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hffffffffffff0a3f)) 
    \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_gate_50 
       (.I0(out[1]),
        .I1(INST_SKINNY_CNT_n_9),
        .I2(pwropt),
        .I3(INST_LFSR_n_5),
        .I4(current_state[0]),
        .I5(out[0]),
        .O(\FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_2 ));
  skinny_shift_reg_64 INST_IS
       (.\FSM_sequential_current_state_reg[1] (\NLW_INST_IS_FSM_sequential_current_state_reg[1]_UNCONNECTED ),
        .\FSM_sequential_current_state_reg[2] (INST_IS_n_6),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2]_0 ),
        .\FSM_sequential_current_state_reg[2]_1 (\temp_reg_reg[56] ),
        .IS_enable1_buf(IS_enable1_buf),
        .IS_enable2_buf(IS_enable2_buf),
        .IS_enable3_buf(IS_enable3_buf),
        .IS_enable4_buf(IS_enable4_buf),
        .Q(cnt_out_buf),
        .TW_REG_parallel_out_buf(TW_REG_parallel_out_buf[63:60]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0] ),
        .\cnt_internal_value_reg[0]_0 (\cnt_internal_value_reg[0]_5 ),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1]_0 ),
        .\cnt_internal_value_reg[1]_0 (Q[1:0]),
        .\cnt_internal_value_reg[1]_1 (\cnt_internal_value_reg[1]_1 ),
        .\cnt_internal_value_reg[1]_2 (\NLW_INST_IS_cnt_internal_value_reg[1]_2_UNCONNECTED ),
        .\cnt_internal_value_reg[1]_3 (\NLW_INST_IS_cnt_internal_value_reg[1]_3_UNCONNECTED ),
        .\cnt_internal_value_reg[1]_4 (\cnt_internal_value_reg[1]_4 ),
        .\cnt_internal_value_reg[1]_5 (\cnt_internal_value_reg[1]_5 ),
        .\cnt_internal_value_reg[1]_6 (\cnt_internal_value_reg[1]_7 ),
        .\cnt_internal_value_reg[1]_7 (INST_SKINNY_CNT_n_12),
        .\cnt_internal_value_reg[2] (INST_SKINNY_CNT_n_2),
        .\cnt_internal_value_reg[2]_0 (\NLW_INST_IS_cnt_internal_value_reg[2]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_1 (\cnt_internal_value_reg[2]_3 ),
        .\cnt_internal_value_reg[3] (INST_SKINNY_CNT_n_1),
        .\cnt_internal_value_reg[3]_0 (\cnt_internal_value_reg[3] ),
        .current_state(current_state),
        .\current_state_reg[0] (\current_state_reg[0] ),
        .\current_state_reg[1] (INST_IS_n_12),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .\current_state_reg[2]_0 (\NLW_INST_IS_current_state_reg[2]_0_UNCONNECTED ),
        .\current_state_reg[2]_1 (\NLW_INST_IS_current_state_reg[2]_1_UNCONNECTED ),
        .\current_state_reg[2]_2 (\current_state_reg[2]_2 ),
        .\lfsr_internal_reg[2] (INST_LFSR_n_3),
        .\lfsr_internal_reg[2]_0 (INST_LFSR_n_2),
        .\lfsr_internal_reg[2]_1 (lfsr_out_buf[2]),
        .\lfsr_internal_reg[3] (INST_LFSR_n_13),
        .\lfsr_internal_reg[4] (INST_LFSR_n_1),
        .\lfsr_internal_reg[5] (\NLW_INST_IS_lfsr_internal_reg[5]_UNCONNECTED ),
        .lopt(\^lopt_2 ),
        .lopt_1(\^lopt_3 ),
        .lopt_10(Q[3]),
        .lopt_11(\^lopt_12 ),
        .lopt_12(TW_REG_parallel_out_buf[56]),
        .lopt_13(\^lopt_13 ),
        .lopt_14(\^lopt_14 ),
        .lopt_15(\^lopt_15 ),
        .lopt_16(\^lopt_16 ),
        .lopt_17(lopt_18),
        .lopt_18(lopt_19),
        .lopt_19(lopt_21),
        .lopt_2(\^lopt_4 ),
        .lopt_20(\cnt_internal_value_reg[1]_6 ),
        .lopt_21(\cnt_internal_value_reg[0]_4 ),
        .lopt_22(\cnt_internal_value_reg[0]_2 ),
        .lopt_23(\cnt_internal_value_reg[0]_3 ),
        .lopt_24(IS_serial_output_first_row_buf[2]),
        .lopt_3(\^lopt_6 ),
        .lopt_4(\^lopt_7 ),
        .lopt_5(\^lopt_8 ),
        .lopt_6(\^lopt_9 ),
        .lopt_7(\^lopt_10 ),
        .lopt_8(\^lopt_11 ),
        .lopt_9(Q[2]),
        .out(out),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[120] (\NLW_INST_IS_temp_reg_reg[120]_UNCONNECTED ),
        .\temp_reg_reg[121] (INST_SKINNY_CNT_n_0),
        .\temp_reg_reg[122] (INST_TW_REG_n_0),
        .\temp_reg_reg[24] (\temp_reg_reg[24] ),
        .\temp_reg_reg[24]_0 (\temp_reg_reg[24]_0 ),
        .\temp_reg_reg[24]_1 (\NLW_INST_IS_temp_reg_reg[24]_1_UNCONNECTED ),
        .\temp_reg_reg[24]_2 (INST_IS_n_22),
        .\temp_reg_reg[25] (\NLW_INST_IS_temp_reg_reg[25]_UNCONNECTED ),
        .\temp_reg_reg[25]_0 (\NLW_INST_IS_temp_reg_reg[25]_0_UNCONNECTED ),
        .\temp_reg_reg[25]_1 (\NLW_INST_IS_temp_reg_reg[25]_1_UNCONNECTED ),
        .\temp_reg_reg[26] (\NLW_INST_IS_temp_reg_reg[26]_UNCONNECTED ),
        .\temp_reg_reg[26]_0 (\NLW_INST_IS_temp_reg_reg[26]_0_UNCONNECTED ),
        .\temp_reg_reg[27] (\temp_reg_reg[27] ),
        .\temp_reg_reg[27]_0 (INST_IS_n_13),
        .\temp_reg_reg[27]_1 (INST_IS_n_23),
        .\temp_reg_reg[29] (IS_serial_output_first_row_buf),
        .\temp_reg_reg[29]_0 (\NLW_INST_IS_temp_reg_reg[29]_0_UNCONNECTED ),
        .\temp_reg_reg[29]_1 (\temp_reg_reg[29]_0 ),
        .\temp_reg_reg[31] (INST_IS_n_11));
  lfsr INST_LFSR
       (.IS_enable1_buf(IS_enable1_buf),
        .Q(lfsr_out_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0]_2 ),
        .\cnt_internal_value_reg[0]_0 (\cnt_internal_value_reg[0]_3 ),
        .\cnt_internal_value_reg[0]_1 (\cnt_internal_value_reg[0]_4 ),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1]_6 ),
        .\cnt_internal_value_reg[4] (INST_SKINNY_CNT_n_9),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[1]_0 (INST_LFSR_n_1),
        .\current_state_reg[1]_1 (INST_LFSR_n_2),
        .\current_state_reg[1]_2 (INST_LFSR_n_3),
        .\current_state_reg[2] (\NLW_INST_LFSR_current_state_reg[2]_UNCONNECTED ),
        .\current_state_reg[2]_0 (INST_LFSR_n_13),
        .\current_state_reg[2]_1 (INST_IS_n_12),
        .lopt(lopt_21),
        .out(out),
        .rst_CNT_buf(rst_CNT_buf),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[24] (INST_LFSR_n_5),
        .\temp_reg_reg[29] (IS_serial_output_first_row_buf));
  SKINNY_CNT INST_SKINNY_CNT
       (.\FSM_sequential_current_state_reg[0] (INST_SKINNY_CNT_n_15),
        .\FSM_sequential_current_state_reg[0]_0 (INST_TW_REG_n_8),
        .\FSM_sequential_current_state_reg[1] (INST_SKINNY_CNT_n_14),
        .\FSM_sequential_current_state_reg[1]_0 (INST_IS_n_6),
        .\FSM_sequential_current_state_reg[2] (INST_SKINNY_CNT_n_9),
        .\FSM_sequential_current_state_reg[2]_0 (INST_SKINNY_CNT_n_13),
        .\FSM_sequential_current_state_reg[2]_1 (INST_IS_n_11),
        .\FSM_sequential_current_state_reg[2]_2 (INST_IS_n_13),
        .\FSM_sequential_current_state_reg[2]_3 (\FSM_sequential_current_state[2]_i_4_n_0 ),
        .IS_enable2_buf(IS_enable2_buf),
        .IS_enable3_buf(IS_enable3_buf),
        .IS_enable4_buf(IS_enable4_buf),
        .Q(Q[3:1]),
        .TW_REG_parallel_out_buf({TW_REG_parallel_out_buf[59],TW_REG_parallel_out_buf[57:56]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0]_0 (\NLW_INST_SKINNY_CNT_cnt_internal_value_reg[0]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[0]_1 (\NLW_INST_SKINNY_CNT_cnt_internal_value_reg[0]_1_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_0 (\cnt_internal_value_reg[2]_2 ),
        .\cnt_internal_value_reg[4]_0 (cnt_out_buf),
        .current_state(current_state),
        .\current_state_reg[2] (\FSM_sequential_current_state[1]_i_2_n_0 ),
        .data_ready(data_ready),
        .\lfsr_internal_reg[5] (INST_LFSR_n_5),
        .\lfsr_internal_reg[5]_0 ({lfsr_out_buf[5:3],lfsr_out_buf[1:0]}),
        .lopt(\^lopt_13 ),
        .lopt_1(\^lopt_14 ),
        .lopt_10(lopt_19),
        .lopt_11(lopt_20),
        .lopt_2(\^lopt_15 ),
        .lopt_3(\^lopt_16 ),
        .lopt_4(IS_serial_output_first_row_buf[1]),
        .lopt_5(lopt_17),
        .lopt_6(Q[0]),
        .lopt_7(lopt_18),
        .lopt_8(\^lopt_2 ),
        .lopt_9(IS_serial_output_first_row_buf[2]),
        .out(out),
        .pwropt(pwropt),
        .rst_CNT_buf(rst_CNT_buf),
        .\temp_reg_reg[24] (\NLW_INST_SKINNY_CNT_temp_reg_reg[24]_UNCONNECTED ),
        .\temp_reg_reg[25] (INST_SKINNY_CNT_n_0),
        .\temp_reg_reg[25]_0 (INST_SKINNY_CNT_n_1),
        .\temp_reg_reg[25]_1 (\NLW_INST_SKINNY_CNT_temp_reg_reg[25]_1_UNCONNECTED ),
        .\temp_reg_reg[26] (INST_SKINNY_CNT_n_12),
        .\temp_reg_reg[27] (INST_SKINNY_CNT_n_2),
        .\temp_reg_reg[27]_0 (INST_IS_n_23),
        .\temp_reg_reg[27]_1 (INST_IS_n_22),
        .\temp_reg_reg[29] (\NLW_INST_SKINNY_CNT_temp_reg_reg[29]_UNCONNECTED ),
        .\temp_reg_reg[31] (\NLW_INST_SKINNY_CNT_temp_reg_reg[31]_UNCONNECTED ));
  shift_reg INST_TW_REG
       (.\FSM_sequential_current_state_reg[2] (INST_IS_n_11),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1] ),
        .\cnt_internal_value_reg[2] (\NLW_INST_TW_REG_cnt_internal_value_reg[2]_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_0 (\NLW_INST_TW_REG_cnt_internal_value_reg[2]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[3] (INST_SKINNY_CNT_n_1),
        .current_state({current_state[2],current_state[0]}),
        .\lfsr_internal_reg[2] (\NLW_INST_TW_REG_lfsr_internal_reg[2]_UNCONNECTED ),
        .lopt(Q[2]),
        .lopt_1(Q[0]),
        .lopt_10(IS_serial_output_first_row_buf[1]),
        .lopt_11(\^lopt_3 ),
        .lopt_12(\^lopt_4 ),
        .lopt_13(\^lopt_5 ),
        .lopt_2(lopt),
        .lopt_3(lopt_1),
        .lopt_4(Q[3]),
        .lopt_5(Q[1]),
        .lopt_6(lfsr_out_buf[2]),
        .lopt_7(INST_SKINNY_CNT_n_12),
        .lopt_8(\^lopt_2 ),
        .lopt_9(IS_serial_output_first_row_buf[2]),
        .out(out),
        .\temp_reg_reg[111]_0 ({TW_REG_parallel_out_buf[63:59],TW_REG_parallel_out_buf[57:56]}),
        .\temp_reg_reg[127]_0 (INST_TW_REG_n_8),
        .\temp_reg_reg[26] (INST_TW_REG_n_0),
        .\temp_reg_reg[56]_0 (\temp_reg_reg[56]_0 ),
        .\temp_reg_reg[56]_1 (\temp_reg_reg[56] ),
        .\temp_reg_reg[57]_0 (\temp_reg_reg[57] ),
        .\temp_reg_reg[58]_0 (\temp_reg_reg[58] ),
        .\temp_reg_reg[59]_0 (\temp_reg_reg[59] ),
        .\temp_reg_reg[60]_0 (\temp_reg_reg[60] ),
        .\temp_reg_reg[61]_0 (\temp_reg_reg[61] ),
        .\temp_reg_reg[62]_0 (\temp_reg_reg[62] ),
        .\temp_reg_reg[63]_0 (\temp_reg_reg[63] ));
endmodule

(* ECO_CHECKSUM = "6114e6d3" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire INST_CNT_n_11;
  wire INST_CNT_n_15;
  wire INST_CNT_n_24;
  wire INST_CNT_n_26;
  wire INST_CNT_n_27;
  wire INST_CNT_n_28;
  wire INST_CNT_n_29;
  wire INST_CNT_n_30;
  wire INST_CNT_n_31;
  wire INST_CNT_n_32;
  wire INST_CNT_n_33;
  wire INST_CNT_n_34;
  wire INST_CNT_n_8;
  wire INST_CNT_n_9;
  wire Skinny_DUT_n_0;
  wire Skinny_DUT_n_1;
  wire Skinny_DUT_n_10;
  wire Skinny_DUT_n_11;
  wire Skinny_DUT_n_12;
  wire Skinny_DUT_n_13;
  wire Skinny_DUT_n_14;
  wire Skinny_DUT_n_15;
  wire Skinny_DUT_n_16;
  wire Skinny_DUT_n_17;
  wire Skinny_DUT_n_18;
  wire Skinny_DUT_n_19;
  wire Skinny_DUT_n_2;
  wire Skinny_DUT_n_22;
  wire Skinny_DUT_n_3;
  wire Skinny_DUT_n_4;
  wire Skinny_DUT_n_7;
  wire Skinny_DUT_n_9;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]cnt_out_W;
  wire [2:0]current_state;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_6_n_0 ;
  wire led_out;
  wire led_out_OBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire [7:0]p_1_in;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  wire \NLW_INST_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED ;
  wire \NLW_INST_CNT_current_state_reg[2]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[24]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[24]_1_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[25]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[25]_0_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[25]_1_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[26]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[26]_0_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[26]_1_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[28]_0_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[30]_1_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[0]_0_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[0]_1_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[1]_2_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[1]_3_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[2]_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[2]_0_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[2]_1_UNCONNECTED ;
  wire \NLW_Skinny_DUT_current_state_reg[2]_0_UNCONNECTED ;
  wire \NLW_Skinny_DUT_current_state_reg[2]_1_UNCONNECTED ;
  wire \NLW_Skinny_DUT_temp_reg_reg[25]_UNCONNECTED ;
  wire \NLW_Skinny_DUT_temp_reg_reg[26]_UNCONNECTED ;
  wire \NLW_Skinny_DUT_temp_reg_reg[29]_UNCONNECTED ;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  CNT INST_CNT
       (.\FSM_sequential_current_state_reg[0] (Skinny_DUT_n_10),
        .\FSM_sequential_current_state_reg[2] (Skinny_DUT_n_9),
        .Q(cnt_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[3]_0 (\NLW_INST_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED ),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_0),
        .\current_state_reg[0]_0 (INST_CNT_n_1),
        .\current_state_reg[2] (\NLW_INST_CNT_current_state_reg[2]_UNCONNECTED ),
        .\current_state_reg[2]_0 (INST_CNT_n_26),
        .\current_state_reg[2]_1 (INST_CNT_n_27),
        .\current_state_reg[2]_2 (INST_CNT_n_28),
        .\current_state_reg[2]_3 (INST_CNT_n_29),
        .\current_state_reg[2]_4 (INST_CNT_n_30),
        .\current_state_reg[2]_5 (INST_CNT_n_31),
        .\current_state_reg[2]_6 (INST_CNT_n_33),
        .\current_state_reg[2]_7 (INST_CNT_n_34),
        .\current_state_reg[2]_8 (Skinny_DUT_n_11),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .out({Skinny_DUT_n_0,Skinny_DUT_n_1,Skinny_DUT_n_2}),
        .p_1_in(p_1_in),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[120] (Skinny_DUT_n_12),
        .\temp_reg_reg[121] (Skinny_DUT_n_13),
        .\temp_reg_reg[122] (Skinny_DUT_n_14),
        .\temp_reg_reg[123] (Skinny_DUT_n_15),
        .\temp_reg_reg[124] (Skinny_DUT_n_16),
        .\temp_reg_reg[125] (Skinny_DUT_n_17),
        .\temp_reg_reg[126] (Skinny_DUT_n_18),
        .\temp_reg_reg[127] (Skinny_DUT_n_19),
        .\temp_reg_reg[24] (\NLW_INST_CNT_temp_reg_reg[24]_UNCONNECTED ),
        .\temp_reg_reg[24]_0 (Skinny_DUT_n_22),
        .\temp_reg_reg[24]_1 (\NLW_INST_CNT_temp_reg_reg[24]_1_UNCONNECTED ),
        .\temp_reg_reg[25] (\NLW_INST_CNT_temp_reg_reg[25]_UNCONNECTED ),
        .\temp_reg_reg[25]_0 (\NLW_INST_CNT_temp_reg_reg[25]_0_UNCONNECTED ),
        .\temp_reg_reg[25]_1 (\NLW_INST_CNT_temp_reg_reg[25]_1_UNCONNECTED ),
        .\temp_reg_reg[26] (\NLW_INST_CNT_temp_reg_reg[26]_UNCONNECTED ),
        .\temp_reg_reg[26]_0 (\NLW_INST_CNT_temp_reg_reg[26]_0_UNCONNECTED ),
        .\temp_reg_reg[26]_1 (\NLW_INST_CNT_temp_reg_reg[26]_1_UNCONNECTED ),
        .\temp_reg_reg[27] (INST_CNT_n_8),
        .\temp_reg_reg[27]_0 (Skinny_DUT_n_7),
        .\temp_reg_reg[28] (INST_CNT_n_11),
        .\temp_reg_reg[28]_0 (\NLW_INST_CNT_temp_reg_reg[28]_0_UNCONNECTED ),
        .\temp_reg_reg[29] (INST_CNT_n_9),
        .\temp_reg_reg[30] (INST_CNT_n_24),
        .\temp_reg_reg[30]_0 (INST_CNT_n_32),
        .\temp_reg_reg[30]_1 (\NLW_INST_CNT_temp_reg_reg[30]_1_UNCONNECTED ),
        .\temp_reg_reg[31] (INST_CNT_n_15));
  Skinny_128_128 Skinny_DUT
       (.\FSM_sequential_current_state_reg[2]_0 (INST_CNT_n_15),
        .Q(cnt_out_W),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (INST_CNT_n_24),
        .\cnt_internal_value_reg[0]_0 (\NLW_Skinny_DUT_cnt_internal_value_reg[0]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[0]_1 (\NLW_Skinny_DUT_cnt_internal_value_reg[0]_1_UNCONNECTED ),
        .\cnt_internal_value_reg[0]_2 (INST_CNT_n_28),
        .\cnt_internal_value_reg[0]_3 (INST_CNT_n_31),
        .\cnt_internal_value_reg[0]_4 (INST_CNT_n_29),
        .\cnt_internal_value_reg[0]_5 (INST_CNT_n_33),
        .\cnt_internal_value_reg[1] (p_1_in),
        .\cnt_internal_value_reg[1]_0 (INST_CNT_n_9),
        .\cnt_internal_value_reg[1]_1 (INST_CNT_n_1),
        .\cnt_internal_value_reg[1]_2 (\NLW_Skinny_DUT_cnt_internal_value_reg[1]_2_UNCONNECTED ),
        .\cnt_internal_value_reg[1]_3 (\NLW_Skinny_DUT_cnt_internal_value_reg[1]_3_UNCONNECTED ),
        .\cnt_internal_value_reg[1]_4 (INST_CNT_n_11),
        .\cnt_internal_value_reg[1]_5 (INST_CNT_n_26),
        .\cnt_internal_value_reg[1]_6 (INST_CNT_n_27),
        .\cnt_internal_value_reg[1]_7 (INST_CNT_n_34),
        .\cnt_internal_value_reg[2] (\NLW_Skinny_DUT_cnt_internal_value_reg[2]_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_0 (\NLW_Skinny_DUT_cnt_internal_value_reg[2]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_1 (\NLW_Skinny_DUT_cnt_internal_value_reg[2]_1_UNCONNECTED ),
        .\cnt_internal_value_reg[2]_2 (INST_CNT_n_8),
        .\cnt_internal_value_reg[2]_3 (INST_CNT_n_32),
        .\cnt_internal_value_reg[3] (INST_CNT_n_30),
        .current_state(current_state),
        .\current_state_reg[0] (\current_state[2]_i_6_n_0 ),
        .\current_state_reg[1] (Skinny_DUT_n_4),
        .\current_state_reg[2] (Skinny_DUT_n_3),
        .\current_state_reg[2]_0 (\NLW_Skinny_DUT_current_state_reg[2]_0_UNCONNECTED ),
        .\current_state_reg[2]_1 (\NLW_Skinny_DUT_current_state_reg[2]_1_UNCONNECTED ),
        .\current_state_reg[2]_2 (\current_state[2]_i_2_n_0 ),
        .lopt(Skinny_DUT_n_0),
        .lopt_1(Skinny_DUT_n_11),
        .lopt_10(lopt_7),
        .lopt_11(Skinny_DUT_n_2),
        .lopt_12(Skinny_DUT_n_1),
        .lopt_13(Skinny_DUT_n_22),
        .lopt_14(Skinny_DUT_n_11),
        .lopt_15(Skinny_DUT_n_10),
        .lopt_16(Skinny_DUT_n_11),
        .lopt_2(Skinny_DUT_n_10),
        .lopt_3(lopt),
        .lopt_4(lopt_1),
        .lopt_5(lopt_2),
        .lopt_6(lopt_3),
        .lopt_7(lopt_4),
        .lopt_8(lopt_5),
        .lopt_9(lopt_6),
        .out({Skinny_DUT_n_0,Skinny_DUT_n_1,Skinny_DUT_n_2}),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[24] (Skinny_DUT_n_11),
        .\temp_reg_reg[24]_0 (Skinny_DUT_n_22),
        .\temp_reg_reg[25] (\NLW_Skinny_DUT_temp_reg_reg[25]_UNCONNECTED ),
        .\temp_reg_reg[26] (\NLW_Skinny_DUT_temp_reg_reg[26]_UNCONNECTED ),
        .\temp_reg_reg[27] (Skinny_DUT_n_7),
        .\temp_reg_reg[29] (\NLW_Skinny_DUT_temp_reg_reg[29]_UNCONNECTED ),
        .\temp_reg_reg[29]_0 (Skinny_DUT_n_10),
        .\temp_reg_reg[56] (Skinny_DUT_n_9),
        .\temp_reg_reg[56]_0 (Skinny_DUT_n_12),
        .\temp_reg_reg[57] (Skinny_DUT_n_13),
        .\temp_reg_reg[58] (Skinny_DUT_n_14),
        .\temp_reg_reg[59] (Skinny_DUT_n_15),
        .\temp_reg_reg[60] (Skinny_DUT_n_16),
        .\temp_reg_reg[61] (Skinny_DUT_n_17),
        .\temp_reg_reg[62] (Skinny_DUT_n_18),
        .\temp_reg_reg[63] (Skinny_DUT_n_19));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[2]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(\current_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[2]_i_6 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .O(\current_state[2]_i_6_n_0 ));
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
        .D(Skinny_DUT_n_4),
        .Q(current_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Skinny_DUT_n_3),
        .Q(current_state[2]),
        .R(1'b0));
  OBUF led_out_OBUF_inst
       (.I(led_out_OBUF),
        .O(led_out));
  LUT2 #(
    .INIT(4'h8)) 
    led_out_OBUF_inst_i_1
       (.I0(current_state[1]),
        .I1(current_state[2]),
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
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    \current_state_reg[1]_2 ,
    IS_enable1_buf,
    \temp_reg_reg[24] ,
    Q,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 ,
    start_IBUF,
    current_state,
    rst_IBUF,
    \temp_reg_reg[29] ,
    \current_state_reg[2]_1 ,
    out,
    \cnt_internal_value_reg[4] ,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[0]_0 ,
    \cnt_internal_value_reg[1] ,
    \cnt_internal_value_reg[0]_1 ,
    rst_CNT_buf,
    clk_IBUF_BUFG,
    lopt);
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[1]_1 ;
  output \current_state_reg[1]_2 ;
  output IS_enable1_buf;
  output \temp_reg_reg[24] ;
  output [5:0]Q;
  output \current_state_reg[2] ;
  output \current_state_reg[2]_0 ;
  input start_IBUF;
  input [2:0]current_state;
  input rst_IBUF;
  input [4:0]\temp_reg_reg[29] ;
  input \current_state_reg[2]_1 ;
  input [2:0]out;
  input \cnt_internal_value_reg[4] ;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[0]_0 ;
  input \cnt_internal_value_reg[1] ;
  input \cnt_internal_value_reg[0]_1 ;
  input rst_CNT_buf;
  input clk_IBUF_BUFG;
  output lopt;

  wire IS_enable1_buf;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[4] ;
  wire [2:0]current_state;
  wire \current_state[2]_i_16_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[1]_2 ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire enable_TW_permutation_buf;
  wire lfsr_rst_buf;
  wire [2:0]out;
  wire [0:0]p_3_out;
  wire rst_CNT_buf;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg_reg[24] ;
  wire [4:0]\temp_reg_reg[29] ;
  wire \xlnx_opt_current_state_reg[1] ;
  wire \xlnx_opt_current_state_reg[1]_1 ;

  assign lopt = \current_state[2]_i_16_n_0 ;
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\temp_reg_reg[24] ));
  LUT3 #(
    .INIT(8'hEF)) 
    \current_state[1]_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\current_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF44444444444)) 
    \current_state[2]_i_15 
       (.I0(Q[2]),
        .I1(\temp_reg_reg[29] [3]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\temp_reg_reg[29] [1]),
        .O(\current_state_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \current_state[2]_i_16 
       (.I0(Q[0]),
        .I1(\temp_reg_reg[29] [3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\current_state[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \current_state[2]_i_18 
       (.I0(Q[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    \current_state[2]_i_8 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(out[2]),
        .I3(rst_CNT_buf),
        .I4(Q[3]),
        .I5(\current_state_reg[1]_1 ),
        .O(\current_state_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(p_3_out));
  LUT3 #(
    .INIT(8'h01)) 
    \lfsr_internal[5]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(lfsr_rst_buf));
  LUT3 #(
    .INIT(8'h08)) 
    \lfsr_internal[5]_i_2 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(enable_TW_permutation_buf));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_TW_permutation_buf),
        .D(p_3_out),
        .Q(Q[0]),
        .S(lfsr_rst_buf));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_TW_permutation_buf),
        .D(Q[0]),
        .Q(Q[1]),
        .R(lfsr_rst_buf));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_TW_permutation_buf),
        .D(Q[1]),
        .Q(Q[2]),
        .R(lfsr_rst_buf));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_TW_permutation_buf),
        .D(Q[2]),
        .Q(Q[3]),
        .R(lfsr_rst_buf));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_TW_permutation_buf),
        .D(Q[3]),
        .Q(Q[4]),
        .R(lfsr_rst_buf));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_TW_permutation_buf),
        .D(Q[4]),
        .Q(Q[5]),
        .R(lfsr_rst_buf));
  LUT5 #(
    .INIT(32'h03370307)) 
    \temp_reg_reg[23]_srl3_i_1__2 
       (.I0(\temp_reg_reg[24] ),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(\cnt_internal_value_reg[4] ),
        .O(IS_enable1_buf));
  LUT5 #(
    .INIT(32'hFFFFBEBF)) 
    \xlnx_opt_LUT_current_state[1]_i_1 
       (.I0(\current_state_reg[1]_2 ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(\temp_reg_reg[29] [2]),
        .O(\xlnx_opt_current_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \xlnx_opt_LUT_current_state[1]_i_1_1 
       (.I0(\current_state_reg[1]_0 ),
        .I1(\temp_reg_reg[29] [0]),
        .I2(\current_state_reg[2]_1 ),
        .I3(\temp_reg_reg[29] [4]),
        .I4(\current_state_reg[1]_1 ),
        .I5(\xlnx_opt_current_state_reg[1]_1 ),
        .O(\xlnx_opt_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFC4CCFFFFFFFF)) 
    \xlnx_opt_LUT_current_state[1]_i_1_2 
       (.I0(start_IBUF),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(rst_IBUF),
        .I5(\xlnx_opt_current_state_reg[1] ),
        .O(\current_state_reg[1] ));
endmodule

module shift_reg
   (\temp_reg_reg[26] ,
    \temp_reg_reg[111]_0 ,
    \temp_reg_reg[127]_0 ,
    \temp_reg_reg[56]_0 ,
    \temp_reg_reg[57]_0 ,
    \temp_reg_reg[58]_0 ,
    \temp_reg_reg[59]_0 ,
    \temp_reg_reg[60]_0 ,
    \temp_reg_reg[61]_0 ,
    \temp_reg_reg[62]_0 ,
    \temp_reg_reg[63]_0 ,
    \temp_reg_reg[56]_1 ,
    \cnt_internal_value_reg[1] ,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[2] ,
    \FSM_sequential_current_state_reg[2] ,
    \cnt_internal_value_reg[3] ,
    \lfsr_internal_reg[2] ,
    \cnt_internal_value_reg[2]_0 ,
    out,
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
    lopt_13);
  output \temp_reg_reg[26] ;
  output [6:0]\temp_reg_reg[111]_0 ;
  output \temp_reg_reg[127]_0 ;
  output \temp_reg_reg[56]_0 ;
  output \temp_reg_reg[57]_0 ;
  output \temp_reg_reg[58]_0 ;
  output \temp_reg_reg[59]_0 ;
  output \temp_reg_reg[60]_0 ;
  output \temp_reg_reg[61]_0 ;
  output \temp_reg_reg[62]_0 ;
  output \temp_reg_reg[63]_0 ;
  output \temp_reg_reg[56]_1 ;
  input [7:0]\cnt_internal_value_reg[1] ;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[2] ;
  input \FSM_sequential_current_state_reg[2] ;
  input \cnt_internal_value_reg[3] ;
  input \lfsr_internal_reg[2] ;
  input \cnt_internal_value_reg[2]_0 ;
  input [2:0]out;
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

  wire \FSM_sequential_current_state_reg[2] ;
  wire [55:0]TWEAKEY_permutation_IN;
  wire [58:58]TW_REG_parallel_out_buf;
  wire clk_IBUF_BUFG;
  wire [7:0]\cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[3] ;
  wire [1:0]current_state;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [2:0]out;
  wire [119:64]p_1_in;
  wire state;
  wire \temp_reg_reg[100]_CE_cooolgate_en_sig_1 ;
  wire [6:0]\temp_reg_reg[111]_0 ;
  wire \temp_reg_reg[127]_0 ;
  wire \temp_reg_reg[26] ;
  wire \temp_reg_reg[48]_srl7_n_0 ;
  wire \temp_reg_reg[49]_srl7_n_0 ;
  wire \temp_reg_reg[50]_srl7_n_0 ;
  wire \temp_reg_reg[51]_srl7_n_0 ;
  wire \temp_reg_reg[52]_srl7_n_0 ;
  wire \temp_reg_reg[53]_srl7_n_0 ;
  wire \temp_reg_reg[54]_srl7_n_0 ;
  wire \temp_reg_reg[55]_srl7_n_0 ;
  wire \temp_reg_reg[56]_0 ;
  wire \temp_reg_reg[56]_1 ;
  wire \temp_reg_reg[57]_0 ;
  wire \temp_reg_reg[58]_0 ;
  wire \temp_reg_reg[59]_0 ;
  wire \temp_reg_reg[60]_0 ;
  wire \temp_reg_reg[61]_0 ;
  wire \temp_reg_reg[62]_0 ;
  wire \temp_reg_reg[63]_0 ;
  wire \temp_reg_reg_n_0_[56] ;
  wire \temp_reg_reg_n_0_[57] ;
  wire \temp_reg_reg_n_0_[58] ;
  wire \temp_reg_reg_n_0_[59] ;
  wire \temp_reg_reg_n_0_[60] ;
  wire \temp_reg_reg_n_0_[61] ;
  wire \temp_reg_reg_n_0_[62] ;
  wire \temp_reg_reg_n_0_[63] ;
  wire \xlnx_opt_temp_reg_reg[26] ;
  wire \xlnx_opt_temp_reg_reg[26]_1 ;
  wire \xlnx_opt_temp_reg_reg[26]_2 ;
  wire \xlnx_opt_temp_reg_reg[26]_3 ;

  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[100]_i_1 
       (.I0(TWEAKEY_permutation_IN[36]),
        .I1(TWEAKEY_permutation_IN[20]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[28]),
        .O(p_1_in[100]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[101]_i_1 
       (.I0(TWEAKEY_permutation_IN[37]),
        .I1(TWEAKEY_permutation_IN[21]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[29]),
        .O(p_1_in[101]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[102]_i_1 
       (.I0(TWEAKEY_permutation_IN[38]),
        .I1(TWEAKEY_permutation_IN[22]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[30]),
        .O(p_1_in[102]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[103]_i_1 
       (.I0(TWEAKEY_permutation_IN[39]),
        .I1(TWEAKEY_permutation_IN[23]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[31]),
        .O(p_1_in[103]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[104]_i_1 
       (.I0(TWEAKEY_permutation_IN[40]),
        .I1(\temp_reg_reg[111]_0 [0]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[32]),
        .O(p_1_in[104]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[105]_i_1 
       (.I0(TWEAKEY_permutation_IN[41]),
        .I1(\temp_reg_reg[111]_0 [1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[33]),
        .O(p_1_in[105]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[106]_i_1 
       (.I0(TWEAKEY_permutation_IN[42]),
        .I1(TW_REG_parallel_out_buf),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[34]),
        .O(p_1_in[106]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[107]_i_1 
       (.I0(TWEAKEY_permutation_IN[43]),
        .I1(\temp_reg_reg[111]_0 [2]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[35]),
        .O(p_1_in[107]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[108]_i_1 
       (.I0(TWEAKEY_permutation_IN[44]),
        .I1(\temp_reg_reg[111]_0 [3]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[36]),
        .O(p_1_in[108]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[109]_i_1 
       (.I0(TWEAKEY_permutation_IN[45]),
        .I1(\temp_reg_reg[111]_0 [4]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[37]),
        .O(p_1_in[109]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[110]_i_1 
       (.I0(TWEAKEY_permutation_IN[46]),
        .I1(\temp_reg_reg[111]_0 [5]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[38]),
        .O(p_1_in[110]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[111]_i_1 
       (.I0(TWEAKEY_permutation_IN[47]),
        .I1(\temp_reg_reg[111]_0 [6]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[39]),
        .O(p_1_in[111]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[112]_i_1 
       (.I0(TWEAKEY_permutation_IN[48]),
        .I1(TWEAKEY_permutation_IN[0]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[40]),
        .O(p_1_in[112]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[113]_i_1 
       (.I0(TWEAKEY_permutation_IN[49]),
        .I1(TWEAKEY_permutation_IN[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[41]),
        .O(p_1_in[113]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[114]_i_1 
       (.I0(TWEAKEY_permutation_IN[50]),
        .I1(TWEAKEY_permutation_IN[2]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[42]),
        .O(p_1_in[114]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[115]_i_1 
       (.I0(TWEAKEY_permutation_IN[51]),
        .I1(TWEAKEY_permutation_IN[3]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[43]),
        .O(p_1_in[115]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[116]_i_1 
       (.I0(TWEAKEY_permutation_IN[52]),
        .I1(TWEAKEY_permutation_IN[4]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[44]),
        .O(p_1_in[116]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[117]_i_1 
       (.I0(TWEAKEY_permutation_IN[53]),
        .I1(TWEAKEY_permutation_IN[5]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[45]),
        .O(p_1_in[117]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[118]_i_1 
       (.I0(TWEAKEY_permutation_IN[54]),
        .I1(TWEAKEY_permutation_IN[6]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[46]),
        .O(p_1_in[118]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[119]_i_1 
       (.I0(TWEAKEY_permutation_IN[55]),
        .I1(TWEAKEY_permutation_IN[7]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[47]),
        .O(p_1_in[119]));
  LUT3 #(
    .INIT(8'h3D)) 
    \temp_reg[127]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(\temp_reg_reg[127]_0 ));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[64]_i_1 
       (.I0(TWEAKEY_permutation_IN[0]),
        .I1(TWEAKEY_permutation_IN[32]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[56] ),
        .O(p_1_in[64]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[65]_i_1 
       (.I0(TWEAKEY_permutation_IN[1]),
        .I1(TWEAKEY_permutation_IN[33]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[57] ),
        .O(p_1_in[65]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[66]_i_1 
       (.I0(TWEAKEY_permutation_IN[2]),
        .I1(TWEAKEY_permutation_IN[34]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[58] ),
        .O(p_1_in[66]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[67]_i_1 
       (.I0(TWEAKEY_permutation_IN[3]),
        .I1(TWEAKEY_permutation_IN[35]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[59] ),
        .O(p_1_in[67]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[68]_i_1 
       (.I0(TWEAKEY_permutation_IN[4]),
        .I1(TWEAKEY_permutation_IN[36]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[60] ),
        .O(p_1_in[68]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[69]_i_1 
       (.I0(TWEAKEY_permutation_IN[5]),
        .I1(TWEAKEY_permutation_IN[37]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[61] ),
        .O(p_1_in[69]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[70]_i_1 
       (.I0(TWEAKEY_permutation_IN[6]),
        .I1(TWEAKEY_permutation_IN[38]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[62] ),
        .O(p_1_in[70]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[71]_i_1 
       (.I0(TWEAKEY_permutation_IN[7]),
        .I1(TWEAKEY_permutation_IN[39]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\temp_reg_reg_n_0_[63] ),
        .O(p_1_in[71]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[72]_i_1 
       (.I0(TWEAKEY_permutation_IN[8]),
        .I1(TWEAKEY_permutation_IN[24]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[0]),
        .O(p_1_in[72]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[73]_i_1 
       (.I0(TWEAKEY_permutation_IN[9]),
        .I1(TWEAKEY_permutation_IN[25]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[1]),
        .O(p_1_in[73]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[74]_i_1 
       (.I0(TWEAKEY_permutation_IN[10]),
        .I1(TWEAKEY_permutation_IN[26]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[2]),
        .O(p_1_in[74]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[75]_i_1 
       (.I0(TWEAKEY_permutation_IN[11]),
        .I1(TWEAKEY_permutation_IN[27]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[3]),
        .O(p_1_in[75]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[76]_i_1 
       (.I0(TWEAKEY_permutation_IN[12]),
        .I1(TWEAKEY_permutation_IN[28]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[4]),
        .O(p_1_in[76]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[77]_i_1 
       (.I0(TWEAKEY_permutation_IN[13]),
        .I1(TWEAKEY_permutation_IN[29]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[5]),
        .O(p_1_in[77]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[78]_i_1 
       (.I0(TWEAKEY_permutation_IN[14]),
        .I1(TWEAKEY_permutation_IN[30]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[6]),
        .O(p_1_in[78]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[79]_i_1 
       (.I0(TWEAKEY_permutation_IN[15]),
        .I1(TWEAKEY_permutation_IN[31]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[7]),
        .O(p_1_in[79]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[88]_i_1 
       (.I0(TWEAKEY_permutation_IN[24]),
        .I1(TWEAKEY_permutation_IN[40]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[16]),
        .O(p_1_in[88]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[89]_i_1 
       (.I0(TWEAKEY_permutation_IN[25]),
        .I1(TWEAKEY_permutation_IN[41]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[17]),
        .O(p_1_in[89]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[90]_i_1 
       (.I0(TWEAKEY_permutation_IN[26]),
        .I1(TWEAKEY_permutation_IN[42]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[18]),
        .O(p_1_in[90]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[91]_i_1 
       (.I0(TWEAKEY_permutation_IN[27]),
        .I1(TWEAKEY_permutation_IN[43]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[19]),
        .O(p_1_in[91]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[92]_i_1 
       (.I0(TWEAKEY_permutation_IN[28]),
        .I1(TWEAKEY_permutation_IN[44]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[20]),
        .O(p_1_in[92]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[93]_i_1 
       (.I0(TWEAKEY_permutation_IN[29]),
        .I1(TWEAKEY_permutation_IN[45]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[21]),
        .O(p_1_in[93]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[94]_i_1 
       (.I0(TWEAKEY_permutation_IN[30]),
        .I1(TWEAKEY_permutation_IN[46]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[22]),
        .O(p_1_in[94]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[95]_i_1 
       (.I0(TWEAKEY_permutation_IN[31]),
        .I1(TWEAKEY_permutation_IN[47]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[23]),
        .O(p_1_in[95]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[96]_i_1 
       (.I0(TWEAKEY_permutation_IN[32]),
        .I1(TWEAKEY_permutation_IN[16]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[24]),
        .O(p_1_in[96]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[97]_i_1 
       (.I0(TWEAKEY_permutation_IN[33]),
        .I1(TWEAKEY_permutation_IN[17]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[25]),
        .O(p_1_in[97]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[98]_i_1 
       (.I0(TWEAKEY_permutation_IN[34]),
        .I1(TWEAKEY_permutation_IN[18]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[26]),
        .O(p_1_in[98]));
  LUT6 #(
    .INIT(64'hAAFFCFAFAA00C0A0)) 
    \temp_reg[99]_i_1 
       (.I0(TWEAKEY_permutation_IN[35]),
        .I1(TWEAKEY_permutation_IN[19]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(TWEAKEY_permutation_IN[27]),
        .O(p_1_in[99]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[100]),
        .Q(TWEAKEY_permutation_IN[36]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \temp_reg_reg[100]_CE_cooolgate_en_gate_1 
       (.I0(out[2]),
        .I1(out[1]),
        .O(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[101]),
        .Q(TWEAKEY_permutation_IN[37]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[102]),
        .Q(TWEAKEY_permutation_IN[38]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[103]),
        .Q(TWEAKEY_permutation_IN[39]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[104]),
        .Q(TWEAKEY_permutation_IN[40]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[105]),
        .Q(TWEAKEY_permutation_IN[41]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[106]),
        .Q(TWEAKEY_permutation_IN[42]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[107]),
        .Q(TWEAKEY_permutation_IN[43]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[108]),
        .Q(TWEAKEY_permutation_IN[44]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[109]),
        .Q(TWEAKEY_permutation_IN[45]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[110]),
        .Q(TWEAKEY_permutation_IN[46]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[111]),
        .Q(TWEAKEY_permutation_IN[47]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[112]),
        .Q(TWEAKEY_permutation_IN[48]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[113]),
        .Q(TWEAKEY_permutation_IN[49]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[114]),
        .Q(TWEAKEY_permutation_IN[50]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[115]),
        .Q(TWEAKEY_permutation_IN[51]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[116]),
        .Q(TWEAKEY_permutation_IN[52]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[117]),
        .Q(TWEAKEY_permutation_IN[53]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[118]),
        .Q(TWEAKEY_permutation_IN[54]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[119]),
        .Q(TWEAKEY_permutation_IN[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[48]),
        .Q(\temp_reg_reg[111]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[49]),
        .Q(\temp_reg_reg[111]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[50]),
        .Q(TW_REG_parallel_out_buf),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[51]),
        .Q(\temp_reg_reg[111]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[52]),
        .Q(\temp_reg_reg[111]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[53]),
        .Q(\temp_reg_reg[111]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[54]),
        .Q(\temp_reg_reg[111]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[55]),
        .Q(\temp_reg_reg[111]_0 [6]),
        .R(1'b0));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[48]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[48]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [0]),
        .Q(\temp_reg_reg[48]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[48]_srl7_i_2 
       (.I0(\temp_reg_reg[111]_0 [0]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[56]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[49]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[49]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [1]),
        .Q(\temp_reg_reg[49]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[49]_srl7_i_2 
       (.I0(\temp_reg_reg[111]_0 [1]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[57]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[50]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[50]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [2]),
        .Q(\temp_reg_reg[50]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[50]_srl7_i_2 
       (.I0(TW_REG_parallel_out_buf),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[58]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[51]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[51]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [3]),
        .Q(\temp_reg_reg[51]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[51]_srl7_i_2 
       (.I0(\temp_reg_reg[111]_0 [2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[59]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[52]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[52]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [4]),
        .Q(\temp_reg_reg[52]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[52]_srl7_i_2 
       (.I0(\temp_reg_reg[111]_0 [3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[60]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[53]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[53]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [5]),
        .Q(\temp_reg_reg[53]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[53]_srl7_i_2 
       (.I0(\temp_reg_reg[111]_0 [4]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[61]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[54]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[54]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [6]),
        .Q(\temp_reg_reg[54]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[54]_srl7_i_2 
       (.I0(\temp_reg_reg[111]_0 [5]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[62]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[55]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[55]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(\cnt_internal_value_reg[1] [7]),
        .Q(\temp_reg_reg[55]_srl7_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \temp_reg_reg[55]_srl7_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(state));
  LUT5 #(
    .INIT(32'h01000000)) 
    \temp_reg_reg[55]_srl7_i_3 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\temp_reg_reg[56]_1 ));
  LUT4 #(
    .INIT(16'h22A8)) 
    \temp_reg_reg[55]_srl7_i_4 
       (.I0(\temp_reg_reg[111]_0 [6]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\temp_reg_reg[63]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[48]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[49]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[50]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[51]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[52]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[53]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[54]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\temp_reg_reg[55]_srl7_n_0 ),
        .Q(\temp_reg_reg_n_0_[63] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[64]),
        .Q(TWEAKEY_permutation_IN[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[65]),
        .Q(TWEAKEY_permutation_IN[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[66]),
        .Q(TWEAKEY_permutation_IN[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[67]),
        .Q(TWEAKEY_permutation_IN[3]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[68]),
        .Q(TWEAKEY_permutation_IN[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[69]),
        .Q(TWEAKEY_permutation_IN[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[70]),
        .Q(TWEAKEY_permutation_IN[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[71]),
        .Q(TWEAKEY_permutation_IN[7]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[72]),
        .Q(TWEAKEY_permutation_IN[8]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[73]),
        .Q(TWEAKEY_permutation_IN[9]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[74]),
        .Q(TWEAKEY_permutation_IN[10]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[75]),
        .Q(TWEAKEY_permutation_IN[11]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[76]),
        .Q(TWEAKEY_permutation_IN[12]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[77]),
        .Q(TWEAKEY_permutation_IN[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[78]),
        .Q(TWEAKEY_permutation_IN[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[79]),
        .Q(TWEAKEY_permutation_IN[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[8]),
        .Q(TWEAKEY_permutation_IN[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[9]),
        .Q(TWEAKEY_permutation_IN[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[10]),
        .Q(TWEAKEY_permutation_IN[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[11]),
        .Q(TWEAKEY_permutation_IN[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[12]),
        .Q(TWEAKEY_permutation_IN[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[13]),
        .Q(TWEAKEY_permutation_IN[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[14]),
        .Q(TWEAKEY_permutation_IN[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[127]_0 ),
        .D(TWEAKEY_permutation_IN[15]),
        .Q(TWEAKEY_permutation_IN[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[88]),
        .Q(TWEAKEY_permutation_IN[24]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[89]),
        .Q(TWEAKEY_permutation_IN[25]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[90]),
        .Q(TWEAKEY_permutation_IN[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[91]),
        .Q(TWEAKEY_permutation_IN[27]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[92]),
        .Q(TWEAKEY_permutation_IN[28]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[93]),
        .Q(TWEAKEY_permutation_IN[29]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[94]),
        .Q(TWEAKEY_permutation_IN[30]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[95]),
        .Q(TWEAKEY_permutation_IN[31]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[96]),
        .Q(TWEAKEY_permutation_IN[32]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[97]),
        .Q(TWEAKEY_permutation_IN[33]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[98]),
        .Q(TWEAKEY_permutation_IN[34]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[100]_CE_cooolgate_en_sig_1 ),
        .D(p_1_in[99]),
        .Q(TWEAKEY_permutation_IN[35]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFDFFF3FFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[18]_srl3_i_1 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .I5(lopt_5),
        .O(\xlnx_opt_temp_reg_reg[26]_3 ));
  LUT6 #(
    .INIT(64'hDF20DF20DF2020DF)) 
    \xlnx_opt_LUT_temp_reg_reg[18]_srl3_i_1_1 
       (.I0(lopt_6),
        .I1(\cnt_internal_value_reg[3] ),
        .I2(lopt_7),
        .I3(lopt_8),
        .I4(lopt_9),
        .I5(lopt_10),
        .O(\xlnx_opt_temp_reg_reg[26]_2 ));
  LUT6 #(
    .INIT(64'h8DDDCCDD27773377)) 
    \xlnx_opt_LUT_temp_reg_reg[18]_srl3_i_1_2 
       (.I0(lopt_2),
        .I1(lopt_9),
        .I2(lopt_11),
        .I3(out[0]),
        .I4(out[1]),
        .I5(lopt_12),
        .O(\xlnx_opt_temp_reg_reg[26]_1 ));
  LUT6 #(
    .INIT(64'h84000000FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[18]_srl3_i_1_3 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_4),
        .I3(lopt_5),
        .I4(lopt_13),
        .I5(\xlnx_opt_temp_reg_reg[26]_1 ),
        .O(\xlnx_opt_temp_reg_reg[26] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0FF40FF)) 
    \xlnx_opt_LUT_temp_reg_reg[18]_srl3_i_1_4 
       (.I0(\cnt_internal_value_reg[3] ),
        .I1(TW_REG_parallel_out_buf),
        .I2(\FSM_sequential_current_state_reg[2] ),
        .I3(\xlnx_opt_temp_reg_reg[26]_3 ),
        .I4(\xlnx_opt_temp_reg_reg[26]_2 ),
        .I5(\xlnx_opt_temp_reg_reg[26] ),
        .O(\temp_reg_reg[26] ));
endmodule

module skinny_shift_reg_64
   (\temp_reg_reg[29] ,
    \current_state_reg[2] ,
    \FSM_sequential_current_state_reg[2] ,
    \temp_reg_reg[25] ,
    \temp_reg_reg[26] ,
    \temp_reg_reg[27] ,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[31] ,
    \current_state_reg[1] ,
    \temp_reg_reg[27]_0 ,
    \temp_reg_reg[29]_1 ,
    \temp_reg_reg[24] ,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    \temp_reg_reg[25]_0 ,
    \temp_reg_reg[26]_0 ,
    \temp_reg_reg[24]_0 ,
    \temp_reg_reg[24]_1 ,
    \temp_reg_reg[24]_2 ,
    \temp_reg_reg[27]_1 ,
    IS_enable4_buf,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[1] ,
    \cnt_internal_value_reg[2] ,
    \temp_reg_reg[122] ,
    \temp_reg_reg[121] ,
    IS_enable3_buf,
    IS_enable2_buf,
    IS_enable1_buf,
    \current_state_reg[2]_2 ,
    current_state,
    \temp_reg_reg[25]_1 ,
    \cnt_internal_value_reg[2]_0 ,
    rst_IBUF,
    \cnt_internal_value_reg[0] ,
    out,
    Q,
    TW_REG_parallel_out_buf,
    \FSM_sequential_current_state_reg[2]_0 ,
    \cnt_internal_value_reg[3] ,
    \FSM_sequential_current_state_reg[2]_1 ,
    \cnt_internal_value_reg[1]_0 ,
    \cnt_internal_value_reg[2]_1 ,
    \cnt_internal_value_reg[1]_1 ,
    \current_state_reg[0] ,
    \lfsr_internal_reg[4] ,
    \FSM_sequential_current_state_reg[1] ,
    \lfsr_internal_reg[2] ,
    \lfsr_internal_reg[2]_0 ,
    \cnt_internal_value_reg[1]_2 ,
    \temp_reg_reg[120] ,
    \cnt_internal_value_reg[1]_3 ,
    \cnt_internal_value_reg[1]_4 ,
    \cnt_internal_value_reg[1]_5 ,
    \lfsr_internal_reg[3] ,
    \cnt_internal_value_reg[3]_0 ,
    \cnt_internal_value_reg[0]_0 ,
    \cnt_internal_value_reg[1]_6 ,
    \lfsr_internal_reg[5] ,
    \lfsr_internal_reg[2]_1 ,
    \cnt_internal_value_reg[1]_7 ,
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
    lopt_19,
    lopt_20,
    lopt_21,
    lopt_22,
    lopt_23,
    lopt_24);
  output [4:0]\temp_reg_reg[29] ;
  output \current_state_reg[2] ;
  output \FSM_sequential_current_state_reg[2] ;
  output \temp_reg_reg[25] ;
  output \temp_reg_reg[26] ;
  output \temp_reg_reg[27] ;
  output \temp_reg_reg[29]_0 ;
  output \temp_reg_reg[31] ;
  output \current_state_reg[1] ;
  output \temp_reg_reg[27]_0 ;
  output \temp_reg_reg[29]_1 ;
  output \temp_reg_reg[24] ;
  output \current_state_reg[2]_0 ;
  output \current_state_reg[2]_1 ;
  output \temp_reg_reg[25]_0 ;
  output \temp_reg_reg[26]_0 ;
  output \temp_reg_reg[24]_0 ;
  output \temp_reg_reg[24]_1 ;
  output \temp_reg_reg[24]_2 ;
  output \temp_reg_reg[27]_1 ;
  input IS_enable4_buf;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[1] ;
  input \cnt_internal_value_reg[2] ;
  input \temp_reg_reg[122] ;
  input \temp_reg_reg[121] ;
  input IS_enable3_buf;
  input IS_enable2_buf;
  input IS_enable1_buf;
  input \current_state_reg[2]_2 ;
  input [2:0]current_state;
  input \temp_reg_reg[25]_1 ;
  input \cnt_internal_value_reg[2]_0 ;
  input rst_IBUF;
  input \cnt_internal_value_reg[0] ;
  input [2:0]out;
  input [1:0]Q;
  input [3:0]TW_REG_parallel_out_buf;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \cnt_internal_value_reg[3] ;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input [1:0]\cnt_internal_value_reg[1]_0 ;
  input \cnt_internal_value_reg[2]_1 ;
  input \cnt_internal_value_reg[1]_1 ;
  input \current_state_reg[0] ;
  input \lfsr_internal_reg[4] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \lfsr_internal_reg[2] ;
  input \lfsr_internal_reg[2]_0 ;
  input \cnt_internal_value_reg[1]_2 ;
  input \temp_reg_reg[120] ;
  input \cnt_internal_value_reg[1]_3 ;
  input \cnt_internal_value_reg[1]_4 ;
  input \cnt_internal_value_reg[1]_5 ;
  input \lfsr_internal_reg[3] ;
  input \cnt_internal_value_reg[3]_0 ;
  input \cnt_internal_value_reg[0]_0 ;
  input \cnt_internal_value_reg[1]_6 ;
  input \lfsr_internal_reg[5] ;
  input [0:0]\lfsr_internal_reg[2]_1 ;
  input \cnt_internal_value_reg[1]_7 ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  input lopt_6;
  input lopt_7;
  input lopt_8;
  input lopt_9;
  input lopt_10;
  input lopt_11;
  input lopt_12;
  input lopt_13;
  input lopt_14;
  output lopt_15;
  output lopt_16;
  output lopt_17;
  output lopt_18;
  input lopt_19;
  input lopt_20;
  input lopt_21;
  input lopt_22;
  input lopt_23;
  input lopt_24;

  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire INST_FIRST_ROW_SHIFT_REG_n_10;
  wire INST_FIRST_ROW_SHIFT_REG_n_14;
  wire INST_FIRST_ROW_SHIFT_REG_n_16;
  wire INST_FIRST_ROW_SHIFT_REG_n_17;
  wire INST_FOURTH_ROW_SHIFT_REG_n_13;
  wire INST_FOURTH_ROW_SHIFT_REG_n_17;
  wire INST_SECOND_ROW_SHIFT_REG_n_0;
  wire INST_SECOND_ROW_SHIFT_REG_n_1;
  wire INST_SECOND_ROW_SHIFT_REG_n_10;
  wire INST_SECOND_ROW_SHIFT_REG_n_11;
  wire INST_SECOND_ROW_SHIFT_REG_n_12;
  wire INST_SECOND_ROW_SHIFT_REG_n_13;
  wire INST_SECOND_ROW_SHIFT_REG_n_14;
  wire INST_SECOND_ROW_SHIFT_REG_n_15;
  wire INST_SECOND_ROW_SHIFT_REG_n_2;
  wire INST_SECOND_ROW_SHIFT_REG_n_3;
  wire INST_SECOND_ROW_SHIFT_REG_n_4;
  wire INST_SECOND_ROW_SHIFT_REG_n_5;
  wire INST_SECOND_ROW_SHIFT_REG_n_6;
  wire INST_SECOND_ROW_SHIFT_REG_n_7;
  wire INST_SECOND_ROW_SHIFT_REG_n_8;
  wire INST_SECOND_ROW_SHIFT_REG_n_9;
  wire INST_THIRD_ROW_SHIFT_REG_n_10;
  wire INST_THIRD_ROW_SHIFT_REG_n_9;
  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [7:0]IS_serial_output_first_row_buf;
  wire [7:0]IS_serial_output_fourth_row_buf;
  wire [7:0]IS_serial_output_third_row_buf;
  wire [1:0]Q;
  wire [3:0]TW_REG_parallel_out_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[0]_0 ;
  wire \cnt_internal_value_reg[1] ;
  wire [1:0]\cnt_internal_value_reg[1]_0 ;
  wire \cnt_internal_value_reg[1]_1 ;
  wire \cnt_internal_value_reg[1]_4 ;
  wire \cnt_internal_value_reg[1]_5 ;
  wire \cnt_internal_value_reg[1]_6 ;
  wire \cnt_internal_value_reg[1]_7 ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[2]_1 ;
  wire \cnt_internal_value_reg[3] ;
  wire \cnt_internal_value_reg[3]_0 ;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_2 ;
  wire \lfsr_internal_reg[2] ;
  wire \lfsr_internal_reg[2]_0 ;
  wire [0:0]\lfsr_internal_reg[2]_1 ;
  wire \lfsr_internal_reg[3] ;
  wire \lfsr_internal_reg[4] ;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_10 ;
  wire \^lopt_11 ;
  wire \^lopt_12 ;
  wire \^lopt_13 ;
  wire \^lopt_14 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire \^lopt_6 ;
  wire \^lopt_7 ;
  wire \^lopt_8 ;
  wire \^lopt_9 ;
  wire [2:0]out;
  wire rst_IBUF;
  wire \temp_reg_reg[121] ;
  wire \temp_reg_reg[122] ;
  wire \temp_reg_reg[24] ;
  wire \temp_reg_reg[24]_0 ;
  wire \temp_reg_reg[24]_2 ;
  wire \temp_reg_reg[27] ;
  wire \temp_reg_reg[27]_0 ;
  wire \temp_reg_reg[27]_1 ;
  wire [4:0]\temp_reg_reg[29] ;
  wire \temp_reg_reg[29]_1 ;
  wire \temp_reg_reg[31] ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_FSM_sequential_current_state_reg[1]_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[1]_0_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[2]_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_current_state_reg[2]_1_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_current_state_reg[2]_2_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_lfsr_internal_reg[5]_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[24]_0_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[25]_0_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[25]_2_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[26]_1_UNCONNECTED ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[28]_3_UNCONNECTED ;
  wire \NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[25]_0_UNCONNECTED ;
  wire \NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[26]_0_UNCONNECTED ;
  wire \NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[29]_0_UNCONNECTED ;
  wire \NLW_INST_THIRD_ROW_SHIFT_REG_cnt_internal_value_reg[1]_0_UNCONNECTED ;
  wire \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[120]_UNCONNECTED ;
  wire \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[28]_0_UNCONNECTED ;

  assign \^lopt  = lopt_6;
  assign \^lopt_1  = lopt_7;
  assign \^lopt_10  = lopt_20;
  assign \^lopt_11  = lopt_21;
  assign \^lopt_12  = lopt_22;
  assign \^lopt_13  = lopt_23;
  assign \^lopt_14  = lopt_24;
  assign \^lopt_2  = lopt_8;
  assign \^lopt_3  = lopt_9;
  assign \^lopt_4  = lopt_10;
  assign \^lopt_5  = lopt_11;
  assign \^lopt_6  = lopt_12;
  assign \^lopt_7  = lopt_13;
  assign \^lopt_8  = lopt_14;
  assign \^lopt_9  = lopt_19;
  assign lopt = IS_serial_output_first_row_buf[6];
  assign lopt_1 = IS_serial_output_fourth_row_buf[2];
  assign lopt_15 = IS_serial_output_fourth_row_buf[1];
  assign lopt_16 = IS_serial_output_third_row_buf[1];
  assign lopt_17 = IS_serial_output_first_row_buf[7];
  assign lopt_18 = INST_FIRST_ROW_SHIFT_REG_n_14;
  assign lopt_2 = IS_serial_output_third_row_buf[2];
  assign lopt_3 = IS_serial_output_fourth_row_buf[5];
  assign lopt_4 = IS_serial_output_third_row_buf[5];
  assign lopt_5 = INST_FIRST_ROW_SHIFT_REG_n_16;
  IS_shift_reg INST_FIRST_ROW_SHIFT_REG
       (.\FSM_sequential_current_state_reg[1] (\NLW_INST_FIRST_ROW_SHIFT_REG_FSM_sequential_current_state_reg[1]_UNCONNECTED ),
        .IS_enable1_buf(IS_enable1_buf),
        .IS_serial_output_first_row_buf({IS_serial_output_first_row_buf[7:6],IS_serial_output_first_row_buf[0]}),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf[4]),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf[4]),
        .TW_REG_parallel_out_buf({TW_REG_parallel_out_buf[2],TW_REG_parallel_out_buf[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0]_0 ),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1]_1 ),
        .\cnt_internal_value_reg[1]_0 (\NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[1]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[1]_1 (\cnt_internal_value_reg[1]_4 ),
        .\cnt_internal_value_reg[1]_2 (\cnt_internal_value_reg[1]_5 ),
        .\cnt_internal_value_reg[1]_3 (\cnt_internal_value_reg[1]_6 ),
        .\cnt_internal_value_reg[1]_4 (\cnt_internal_value_reg[1]_7 ),
        .\cnt_internal_value_reg[2] (\NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[2]_UNCONNECTED ),
        .\cnt_internal_value_reg[3] (\cnt_internal_value_reg[3]_0 ),
        .\cnt_internal_value_reg[3]_0 (\cnt_internal_value_reg[3] ),
        .current_state(current_state),
        .\current_state_reg[0] (\current_state_reg[0] ),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[2] (\temp_reg_reg[29] [0]),
        .\current_state_reg[2]_0 (\current_state_reg[2] ),
        .\current_state_reg[2]_1 (\NLW_INST_FIRST_ROW_SHIFT_REG_current_state_reg[2]_1_UNCONNECTED ),
        .\current_state_reg[2]_2 (\NLW_INST_FIRST_ROW_SHIFT_REG_current_state_reg[2]_2_UNCONNECTED ),
        .\current_state_reg[2]_3 (\current_state_reg[2]_2 ),
        .\lfsr_internal_reg[2] (\lfsr_internal_reg[2] ),
        .\lfsr_internal_reg[2]_0 (\lfsr_internal_reg[2]_0 ),
        .\lfsr_internal_reg[2]_1 (\lfsr_internal_reg[2]_1 ),
        .\lfsr_internal_reg[3] (\lfsr_internal_reg[3] ),
        .\lfsr_internal_reg[4] (\lfsr_internal_reg[4] ),
        .\lfsr_internal_reg[5] (\NLW_INST_FIRST_ROW_SHIFT_REG_lfsr_internal_reg[5]_UNCONNECTED ),
        .lopt(\temp_reg_reg[29] [3]),
        .lopt_1(\cnt_internal_value_reg[1]_0 [1]),
        .lopt_10(\^lopt_14 ),
        .lopt_11(\^lopt_3 ),
        .lopt_12(\^lopt_4 ),
        .lopt_2(\cnt_internal_value_reg[1]_0 [0]),
        .lopt_3(\^lopt ),
        .lopt_4(\^lopt_1 ),
        .lopt_5(\^lopt_9 ),
        .lopt_6(\^lopt_10 ),
        .lopt_7(\^lopt_11 ),
        .lopt_8(\^lopt_12 ),
        .lopt_9(\^lopt_13 ),
        .out(out),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[24]_0 (\NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[24]_0_UNCONNECTED ),
        .\temp_reg_reg[24]_1 (\temp_reg_reg[24]_2 ),
        .\temp_reg_reg[24]_2 (INST_SECOND_ROW_SHIFT_REG_n_0),
        .\temp_reg_reg[25]_0 (\NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[25]_0_UNCONNECTED ),
        .\temp_reg_reg[25]_1 (INST_SECOND_ROW_SHIFT_REG_n_1),
        .\temp_reg_reg[25]_2 (\NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[25]_2_UNCONNECTED ),
        .\temp_reg_reg[26]_0 (\temp_reg_reg[29] [1]),
        .\temp_reg_reg[26]_1 (\NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[26]_1_UNCONNECTED ),
        .\temp_reg_reg[26]_2 (INST_SECOND_ROW_SHIFT_REG_n_2),
        .\temp_reg_reg[27]_0 (\temp_reg_reg[29] [2]),
        .\temp_reg_reg[27]_1 (INST_SECOND_ROW_SHIFT_REG_n_3),
        .\temp_reg_reg[28]_0 (\temp_reg_reg[29] [3]),
        .\temp_reg_reg[28]_1 (INST_FIRST_ROW_SHIFT_REG_n_10),
        .\temp_reg_reg[28]_2 (INST_SECOND_ROW_SHIFT_REG_n_4),
        .\temp_reg_reg[28]_3 (\NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[28]_3_UNCONNECTED ),
        .\temp_reg_reg[29]_0 (\temp_reg_reg[29] [4]),
        .\temp_reg_reg[29]_1 (INST_SECOND_ROW_SHIFT_REG_n_5),
        .\temp_reg_reg[30]_0 (INST_FIRST_ROW_SHIFT_REG_n_17),
        .\temp_reg_reg[30]_1 (INST_SECOND_ROW_SHIFT_REG_n_6),
        .\temp_reg_reg[31]_0 (INST_FIRST_ROW_SHIFT_REG_n_14),
        .\temp_reg_reg[31]_1 (INST_FIRST_ROW_SHIFT_REG_n_16),
        .\temp_reg_reg[31]_2 (INST_SECOND_ROW_SHIFT_REG_n_7));
  IS_shift_reg_0 INST_FOURTH_ROW_SHIFT_REG
       (.\FSM_sequential_current_state_reg[2] (\FSM_sequential_current_state_reg[2] ),
        .\FSM_sequential_current_state_reg[2]_0 (INST_FIRST_ROW_SHIFT_REG_n_10),
        .\FSM_sequential_current_state_reg[2]_1 (INST_THIRD_ROW_SHIFT_REG_n_10),
        .\FSM_sequential_current_state_reg[2]_2 (\FSM_sequential_current_state_reg[2]_0 ),
        .IS_enable4_buf(IS_enable4_buf),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf[7]),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf),
        .IS_serial_output_third_row_buf({IS_serial_output_third_row_buf[7],IS_serial_output_third_row_buf[5],IS_serial_output_third_row_buf[2:1]}),
        .Q(Q),
        .TW_REG_parallel_out_buf({TW_REG_parallel_out_buf[3],TW_REG_parallel_out_buf[1]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0] ),
        .\cnt_internal_value_reg[0]_0 (\cnt_internal_value_reg[1]_0 [0]),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1] ),
        .\cnt_internal_value_reg[1]_0 (INST_THIRD_ROW_SHIFT_REG_n_9),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[3] (\cnt_internal_value_reg[3] ),
        .current_state({current_state[2],current_state[0]}),
        .out(out),
        .\temp_reg_reg[121] (\temp_reg_reg[121] ),
        .\temp_reg_reg[122] (\temp_reg_reg[122] ),
        .\temp_reg_reg[24]_0 (\temp_reg_reg[24] ),
        .\temp_reg_reg[24]_1 (INST_FOURTH_ROW_SHIFT_REG_n_17),
        .\temp_reg_reg[25]_0 (\NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[25]_0_UNCONNECTED ),
        .\temp_reg_reg[25]_1 (\temp_reg_reg[29] [0]),
        .\temp_reg_reg[26]_0 (\NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[26]_0_UNCONNECTED ),
        .\temp_reg_reg[26]_1 (\temp_reg_reg[29] [1]),
        .\temp_reg_reg[27]_0 (\temp_reg_reg[27]_0 ),
        .\temp_reg_reg[27]_1 (INST_FIRST_ROW_SHIFT_REG_n_16),
        .\temp_reg_reg[29]_0 (\NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[29]_0_UNCONNECTED ),
        .\temp_reg_reg[29]_1 (\temp_reg_reg[29]_1 ),
        .\temp_reg_reg[29]_2 (\temp_reg_reg[29] [4]),
        .\temp_reg_reg[30]_0 (INST_FOURTH_ROW_SHIFT_REG_n_13),
        .\temp_reg_reg[31]_0 (\temp_reg_reg[31] ),
        .\temp_reg_reg[31]_1 (INST_FIRST_ROW_SHIFT_REG_n_17),
        .\temp_reg_reg[31]_2 (INST_FIRST_ROW_SHIFT_REG_n_14));
  IS_shift_reg_1 INST_SECOND_ROW_SHIFT_REG
       (.IS_enable2_buf(IS_enable2_buf),
        .IS_serial_output_first_row_buf({IS_serial_output_first_row_buf[7:6],IS_serial_output_first_row_buf[0]}),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out),
        .\temp_reg_reg[24]_0 (INST_SECOND_ROW_SHIFT_REG_n_0),
        .\temp_reg_reg[24]_1 (INST_SECOND_ROW_SHIFT_REG_n_8),
        .\temp_reg_reg[25]_0 (INST_SECOND_ROW_SHIFT_REG_n_1),
        .\temp_reg_reg[25]_1 (INST_SECOND_ROW_SHIFT_REG_n_9),
        .\temp_reg_reg[25]_2 (\temp_reg_reg[29] [0]),
        .\temp_reg_reg[26]_0 (INST_SECOND_ROW_SHIFT_REG_n_2),
        .\temp_reg_reg[26]_1 (INST_SECOND_ROW_SHIFT_REG_n_10),
        .\temp_reg_reg[26]_2 (\temp_reg_reg[29] [1]),
        .\temp_reg_reg[27]_0 (INST_SECOND_ROW_SHIFT_REG_n_3),
        .\temp_reg_reg[27]_1 (INST_SECOND_ROW_SHIFT_REG_n_11),
        .\temp_reg_reg[27]_2 (\temp_reg_reg[29] [2]),
        .\temp_reg_reg[28]_0 (INST_SECOND_ROW_SHIFT_REG_n_4),
        .\temp_reg_reg[28]_1 (INST_SECOND_ROW_SHIFT_REG_n_12),
        .\temp_reg_reg[28]_2 (\temp_reg_reg[29] [3]),
        .\temp_reg_reg[29]_0 (INST_SECOND_ROW_SHIFT_REG_n_5),
        .\temp_reg_reg[29]_1 (INST_SECOND_ROW_SHIFT_REG_n_13),
        .\temp_reg_reg[29]_2 (\temp_reg_reg[29] [4]),
        .\temp_reg_reg[30]_0 (INST_SECOND_ROW_SHIFT_REG_n_6),
        .\temp_reg_reg[30]_1 (INST_SECOND_ROW_SHIFT_REG_n_14),
        .\temp_reg_reg[31]_0 (INST_SECOND_ROW_SHIFT_REG_n_7),
        .\temp_reg_reg[31]_1 (INST_SECOND_ROW_SHIFT_REG_n_15));
  IS_shift_reg_2 INST_THIRD_ROW_SHIFT_REG
       (.\FSM_sequential_current_state_reg[0] (INST_FOURTH_ROW_SHIFT_REG_n_13),
        .\FSM_sequential_current_state_reg[0]_0 (INST_FOURTH_ROW_SHIFT_REG_n_17),
        .\FSM_sequential_current_state_reg[2] (\FSM_sequential_current_state_reg[2]_1 ),
        .IS_enable3_buf(IS_enable3_buf),
        .IS_serial_output_first_row_buf({IS_serial_output_first_row_buf[6],IS_serial_output_first_row_buf[0]}),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf[3]),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1]_0 [1]),
        .\cnt_internal_value_reg[1]_0 (\NLW_INST_THIRD_ROW_SHIFT_REG_cnt_internal_value_reg[1]_0_UNCONNECTED ),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2]_1 ),
        .lopt(\^lopt_2 ),
        .lopt_1(\^lopt_3 ),
        .lopt_10(\^lopt_6 ),
        .lopt_11(Q[1]),
        .lopt_12(\^lopt_7 ),
        .lopt_13(Q[0]),
        .lopt_14(\^lopt_8 ),
        .lopt_2(\^lopt_4 ),
        .lopt_3(\^lopt_5 ),
        .lopt_4(\cnt_internal_value_reg[1]_0 [0]),
        .lopt_5(IS_serial_output_first_row_buf[7]),
        .lopt_6(\temp_reg_reg[29] [1]),
        .lopt_7(\temp_reg_reg[29] [0]),
        .lopt_8(\temp_reg_reg[24]_2 ),
        .lopt_9(\temp_reg_reg[29] [4]),
        .out(out),
        .\temp_reg_reg[120] (\NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[120]_UNCONNECTED ),
        .\temp_reg_reg[24]_0 (INST_THIRD_ROW_SHIFT_REG_n_10),
        .\temp_reg_reg[24]_1 (\temp_reg_reg[24]_0 ),
        .\temp_reg_reg[24]_2 (INST_SECOND_ROW_SHIFT_REG_n_8),
        .\temp_reg_reg[25]_0 (INST_SECOND_ROW_SHIFT_REG_n_9),
        .\temp_reg_reg[26]_0 (INST_SECOND_ROW_SHIFT_REG_n_10),
        .\temp_reg_reg[27]_0 (\temp_reg_reg[27] ),
        .\temp_reg_reg[27]_1 (\temp_reg_reg[27]_1 ),
        .\temp_reg_reg[27]_2 (INST_SECOND_ROW_SHIFT_REG_n_11),
        .\temp_reg_reg[27]_3 (\temp_reg_reg[29] [2]),
        .\temp_reg_reg[28]_0 (\NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[28]_0_UNCONNECTED ),
        .\temp_reg_reg[28]_1 (INST_SECOND_ROW_SHIFT_REG_n_12),
        .\temp_reg_reg[28]_2 (\temp_reg_reg[29] [3]),
        .\temp_reg_reg[29]_0 (INST_SECOND_ROW_SHIFT_REG_n_13),
        .\temp_reg_reg[30]_0 (INST_THIRD_ROW_SHIFT_REG_n_9),
        .\temp_reg_reg[30]_1 (INST_SECOND_ROW_SHIFT_REG_n_14),
        .\temp_reg_reg[31]_0 (INST_SECOND_ROW_SHIFT_REG_n_15));
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
