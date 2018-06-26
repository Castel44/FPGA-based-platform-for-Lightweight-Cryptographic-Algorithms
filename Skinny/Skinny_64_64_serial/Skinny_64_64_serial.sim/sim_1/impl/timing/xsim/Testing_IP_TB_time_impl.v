// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 26 13:52:40 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Skinny/Skinny_64_64_serial/Skinny_64_64_serial.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
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
    \temp_reg_reg[15] ,
    \temp_reg_reg[14] ,
    \temp_reg_reg[13] ,
    \temp_reg_reg[12] ,
    TW_REG_serial_in_buf,
    \temp_reg_reg[14]_0 ,
    \temp_reg_reg[12]_0 ,
    \current_state_reg[1] ,
    \temp_reg_reg[14]_1 ,
    rst_IBUF,
    current_state,
    \current_state_reg[0]_0 ,
    \temp_reg_reg[15]_0 ,
    \temp_reg_reg[14]_2 ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[12]_1 ,
    IS_serial_output_first_row_buf,
    \FSM_sequential_current_state_reg[1] ,
    \temp_reg_reg[63] ,
    \temp_reg_reg[61] ,
    \temp_reg_reg[60] ,
    clk_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output \current_state_reg[2] ;
  output \current_state_reg[0] ;
  output \temp_reg_reg[15] ;
  output \temp_reg_reg[14] ;
  output \temp_reg_reg[13] ;
  output \temp_reg_reg[12] ;
  output [3:0]TW_REG_serial_in_buf;
  output \temp_reg_reg[14]_0 ;
  input \temp_reg_reg[12]_0 ;
  input \current_state_reg[1] ;
  input \temp_reg_reg[14]_1 ;
  input rst_IBUF;
  input [2:0]current_state;
  input \current_state_reg[0]_0 ;
  input \temp_reg_reg[15]_0 ;
  input \temp_reg_reg[14]_2 ;
  input \temp_reg_reg[13]_0 ;
  input \temp_reg_reg[12]_1 ;
  input [1:0]IS_serial_output_first_row_buf;
  input \FSM_sequential_current_state_reg[1] ;
  input \temp_reg_reg[63] ;
  input \temp_reg_reg[61] ;
  input \temp_reg_reg[60] ;
  input clk_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;

  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [3:0]TW_REG_serial_in_buf;
  wire ce;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[0]_i_1__0_n_0 ;
  wire \cnt_internal_value[3]_i_2_n_0 ;
  wire \cnt_internal_value[3]_i_3_n_0 ;
  wire [3:0]cnt_out_W;
  wire [2:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state_reg[0] ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire [2:1]plusOp__0;
  wire rst_IBUF;
  wire \temp_reg_reg[12]_0 ;
  wire \temp_reg_reg[14] ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[14]_1 ;
  wire \temp_reg_reg[14]_2 ;
  wire \temp_reg_reg[15] ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[60] ;
  wire \temp_reg_reg[61] ;
  wire \temp_reg_reg[63] ;

  assign lopt = cnt_out_W[3];
  assign lopt_1 = cnt_out_W[0];
  assign lopt_2 = cnt_out_W[2];
  assign lopt_3 = cnt_out_W[1];
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(cnt_out_W[0]),
        .O(\cnt_internal_value[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_internal_value[2]_i_1 
       (.I0(cnt_out_W[1]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[2]),
        .O(plusOp__0[2]));
  LUT3 #(
    .INIT(8'hC2)) 
    \cnt_internal_value[3]_i_1__0 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(ce));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_2 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[0]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[1]),
        .O(\cnt_internal_value[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_internal_value[3]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(\cnt_internal_value[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(\cnt_internal_value[0]_i_1__0_n_0 ),
        .Q(cnt_out_W[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(plusOp__0[1]),
        .Q(cnt_out_W[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(plusOp__0[2]),
        .Q(cnt_out_W[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[3]_i_3_n_0 ),
        .D(\cnt_internal_value[3]_i_2_n_0 ),
        .Q(cnt_out_W[3]));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h000000007FFF0000)) 
    \current_state[0]_i_2 
       (.I0(cnt_out_W[3]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[0]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF1FDF1)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\temp_reg_reg[12]_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(\current_state_reg[1] ),
        .I4(\temp_reg_reg[14]_1 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \current_state[2]_i_2 
       (.I0(cnt_out_W[0]),
        .I1(cnt_out_W[3]),
        .I2(current_state[0]),
        .I3(IS_serial_output_first_row_buf[1]),
        .I4(IS_serial_output_first_row_buf[0]),
        .I5(\current_state[2]_i_7_n_0 ),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB9B999B9B9B9B9B9)) 
    \current_state[2]_i_4 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(cnt_out_W[0]),
        .I4(\current_state[2]_i_7_n_0 ),
        .I5(cnt_out_W[3]),
        .O(\current_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[2]_i_7 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .O(\current_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAEAFAAABAAAE)) 
    \temp_reg_reg[10]_srl3_i_2 
       (.I0(\temp_reg_reg[14]_2 ),
        .I1(cnt_out_W[0]),
        .I2(\current_state_reg[0]_0 ),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[3]),
        .I5(cnt_out_W[2]),
        .O(\temp_reg_reg[14] ));
  LUT5 #(
    .INIT(32'h00D00000)) 
    \temp_reg_reg[10]_srl3_i_3 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[3]),
        .I3(\current_state_reg[0]_0 ),
        .I4(cnt_out_W[0]),
        .O(\temp_reg_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF080A0208)) 
    \temp_reg_reg[11]_srl3_i_4 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(\current_state_reg[0]_0 ),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[3]),
        .I5(\temp_reg_reg[15]_0 ),
        .O(\temp_reg_reg[15] ));
  LUT6 #(
    .INIT(64'hABABAAABAAABAAAF)) 
    \temp_reg_reg[24]_srl7_i_1 
       (.I0(\temp_reg_reg[60] ),
        .I1(cnt_out_W[0]),
        .I2(\current_state_reg[0]_0 ),
        .I3(cnt_out_W[1]),
        .I4(cnt_out_W[3]),
        .I5(cnt_out_W[2]),
        .O(TW_REG_serial_in_buf[0]));
  LUT6 #(
    .INIT(64'hAABEAABAAAFAAAFF)) 
    \temp_reg_reg[25]_srl7_i_1 
       (.I0(\temp_reg_reg[61] ),
        .I1(cnt_out_W[3]),
        .I2(cnt_out_W[1]),
        .I3(\current_state_reg[0]_0 ),
        .I4(cnt_out_W[2]),
        .I5(cnt_out_W[0]),
        .O(TW_REG_serial_in_buf[1]));
  LUT6 #(
    .INIT(64'h01FF05FF0DFF01FF)) 
    \temp_reg_reg[26]_srl7_i_1 
       (.I0(cnt_out_W[2]),
        .I1(cnt_out_W[1]),
        .I2(\current_state_reg[0]_0 ),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(cnt_out_W[0]),
        .I5(cnt_out_W[3]),
        .O(TW_REG_serial_in_buf[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF45011011)) 
    \temp_reg_reg[27]_srl7_i_2 
       (.I0(\current_state_reg[0]_0 ),
        .I1(cnt_out_W[1]),
        .I2(cnt_out_W[2]),
        .I3(cnt_out_W[0]),
        .I4(cnt_out_W[3]),
        .I5(\temp_reg_reg[63] ),
        .O(TW_REG_serial_in_buf[3]));
endmodule

module IS_shift_reg
   (\temp_reg_reg[15]_0 ,
    \temp_reg_reg[15]_1 ,
    IS_serial_output_first_row_buf,
    \current_state_reg[1] ,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    IS_serial_in_fourth_row_buf,
    \temp_reg_reg[15]_2 ,
    \temp_reg_reg[14]_0 ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[12]_1 ,
    \temp_reg_reg[14]_1 ,
    \temp_reg_reg[13]_0 ,
    IS_enable1_buf,
    IS_serial_in_first_row_buf,
    clk_IBUF_BUFG,
    \current_state_reg[1]_2 ,
    current_state,
    rst_IBUF,
    \cnt_internal_value_reg[2] ,
    \FSM_sequential_current_state_reg[0] ,
    \cnt_internal_value_reg[3] ,
    IS_serial_output_third_row_buf,
    out,
    IS_serial_output_fourth_row_buf,
    \lfsr_internal_reg[4] ,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3);
  output \temp_reg_reg[15]_0 ;
  output \temp_reg_reg[15]_1 ;
  output [1:0]IS_serial_output_first_row_buf;
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[1]_1 ;
  output [0:0]IS_serial_in_fourth_row_buf;
  output \temp_reg_reg[15]_2 ;
  output \temp_reg_reg[14]_0 ;
  output \temp_reg_reg[12]_0 ;
  output \temp_reg_reg[12]_1 ;
  output \temp_reg_reg[14]_1 ;
  output \temp_reg_reg[13]_0 ;
  input IS_enable1_buf;
  input [3:0]IS_serial_in_first_row_buf;
  input clk_IBUF_BUFG;
  input \current_state_reg[1]_2 ;
  input [1:0]current_state;
  input rst_IBUF;
  input \cnt_internal_value_reg[2] ;
  input \FSM_sequential_current_state_reg[0] ;
  input \cnt_internal_value_reg[3] ;
  input [2:0]IS_serial_output_third_row_buf;
  input [2:0]out;
  input [2:0]IS_serial_output_fourth_row_buf;
  input \lfsr_internal_reg[4] ;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;

  wire \FSM_sequential_current_state_reg[0] ;
  wire IS_enable1_buf;
  wire [3:0]IS_serial_in_first_row_buf;
  wire [0:0]IS_serial_in_fourth_row_buf;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [2:0]IS_serial_output_fourth_row_buf;
  wire [2:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[3] ;
  wire [1:0]current_state;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[1]_2 ;
  wire \lfsr_internal_reg[4] ;
  wire [2:0]out;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire rst_IBUF;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire \temp_reg_reg[12]_1 ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[14]_1 ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[15]_1 ;
  wire \temp_reg_reg[15]_2 ;
  wire \temp_reg_reg[8]_srl3_CE_cooolgate_en_sig_2 ;
  wire \temp_reg_reg[8]_srl3_n_0 ;
  wire \temp_reg_reg[9]_srl3_n_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAABA)) 
    \current_state[1]_i_1 
       (.I0(\current_state_reg[1]_2 ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\current_state_reg[1]_0 ),
        .I4(\current_state_reg[1]_1 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    \current_state[2]_i_3 
       (.I0(\lfsr_internal_reg[4] ),
        .I1(IS_serial_output_first_row_buf[0]),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\current_state_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[2]_i_6 
       (.I0(\temp_reg_reg[15]_1 ),
        .I1(\temp_reg_reg[15]_0 ),
        .O(\current_state_reg[1]_1 ));
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
  LUT3 #(
    .INIT(8'hA9)) 
    \temp_reg_reg[10]_srl3_i_5 
       (.I0(\temp_reg_reg[15]_0 ),
        .I1(IS_serial_output_first_row_buf[1]),
        .I2(\temp_reg_reg[15]_1 ),
        .O(\temp_reg_reg[14]_1 ));
  LUT6 #(
    .INIT(64'h66F6660066066600)) 
    \temp_reg_reg[10]_srl3_i_7 
       (.I0(\temp_reg_reg[15]_1 ),
        .I1(IS_serial_output_third_row_buf[1]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(IS_serial_output_fourth_row_buf[1]),
        .O(\temp_reg_reg[14]_0 ));
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
    .INIT(64'hAAAAEEEBAAAABBBE)) 
    \temp_reg_reg[11]_srl3_i_2 
       (.I0(\cnt_internal_value_reg[2] ),
        .I1(IS_serial_output_first_row_buf[0]),
        .I2(\temp_reg_reg[15]_1 ),
        .I3(\temp_reg_reg[15]_0 ),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .I5(\cnt_internal_value_reg[3] ),
        .O(IS_serial_in_fourth_row_buf));
  LUT6 #(
    .INIT(64'h66F6660066066600)) 
    \temp_reg_reg[11]_srl3_i_7 
       (.I0(\temp_reg_reg[15]_0 ),
        .I1(IS_serial_output_third_row_buf[2]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(IS_serial_output_fourth_row_buf[2]),
        .O(\temp_reg_reg[15]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[8]_srl3_n_0 ),
        .Q(IS_serial_output_first_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[9]_srl3_n_0 ),
        .Q(IS_serial_output_first_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[10]_srl3_n_0 ),
        .Q(\temp_reg_reg[15]_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable1_buf),
        .D(\temp_reg_reg[11]_srl3_n_0 ),
        .Q(\temp_reg_reg[15]_0 ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  (* srl_bus_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\temp_reg_reg[8]_srl3_CE_cooolgate_en_sig_2 ),
        .CLK(clk_IBUF_BUFG),
        .D(IS_serial_in_first_row_buf[0]),
        .Q(\temp_reg_reg[8]_srl3_n_0 ));
  LUT4 #(
    .INIT(16'hC8D6)) 
    \temp_reg_reg[8]_srl3_i_4 
       (.I0(\temp_reg_reg[15]_1 ),
        .I1(IS_serial_output_first_row_buf[1]),
        .I2(\temp_reg_reg[15]_0 ),
        .I3(IS_serial_output_first_row_buf[0]),
        .O(\temp_reg_reg[12]_1 ));
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
  LUT4 #(
    .INIT(16'h1E1D)) 
    \temp_reg_reg[9]_srl3_i_6 
       (.I0(IS_serial_output_first_row_buf[0]),
        .I1(IS_serial_output_first_row_buf[1]),
        .I2(\temp_reg_reg[15]_1 ),
        .I3(\temp_reg_reg[15]_0 ),
        .O(\temp_reg_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_CE_cooolgate_en_gate_2 
       (.I0(pwropt_3),
        .I1(pwropt_2),
        .I2(pwropt_1),
        .I3(pwropt),
        .I4(IS_enable1_buf),
        .O(\temp_reg_reg[8]_srl3_CE_cooolgate_en_sig_2 ));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_0
   (IS_serial_output_fourth_row_buf,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[15]_0 ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[30] ,
    IS_serial_in_first_row_buf,
    IS_enable4_buf,
    IS_serial_in_fourth_row_buf,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[0] ,
    IS_serial_output_first_row_buf,
    IS_serial_output_third_row_buf,
    out,
    current_state,
    \temp_reg_reg[14]_0 ,
    IS_serial_output_second_row_buf);
  output [3:0]IS_serial_output_fourth_row_buf;
  output \temp_reg_reg[13]_0 ;
  output \temp_reg_reg[15]_0 ;
  output \temp_reg_reg[12]_0 ;
  output \temp_reg_reg[30] ;
  output [2:0]IS_serial_in_first_row_buf;
  input IS_enable4_buf;
  input [0:0]IS_serial_in_fourth_row_buf;
  input clk_IBUF_BUFG;
  input [2:0]\cnt_internal_value_reg[0] ;
  input [1:0]IS_serial_output_first_row_buf;
  input [2:0]IS_serial_output_third_row_buf;
  input [2:0]out;
  input [1:0]current_state;
  input \temp_reg_reg[14]_0 ;
  input [2:0]IS_serial_output_second_row_buf;

  wire IS_enable4_buf;
  wire [2:0]IS_serial_in_first_row_buf;
  wire [0:0]IS_serial_in_fourth_row_buf;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [3:0]IS_serial_output_fourth_row_buf;
  wire [2:0]IS_serial_output_second_row_buf;
  wire [2:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire [2:0]\cnt_internal_value_reg[0] ;
  wire [1:0]current_state;
  wire [2:0]out;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire \temp_reg_reg[12]_0 ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[30] ;
  wire \temp_reg_reg[8]_srl3_n_0 ;
  wire \temp_reg_reg[9]_srl3_n_0 ;

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
        .D(\cnt_internal_value_reg[0] [2]),
        .Q(\temp_reg_reg[10]_srl3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \temp_reg_reg[10]_srl3_i_1__2 
       (.I0(IS_serial_output_fourth_row_buf[2]),
        .I1(IS_serial_output_third_row_buf[2]),
        .I2(\temp_reg_reg[14]_0 ),
        .I3(out[2]),
        .I4(IS_serial_output_second_row_buf[2]),
        .O(IS_serial_in_first_row_buf[2]));
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
        .D(IS_serial_in_fourth_row_buf),
        .Q(\temp_reg_reg[11]_srl3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg_reg[11]_srl3_i_4__0 
       (.I0(out[2]),
        .I1(out[1]),
        .O(\temp_reg_reg[12]_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \temp_reg_reg[11]_srl3_i_5__0 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .O(\temp_reg_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[8]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[9]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[10]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_enable4_buf),
        .D(\temp_reg_reg[11]_srl3_n_0 ),
        .Q(IS_serial_output_fourth_row_buf[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \temp_reg_reg[27]_srl7_i_3 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[0]),
        .O(\temp_reg_reg[30] ));
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
        .D(\cnt_internal_value_reg[0] [0]),
        .Q(\temp_reg_reg[8]_srl3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \temp_reg_reg[8]_srl3_i_1__2 
       (.I0(IS_serial_output_fourth_row_buf[0]),
        .I1(IS_serial_output_third_row_buf[0]),
        .I2(IS_serial_output_first_row_buf[0]),
        .I3(out[2]),
        .I4(IS_serial_output_second_row_buf[0]),
        .O(IS_serial_in_first_row_buf[0]));
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
        .D(\cnt_internal_value_reg[0] [1]),
        .Q(\temp_reg_reg[9]_srl3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \temp_reg_reg[9]_srl3_i_1__2 
       (.I0(IS_serial_output_fourth_row_buf[1]),
        .I1(IS_serial_output_third_row_buf[1]),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(out[2]),
        .I4(IS_serial_output_second_row_buf[1]),
        .O(IS_serial_in_first_row_buf[1]));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_1
   (IS_serial_output_second_row_buf,
    IS_serial_in_first_row_buf,
    IS_enable2_buf,
    clk_IBUF_BUFG,
    out,
    \temp_reg_reg[15]_0 ,
    IS_serial_output_third_row_buf,
    \temp_reg_reg[14]_0 ,
    IS_serial_output_first_row_buf,
    IS_serial_output_fourth_row_buf);
  output [3:0]IS_serial_output_second_row_buf;
  output [0:0]IS_serial_in_first_row_buf;
  input IS_enable2_buf;
  input clk_IBUF_BUFG;
  input [2:0]out;
  input \temp_reg_reg[15]_0 ;
  input [3:0]IS_serial_output_third_row_buf;
  input \temp_reg_reg[14]_0 ;
  input [1:0]IS_serial_output_first_row_buf;
  input [0:0]IS_serial_output_fourth_row_buf;

  wire IS_enable2_buf;
  wire [0:0]IS_serial_in_first_row_buf;
  wire [3:0]IS_serial_in_second_row_buf;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [0:0]IS_serial_output_fourth_row_buf;
  wire [3:0]IS_serial_output_second_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[15]_0 ;
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
    .INIT(64'hE2E2F3C0F3C0F3C0)) 
    \temp_reg_reg[10]_srl3_i_1__1 
       (.I0(IS_serial_output_second_row_buf[2]),
        .I1(out[2]),
        .I2(\temp_reg_reg[14]_0 ),
        .I3(IS_serial_output_third_row_buf[2]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_second_row_buf[2]));
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
  LUT6 #(
    .INIT(64'hE2E2F3C0F3C0F3C0)) 
    \temp_reg_reg[11]_srl3_i_2__1 
       (.I0(IS_serial_output_second_row_buf[3]),
        .I1(out[2]),
        .I2(\temp_reg_reg[15]_0 ),
        .I3(IS_serial_output_third_row_buf[3]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_second_row_buf[3]));
  LUT5 #(
    .INIT(32'hC33CAAAA)) 
    \temp_reg_reg[11]_srl3_i_2__2 
       (.I0(IS_serial_output_second_row_buf[3]),
        .I1(IS_serial_output_fourth_row_buf),
        .I2(\temp_reg_reg[15]_0 ),
        .I3(IS_serial_output_third_row_buf[3]),
        .I4(out[2]),
        .O(IS_serial_in_first_row_buf));
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
    .INIT(64'hE2E2F3C0F3C0F3C0)) 
    \temp_reg_reg[8]_srl3_i_1__1 
       (.I0(IS_serial_output_second_row_buf[0]),
        .I1(out[2]),
        .I2(IS_serial_output_first_row_buf[0]),
        .I3(IS_serial_output_third_row_buf[0]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_second_row_buf[0]));
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
    .INIT(64'hE2E2F3C0F3C0F3C0)) 
    \temp_reg_reg[9]_srl3_i_1__1 
       (.I0(IS_serial_output_second_row_buf[1]),
        .I1(out[2]),
        .I2(IS_serial_output_first_row_buf[1]),
        .I3(IS_serial_output_third_row_buf[1]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_second_row_buf[1]));
endmodule

(* ORIG_REF_NAME = "IS_shift_reg" *) 
module IS_shift_reg_2
   (IS_serial_output_third_row_buf,
    \temp_reg_reg[12]_0 ,
    IS_enable3_buf,
    clk_IBUF_BUFG,
    out,
    IS_serial_output_second_row_buf,
    IS_serial_output_fourth_row_buf);
  output [3:0]IS_serial_output_third_row_buf;
  output \temp_reg_reg[12]_0 ;
  input IS_enable3_buf;
  input clk_IBUF_BUFG;
  input [2:0]out;
  input [3:0]IS_serial_output_second_row_buf;
  input [3:0]IS_serial_output_fourth_row_buf;

  wire IS_enable3_buf;
  wire [3:0]IS_serial_in_third_row_buf;
  wire [3:0]IS_serial_output_fourth_row_buf;
  wire [3:0]IS_serial_output_second_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire \temp_reg_reg[10]_srl3_n_0 ;
  wire \temp_reg_reg[11]_srl3_n_0 ;
  wire \temp_reg_reg[12]_0 ;
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
  LUT6 #(
    .INIT(64'h6A6A7B487B487B48)) 
    \temp_reg_reg[10]_srl3_i_1__0 
       (.I0(IS_serial_output_third_row_buf[2]),
        .I1(out[2]),
        .I2(IS_serial_output_second_row_buf[2]),
        .I3(IS_serial_output_fourth_row_buf[2]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_third_row_buf[2]));
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
  LUT6 #(
    .INIT(64'h6A6A7B487B487B48)) 
    \temp_reg_reg[11]_srl3_i_2__0 
       (.I0(IS_serial_output_third_row_buf[3]),
        .I1(out[2]),
        .I2(IS_serial_output_second_row_buf[3]),
        .I3(IS_serial_output_fourth_row_buf[3]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_third_row_buf[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \temp_reg_reg[11]_srl3_i_5 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\temp_reg_reg[12]_0 ));
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
  LUT6 #(
    .INIT(64'h6A6A7B487B487B48)) 
    \temp_reg_reg[8]_srl3_i_1__0 
       (.I0(IS_serial_output_third_row_buf[0]),
        .I1(out[2]),
        .I2(IS_serial_output_second_row_buf[0]),
        .I3(IS_serial_output_fourth_row_buf[0]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_third_row_buf[0]));
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
  LUT6 #(
    .INIT(64'h6A6A7B487B487B48)) 
    \temp_reg_reg[9]_srl3_i_1__0 
       (.I0(IS_serial_output_third_row_buf[1]),
        .I1(out[2]),
        .I2(IS_serial_output_second_row_buf[1]),
        .I3(IS_serial_output_fourth_row_buf[1]),
        .I4(out[0]),
        .I5(out[1]),
        .O(IS_serial_in_third_row_buf[1]));
endmodule

module SKINNY_CNT
   (IS_enable3_buf,
    IS_enable2_buf,
    \FSM_sequential_current_state_reg[2] ,
    IS_enable4_buf,
    \temp_reg_reg[14] ,
    \temp_reg_reg[15] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    out,
    \lfsr_internal_reg[4] ,
    IS_enable1_buf,
    \cnt_internal_value_reg[0]_0 ,
    \cnt_internal_value_reg[2]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \temp_reg_reg[15]_0 ,
    \cnt_internal_value_reg[3]_0 ,
    \temp_reg_reg[12] ,
    \cnt_internal_value_reg[2]_1 ,
    \temp_reg_reg[14]_0 ,
    current_state,
    \current_state_reg[1] ,
    TW_REG_parallel_out_buf,
    Q,
    \FSM_sequential_current_state_reg[1]_1 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    data_ready,
    \FSM_sequential_current_state_reg[2]_2 ,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
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
  output IS_enable3_buf;
  output IS_enable2_buf;
  output \FSM_sequential_current_state_reg[2] ;
  output IS_enable4_buf;
  output [2:0]\temp_reg_reg[14] ;
  output \temp_reg_reg[15] ;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input [2:0]out;
  input \lfsr_internal_reg[4] ;
  input IS_enable1_buf;
  input \cnt_internal_value_reg[0]_0 ;
  input \cnt_internal_value_reg[2]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \temp_reg_reg[15]_0 ;
  input \cnt_internal_value_reg[3]_0 ;
  input \temp_reg_reg[12] ;
  input \cnt_internal_value_reg[2]_1 ;
  input \temp_reg_reg[14]_0 ;
  input [0:0]current_state;
  input \current_state_reg[1] ;
  input [3:0]TW_REG_parallel_out_buf;
  input [5:0]Q;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input data_ready;
  input \FSM_sequential_current_state_reg[2]_2 ;
  input clk_IBUF_BUFG;
  output pwropt;
  output pwropt_1;
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

  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[2]_2 ;
  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [5:0]Q;
  wire [3:0]TW_REG_parallel_out_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[2]_i_1__0_n_0 ;
  wire \cnt_internal_value_reg[0]_0 ;
  wire \cnt_internal_value_reg[2]_0 ;
  wire [4:0]cnt_out_buf;
  wire [0:0]current_state;
  wire \current_state_reg[1] ;
  wire data_ready;
  wire \lfsr_internal_reg[4] ;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [2:0]out;
  wire [4:0]plusOp;
  wire rst_CNT_buf;
  wire \temp_reg_reg[10]_srl3_i_4_n_0 ;
  wire \temp_reg_reg[10]_srl3_i_6_n_0 ;
  wire \temp_reg_reg[11]_srl3_i_3__0_n_0 ;
  wire \temp_reg_reg[11]_srl3_i_6_n_0 ;
  wire \temp_reg_reg[11]_srl3_i_8_n_0 ;
  wire \temp_reg_reg[12] ;
  wire [2:0]\temp_reg_reg[14] ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[15] ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[8]_srl3_i_6_n_0 ;
  wire \temp_reg_reg[9]_srl3_i_7_n_0 ;
  wire \xlnx_opt_FSM_sequential_current_state_reg[0] ;
  wire \xlnx_opt_temp_reg_reg[14][0] ;
  wire \xlnx_opt_temp_reg_reg[14][0]_1 ;
  wire \xlnx_opt_temp_reg_reg[14][0]_2 ;
  wire \xlnx_opt_temp_reg_reg[14][1] ;
  wire \xlnx_opt_temp_reg_reg[14][1]_1 ;
  wire \xlnx_opt_temp_reg_reg[14][1]_2 ;
  wire \xlnx_opt_temp_reg_reg[14][1]_3 ;
  wire \xlnx_opt_temp_reg_reg[14][1]_4 ;
  wire \xlnx_opt_temp_reg_reg[14][1]_5 ;
  wire \xlnx_opt_temp_reg_reg[14][1]_6 ;

  assign pwropt = rst_CNT_buf;
  assign pwropt_1 = cnt_out_buf[1];
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(cnt_out_buf[4]),
        .I1(cnt_out_buf[2]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(cnt_out_buf[3]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD8980000D898DC9C)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I4(\current_state_reg[1] ),
        .I5(current_state),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h000000001111FF1F)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_1 ),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_current_state_reg[2] ),
        .I3(\lfsr_internal_reg[4] ),
        .I4(\FSM_sequential_current_state_reg[0]_2 ),
        .I5(data_ready),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[3]),
        .I2(cnt_out_buf[4]),
        .I3(cnt_out_buf[2]),
        .I4(cnt_out_buf[0]),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[2]),
        .I3(cnt_out_buf[4]),
        .I4(cnt_out_buf[3]),
        .O(\FSM_sequential_current_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(cnt_out_buf[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_1__0 
       (.I0(cnt_out_buf[2]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[1]),
        .O(\cnt_internal_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_internal_value[3]_i_1 
       (.I0(cnt_out_buf[3]),
        .I1(cnt_out_buf[1]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[2]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_internal_value[4]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(rst_CNT_buf));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_internal_value[4]_i_2 
       (.I0(cnt_out_buf[3]),
        .I1(cnt_out_buf[1]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[2]),
        .I4(cnt_out_buf[4]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_2 ),
        .D(plusOp[0]),
        .Q(cnt_out_buf[0]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_2 ),
        .D(plusOp[1]),
        .Q(cnt_out_buf[1]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_2 ),
        .D(\cnt_internal_value[2]_i_1__0_n_0 ),
        .Q(cnt_out_buf[2]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_2 ),
        .D(plusOp[3]),
        .Q(cnt_out_buf[3]),
        .R(rst_CNT_buf));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_2 ),
        .D(plusOp[4]),
        .Q(cnt_out_buf[4]),
        .R(rst_CNT_buf));
  LUT6 #(
    .INIT(64'hEFEEEEEFEFEFEEEE)) 
    \temp_reg_reg[10]_srl3_i_1 
       (.I0(\cnt_internal_value_reg[0]_0 ),
        .I1(\cnt_internal_value_reg[2]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_1 ),
        .I3(\temp_reg_reg[10]_srl3_i_4_n_0 ),
        .I4(\temp_reg_reg[15]_0 ),
        .I5(\temp_reg_reg[10]_srl3_i_6_n_0 ),
        .O(\temp_reg_reg[14] [2]));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg_reg[10]_srl3_i_4 
       (.I0(cnt_out_buf[4]),
        .I1(cnt_out_buf[3]),
        .O(\temp_reg_reg[10]_srl3_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAA9AAAA)) 
    \temp_reg_reg[10]_srl3_i_6 
       (.I0(TW_REG_parallel_out_buf[2]),
        .I1(cnt_out_buf[2]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(Q[2]),
        .O(\temp_reg_reg[10]_srl3_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBBBBFFFBBBA)) 
    \temp_reg_reg[11]_srl3_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(\FSM_sequential_current_state_reg[2]_1 ),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[2]),
        .I4(\FSM_sequential_current_state_reg[1]_0 ),
        .I5(\temp_reg_reg[11]_srl3_i_6_n_0 ),
        .O(IS_enable3_buf));
  LUT5 #(
    .INIT(32'h33033377)) 
    \temp_reg_reg[11]_srl3_i_1__0 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(out[2]),
        .I2(\lfsr_internal_reg[4] ),
        .I3(out[1]),
        .I4(out[0]),
        .O(IS_enable2_buf));
  LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBB)) 
    \temp_reg_reg[11]_srl3_i_1__1 
       (.I0(IS_enable1_buf),
        .I1(\FSM_sequential_current_state_reg[2]_1 ),
        .I2(\temp_reg_reg[11]_srl3_i_3__0_n_0 ),
        .I3(cnt_out_buf[2]),
        .I4(cnt_out_buf[0]),
        .I5(cnt_out_buf[1]),
        .O(IS_enable4_buf));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg_reg[11]_srl3_i_3__0 
       (.I0(cnt_out_buf[3]),
        .I1(cnt_out_buf[4]),
        .O(\temp_reg_reg[11]_srl3_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \temp_reg_reg[11]_srl3_i_6 
       (.I0(cnt_out_buf[4]),
        .I1(cnt_out_buf[3]),
        .I2(cnt_out_buf[1]),
        .O(\temp_reg_reg[11]_srl3_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEFFF)) 
    \temp_reg_reg[11]_srl3_i_6__0 
       (.I0(cnt_out_buf[3]),
        .I1(cnt_out_buf[4]),
        .I2(Q[3]),
        .I3(\temp_reg_reg[11]_srl3_i_8_n_0 ),
        .I4(TW_REG_parallel_out_buf[3]),
        .O(\temp_reg_reg[15] ));
  LUT3 #(
    .INIT(8'h01)) 
    \temp_reg_reg[11]_srl3_i_8 
       (.I0(cnt_out_buf[2]),
        .I1(cnt_out_buf[0]),
        .I2(cnt_out_buf[1]),
        .O(\temp_reg_reg[11]_srl3_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg_reg[8]_srl3_i_6 
       (.I0(cnt_out_buf[1]),
        .I1(cnt_out_buf[0]),
        .O(\temp_reg_reg[8]_srl3_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \temp_reg_reg[9]_srl3_i_7 
       (.I0(cnt_out_buf[3]),
        .I1(cnt_out_buf[4]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\temp_reg_reg[9]_srl3_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5503FFFFFFFF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I1(current_state),
        .I2(\current_state_reg[1] ),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\xlnx_opt_FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h000031200000FFFF)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[0]_i_1_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(\FSM_sequential_current_state_reg[2] ),
        .I3(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I4(data_ready),
        .I5(\xlnx_opt_FSM_sequential_current_state_reg[0] ),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h990999FF99F999FF)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1 
       (.I0(lopt_8),
        .I1(lopt_9),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(lopt_10),
        .O(\xlnx_opt_temp_reg_reg[14][0]_2 ));
  LUT6 #(
    .INIT(64'h0A0F0E08FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_1 
       (.I0(lopt_6),
        .I1(lopt_5),
        .I2(lopt_3),
        .I3(lopt_7),
        .I4(lopt_4),
        .I5(\xlnx_opt_temp_reg_reg[14][0]_2 ),
        .O(\xlnx_opt_temp_reg_reg[14][0]_1 ));
  LUT6 #(
    .INIT(64'hAAAAFEAEFFFFABFB)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_2 
       (.I0(\temp_reg_reg[10]_srl3_i_4_n_0 ),
        .I1(Q[0]),
        .I2(cnt_out_buf[2]),
        .I3(Q[4]),
        .I4(\temp_reg_reg[8]_srl3_i_6_n_0 ),
        .I5(TW_REG_parallel_out_buf[0]),
        .O(\xlnx_opt_temp_reg_reg[14][0] ));
  LUT6 #(
    .INIT(64'hFFFF0200FFFF0002)) 
    \xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_3 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(\temp_reg_reg[14]_0 ),
        .I4(\xlnx_opt_temp_reg_reg[14][0]_1 ),
        .I5(\xlnx_opt_temp_reg_reg[14][0] ),
        .O(\temp_reg_reg[14] [0]));
  LUT6 #(
    .INIT(64'hEFEEEEEFFFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(cnt_out_buf[4]),
        .I2(cnt_out_buf[3]),
        .I3(TW_REG_parallel_out_buf[1]),
        .I4(Q[1]),
        .I5(\temp_reg_reg[11]_srl3_i_8_n_0 ),
        .O(\xlnx_opt_temp_reg_reg[14][1]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5559555F)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_1 
       (.I0(TW_REG_parallel_out_buf[1]),
        .I1(Q[5]),
        .I2(cnt_out_buf[0]),
        .I3(cnt_out_buf[1]),
        .I4(cnt_out_buf[2]),
        .I5(\temp_reg_reg[9]_srl3_i_7_n_0 ),
        .O(\xlnx_opt_temp_reg_reg[14][1]_5 ));
  LUT6 #(
    .INIT(64'hC3C3C3C355C3FFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_2 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\xlnx_opt_temp_reg_reg[14][1]_4 ));
  LUT6 #(
    .INIT(64'h00141054FFFFFFFF)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_3 
       (.I0(lopt_3),
        .I1(lopt_4),
        .I2(lopt_5),
        .I3(lopt_6),
        .I4(lopt_7),
        .I5(\xlnx_opt_temp_reg_reg[14][1]_4 ),
        .O(\xlnx_opt_temp_reg_reg[14][1]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFF0FFFFFFFBB)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_4 
       (.I0(cnt_out_buf[3]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(cnt_out_buf[0]),
        .I4(cnt_out_buf[1]),
        .I5(cnt_out_buf[2]),
        .O(\xlnx_opt_temp_reg_reg[14][1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFF0FFFFFFF11)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_5 
       (.I0(cnt_out_buf[3]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(cnt_out_buf[0]),
        .I4(cnt_out_buf[1]),
        .I5(cnt_out_buf[2]),
        .O(\xlnx_opt_temp_reg_reg[14][1]_1 ));
  LUT6 #(
    .INIT(64'hAFEFFFFFAAEEFAFE)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_6 
       (.I0(cnt_out_buf[4]),
        .I1(cnt_out_buf[3]),
        .I2(TW_REG_parallel_out_buf[1]),
        .I3(\temp_reg_reg[11]_srl3_i_8_n_0 ),
        .I4(\xlnx_opt_temp_reg_reg[14][1]_2 ),
        .I5(\xlnx_opt_temp_reg_reg[14][1]_1 ),
        .O(\xlnx_opt_temp_reg_reg[14][1] ));
  LUT6 #(
    .INIT(64'hFFFF1DDDFFFF0CCC)) 
    \xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_7 
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(\temp_reg_reg[12] ),
        .I2(\xlnx_opt_temp_reg_reg[14][1]_6 ),
        .I3(\xlnx_opt_temp_reg_reg[14][1]_5 ),
        .I4(\xlnx_opt_temp_reg_reg[14][1]_3 ),
        .I5(\xlnx_opt_temp_reg_reg[14][1] ),
        .O(\temp_reg_reg[14] [1]));
endmodule

module Skinny_64_64
   (\temp_reg_reg[15] ,
    \current_state_reg[1] ,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    \temp_reg_reg[15]_0 ,
    \temp_reg_reg[14] ,
    \temp_reg_reg[13] ,
    \temp_reg_reg[12] ,
    \temp_reg_reg[31] ,
    \temp_reg_reg[30] ,
    \temp_reg_reg[29] ,
    \temp_reg_reg[28] ,
    \temp_reg_reg[30]_0 ,
    TW_REG_serial_in_buf,
    clk_IBUF_BUFG,
    \current_state_reg[1]_2 ,
    current_state,
    rst_IBUF,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[0] ,
    \cnt_internal_value_reg[2]_0 ,
    \cnt_internal_value_reg[3] ,
    \cnt_internal_value_reg[2]_1 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output [1:0]\temp_reg_reg[15] ;
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[1]_1 ;
  output \temp_reg_reg[15]_0 ;
  output \temp_reg_reg[14] ;
  output \temp_reg_reg[13] ;
  output \temp_reg_reg[12] ;
  output \temp_reg_reg[31] ;
  output \temp_reg_reg[30] ;
  output \temp_reg_reg[29] ;
  output \temp_reg_reg[28] ;
  output \temp_reg_reg[30]_0 ;
  input [3:0]TW_REG_serial_in_buf;
  input clk_IBUF_BUFG;
  input \current_state_reg[1]_2 ;
  input [2:0]current_state;
  input rst_IBUF;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[0] ;
  input \cnt_internal_value_reg[2]_0 ;
  input \cnt_internal_value_reg[3] ;
  input \cnt_internal_value_reg[2]_1 ;
  input lopt;
  input lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;

  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_6_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_CE_cooolgate_en_sig_11 ;
  wire \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_10 ;
  wire INST_IS_n_11;
  wire INST_IS_n_13;
  wire INST_IS_n_14;
  wire INST_IS_n_15;
  wire INST_IS_n_5;
  wire INST_IS_n_6;
  wire INST_LFSR_n_1;
  wire INST_LFSR_n_8;
  wire INST_SKINNY_CNT_n_10;
  wire INST_SKINNY_CNT_n_2;
  wire INST_SKINNY_CNT_n_7;
  wire INST_SKINNY_CNT_n_8;
  wire INST_SKINNY_CNT_n_9;
  wire INST_TW_REG_n_4;
  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [2:0]IS_serial_in_fourth_row_buf;
  wire [31:28]TW_REG_parallel_out_buf;
  wire [3:0]TW_REG_serial_in_buf;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[2]_0 ;
  wire [2:0]current_state;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[1]_2 ;
  wire data_ready;
  wire [5:0]lfsr_out_buf;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire lopt_10;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire pwropt;
  wire pwropt_1;
  wire rst_IBUF;
  wire \temp_reg_reg[14] ;
  wire [1:0]\temp_reg_reg[15] ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[28] ;
  wire \temp_reg_reg[29] ;
  wire \temp_reg_reg[30] ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[31] ;
  wire \NLW_INST_IS_temp_reg_reg[12]_0_UNCONNECTED ;
  wire \NLW_INST_IS_temp_reg_reg[13]_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_cnt_internal_value_reg[2]_1_UNCONNECTED ;
  wire \NLW_INST_SKINNY_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED ;

  assign \^lopt_3  = lopt;
  assign \^lopt_4  = lopt_1;
  assign lopt_5 = lopt_2;
  assign lopt_6 = lopt_3;
  assign lopt_7 = lopt_4;
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(current_state_0[1]),
        .I1(current_state_0[2]),
        .I2(current_state_0[0]),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(current_state_0[0]),
        .I1(current_state_0[2]),
        .O(\FSM_sequential_current_state[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(data_ready));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* KEEP = "yes" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[0]_CE_cooolgate_en_sig_11 ),
        .D(INST_SKINNY_CNT_n_10),
        .Q(current_state_0[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hfffd)) 
    \FSM_sequential_current_state_reg[0]_CE_cooolgate_en_gate_44 
       (.I0(current_state_0[1]),
        .I1(current_state[0]),
        .I2(current_state_0[2]),
        .I3(pwropt_1),
        .O(\FSM_sequential_current_state_reg[0]_CE_cooolgate_en_sig_11 ));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_SKINNY_CNT_n_9),
        .Q(current_state_0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* KEEP = "yes" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_10 ),
        .D(INST_SKINNY_CNT_n_8),
        .Q(current_state_0[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hfff2)) 
    \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_gate_42 
       (.I0(INST_SKINNY_CNT_n_2),
        .I1(INST_LFSR_n_1),
        .I2(current_state[0]),
        .I3(current_state_0[0]),
        .O(\FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_10 ));
  skinny_shift_reg_64 INST_IS
       (.IS_enable1_buf(IS_enable1_buf),
        .IS_enable2_buf(IS_enable2_buf),
        .IS_enable3_buf(IS_enable3_buf),
        .IS_enable4_buf(IS_enable4_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (IS_serial_in_fourth_row_buf),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[3] (INST_SKINNY_CNT_n_7),
        .current_state({current_state[2],current_state[0]}),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[1]_0 (\current_state_reg[1]_0 ),
        .\current_state_reg[1]_1 (\current_state_reg[1]_1 ),
        .\current_state_reg[1]_2 (\current_state_reg[1]_2 ),
        .\lfsr_internal_reg[4] (INST_LFSR_n_1),
        .lopt(\^lopt ),
        .lopt_1(\^lopt_1 ),
        .lopt_2(\^lopt_2 ),
        .lopt_3(lopt_8),
        .lopt_4(lopt_9),
        .lopt_5(lopt_10),
        .out(current_state_0),
        .pwropt(INST_SKINNY_CNT_n_10),
        .pwropt_1(INST_SKINNY_CNT_n_9),
        .pwropt_2(INST_SKINNY_CNT_n_8),
        .pwropt_3(pwropt),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[12] (INST_IS_n_5),
        .\temp_reg_reg[12]_0 (\NLW_INST_IS_temp_reg_reg[12]_0_UNCONNECTED ),
        .\temp_reg_reg[12]_1 (INST_IS_n_11),
        .\temp_reg_reg[12]_2 (INST_IS_n_13),
        .\temp_reg_reg[13] (\NLW_INST_IS_temp_reg_reg[13]_UNCONNECTED ),
        .\temp_reg_reg[13]_0 (INST_IS_n_15),
        .\temp_reg_reg[14] (\temp_reg_reg[14] ),
        .\temp_reg_reg[14]_0 (INST_IS_n_14),
        .\temp_reg_reg[15] (\temp_reg_reg[15] [1]),
        .\temp_reg_reg[15]_0 (\temp_reg_reg[15] [0]),
        .\temp_reg_reg[15]_1 (INST_IS_n_6),
        .\temp_reg_reg[15]_2 (\temp_reg_reg[15]_0 ),
        .\temp_reg_reg[30] (\temp_reg_reg[30] ));
  lfsr INST_LFSR
       (.IS_enable1_buf(IS_enable1_buf),
        .Q(lfsr_out_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (INST_SKINNY_CNT_n_2),
        .out(current_state_0),
        .pwropt(INST_SKINNY_CNT_n_10),
        .pwropt_1(INST_SKINNY_CNT_n_9),
        .pwropt_2(INST_SKINNY_CNT_n_8),
        .\temp_reg_reg[12] (INST_LFSR_n_1),
        .\temp_reg_reg[12]_0 (INST_LFSR_n_8));
  SKINNY_CNT INST_SKINNY_CNT
       (.\FSM_sequential_current_state_reg[0] (INST_SKINNY_CNT_n_10),
        .\FSM_sequential_current_state_reg[0]_0 (INST_LFSR_n_8),
        .\FSM_sequential_current_state_reg[0]_1 (INST_IS_n_6),
        .\FSM_sequential_current_state_reg[0]_2 (\FSM_sequential_current_state[2]_i_6_n_0 ),
        .\FSM_sequential_current_state_reg[1] (INST_SKINNY_CNT_n_9),
        .\FSM_sequential_current_state_reg[1]_0 (INST_IS_n_5),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state[2]_i_2_n_0 ),
        .\FSM_sequential_current_state_reg[2] (INST_SKINNY_CNT_n_2),
        .\FSM_sequential_current_state_reg[2]_0 (INST_SKINNY_CNT_n_8),
        .\FSM_sequential_current_state_reg[2]_1 (INST_IS_n_11),
        .\FSM_sequential_current_state_reg[2]_2 (INST_TW_REG_n_4),
        .IS_enable1_buf(IS_enable1_buf),
        .IS_enable2_buf(IS_enable2_buf),
        .IS_enable3_buf(IS_enable3_buf),
        .IS_enable4_buf(IS_enable4_buf),
        .Q(lfsr_out_buf),
        .TW_REG_parallel_out_buf(TW_REG_parallel_out_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0]_0 (\cnt_internal_value_reg[0] ),
        .\cnt_internal_value_reg[2]_0 (\cnt_internal_value_reg[2]_0 ),
        .\cnt_internal_value_reg[2]_1 (\NLW_INST_SKINNY_CNT_cnt_internal_value_reg[2]_1_UNCONNECTED ),
        .\cnt_internal_value_reg[3]_0 (\NLW_INST_SKINNY_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED ),
        .current_state(current_state[0]),
        .\current_state_reg[1] (\FSM_sequential_current_state[1]_i_2_n_0 ),
        .data_ready(data_ready),
        .\lfsr_internal_reg[4] (INST_LFSR_n_1),
        .lopt(\^lopt ),
        .lopt_1(\^lopt_1 ),
        .lopt_10(lopt_10),
        .lopt_2(\^lopt_2 ),
        .lopt_3(\^lopt_3 ),
        .lopt_4(\^lopt_4 ),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .lopt_9(lopt_9),
        .out(current_state_0),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .\temp_reg_reg[12] (INST_IS_n_15),
        .\temp_reg_reg[14] (IS_serial_in_fourth_row_buf),
        .\temp_reg_reg[14]_0 (INST_IS_n_13),
        .\temp_reg_reg[15] (INST_SKINNY_CNT_n_7),
        .\temp_reg_reg[15]_0 (INST_IS_n_14));
  shift_reg INST_TW_REG
       (.TW_REG_parallel_out_buf(TW_REG_parallel_out_buf),
        .TW_REG_serial_in_buf(TW_REG_serial_in_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(current_state_0),
        .pwropt(INST_SKINNY_CNT_n_9),
        .pwropt_1(INST_SKINNY_CNT_n_8),
        .pwropt_2(INST_SKINNY_CNT_n_10),
        .\temp_reg_reg[28]_0 (\temp_reg_reg[28] ),
        .\temp_reg_reg[29]_0 (\temp_reg_reg[29] ),
        .\temp_reg_reg[30]_0 (\temp_reg_reg[30]_0 ),
        .\temp_reg_reg[31]_0 (\temp_reg_reg[31] ),
        .\temp_reg_reg[63]_0 (INST_TW_REG_n_4));
endmodule

(* ECO_CHECKSUM = "b1d0d013" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire INST_CNT_n_2;
  wire INST_CNT_n_3;
  wire [3:2]IS_serial_output_first_row_buf;
  wire Skinny_DUT_n_10;
  wire Skinny_DUT_n_11;
  wire Skinny_DUT_n_12;
  wire Skinny_DUT_n_13;
  wire Skinny_DUT_n_2;
  wire Skinny_DUT_n_3;
  wire Skinny_DUT_n_4;
  wire Skinny_DUT_n_5;
  wire Skinny_DUT_n_6;
  wire Skinny_DUT_n_9;
  wire [3:0]TW_REG_serial_in_buf;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire led_out;
  wire led_out_OBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  wire \NLW_INST_CNT_temp_reg_reg[12]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[12]_1_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[13]_UNCONNECTED ;
  wire \NLW_INST_CNT_temp_reg_reg[13]_0_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[2]_1_UNCONNECTED ;
  wire \NLW_Skinny_DUT_cnt_internal_value_reg[3]_UNCONNECTED ;
  wire \NLW_Skinny_DUT_temp_reg_reg[12]_UNCONNECTED ;
  wire \NLW_Skinny_DUT_temp_reg_reg[13]_UNCONNECTED ;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  CNT INST_CNT
       (.\FSM_sequential_current_state_reg[1] (Skinny_DUT_n_13),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf),
        .TW_REG_serial_in_buf(TW_REG_serial_in_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_1),
        .\current_state_reg[0]_0 (Skinny_DUT_n_10),
        .\current_state_reg[1] (\current_state[2]_i_5_n_0 ),
        .\current_state_reg[2] (INST_CNT_n_0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[12] (\NLW_INST_CNT_temp_reg_reg[12]_UNCONNECTED ),
        .\temp_reg_reg[12]_0 (Skinny_DUT_n_3),
        .\temp_reg_reg[12]_1 (\NLW_INST_CNT_temp_reg_reg[12]_1_UNCONNECTED ),
        .\temp_reg_reg[13] (\NLW_INST_CNT_temp_reg_reg[13]_UNCONNECTED ),
        .\temp_reg_reg[13]_0 (\NLW_INST_CNT_temp_reg_reg[13]_0_UNCONNECTED ),
        .\temp_reg_reg[14] (INST_CNT_n_3),
        .\temp_reg_reg[14]_0 (INST_CNT_n_10),
        .\temp_reg_reg[14]_1 (Skinny_DUT_n_4),
        .\temp_reg_reg[14]_2 (Skinny_DUT_n_6),
        .\temp_reg_reg[15] (INST_CNT_n_2),
        .\temp_reg_reg[15]_0 (Skinny_DUT_n_5),
        .\temp_reg_reg[60] (Skinny_DUT_n_12),
        .\temp_reg_reg[61] (Skinny_DUT_n_11),
        .\temp_reg_reg[63] (Skinny_DUT_n_9));
  Skinny_64_64 Skinny_DUT
       (.TW_REG_serial_in_buf(TW_REG_serial_in_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (INST_CNT_n_3),
        .\cnt_internal_value_reg[2] (INST_CNT_n_2),
        .\cnt_internal_value_reg[2]_0 (INST_CNT_n_10),
        .\cnt_internal_value_reg[2]_1 (\NLW_Skinny_DUT_cnt_internal_value_reg[2]_1_UNCONNECTED ),
        .\cnt_internal_value_reg[3] (\NLW_Skinny_DUT_cnt_internal_value_reg[3]_UNCONNECTED ),
        .current_state(current_state),
        .\current_state_reg[1] (Skinny_DUT_n_2),
        .\current_state_reg[1]_0 (Skinny_DUT_n_3),
        .\current_state_reg[1]_1 (Skinny_DUT_n_4),
        .\current_state_reg[1]_2 (\current_state[1]_i_2_n_0 ),
        .lopt(Skinny_DUT_n_10),
        .lopt_1(lopt),
        .lopt_2(lopt_1),
        .lopt_3(lopt_2),
        .lopt_4(lopt_3),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[12] (\NLW_Skinny_DUT_temp_reg_reg[12]_UNCONNECTED ),
        .\temp_reg_reg[13] (\NLW_Skinny_DUT_temp_reg_reg[13]_UNCONNECTED ),
        .\temp_reg_reg[14] (Skinny_DUT_n_6),
        .\temp_reg_reg[15] (IS_serial_output_first_row_buf),
        .\temp_reg_reg[15]_0 (Skinny_DUT_n_5),
        .\temp_reg_reg[28] (Skinny_DUT_n_12),
        .\temp_reg_reg[29] (Skinny_DUT_n_11),
        .\temp_reg_reg[30] (Skinny_DUT_n_10),
        .\temp_reg_reg[30]_0 (Skinny_DUT_n_13),
        .\temp_reg_reg[31] (Skinny_DUT_n_9));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT4 #(
    .INIT(16'hA2AA)) 
    \current_state[1]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(start_IBUF),
        .O(\current_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \current_state[2]_i_5 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\current_state[2]_i_5_n_0 ));
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
        .D(Skinny_DUT_n_2),
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
   (IS_enable1_buf,
    \temp_reg_reg[12] ,
    Q,
    \temp_reg_reg[12]_0 ,
    out,
    \cnt_internal_value_reg[1] ,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2);
  output IS_enable1_buf;
  output \temp_reg_reg[12] ;
  output [5:0]Q;
  output \temp_reg_reg[12]_0 ;
  input [2:0]out;
  input \cnt_internal_value_reg[1] ;
  input clk_IBUF_BUFG;
  input pwropt;
  input pwropt_1;
  input pwropt_2;

  wire IS_enable1_buf;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \lfsr_internal[5]_i_2_n_0 ;
  wire \lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ;
  wire lfsr_rst_buf;
  wire [2:0]out;
  wire [0:0]p_3_out;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire \temp_reg_reg[12] ;
  wire \temp_reg_reg[12]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\temp_reg_reg[12] ));
  LUT2 #(
    .INIT(4'h9)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(p_3_out));
  LUT3 #(
    .INIT(8'h01)) 
    \lfsr_internal[5]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(lfsr_rst_buf));
  LUT3 #(
    .INIT(8'h40)) 
    \lfsr_internal[5]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .O(\lfsr_internal[5]_i_2_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(p_3_out),
        .Q(Q[0]),
        .S(lfsr_rst_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(lfsr_rst_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(lfsr_rst_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(Q[2]),
        .Q(Q[3]),
        .R(lfsr_rst_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(lfsr_rst_buf));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(Q[4]),
        .Q(Q[5]),
        .R(lfsr_rst_buf));
  LUT5 #(
    .INIT(32'h0011555F)) 
    \temp_reg_reg[11]_srl3_i_1__2 
       (.I0(out[2]),
        .I1(\temp_reg_reg[12] ),
        .I2(\cnt_internal_value_reg[1] ),
        .I3(out[1]),
        .I4(out[0]),
        .O(IS_enable1_buf));
  LUT4 #(
    .INIT(16'h0507)) 
    \temp_reg_reg[11]_srl3_i_3 
       (.I0(out[0]),
        .I1(\temp_reg_reg[12] ),
        .I2(out[2]),
        .I3(out[1]),
        .O(\temp_reg_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \xlnx_opt_LUT_lfsr_internal_reg[0]_CE_cooolgate_en_gate_26 
       (.I0(pwropt_2),
        .I1(pwropt_1),
        .I2(pwropt),
        .I3(\lfsr_internal[5]_i_2_n_0 ),
        .O(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ));
endmodule

module shift_reg
   (TW_REG_parallel_out_buf,
    \temp_reg_reg[63]_0 ,
    \temp_reg_reg[31]_0 ,
    \temp_reg_reg[29]_0 ,
    \temp_reg_reg[28]_0 ,
    \temp_reg_reg[30]_0 ,
    TW_REG_serial_in_buf,
    clk_IBUF_BUFG,
    out,
    pwropt,
    pwropt_1,
    pwropt_2);
  output [3:0]TW_REG_parallel_out_buf;
  output \temp_reg_reg[63]_0 ;
  output \temp_reg_reg[31]_0 ;
  output \temp_reg_reg[29]_0 ;
  output \temp_reg_reg[28]_0 ;
  output \temp_reg_reg[30]_0 ;
  input [3:0]TW_REG_serial_in_buf;
  input clk_IBUF_BUFG;
  input [2:0]out;
  input pwropt;
  input pwropt_1;
  input pwropt_2;

  wire [27:0]TWEAKEY_permutation_IN;
  wire [3:0]TW_REG_parallel_out_buf;
  wire [3:0]TW_REG_serial_in_buf;
  wire clk_IBUF_BUFG;
  wire [2:0]out;
  wire [59:32]p_1_in;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire state;
  wire \temp_reg_reg[24]_srl7_n_0 ;
  wire \temp_reg_reg[25]_srl7_n_0 ;
  wire \temp_reg_reg[26]_srl7_n_0 ;
  wire \temp_reg_reg[27]_srl7_n_0 ;
  wire \temp_reg_reg[28]_0 ;
  wire \temp_reg_reg[29]_0 ;
  wire \temp_reg_reg[30]_0 ;
  wire \temp_reg_reg[31]_0 ;
  wire \temp_reg_reg[32]_CE_cooolgate_en_sig_3 ;
  wire \temp_reg_reg[44]_CE_cooolgate_en_sig_9 ;
  wire \temp_reg_reg[52]_CE_cooolgate_en_sig_4 ;
  wire \temp_reg_reg[60]_CE_cooolgate_en_sig_8 ;
  wire \temp_reg_reg[63]_0 ;
  wire \temp_reg_reg_n_0_[28] ;
  wire \temp_reg_reg_n_0_[29] ;
  wire \temp_reg_reg_n_0_[30] ;
  wire \temp_reg_reg_n_0_[31] ;

  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[32]_i_1 
       (.I0(TWEAKEY_permutation_IN[0]),
        .I1(\temp_reg_reg_n_0_[28] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[16]),
        .O(p_1_in[32]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[33]_i_1 
       (.I0(TWEAKEY_permutation_IN[1]),
        .I1(\temp_reg_reg_n_0_[29] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[17]),
        .O(p_1_in[33]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[34]_i_1 
       (.I0(TWEAKEY_permutation_IN[2]),
        .I1(\temp_reg_reg_n_0_[30] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[18]),
        .O(p_1_in[34]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[35]_i_1 
       (.I0(TWEAKEY_permutation_IN[3]),
        .I1(\temp_reg_reg_n_0_[31] ),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[19]),
        .O(p_1_in[35]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[36]_i_1 
       (.I0(TWEAKEY_permutation_IN[4]),
        .I1(TWEAKEY_permutation_IN[0]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[12]),
        .O(p_1_in[36]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[37]_i_1 
       (.I0(TWEAKEY_permutation_IN[5]),
        .I1(TWEAKEY_permutation_IN[1]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[13]),
        .O(p_1_in[37]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[38]_i_1 
       (.I0(TWEAKEY_permutation_IN[6]),
        .I1(TWEAKEY_permutation_IN[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[14]),
        .O(p_1_in[38]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[39]_i_1 
       (.I0(TWEAKEY_permutation_IN[7]),
        .I1(TWEAKEY_permutation_IN[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[15]),
        .O(p_1_in[39]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[44]_i_1 
       (.I0(TWEAKEY_permutation_IN[12]),
        .I1(TWEAKEY_permutation_IN[8]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[20]),
        .O(p_1_in[44]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[45]_i_1 
       (.I0(TWEAKEY_permutation_IN[13]),
        .I1(TWEAKEY_permutation_IN[9]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[21]),
        .O(p_1_in[45]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[46]_i_1 
       (.I0(TWEAKEY_permutation_IN[14]),
        .I1(TWEAKEY_permutation_IN[10]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[22]),
        .O(p_1_in[46]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[47]_i_1 
       (.I0(TWEAKEY_permutation_IN[15]),
        .I1(TWEAKEY_permutation_IN[11]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[23]),
        .O(p_1_in[47]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[48]_i_1 
       (.I0(TWEAKEY_permutation_IN[16]),
        .I1(TWEAKEY_permutation_IN[12]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[8]),
        .O(p_1_in[48]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[49]_i_1 
       (.I0(TWEAKEY_permutation_IN[17]),
        .I1(TWEAKEY_permutation_IN[13]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[9]),
        .O(p_1_in[49]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[50]_i_1 
       (.I0(TWEAKEY_permutation_IN[18]),
        .I1(TWEAKEY_permutation_IN[14]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[10]),
        .O(p_1_in[50]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[51]_i_1 
       (.I0(TWEAKEY_permutation_IN[19]),
        .I1(TWEAKEY_permutation_IN[15]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[11]),
        .O(p_1_in[51]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[52]_i_1 
       (.I0(TWEAKEY_permutation_IN[20]),
        .I1(TWEAKEY_permutation_IN[16]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TW_REG_parallel_out_buf[0]),
        .O(p_1_in[52]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[53]_i_1 
       (.I0(TWEAKEY_permutation_IN[21]),
        .I1(TWEAKEY_permutation_IN[17]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TW_REG_parallel_out_buf[1]),
        .O(p_1_in[53]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[54]_i_1 
       (.I0(TWEAKEY_permutation_IN[22]),
        .I1(TWEAKEY_permutation_IN[18]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TW_REG_parallel_out_buf[2]),
        .O(p_1_in[54]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[55]_i_1 
       (.I0(TWEAKEY_permutation_IN[23]),
        .I1(TWEAKEY_permutation_IN[19]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TW_REG_parallel_out_buf[3]),
        .O(p_1_in[55]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[56]_i_1 
       (.I0(TWEAKEY_permutation_IN[24]),
        .I1(TWEAKEY_permutation_IN[20]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[0]),
        .O(p_1_in[56]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[57]_i_1 
       (.I0(TWEAKEY_permutation_IN[25]),
        .I1(TWEAKEY_permutation_IN[21]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[1]),
        .O(p_1_in[57]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[58]_i_1 
       (.I0(TWEAKEY_permutation_IN[26]),
        .I1(TWEAKEY_permutation_IN[22]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[2]),
        .O(p_1_in[58]));
  LUT6 #(
    .INIT(64'hAFACCACCA0ACCACC)) 
    \temp_reg[59]_i_1 
       (.I0(TWEAKEY_permutation_IN[27]),
        .I1(TWEAKEY_permutation_IN[23]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(TWEAKEY_permutation_IN[3]),
        .O(p_1_in[59]));
  LUT3 #(
    .INIT(8'h67)) 
    \temp_reg[63]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .O(\temp_reg_reg[63]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[24]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[24]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TW_REG_serial_in_buf[0]),
        .Q(\temp_reg_reg[24]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \temp_reg_reg[24]_srl7_i_2 
       (.I0(TW_REG_parallel_out_buf[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .O(\temp_reg_reg[28]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[25]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[25]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TW_REG_serial_in_buf[1]),
        .Q(\temp_reg_reg[25]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \temp_reg_reg[25]_srl7_i_2 
       (.I0(TW_REG_parallel_out_buf[1]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .O(\temp_reg_reg[29]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[26]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[26]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TW_REG_serial_in_buf[2]),
        .Q(\temp_reg_reg[26]_srl7_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \temp_reg_reg[26]_srl7_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(TW_REG_parallel_out_buf[2]),
        .O(\temp_reg_reg[30]_0 ));
  (* srl_bus_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg " *) 
  (* srl_name = "\Skinny_DUT/INST_TW_REG/temp_reg_reg[27]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \temp_reg_reg[27]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(state),
        .CLK(clk_IBUF_BUFG),
        .D(TW_REG_serial_in_buf[3]),
        .Q(\temp_reg_reg[27]_srl7_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \temp_reg_reg[27]_srl7_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(state));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \temp_reg_reg[27]_srl7_i_4 
       (.I0(TW_REG_parallel_out_buf[3]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .O(\temp_reg_reg[31]_0 ));
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
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[32]),
        .Q(TWEAKEY_permutation_IN[0]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \temp_reg_reg[32]_CE_cooolgate_en_gate_3 
       (.I0(out[2]),
        .I1(out[1]),
        .O(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
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
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
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
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[35]),
        .Q(TWEAKEY_permutation_IN[3]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[36]),
        .Q(TWEAKEY_permutation_IN[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[37]),
        .Q(TWEAKEY_permutation_IN[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[38]),
        .Q(TWEAKEY_permutation_IN[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[39]),
        .Q(TWEAKEY_permutation_IN[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[63]_0 ),
        .D(TWEAKEY_permutation_IN[4]),
        .Q(TWEAKEY_permutation_IN[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[63]_0 ),
        .D(TWEAKEY_permutation_IN[5]),
        .Q(TWEAKEY_permutation_IN[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[63]_0 ),
        .D(TWEAKEY_permutation_IN[6]),
        .Q(TWEAKEY_permutation_IN[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[63]_0 ),
        .D(TWEAKEY_permutation_IN[7]),
        .Q(TWEAKEY_permutation_IN[11]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[44]_CE_cooolgate_en_sig_9 ),
        .D(p_1_in[44]),
        .Q(TWEAKEY_permutation_IN[12]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7f)) 
    \temp_reg_reg[44]_CE_cooolgate_en_gate_37 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(pwropt_1),
        .O(\temp_reg_reg[44]_CE_cooolgate_en_sig_9 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[44]_CE_cooolgate_en_sig_9 ),
        .D(p_1_in[45]),
        .Q(TWEAKEY_permutation_IN[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[44]_CE_cooolgate_en_sig_9 ),
        .D(p_1_in[46]),
        .Q(TWEAKEY_permutation_IN[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[44]_CE_cooolgate_en_sig_9 ),
        .D(p_1_in[47]),
        .Q(TWEAKEY_permutation_IN[15]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[48]),
        .Q(TWEAKEY_permutation_IN[16]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[49]),
        .Q(TWEAKEY_permutation_IN[17]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[50]),
        .Q(TWEAKEY_permutation_IN[18]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[32]_CE_cooolgate_en_sig_3 ),
        .D(p_1_in[51]),
        .Q(TWEAKEY_permutation_IN[19]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[52]),
        .Q(TWEAKEY_permutation_IN[20]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1fff)) 
    \temp_reg_reg[52]_CE_cooolgate_en_gate_16 
       (.I0(pwropt_1),
        .I1(pwropt),
        .I2(out[2]),
        .I3(out[1]),
        .O(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[53]),
        .Q(TWEAKEY_permutation_IN[21]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[54]),
        .Q(TWEAKEY_permutation_IN[22]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[55]),
        .Q(TWEAKEY_permutation_IN[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[56]),
        .Q(TWEAKEY_permutation_IN[24]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[57]),
        .Q(TWEAKEY_permutation_IN[25]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[58]),
        .Q(TWEAKEY_permutation_IN[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[52]_CE_cooolgate_en_sig_4 ),
        .D(p_1_in[59]),
        .Q(TWEAKEY_permutation_IN[27]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_8 ),
        .D(TWEAKEY_permutation_IN[24]),
        .Q(TW_REG_parallel_out_buf[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_8 ),
        .D(TWEAKEY_permutation_IN[25]),
        .Q(TW_REG_parallel_out_buf[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_8 ),
        .D(TWEAKEY_permutation_IN[26]),
        .Q(TW_REG_parallel_out_buf[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[60]_CE_cooolgate_en_sig_8 ),
        .D(TWEAKEY_permutation_IN[27]),
        .Q(TW_REG_parallel_out_buf[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE00)) 
    \xlnx_opt_LUT_temp_reg_reg[60]_CE_cooolgate_en_gate_33 
       (.I0(pwropt_1),
        .I1(pwropt),
        .I2(pwropt_2),
        .I3(\temp_reg_reg[63]_0 ),
        .O(\temp_reg_reg[60]_CE_cooolgate_en_sig_8 ));
endmodule

module skinny_shift_reg_64
   (\temp_reg_reg[15] ,
    \temp_reg_reg[15]_0 ,
    \current_state_reg[1] ,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    \temp_reg_reg[12] ,
    \temp_reg_reg[15]_1 ,
    \temp_reg_reg[15]_2 ,
    \temp_reg_reg[14] ,
    \temp_reg_reg[13] ,
    \temp_reg_reg[12]_0 ,
    \temp_reg_reg[12]_1 ,
    \temp_reg_reg[30] ,
    \temp_reg_reg[12]_2 ,
    \temp_reg_reg[14]_0 ,
    \temp_reg_reg[13]_0 ,
    IS_enable1_buf,
    clk_IBUF_BUFG,
    IS_enable2_buf,
    IS_enable3_buf,
    IS_enable4_buf,
    \cnt_internal_value_reg[0] ,
    \current_state_reg[1]_2 ,
    current_state,
    rst_IBUF,
    out,
    \cnt_internal_value_reg[2] ,
    \cnt_internal_value_reg[3] ,
    \lfsr_internal_reg[4] ,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output \temp_reg_reg[15] ;
  output \temp_reg_reg[15]_0 ;
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[1]_1 ;
  output \temp_reg_reg[12] ;
  output \temp_reg_reg[15]_1 ;
  output \temp_reg_reg[15]_2 ;
  output \temp_reg_reg[14] ;
  output \temp_reg_reg[13] ;
  output \temp_reg_reg[12]_0 ;
  output \temp_reg_reg[12]_1 ;
  output \temp_reg_reg[30] ;
  output \temp_reg_reg[12]_2 ;
  output \temp_reg_reg[14]_0 ;
  output \temp_reg_reg[13]_0 ;
  input IS_enable1_buf;
  input clk_IBUF_BUFG;
  input IS_enable2_buf;
  input IS_enable3_buf;
  input IS_enable4_buf;
  input [2:0]\cnt_internal_value_reg[0] ;
  input \current_state_reg[1]_2 ;
  input [1:0]current_state;
  input rst_IBUF;
  input [2:0]out;
  input \cnt_internal_value_reg[2] ;
  input \cnt_internal_value_reg[3] ;
  input \lfsr_internal_reg[4] ;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire IS_enable1_buf;
  wire IS_enable2_buf;
  wire IS_enable3_buf;
  wire IS_enable4_buf;
  wire [3:0]IS_serial_in_first_row_buf;
  wire [3:3]IS_serial_in_fourth_row_buf;
  wire [1:0]IS_serial_output_first_row_buf;
  wire [3:0]IS_serial_output_fourth_row_buf;
  wire [3:0]IS_serial_output_second_row_buf;
  wire [3:0]IS_serial_output_third_row_buf;
  wire clk_IBUF_BUFG;
  wire [2:0]\cnt_internal_value_reg[0] ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[3] ;
  wire [1:0]current_state;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[1]_2 ;
  wire \lfsr_internal_reg[4] ;
  wire [2:0]out;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire rst_IBUF;
  wire \temp_reg_reg[12] ;
  wire \temp_reg_reg[12]_1 ;
  wire \temp_reg_reg[12]_2 ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[14] ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[15] ;
  wire \temp_reg_reg[15]_0 ;
  wire \temp_reg_reg[15]_1 ;
  wire \temp_reg_reg[15]_2 ;
  wire \temp_reg_reg[30] ;
  wire \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[12]_0_UNCONNECTED ;
  wire \NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[13]_0_UNCONNECTED ;

  assign lopt = IS_serial_output_fourth_row_buf[1];
  assign lopt_1 = IS_serial_output_first_row_buf[1];
  assign lopt_2 = IS_serial_output_third_row_buf[1];
  assign lopt_3 = IS_serial_output_first_row_buf[0];
  assign lopt_4 = IS_serial_output_third_row_buf[0];
  assign lopt_5 = IS_serial_output_fourth_row_buf[0];
  IS_shift_reg INST_FIRST_ROW_SHIFT_REG
       (.\FSM_sequential_current_state_reg[0] (\temp_reg_reg[15]_1 ),
        .IS_enable1_buf(IS_enable1_buf),
        .IS_serial_in_first_row_buf(IS_serial_in_first_row_buf),
        .IS_serial_in_fourth_row_buf(IS_serial_in_fourth_row_buf),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf),
        .IS_serial_output_fourth_row_buf({IS_serial_output_fourth_row_buf[3:2],IS_serial_output_fourth_row_buf[0]}),
        .IS_serial_output_third_row_buf({IS_serial_output_third_row_buf[3:2],IS_serial_output_third_row_buf[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[3] (\cnt_internal_value_reg[3] ),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[1]_0 (\current_state_reg[1]_0 ),
        .\current_state_reg[1]_1 (\current_state_reg[1]_1 ),
        .\current_state_reg[1]_2 (\current_state_reg[1]_2 ),
        .\lfsr_internal_reg[4] (\lfsr_internal_reg[4] ),
        .out(out),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[12]_0 (\NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[12]_0_UNCONNECTED ),
        .\temp_reg_reg[12]_1 (\temp_reg_reg[12]_2 ),
        .\temp_reg_reg[13]_0 (\temp_reg_reg[13]_0 ),
        .\temp_reg_reg[14]_0 (\temp_reg_reg[14] ),
        .\temp_reg_reg[14]_1 (\temp_reg_reg[14]_0 ),
        .\temp_reg_reg[15]_0 (\temp_reg_reg[15] ),
        .\temp_reg_reg[15]_1 (\temp_reg_reg[15]_0 ),
        .\temp_reg_reg[15]_2 (\temp_reg_reg[15]_2 ));
  IS_shift_reg_0 INST_FOURTH_ROW_SHIFT_REG
       (.IS_enable4_buf(IS_enable4_buf),
        .IS_serial_in_first_row_buf(IS_serial_in_first_row_buf[2:0]),
        .IS_serial_in_fourth_row_buf(IS_serial_in_fourth_row_buf),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf),
        .IS_serial_output_second_row_buf(IS_serial_output_second_row_buf[2:0]),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf[2:0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (\cnt_internal_value_reg[0] ),
        .current_state(current_state),
        .out(out),
        .\temp_reg_reg[12]_0 (\temp_reg_reg[12]_1 ),
        .\temp_reg_reg[13]_0 (\NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[13]_0_UNCONNECTED ),
        .\temp_reg_reg[14]_0 (\temp_reg_reg[15]_0 ),
        .\temp_reg_reg[15]_0 (\temp_reg_reg[15]_1 ),
        .\temp_reg_reg[30] (\temp_reg_reg[30] ));
  IS_shift_reg_1 INST_SECOND_ROW_SHIFT_REG
       (.IS_enable2_buf(IS_enable2_buf),
        .IS_serial_in_first_row_buf(IS_serial_in_first_row_buf[3]),
        .IS_serial_output_first_row_buf(IS_serial_output_first_row_buf),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf[3]),
        .IS_serial_output_second_row_buf(IS_serial_output_second_row_buf),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out),
        .\temp_reg_reg[14]_0 (\temp_reg_reg[15]_0 ),
        .\temp_reg_reg[15]_0 (\temp_reg_reg[15] ));
  IS_shift_reg_2 INST_THIRD_ROW_SHIFT_REG
       (.IS_enable3_buf(IS_enable3_buf),
        .IS_serial_output_fourth_row_buf(IS_serial_output_fourth_row_buf),
        .IS_serial_output_second_row_buf(IS_serial_output_second_row_buf),
        .IS_serial_output_third_row_buf(IS_serial_output_third_row_buf),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out),
        .\temp_reg_reg[12]_0 (\temp_reg_reg[12] ));
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
