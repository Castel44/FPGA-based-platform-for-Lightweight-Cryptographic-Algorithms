// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 26 19:43:41 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simon/Simon_128_128_parallel/Simon_128_128_parallel.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\current_state_reg[0] ,
    Q,
    \current_state_reg[2] ,
    current_state,
    rst_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[0] ;
  output [0:0]Q;
  output \current_state_reg[2] ;
  input [2:0]current_state;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire [0:0]Q;
  wire ce;
  wire clk_IBUF_BUFG;
  wire [1:1]cnt_internal_value;
  wire \cnt_internal_value[1]_i_3_n_0 ;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire [1:0]plusOp;
  wire rst_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q),
        .O(plusOp[0]));
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_internal_value[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(ce));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_2__0 
       (.I0(Q),
        .I1(cnt_internal_value),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h98)) 
    \cnt_internal_value[1]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\cnt_internal_value[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[1]_i_3_n_0 ),
        .D(plusOp[0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[1]_i_3_n_0 ),
        .D(plusOp[1]),
        .Q(cnt_internal_value));
  LUT6 #(
    .INIT(64'hFFFFFFFF4044CCCC)) 
    \current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(cnt_internal_value),
        .I3(Q),
        .I4(current_state[2]),
        .I5(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT5 #(
    .INIT(32'hF3400040)) 
    \current_state[2]_i_3 
       (.I0(current_state[1]),
        .I1(Q),
        .I2(cnt_internal_value),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(\current_state_reg[2] ));
endmodule

(* ORIG_REF_NAME = "CNT" *) 
module CNT_1
   (IS_CE,
    E,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[1] ,
    out,
    \lfsr_internal_reg[4] ,
    \current_state_reg[2] ,
    current_state,
    \FSM_sequential_current_state_reg[0]_0 ,
    clk_IBUF_BUFG);
  output IS_CE;
  output [0:0]E;
  output \FSM_sequential_current_state_reg[0] ;
  input \FSM_sequential_current_state_reg[1] ;
  input [1:0]out;
  input \lfsr_internal_reg[4] ;
  input \current_state_reg[2] ;
  input [0:0]current_state;
  input [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [0:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire IS_CE;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ;
  wire [1:0]cnt_out;
  wire [0:0]current_state;
  wire \current_state_reg[2] ;
  wire \lfsr_internal_reg[4] ;
  wire [1:0]out;
  wire [1:0]plusOp;

  LUT6 #(
    .INIT(64'h5545000055455141)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\lfsr_internal_reg[4] ),
        .I4(\current_state_reg[2] ),
        .I5(current_state),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(out[0]),
        .I1(cnt_out[0]),
        .I2(cnt_out[1]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1__0 
       (.I0(cnt_out[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_2 
       (.I0(cnt_out[1]),
        .I1(cnt_out[0]),
        .O(plusOp[1]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ),
        .CLR(out[0]),
        .D(plusOp[0]),
        .Q(cnt_out[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ),
        .CLR(out[0]),
        .D(plusOp[1]),
        .Q(cnt_out[1]));
  LUT5 #(
    .INIT(32'hFEFFBABB)) 
    \temp_reg[127]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(out[0]),
        .I2(cnt_out[0]),
        .I3(cnt_out[1]),
        .I4(out[1]),
        .O(IS_CE));
  LUT4 #(
    .INIT(16'h00FD)) 
    \temp_reg[127]_i_1__0 
       (.I0(cnt_out[1]),
        .I1(cnt_out[0]),
        .I2(out[1]),
        .I3(out[0]),
        .O(E));
  LUT3 #(
    .INIT(8'h10)) 
    \xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_8 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4 ));
endmodule

module Simon_128_128_parallel
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \current_state_reg[1]_0 ,
    clk_IBUF_BUFG,
    Q);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \current_state_reg[1]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire INST_IS_REG_n_0;
  wire INST_LFSR_n_1;
  wire INST_LFSR_n_2;
  wire INST_LFSR_n_3;
  wire INST_bit2_CNT_n_1;
  wire INST_bit2_CNT_n_2;
  wire IS_CE;
  wire [63:0]KEY_REG_right_reg_out;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  (* RTL_KEEP = "yes" *) wire [1:1]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[2] ;
  wire [2:2]data4;
  wire [4:4]lfsr_parallel_out;
  (* RTL_KEEP = "yes" *) wire lfsr_rst;
  wire p_0_in;
  wire rst_IBUF;
  wire start_IBUF;
  wire \xlnx_opt_current_state_reg[1] ;
  wire \xlnx_opt_current_state_reg[2] ;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCC0CCCE)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(lfsr_rst),
        .I1(current_state_0),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_bit2_CNT_n_2),
        .Q(lfsr_rst),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:00,idle:01,processing:10,end_encrypt:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state_0),
        .R(1'b0));
  parallel_tapped_shift_reg INST_IS_REG
       (.CO(INST_IS_REG_n_0),
        .IS_CE(IS_CE),
        .Q(KEY_REG_right_reg_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (Q),
        .current_state({current_state[2],current_state[0]}),
        .\current_state_reg[2] (data4),
        .out({current_state_0,lfsr_rst}));
  parallel_tapped_shift_reg_0 INST_KEY_SHIFT_REG
       (.E(INST_bit2_CNT_n_1),
        .Q(KEY_REG_right_reg_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (Q),
        .current_state({current_state[2],current_state[0]}),
        .\lfsr_internal_reg[4] (lfsr_parallel_out),
        .out({current_state_0,lfsr_rst}),
        .\t_sequence_reg[1] (p_0_in));
  lfsr INST_LFSR
       (.E(INST_LFSR_n_3),
        .\FSM_sequential_current_state_reg[0] (INST_LFSR_n_2),
        .Q(lfsr_parallel_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[0] (INST_LFSR_n_1),
        .out({current_state_0,lfsr_rst}),
        .pwropt(INST_bit2_CNT_n_2),
        .\t_sequence_reg[0]_0 (p_0_in));
  CNT_1 INST_bit2_CNT
       (.E(INST_bit2_CNT_n_1),
        .\FSM_sequential_current_state_reg[0] (INST_bit2_CNT_n_2),
        .\FSM_sequential_current_state_reg[0]_0 (INST_LFSR_n_3),
        .\FSM_sequential_current_state_reg[1] (INST_LFSR_n_1),
        .IS_CE(IS_CE),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state[0]),
        .\current_state_reg[2] (\FSM_sequential_current_state[0]_i_4_n_0 ),
        .\lfsr_internal_reg[4] (INST_LFSR_n_2),
        .out({current_state_0,lfsr_rst}));
  LUT2 #(
    .INIT(4'h8)) 
    \xlnx_opt_LUT_current_state[1]_i_1 
       (.I0(lfsr_rst),
        .I1(INST_IS_REG_n_0),
        .O(\xlnx_opt_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFB2BAFFFFA2AA)) 
    \xlnx_opt_LUT_current_state[1]_i_1_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(start_IBUF),
        .I4(rst_IBUF),
        .I5(\xlnx_opt_current_state_reg[1] ),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF70007777)) 
    \xlnx_opt_LUT_current_state[2]_i_1 
       (.I0(current_state[1]),
        .I1(data4),
        .I2(lfsr_rst),
        .I3(INST_IS_REG_n_0),
        .I4(current_state[2]),
        .I5(current_state[0]),
        .O(\xlnx_opt_current_state_reg[2] ));
  LUT6 #(
    .INIT(64'h0000FF980000FFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_1_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(\current_state_reg[1]_0 ),
        .I4(rst_IBUF),
        .I5(\xlnx_opt_current_state_reg[2] ),
        .O(\current_state_reg[2] ));
endmodule

(* Datapath = "64" *) (* ECO_CHECKSUM = "94d5f544" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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

  wire INST_CNT_n_0;
  wire INST_CNT_n_2;
  wire Simon_DUT_n_0;
  wire Simon_DUT_n_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]cnt_internal_value;
  wire [2:0]current_state;
  wire led_out;
  wire led_out_OBUF;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  CNT INST_CNT
       (.Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_0),
        .\current_state_reg[2] (INST_CNT_n_2),
        .rst_IBUF(rst_IBUF));
  Simon_128_128_parallel Simon_DUT
       (.Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[1] (Simon_DUT_n_0),
        .\current_state_reg[1]_0 (INST_CNT_n_2),
        .\current_state_reg[2] (Simon_DUT_n_1),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF));
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
        .D(INST_CNT_n_0),
        .Q(current_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_0),
        .Q(current_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_1),
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
   (Q,
    \cnt_internal_value_reg[0] ,
    \FSM_sequential_current_state_reg[0] ,
    E,
    \t_sequence_reg[0]_0 ,
    out,
    clk_IBUF_BUFG,
    pwropt);
  output [0:0]Q;
  output \cnt_internal_value_reg[0] ;
  output \FSM_sequential_current_state_reg[0] ;
  output [0:0]E;
  output [0:0]\t_sequence_reg[0]_0 ;
  input [1:0]out;
  input clk_IBUF_BUFG;
  input pwropt;

  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[0] ;
  wire lfsr_internal0;
  wire \lfsr_internal_reg[0]_CE_cooolgate_en_sig_2 ;
  wire [3:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [0:0]p_3_out;
  wire pwropt;
  wire \t_sequence[1]_i_1_n_0 ;
  wire [0:0]\t_sequence_reg[0]_0 ;
  wire \t_sequence_reg_n_0_[0] ;

  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(Q),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[1]),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_internal_value[1]_i_1__0 
       (.I0(out[0]),
        .I1(\cnt_internal_value_reg[0] ),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .O(p_3_out));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[4]_i_1 
       (.I0(lfsr_parallel_out[3]),
        .I1(Q),
        .O(lfsr_internal0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(out[0]),
        .D(p_3_out),
        .Q(lfsr_parallel_out[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(out[0]),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(out[0]),
        .D(lfsr_parallel_out[1]),
        .Q(lfsr_parallel_out[2]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_2 ),
        .CLR(out[0]),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(lfsr_internal0),
        .PRE(out[0]),
        .Q(Q));
  LUT1 #(
    .INIT(2'h1)) 
    \t_sequence[1]_i_1 
       (.I0(out[0]),
        .O(\t_sequence[1]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \t_sequence_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_sequence[1]_i_1_n_0 ),
        .D(\t_sequence_reg[0]_0 ),
        .PRE(out[0]),
        .Q(\t_sequence_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \t_sequence_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\t_sequence[1]_i_1_n_0 ),
        .CLR(out[0]),
        .D(\t_sequence_reg_n_0_[0] ),
        .Q(\t_sequence_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAAAAAAAAAA)) 
    \temp_reg[127]_i_2 
       (.I0(out[1]),
        .I1(lfsr_parallel_out[1]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[2]),
        .I4(lfsr_parallel_out[3]),
        .I5(Q),
        .O(\cnt_internal_value_reg[0] ));
  LUT2 #(
    .INIT(4'h1)) 
    \xlnx_opt_LUT_lfsr_internal_reg[0]_CE_cooolgate_en_gate_2 
       (.I0(pwropt),
        .I1(out[0]),
        .O(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_2 ));
endmodule

module parallel_tapped_shift_reg
   (CO,
    \current_state_reg[2] ,
    out,
    current_state,
    Q,
    IS_CE,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[0] );
  output [0:0]CO;
  output [0:0]\current_state_reg[2] ;
  input [1:0]out;
  input [1:0]current_state;
  input [63:0]Q;
  input IS_CE;
  input clk_IBUF_BUFG;
  input [0:0]\cnt_internal_value_reg[0] ;

  wire [0:0]CO;
  wire IS_CE;
  wire [63:0]IS_left_reg_out;
  wire [63:0]IS_right_reg_out;
  wire [63:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]\cnt_internal_value_reg[0] ;
  wire [1:0]current_state;
  wire \current_state[2]_i_10_n_0 ;
  wire \current_state[2]_i_11_n_0 ;
  wire \current_state[2]_i_13_n_0 ;
  wire \current_state[2]_i_14_n_0 ;
  wire \current_state[2]_i_15_n_0 ;
  wire \current_state[2]_i_16_n_0 ;
  wire \current_state[2]_i_18_n_0 ;
  wire \current_state[2]_i_19_n_0 ;
  wire \current_state[2]_i_20_n_0 ;
  wire \current_state[2]_i_21_n_0 ;
  wire \current_state[2]_i_23_n_0 ;
  wire \current_state[2]_i_24_n_0 ;
  wire \current_state[2]_i_25_n_0 ;
  wire \current_state[2]_i_26_n_0 ;
  wire \current_state[2]_i_28_n_0 ;
  wire \current_state[2]_i_29_n_0 ;
  wire \current_state[2]_i_30_n_0 ;
  wire \current_state[2]_i_31_n_0 ;
  wire \current_state[2]_i_33_n_0 ;
  wire \current_state[2]_i_34_n_0 ;
  wire \current_state[2]_i_35_n_0 ;
  wire \current_state[2]_i_36_n_0 ;
  wire \current_state[2]_i_38_n_0 ;
  wire \current_state[2]_i_39_n_0 ;
  wire \current_state[2]_i_40_n_0 ;
  wire \current_state[2]_i_41_n_0 ;
  wire \current_state[2]_i_43_n_0 ;
  wire \current_state[2]_i_44_n_0 ;
  wire \current_state[2]_i_45_n_0 ;
  wire \current_state[2]_i_46_n_0 ;
  wire \current_state[2]_i_48_n_0 ;
  wire \current_state[2]_i_49_n_0 ;
  wire \current_state[2]_i_50_n_0 ;
  wire \current_state[2]_i_51_n_0 ;
  wire \current_state[2]_i_52_n_0 ;
  wire \current_state[2]_i_53_n_0 ;
  wire \current_state[2]_i_54_n_0 ;
  wire \current_state[2]_i_55_n_0 ;
  wire \current_state[2]_i_56_n_0 ;
  wire \current_state[2]_i_57_n_0 ;
  wire \current_state[2]_i_58_n_0 ;
  wire \current_state[2]_i_59_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state[2]_i_8_n_0 ;
  wire [0:0]\current_state_reg[2] ;
  wire \current_state_reg[2]_i_12_n_0 ;
  wire \current_state_reg[2]_i_17_n_0 ;
  wire \current_state_reg[2]_i_22_n_0 ;
  wire \current_state_reg[2]_i_27_n_0 ;
  wire \current_state_reg[2]_i_32_n_0 ;
  wire \current_state_reg[2]_i_37_n_0 ;
  wire \current_state_reg[2]_i_42_n_0 ;
  wire \current_state_reg[2]_i_47_n_0 ;
  wire \current_state_reg[2]_i_6_n_0 ;
  wire \current_state_reg[2]_i_9_n_0 ;
  wire [1:0]out;
  wire [62:5]p_0_in;
  wire \temp_reg[0]_i_1_n_0 ;
  wire \temp_reg[10]_i_1__0_n_0 ;
  wire \temp_reg[11]_i_1_n_0 ;
  wire \temp_reg[15]_i_1__0_n_0 ;
  wire \temp_reg[16]_i_1__0_n_0 ;
  wire \temp_reg[18]_i_1__0_n_0 ;
  wire \temp_reg[19]_i_1_n_0 ;
  wire \temp_reg[1]_i_1__0_n_0 ;
  wire \temp_reg[23]_i_1__0_n_0 ;
  wire \temp_reg[24]_i_1_n_0 ;
  wire \temp_reg[25]_i_1_n_0 ;
  wire \temp_reg[26]_i_1__0_n_0 ;
  wire \temp_reg[27]_i_1_n_0 ;
  wire \temp_reg[28]_i_1__0_n_0 ;
  wire \temp_reg[2]_i_1__0_n_0 ;
  wire \temp_reg[30]_i_1__0_n_0 ;
  wire \temp_reg[31]_i_1__0_n_0 ;
  wire \temp_reg[32]_i_1__0_n_0 ;
  wire \temp_reg[33]_i_1__0_n_0 ;
  wire \temp_reg[35]_i_1_n_0 ;
  wire \temp_reg[36]_i_1__0_n_0 ;
  wire \temp_reg[39]_i_1__0_n_0 ;
  wire \temp_reg[3]_i_1_n_0 ;
  wire \temp_reg[41]_i_1__0_n_0 ;
  wire \temp_reg[43]_i_1_n_0 ;
  wire \temp_reg[44]_i_1__0_n_0 ;
  wire \temp_reg[47]_i_1__0_n_0 ;
  wire \temp_reg[48]_i_1__0_n_0 ;
  wire \temp_reg[49]_i_1_n_0 ;
  wire \temp_reg[4]_i_1__0_n_0 ;
  wire \temp_reg[50]_i_1_n_0 ;
  wire \temp_reg[51]_i_1_n_0 ;
  wire \temp_reg[52]_i_1__0_n_0 ;
  wire \temp_reg[55]_i_1__0_n_0 ;
  wire \temp_reg[56]_i_1_n_0 ;
  wire \temp_reg[57]_i_1_n_0 ;
  wire \temp_reg[57]_i_2_n_0 ;
  wire \temp_reg[58]_i_1_n_0 ;
  wire \temp_reg[59]_i_1_n_0 ;
  wire \temp_reg[59]_i_2_n_0 ;
  wire \temp_reg[59]_i_3_n_0 ;
  wire \temp_reg[5]_i_2_n_0 ;
  wire \temp_reg[60]_i_1__0_n_0 ;
  wire \temp_reg[63]_i_1_n_0 ;
  wire \temp_reg[63]_i_2__0_n_0 ;
  wire \temp_reg[6]_i_1__0_n_0 ;
  wire \temp_reg[7]_i_1__0_n_0 ;
  wire \temp_reg[8]_i_1_n_0 ;
  wire \temp_reg[9]_i_1__0_n_0 ;
  wire \xlnx_opt_p_0_in[12] ;
  wire \xlnx_opt_p_0_in[13] ;
  wire \xlnx_opt_p_0_in[14] ;
  wire \xlnx_opt_p_0_in[17] ;
  wire \xlnx_opt_p_0_in[20] ;
  wire \xlnx_opt_p_0_in[21] ;
  wire \xlnx_opt_p_0_in[22] ;
  wire \xlnx_opt_p_0_in[29] ;
  wire \xlnx_opt_p_0_in[34] ;
  wire \xlnx_opt_p_0_in[37] ;
  wire \xlnx_opt_p_0_in[38] ;
  wire \xlnx_opt_p_0_in[40] ;
  wire \xlnx_opt_p_0_in[42] ;
  wire \xlnx_opt_p_0_in[45] ;
  wire \xlnx_opt_p_0_in[46] ;
  wire \xlnx_opt_p_0_in[53] ;
  wire \xlnx_opt_p_0_in[54] ;
  wire \xlnx_opt_p_0_in[61] ;
  wire \xlnx_opt_p_0_in[62] ;
  wire [2:0]\NLW_current_state_reg[2]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_22_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_27_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_32_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_37_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_37_O_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_42_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_47_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_47_O_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_current_state_reg[2]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[2]_i_9_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h7F)) 
    \current_state[2]_i_10 
       (.I0(IS_right_reg_out[63]),
        .I1(out[1]),
        .I2(out[0]),
        .O(\current_state[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_11 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[61]),
        .I3(IS_right_reg_out[60]),
        .I4(IS_right_reg_out[62]),
        .O(\current_state[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \current_state[2]_i_13 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[57]),
        .I3(IS_right_reg_out[59]),
        .I4(IS_right_reg_out[58]),
        .O(\current_state[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \current_state[2]_i_14 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[56]),
        .I3(IS_right_reg_out[54]),
        .I4(IS_right_reg_out[55]),
        .O(\current_state[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_15 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[53]),
        .I3(IS_right_reg_out[52]),
        .I4(IS_right_reg_out[51]),
        .O(\current_state[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \current_state[2]_i_16 
       (.I0(IS_right_reg_out[50]),
        .I1(IS_right_reg_out[48]),
        .I2(IS_right_reg_out[49]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\current_state[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_state[2]_i_18 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[58]),
        .I3(IS_right_reg_out[59]),
        .I4(IS_right_reg_out[57]),
        .O(\current_state[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_19 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[56]),
        .I3(IS_right_reg_out[54]),
        .I4(IS_right_reg_out[55]),
        .O(\current_state[2]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_20 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[53]),
        .I3(IS_right_reg_out[52]),
        .I4(IS_right_reg_out[51]),
        .O(\current_state[2]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_state[2]_i_21 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[49]),
        .I3(IS_right_reg_out[50]),
        .I4(IS_right_reg_out[48]),
        .O(\current_state[2]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \current_state[2]_i_23 
       (.I0(IS_right_reg_out[46]),
        .I1(IS_right_reg_out[45]),
        .I2(IS_right_reg_out[47]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\current_state[2]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_24 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[44]),
        .I3(IS_right_reg_out[42]),
        .I4(IS_right_reg_out[43]),
        .O(\current_state[2]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_25 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[40]),
        .I3(IS_right_reg_out[39]),
        .I4(IS_right_reg_out[41]),
        .O(\current_state[2]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \current_state[2]_i_26 
       (.I0(IS_right_reg_out[38]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(IS_right_reg_out[36]),
        .I4(IS_right_reg_out[37]),
        .O(\current_state[2]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_state[2]_i_28 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[47]),
        .I3(IS_right_reg_out[46]),
        .I4(IS_right_reg_out[45]),
        .O(\current_state[2]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \current_state[2]_i_29 
       (.I0(IS_right_reg_out[44]),
        .I1(IS_right_reg_out[43]),
        .I2(IS_right_reg_out[42]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\current_state[2]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_30 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[40]),
        .I3(IS_right_reg_out[39]),
        .I4(IS_right_reg_out[41]),
        .O(\current_state[2]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \current_state[2]_i_31 
       (.I0(IS_right_reg_out[38]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(IS_right_reg_out[37]),
        .I4(IS_right_reg_out[36]),
        .O(\current_state[2]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[2]_i_33 
       (.I0(IS_right_reg_out[34]),
        .I1(IS_right_reg_out[35]),
        .I2(IS_right_reg_out[33]),
        .I3(out[0]),
        .I4(out[1]),
        .O(\current_state[2]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \current_state[2]_i_34 
       (.I0(IS_right_reg_out[32]),
        .I1(IS_right_reg_out[31]),
        .I2(IS_right_reg_out[30]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\current_state[2]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \current_state[2]_i_35 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(IS_right_reg_out[28]),
        .I3(IS_right_reg_out[27]),
        .I4(IS_right_reg_out[29]),
        .O(\current_state[2]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_36 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[26]),
        .I3(IS_right_reg_out[24]),
        .I4(IS_right_reg_out[25]),
        .O(\current_state[2]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \current_state[2]_i_38 
       (.I0(IS_right_reg_out[34]),
        .I1(IS_right_reg_out[35]),
        .I2(IS_right_reg_out[33]),
        .I3(out[0]),
        .I4(out[1]),
        .O(\current_state[2]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_39 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[30]),
        .I3(IS_right_reg_out[32]),
        .I4(IS_right_reg_out[31]),
        .O(\current_state[2]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[2]_i_40 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(IS_right_reg_out[28]),
        .I3(IS_right_reg_out[27]),
        .I4(IS_right_reg_out[29]),
        .O(\current_state[2]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \current_state[2]_i_41 
       (.I0(IS_right_reg_out[26]),
        .I1(IS_right_reg_out[25]),
        .I2(IS_right_reg_out[24]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\current_state[2]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_state[2]_i_43 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[22]),
        .I3(IS_right_reg_out[23]),
        .I4(IS_right_reg_out[21]),
        .O(\current_state[2]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \current_state[2]_i_44 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[20]),
        .I3(IS_right_reg_out[18]),
        .I4(IS_right_reg_out[19]),
        .O(\current_state[2]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \current_state[2]_i_45 
       (.I0(IS_right_reg_out[16]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(IS_right_reg_out[15]),
        .I4(IS_right_reg_out[17]),
        .O(\current_state[2]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[2]_i_46 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[13]),
        .I3(IS_right_reg_out[14]),
        .I4(IS_right_reg_out[12]),
        .O(\current_state[2]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_state[2]_i_48 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[22]),
        .I3(IS_right_reg_out[23]),
        .I4(IS_right_reg_out[21]),
        .O(\current_state[2]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \current_state[2]_i_49 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[18]),
        .I3(IS_right_reg_out[20]),
        .I4(IS_right_reg_out[19]),
        .O(\current_state[2]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \current_state[2]_i_50 
       (.I0(IS_right_reg_out[16]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(IS_right_reg_out[17]),
        .I4(IS_right_reg_out[15]),
        .O(\current_state[2]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \current_state[2]_i_51 
       (.I0(IS_right_reg_out[13]),
        .I1(IS_right_reg_out[12]),
        .I2(IS_right_reg_out[14]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\current_state[2]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[2]_i_52 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[10]),
        .I3(IS_right_reg_out[11]),
        .I4(IS_right_reg_out[9]),
        .O(\current_state[2]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \current_state[2]_i_53 
       (.I0(IS_right_reg_out[8]),
        .I1(IS_right_reg_out[7]),
        .I2(IS_right_reg_out[6]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\current_state[2]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[2]_i_54 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[5]),
        .I3(IS_right_reg_out[3]),
        .I4(IS_right_reg_out[4]),
        .O(\current_state[2]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[2]_i_55 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(IS_right_reg_out[2]),
        .I3(IS_right_reg_out[0]),
        .I4(IS_right_reg_out[1]),
        .O(\current_state[2]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \current_state[2]_i_56 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[11]),
        .I3(IS_right_reg_out[9]),
        .I4(IS_right_reg_out[10]),
        .O(\current_state[2]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \current_state[2]_i_57 
       (.I0(IS_right_reg_out[6]),
        .I1(IS_right_reg_out[8]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(IS_right_reg_out[7]),
        .O(\current_state[2]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[2]_i_58 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[5]),
        .I3(IS_right_reg_out[3]),
        .I4(IS_right_reg_out[4]),
        .O(\current_state[2]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_state[2]_i_59 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(IS_right_reg_out[2]),
        .I3(IS_right_reg_out[0]),
        .I4(IS_right_reg_out[1]),
        .O(\current_state[2]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \current_state[2]_i_7 
       (.I0(IS_right_reg_out[63]),
        .I1(out[1]),
        .I2(out[0]),
        .O(\current_state[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \current_state[2]_i_8 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_right_reg_out[60]),
        .I3(IS_right_reg_out[62]),
        .I4(IS_right_reg_out[61]),
        .O(\current_state[2]_i_8_n_0 ));
  CARRY4 \current_state_reg[2]_i_12 
       (.CI(\current_state_reg[2]_i_22_n_0 ),
        .CO({\current_state_reg[2]_i_12_n_0 ,\NLW_current_state_reg[2]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_12_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_23_n_0 ,\current_state[2]_i_24_n_0 ,\current_state[2]_i_25_n_0 ,\current_state[2]_i_26_n_0 }));
  CARRY4 \current_state_reg[2]_i_17 
       (.CI(\current_state_reg[2]_i_27_n_0 ),
        .CO({\current_state_reg[2]_i_17_n_0 ,\NLW_current_state_reg[2]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_17_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_28_n_0 ,\current_state[2]_i_29_n_0 ,\current_state[2]_i_30_n_0 ,\current_state[2]_i_31_n_0 }));
  CARRY4 \current_state_reg[2]_i_22 
       (.CI(\current_state_reg[2]_i_32_n_0 ),
        .CO({\current_state_reg[2]_i_22_n_0 ,\NLW_current_state_reg[2]_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_22_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_33_n_0 ,\current_state[2]_i_34_n_0 ,\current_state[2]_i_35_n_0 ,\current_state[2]_i_36_n_0 }));
  CARRY4 \current_state_reg[2]_i_27 
       (.CI(\current_state_reg[2]_i_37_n_0 ),
        .CO({\current_state_reg[2]_i_27_n_0 ,\NLW_current_state_reg[2]_i_27_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_27_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_38_n_0 ,\current_state[2]_i_39_n_0 ,\current_state[2]_i_40_n_0 ,\current_state[2]_i_41_n_0 }));
  CARRY4 \current_state_reg[2]_i_32 
       (.CI(\current_state_reg[2]_i_42_n_0 ),
        .CO({\current_state_reg[2]_i_32_n_0 ,\NLW_current_state_reg[2]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_32_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_43_n_0 ,\current_state[2]_i_44_n_0 ,\current_state[2]_i_45_n_0 ,\current_state[2]_i_46_n_0 }));
  CARRY4 \current_state_reg[2]_i_37 
       (.CI(\current_state_reg[2]_i_47_n_0 ),
        .CO({\current_state_reg[2]_i_37_n_0 ,\NLW_current_state_reg[2]_i_37_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_37_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_48_n_0 ,\current_state[2]_i_49_n_0 ,\current_state[2]_i_50_n_0 ,\current_state[2]_i_51_n_0 }));
  CARRY4 \current_state_reg[2]_i_4 
       (.CI(\current_state_reg[2]_i_6_n_0 ),
        .CO({\NLW_current_state_reg[2]_i_4_CO_UNCONNECTED [3:2],\current_state_reg[2] ,\NLW_current_state_reg[2]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\current_state[2]_i_7_n_0 ,\current_state[2]_i_8_n_0 }));
  CARRY4 \current_state_reg[2]_i_42 
       (.CI(1'b0),
        .CO({\current_state_reg[2]_i_42_n_0 ,\NLW_current_state_reg[2]_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_42_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_52_n_0 ,\current_state[2]_i_53_n_0 ,\current_state[2]_i_54_n_0 ,\current_state[2]_i_55_n_0 }));
  CARRY4 \current_state_reg[2]_i_47 
       (.CI(1'b0),
        .CO({\current_state_reg[2]_i_47_n_0 ,\NLW_current_state_reg[2]_i_47_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_47_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_56_n_0 ,\current_state[2]_i_57_n_0 ,\current_state[2]_i_58_n_0 ,\current_state[2]_i_59_n_0 }));
  CARRY4 \current_state_reg[2]_i_5 
       (.CI(\current_state_reg[2]_i_9_n_0 ),
        .CO({\NLW_current_state_reg[2]_i_5_CO_UNCONNECTED [3:2],CO,\NLW_current_state_reg[2]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\current_state[2]_i_10_n_0 ,\current_state[2]_i_11_n_0 }));
  CARRY4 \current_state_reg[2]_i_6 
       (.CI(\current_state_reg[2]_i_12_n_0 ),
        .CO({\current_state_reg[2]_i_6_n_0 ,\NLW_current_state_reg[2]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_6_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_13_n_0 ,\current_state[2]_i_14_n_0 ,\current_state[2]_i_15_n_0 ,\current_state[2]_i_16_n_0 }));
  CARRY4 \current_state_reg[2]_i_9 
       (.CI(\current_state_reg[2]_i_17_n_0 ),
        .CO({\current_state_reg[2]_i_9_n_0 ,\NLW_current_state_reg[2]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[2]_i_9_O_UNCONNECTED [3:0]),
        .S({\current_state[2]_i_18_n_0 ,\current_state[2]_i_19_n_0 ,\current_state[2]_i_20_n_0 ,\current_state[2]_i_21_n_0 }));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[0]),
        .I2(IS_left_reg_out[62]),
        .I3(Q[0]),
        .I4(IS_left_reg_out[63]),
        .I5(IS_left_reg_out[56]),
        .O(\temp_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[10]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[10]),
        .I2(IS_left_reg_out[8]),
        .I3(Q[10]),
        .I4(IS_left_reg_out[2]),
        .I5(IS_left_reg_out[9]),
        .O(\temp_reg[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[11]_i_1 
       (.I0(IS_left_reg_out[10]),
        .I1(IS_left_reg_out[3]),
        .I2(Q[11]),
        .I3(IS_left_reg_out[9]),
        .I4(IS_right_reg_out[11]),
        .O(\temp_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[15]_i_1__0 
       (.I0(IS_left_reg_out[14]),
        .I1(IS_left_reg_out[7]),
        .I2(Q[15]),
        .I3(IS_left_reg_out[13]),
        .I4(IS_right_reg_out[15]),
        .O(\temp_reg[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[16]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[16]),
        .I2(IS_left_reg_out[14]),
        .I3(Q[16]),
        .I4(IS_left_reg_out[8]),
        .I5(IS_left_reg_out[15]),
        .O(\temp_reg[16]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[18]_i_1__0 
       (.I0(IS_left_reg_out[17]),
        .I1(IS_left_reg_out[10]),
        .I2(Q[18]),
        .I3(IS_left_reg_out[16]),
        .I4(IS_right_reg_out[18]),
        .O(\temp_reg[18]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[19]_i_1 
       (.I0(IS_left_reg_out[18]),
        .I1(IS_left_reg_out[11]),
        .I2(Q[19]),
        .I3(IS_left_reg_out[17]),
        .I4(IS_right_reg_out[19]),
        .O(\temp_reg[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[1]_i_1__0 
       (.I0(IS_left_reg_out[57]),
        .I1(IS_left_reg_out[0]),
        .I2(Q[1]),
        .I3(IS_left_reg_out[63]),
        .I4(IS_right_reg_out[1]),
        .O(\temp_reg[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[23]_i_1__0 
       (.I0(IS_left_reg_out[22]),
        .I1(IS_left_reg_out[15]),
        .I2(Q[23]),
        .I3(IS_left_reg_out[21]),
        .I4(IS_right_reg_out[23]),
        .O(\temp_reg[23]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[24]_i_1 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[24]),
        .I2(IS_left_reg_out[22]),
        .I3(Q[24]),
        .I4(IS_left_reg_out[16]),
        .I5(IS_left_reg_out[23]),
        .O(\temp_reg[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[25]_i_1 
       (.I0(IS_left_reg_out[24]),
        .I1(IS_left_reg_out[17]),
        .I2(Q[25]),
        .I3(IS_left_reg_out[23]),
        .I4(IS_right_reg_out[25]),
        .O(\temp_reg[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[26]_i_1__0 
       (.I0(IS_left_reg_out[25]),
        .I1(IS_left_reg_out[18]),
        .I2(Q[26]),
        .I3(IS_left_reg_out[24]),
        .I4(IS_right_reg_out[26]),
        .O(\temp_reg[26]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[27]_i_1 
       (.I0(IS_left_reg_out[26]),
        .I1(IS_left_reg_out[19]),
        .I2(Q[27]),
        .I3(IS_left_reg_out[25]),
        .I4(IS_right_reg_out[27]),
        .O(\temp_reg[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[28]_i_1__0 
       (.I0(IS_left_reg_out[27]),
        .I1(IS_left_reg_out[20]),
        .I2(Q[28]),
        .I3(IS_left_reg_out[26]),
        .I4(IS_right_reg_out[28]),
        .O(\temp_reg[28]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[2]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[2]),
        .I2(IS_left_reg_out[0]),
        .I3(Q[2]),
        .I4(IS_left_reg_out[1]),
        .I5(IS_left_reg_out[58]),
        .O(\temp_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[30]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[30]),
        .I2(IS_left_reg_out[28]),
        .I3(Q[30]),
        .I4(IS_left_reg_out[22]),
        .I5(IS_left_reg_out[29]),
        .O(\temp_reg[30]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[31]_i_1__0 
       (.I0(IS_left_reg_out[30]),
        .I1(IS_left_reg_out[23]),
        .I2(Q[31]),
        .I3(IS_left_reg_out[29]),
        .I4(IS_right_reg_out[31]),
        .O(\temp_reg[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[32]_i_1__0 
       (.I0(IS_left_reg_out[31]),
        .I1(IS_left_reg_out[24]),
        .I2(Q[32]),
        .I3(IS_left_reg_out[30]),
        .I4(IS_right_reg_out[32]),
        .O(\temp_reg[32]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[33]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[33]),
        .I2(IS_left_reg_out[31]),
        .I3(Q[33]),
        .I4(IS_left_reg_out[25]),
        .I5(IS_left_reg_out[32]),
        .O(\temp_reg[33]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[35]_i_1 
       (.I0(IS_left_reg_out[34]),
        .I1(IS_left_reg_out[27]),
        .I2(Q[35]),
        .I3(IS_left_reg_out[33]),
        .I4(IS_right_reg_out[35]),
        .O(\temp_reg[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[36]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[36]),
        .I2(IS_left_reg_out[34]),
        .I3(Q[36]),
        .I4(IS_left_reg_out[28]),
        .I5(IS_left_reg_out[35]),
        .O(\temp_reg[36]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[39]_i_1__0 
       (.I0(IS_left_reg_out[38]),
        .I1(IS_left_reg_out[31]),
        .I2(Q[39]),
        .I3(IS_left_reg_out[37]),
        .I4(IS_right_reg_out[39]),
        .O(\temp_reg[39]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[3]_i_1 
       (.I0(IS_left_reg_out[59]),
        .I1(IS_left_reg_out[2]),
        .I2(Q[3]),
        .I3(IS_left_reg_out[1]),
        .I4(IS_right_reg_out[3]),
        .O(\temp_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[41]_i_1__0 
       (.I0(IS_left_reg_out[40]),
        .I1(IS_left_reg_out[33]),
        .I2(Q[41]),
        .I3(IS_left_reg_out[39]),
        .I4(IS_right_reg_out[41]),
        .O(\temp_reg[41]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[43]_i_1 
       (.I0(IS_left_reg_out[42]),
        .I1(IS_left_reg_out[35]),
        .I2(Q[43]),
        .I3(IS_left_reg_out[41]),
        .I4(IS_right_reg_out[43]),
        .O(\temp_reg[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[44]_i_1__0 
       (.I0(IS_left_reg_out[43]),
        .I1(IS_left_reg_out[36]),
        .I2(Q[44]),
        .I3(IS_left_reg_out[42]),
        .I4(IS_right_reg_out[44]),
        .O(\temp_reg[44]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[47]_i_1__0 
       (.I0(IS_left_reg_out[46]),
        .I1(IS_left_reg_out[39]),
        .I2(Q[47]),
        .I3(IS_left_reg_out[45]),
        .I4(IS_right_reg_out[47]),
        .O(\temp_reg[47]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[48]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[48]),
        .I2(IS_left_reg_out[46]),
        .I3(Q[48]),
        .I4(IS_left_reg_out[40]),
        .I5(IS_left_reg_out[47]),
        .O(\temp_reg[48]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[49]_i_1 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[49]),
        .I2(IS_left_reg_out[47]),
        .I3(Q[49]),
        .I4(IS_left_reg_out[41]),
        .I5(IS_left_reg_out[48]),
        .O(\temp_reg[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[4]_i_1__0 
       (.I0(IS_left_reg_out[60]),
        .I1(IS_left_reg_out[3]),
        .I2(Q[4]),
        .I3(IS_left_reg_out[2]),
        .I4(IS_right_reg_out[4]),
        .O(\temp_reg[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[50]_i_1 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[50]),
        .I2(IS_left_reg_out[48]),
        .I3(Q[50]),
        .I4(IS_left_reg_out[42]),
        .I5(IS_left_reg_out[49]),
        .O(\temp_reg[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[51]_i_1 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[51]),
        .I2(IS_left_reg_out[49]),
        .I3(Q[51]),
        .I4(IS_left_reg_out[43]),
        .I5(IS_left_reg_out[50]),
        .O(\temp_reg[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[52]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[52]),
        .I2(IS_left_reg_out[50]),
        .I3(Q[52]),
        .I4(IS_left_reg_out[44]),
        .I5(IS_left_reg_out[51]),
        .O(\temp_reg[52]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[55]_i_1__0 
       (.I0(IS_left_reg_out[54]),
        .I1(IS_left_reg_out[47]),
        .I2(Q[55]),
        .I3(IS_left_reg_out[53]),
        .I4(IS_right_reg_out[55]),
        .O(\temp_reg[55]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[56]_i_1 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[56]),
        .I2(IS_left_reg_out[54]),
        .I3(Q[56]),
        .I4(IS_left_reg_out[48]),
        .I5(IS_left_reg_out[55]),
        .O(\temp_reg[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD000000000000000)) 
    \temp_reg[57]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\cnt_internal_value_reg[0] ),
        .I5(IS_CE),
        .O(\temp_reg[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[57]_i_2 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[57]),
        .I2(IS_left_reg_out[55]),
        .I3(Q[57]),
        .I4(IS_left_reg_out[49]),
        .I5(IS_left_reg_out[56]),
        .O(\temp_reg[57]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[58]_i_1 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[58]),
        .I2(Q[58]),
        .I3(IS_left_reg_out[56]),
        .I4(IS_left_reg_out[50]),
        .I5(IS_left_reg_out[57]),
        .O(\temp_reg[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000D00000000000)) 
    \temp_reg[59]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\cnt_internal_value_reg[0] ),
        .I5(IS_CE),
        .O(\temp_reg[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[59]_i_2 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[59]),
        .I2(Q[59]),
        .I3(IS_left_reg_out[57]),
        .I4(IS_left_reg_out[51]),
        .I5(IS_left_reg_out[58]),
        .O(\temp_reg[59]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg[59]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\temp_reg[59]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8F888088)) 
    \temp_reg[5]_i_1__0 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\temp_reg[5]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[5]_i_2 
       (.I0(IS_left_reg_out[61]),
        .I1(IS_left_reg_out[4]),
        .I2(Q[5]),
        .I3(IS_left_reg_out[3]),
        .I4(IS_right_reg_out[5]),
        .O(\temp_reg[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[60]_i_1__0 
       (.I0(IS_left_reg_out[59]),
        .I1(IS_left_reg_out[52]),
        .I2(IS_left_reg_out[58]),
        .I3(Q[60]),
        .I4(IS_right_reg_out[60]),
        .O(\temp_reg[60]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \temp_reg[63]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(IS_CE),
        .O(\temp_reg[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[63]_i_2__0 
       (.I0(IS_left_reg_out[62]),
        .I1(IS_left_reg_out[55]),
        .I2(IS_left_reg_out[61]),
        .I3(Q[63]),
        .I4(IS_right_reg_out[63]),
        .O(\temp_reg[63]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[6]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[6]),
        .I2(IS_left_reg_out[4]),
        .I3(Q[6]),
        .I4(IS_left_reg_out[5]),
        .I5(IS_left_reg_out[62]),
        .O(\temp_reg[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[7]_i_1__0 
       (.I0(IS_left_reg_out[6]),
        .I1(IS_left_reg_out[63]),
        .I2(Q[7]),
        .I3(IS_left_reg_out[5]),
        .I4(IS_right_reg_out[7]),
        .O(\temp_reg[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[8]_i_1 
       (.I0(IS_left_reg_out[7]),
        .I1(IS_left_reg_out[0]),
        .I2(Q[8]),
        .I3(IS_left_reg_out[6]),
        .I4(IS_right_reg_out[8]),
        .O(\temp_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441411441144114)) 
    \temp_reg[9]_i_1__0 
       (.I0(\temp_reg[59]_i_3_n_0 ),
        .I1(IS_right_reg_out[9]),
        .I2(IS_left_reg_out[7]),
        .I3(Q[9]),
        .I4(IS_left_reg_out[1]),
        .I5(IS_left_reg_out[8]),
        .O(\temp_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[0]_i_1_n_0 ),
        .Q(IS_left_reg_out[0]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[36]),
        .Q(IS_right_reg_out[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[37]),
        .Q(IS_right_reg_out[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[38]),
        .Q(IS_right_reg_out[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[39]),
        .Q(IS_right_reg_out[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[40]),
        .Q(IS_right_reg_out[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[41]),
        .Q(IS_right_reg_out[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[42]),
        .Q(IS_right_reg_out[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[43]),
        .Q(IS_right_reg_out[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[44]),
        .Q(IS_right_reg_out[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[45]),
        .Q(IS_right_reg_out[45]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[10]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[10]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[46]),
        .Q(IS_right_reg_out[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[47]),
        .Q(IS_right_reg_out[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[48]),
        .Q(IS_right_reg_out[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[49]),
        .Q(IS_right_reg_out[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[50]),
        .Q(IS_right_reg_out[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[51]),
        .Q(IS_right_reg_out[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[52]),
        .Q(IS_right_reg_out[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[53]),
        .Q(IS_right_reg_out[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[54]),
        .Q(IS_right_reg_out[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[55]),
        .Q(IS_right_reg_out[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[11]_i_1_n_0 ),
        .Q(IS_left_reg_out[11]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[56]),
        .Q(IS_right_reg_out[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[57]),
        .Q(IS_right_reg_out[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[58]),
        .Q(IS_right_reg_out[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[59]),
        .Q(IS_right_reg_out[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[60]),
        .Q(IS_right_reg_out[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[61]),
        .Q(IS_right_reg_out[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[62]),
        .Q(IS_right_reg_out[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[63]),
        .Q(IS_right_reg_out[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[12]),
        .Q(IS_left_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[13]),
        .Q(IS_left_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[14]),
        .Q(IS_left_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[15]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[15]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[16]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[16]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[17]),
        .Q(IS_left_reg_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[18]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[18]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[19]_i_1_n_0 ),
        .Q(IS_left_reg_out[19]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[1]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[1]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[20]),
        .Q(IS_left_reg_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[21]),
        .Q(IS_left_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[22]),
        .Q(IS_left_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[23]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[23]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[24]_i_1_n_0 ),
        .Q(IS_left_reg_out[24]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[25]_i_1_n_0 ),
        .Q(IS_left_reg_out[25]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[26]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[26]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[27]_i_1_n_0 ),
        .Q(IS_left_reg_out[27]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[28]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[28]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[29]),
        .Q(IS_left_reg_out[29]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[2]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[2]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[30]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[30]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[31]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[31]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[32]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[32]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[33]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[33]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[34]),
        .Q(IS_left_reg_out[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[35]_i_1_n_0 ),
        .Q(IS_left_reg_out[35]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[36]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[36]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[37]),
        .Q(IS_left_reg_out[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[38]),
        .Q(IS_left_reg_out[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[39]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[39]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[3]_i_1_n_0 ),
        .Q(IS_left_reg_out[3]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[40]),
        .Q(IS_left_reg_out[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[41]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[41]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[42]),
        .Q(IS_left_reg_out[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[43]_i_1_n_0 ),
        .Q(IS_left_reg_out[43]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[44]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[44]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[45]),
        .Q(IS_left_reg_out[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[46]),
        .Q(IS_left_reg_out[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[47]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[47]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[48]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[48]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[49]_i_1_n_0 ),
        .Q(IS_left_reg_out[49]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[4]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[4]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[50]_i_1_n_0 ),
        .Q(IS_left_reg_out[50]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[51]_i_1_n_0 ),
        .Q(IS_left_reg_out[51]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[52]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[52]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[53]),
        .Q(IS_left_reg_out[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[54]),
        .Q(IS_left_reg_out[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[55]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[55]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[56]_i_1_n_0 ),
        .Q(IS_left_reg_out[56]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[57]_i_2_n_0 ),
        .Q(IS_left_reg_out[57]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[58]_i_1_n_0 ),
        .Q(IS_left_reg_out[58]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[59]_i_2_n_0 ),
        .Q(IS_left_reg_out[59]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[5]),
        .Q(IS_left_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[60]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[60]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[61]),
        .Q(IS_left_reg_out[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[62]),
        .Q(IS_left_reg_out[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[63]_i_2__0_n_0 ),
        .Q(IS_left_reg_out[63]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[0]),
        .Q(IS_right_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[1]),
        .Q(IS_right_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[2]),
        .Q(IS_right_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[3]),
        .Q(IS_right_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[4]),
        .Q(IS_right_reg_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[5]),
        .Q(IS_right_reg_out[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[6]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[6]),
        .S(\temp_reg[57]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[6]),
        .Q(IS_right_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[7]),
        .Q(IS_right_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[8]),
        .Q(IS_right_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[9]),
        .Q(IS_right_reg_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[10]),
        .Q(IS_right_reg_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[11]),
        .Q(IS_right_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[12]),
        .Q(IS_right_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[13]),
        .Q(IS_right_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[14]),
        .Q(IS_right_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[15]),
        .Q(IS_right_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[7]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[7]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[16]),
        .Q(IS_right_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[17]),
        .Q(IS_right_reg_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[18]),
        .Q(IS_right_reg_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[19]),
        .Q(IS_right_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[20]),
        .Q(IS_right_reg_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[21]),
        .Q(IS_right_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[22]),
        .Q(IS_right_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[23]),
        .Q(IS_right_reg_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[24]),
        .Q(IS_right_reg_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[25]),
        .Q(IS_right_reg_out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[8]_i_1_n_0 ),
        .Q(IS_left_reg_out[8]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[26]),
        .Q(IS_right_reg_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[27]),
        .Q(IS_right_reg_out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[28]),
        .Q(IS_right_reg_out[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[29]),
        .Q(IS_right_reg_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[30]),
        .Q(IS_right_reg_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[31]),
        .Q(IS_right_reg_out[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[32]),
        .Q(IS_right_reg_out[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[33]),
        .Q(IS_right_reg_out[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[34]),
        .Q(IS_right_reg_out[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[35]),
        .Q(IS_right_reg_out[35]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[9]_i_1__0_n_0 ),
        .Q(IS_left_reg_out[9]),
        .S(\temp_reg[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[12]_i_1__0 
       (.I0(IS_left_reg_out[11]),
        .I1(IS_left_reg_out[4]),
        .I2(Q[12]),
        .I3(IS_left_reg_out[10]),
        .I4(IS_right_reg_out[12]),
        .O(\xlnx_opt_p_0_in[12] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[12]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[12] ),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[13]_i_1__0 
       (.I0(IS_left_reg_out[12]),
        .I1(IS_left_reg_out[5]),
        .I2(Q[13]),
        .I3(IS_left_reg_out[11]),
        .I4(IS_right_reg_out[13]),
        .O(\xlnx_opt_p_0_in[13] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[13]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[13] ),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[14]_i_1__0 
       (.I0(IS_left_reg_out[13]),
        .I1(IS_left_reg_out[6]),
        .I2(Q[14]),
        .I3(IS_left_reg_out[12]),
        .I4(IS_right_reg_out[14]),
        .O(\xlnx_opt_p_0_in[14] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[14]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[14] ),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[17]_i_1 
       (.I0(IS_left_reg_out[16]),
        .I1(IS_left_reg_out[9]),
        .I2(Q[17]),
        .I3(IS_left_reg_out[15]),
        .I4(IS_right_reg_out[17]),
        .O(\xlnx_opt_p_0_in[17] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[17]_i_1_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[17] ),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[20]_i_1__0 
       (.I0(IS_left_reg_out[19]),
        .I1(IS_left_reg_out[12]),
        .I2(Q[20]),
        .I3(IS_left_reg_out[18]),
        .I4(IS_right_reg_out[20]),
        .O(\xlnx_opt_p_0_in[20] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[20]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[20] ),
        .O(p_0_in[20]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[21]_i_1__0 
       (.I0(IS_left_reg_out[20]),
        .I1(IS_left_reg_out[13]),
        .I2(Q[21]),
        .I3(IS_left_reg_out[19]),
        .I4(IS_right_reg_out[21]),
        .O(\xlnx_opt_p_0_in[21] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[21]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[21] ),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[22]_i_1__0 
       (.I0(IS_left_reg_out[21]),
        .I1(IS_left_reg_out[14]),
        .I2(Q[22]),
        .I3(IS_left_reg_out[20]),
        .I4(IS_right_reg_out[22]),
        .O(\xlnx_opt_p_0_in[22] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[22]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[22] ),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[29]_i_1__0 
       (.I0(IS_left_reg_out[28]),
        .I1(IS_left_reg_out[21]),
        .I2(Q[29]),
        .I3(IS_left_reg_out[27]),
        .I4(IS_right_reg_out[29]),
        .O(\xlnx_opt_p_0_in[29] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[29]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[29] ),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[34]_i_1 
       (.I0(IS_left_reg_out[33]),
        .I1(IS_left_reg_out[26]),
        .I2(Q[34]),
        .I3(IS_left_reg_out[32]),
        .I4(IS_right_reg_out[34]),
        .O(\xlnx_opt_p_0_in[34] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[34]_i_1_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[34] ),
        .O(p_0_in[34]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[37]_i_1__0 
       (.I0(IS_left_reg_out[36]),
        .I1(IS_left_reg_out[29]),
        .I2(Q[37]),
        .I3(IS_left_reg_out[35]),
        .I4(IS_right_reg_out[37]),
        .O(\xlnx_opt_p_0_in[37] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[37]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[37] ),
        .O(p_0_in[37]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[38]_i_1__0 
       (.I0(IS_left_reg_out[37]),
        .I1(IS_left_reg_out[30]),
        .I2(Q[38]),
        .I3(IS_left_reg_out[36]),
        .I4(IS_right_reg_out[38]),
        .O(\xlnx_opt_p_0_in[38] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[38]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[38] ),
        .O(p_0_in[38]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[40]_i_1 
       (.I0(IS_left_reg_out[39]),
        .I1(IS_left_reg_out[32]),
        .I2(Q[40]),
        .I3(IS_left_reg_out[38]),
        .I4(IS_right_reg_out[40]),
        .O(\xlnx_opt_p_0_in[40] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[40]_i_1_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[40] ),
        .O(p_0_in[40]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[42]_i_1 
       (.I0(IS_left_reg_out[41]),
        .I1(IS_left_reg_out[34]),
        .I2(Q[42]),
        .I3(IS_left_reg_out[40]),
        .I4(IS_right_reg_out[42]),
        .O(\xlnx_opt_p_0_in[42] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[42]_i_1_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[42] ),
        .O(p_0_in[42]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[45]_i_1__0 
       (.I0(IS_left_reg_out[44]),
        .I1(IS_left_reg_out[37]),
        .I2(Q[45]),
        .I3(IS_left_reg_out[43]),
        .I4(IS_right_reg_out[45]),
        .O(\xlnx_opt_p_0_in[45] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[45]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[45] ),
        .O(p_0_in[45]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[46]_i_1__0 
       (.I0(IS_left_reg_out[45]),
        .I1(IS_left_reg_out[38]),
        .I2(Q[46]),
        .I3(IS_left_reg_out[44]),
        .I4(IS_right_reg_out[46]),
        .O(\xlnx_opt_p_0_in[46] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[46]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[46] ),
        .O(p_0_in[46]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[53]_i_1__0 
       (.I0(IS_left_reg_out[52]),
        .I1(IS_left_reg_out[45]),
        .I2(Q[53]),
        .I3(IS_left_reg_out[51]),
        .I4(IS_right_reg_out[53]),
        .O(\xlnx_opt_p_0_in[53] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[53]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[53] ),
        .O(p_0_in[53]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[54]_i_1__0 
       (.I0(IS_left_reg_out[53]),
        .I1(IS_left_reg_out[46]),
        .I2(Q[54]),
        .I3(IS_left_reg_out[52]),
        .I4(IS_right_reg_out[54]),
        .O(\xlnx_opt_p_0_in[54] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[54]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[54] ),
        .O(p_0_in[54]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[61]_i_1__0 
       (.I0(IS_left_reg_out[60]),
        .I1(IS_left_reg_out[53]),
        .I2(IS_left_reg_out[59]),
        .I3(Q[61]),
        .I4(IS_right_reg_out[61]),
        .O(\xlnx_opt_p_0_in[61] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[61]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[61] ),
        .O(p_0_in[61]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[62]_i_1__0 
       (.I0(IS_left_reg_out[61]),
        .I1(IS_left_reg_out[54]),
        .I2(Q[62]),
        .I3(IS_left_reg_out[60]),
        .I4(IS_right_reg_out[62]),
        .O(\xlnx_opt_p_0_in[62] ));
  LUT5 #(
    .INIT(32'h80888F88)) 
    \xlnx_opt_LUT_temp_reg[62]_i_1__0_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\xlnx_opt_p_0_in[62] ),
        .O(p_0_in[62]));
endmodule

(* ORIG_REF_NAME = "parallel_tapped_shift_reg" *) 
module parallel_tapped_shift_reg_0
   (Q,
    out,
    current_state,
    \lfsr_internal_reg[4] ,
    \t_sequence_reg[1] ,
    E,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[0] );
  output [63:0]Q;
  input [1:0]out;
  input [1:0]current_state;
  input [0:0]\lfsr_internal_reg[4] ;
  input [0:0]\t_sequence_reg[1] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]\cnt_internal_value_reg[0] ;

  wire [0:0]E;
  wire [63:0]KEY_REG_left_reg_out;
  wire [63:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]\cnt_internal_value_reg[0] ;
  wire [1:0]current_state;
  wire [63:0]key_schedule_out;
  wire [0:0]\lfsr_internal_reg[4] ;
  wire [1:0]out;
  wire [0:0]\t_sequence_reg[1] ;
  wire \temp_reg[11]_i_1__0_n_0 ;
  wire \temp_reg[17]_i_1__0_n_0 ;
  wire \temp_reg[19]_i_1__0_n_0 ;
  wire \temp_reg[24]_i_1__0_n_0 ;
  wire \temp_reg[25]_i_1__0_n_0 ;
  wire \temp_reg[27]_i_1__0_n_0 ;
  wire \temp_reg[34]_i_1__0_n_0 ;
  wire \temp_reg[35]_i_1__0_n_0 ;
  wire \temp_reg[3]_i_1__0_n_0 ;
  wire \temp_reg[40]_i_1__0_n_0 ;
  wire \temp_reg[42]_i_1__0_n_0 ;
  wire \temp_reg[43]_i_1__0_n_0 ;
  wire \temp_reg[49]_i_1__0_n_0 ;
  wire \temp_reg[50]_i_1__0_n_0 ;
  wire \temp_reg[51]_i_1__0_n_0 ;
  wire \temp_reg[56]_i_1__0_n_0 ;
  wire \temp_reg[57]_i_1_n_0 ;
  wire \temp_reg[58]_i_1__0_n_0 ;
  wire \temp_reg[59]_i_1_n_0 ;
  wire \temp_reg[59]_i_2__0_n_0 ;
  wire \temp_reg[63]_i_1_n_0 ;
  wire \temp_reg[8]_i_1__0_n_0 ;

  LUT5 #(
    .INIT(32'h96696996)) 
    \temp_reg[0]_i_1__0 
       (.I0(\lfsr_internal_reg[4] ),
        .I1(\t_sequence_reg[1] ),
        .I2(KEY_REG_left_reg_out[3]),
        .I3(Q[0]),
        .I4(KEY_REG_left_reg_out[4]),
        .O(key_schedule_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[10]_i_1 
       (.I0(Q[10]),
        .I1(KEY_REG_left_reg_out[14]),
        .I2(KEY_REG_left_reg_out[13]),
        .O(key_schedule_out[10]));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[11]_i_1__0 
       (.I0(Q[11]),
        .I1(KEY_REG_left_reg_out[15]),
        .I2(KEY_REG_left_reg_out[14]),
        .I3(out[1]),
        .O(\temp_reg[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[12]_i_1 
       (.I0(Q[12]),
        .I1(KEY_REG_left_reg_out[16]),
        .I2(KEY_REG_left_reg_out[15]),
        .O(key_schedule_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[13]_i_1 
       (.I0(Q[13]),
        .I1(KEY_REG_left_reg_out[17]),
        .I2(KEY_REG_left_reg_out[16]),
        .O(key_schedule_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[14]_i_1 
       (.I0(Q[14]),
        .I1(KEY_REG_left_reg_out[18]),
        .I2(KEY_REG_left_reg_out[17]),
        .O(key_schedule_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[15]_i_1 
       (.I0(Q[15]),
        .I1(KEY_REG_left_reg_out[19]),
        .I2(KEY_REG_left_reg_out[18]),
        .O(key_schedule_out[15]));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[16]_i_1 
       (.I0(Q[16]),
        .I1(KEY_REG_left_reg_out[20]),
        .I2(KEY_REG_left_reg_out[19]),
        .O(key_schedule_out[16]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[17]_i_1__0 
       (.I0(Q[17]),
        .I1(KEY_REG_left_reg_out[21]),
        .I2(KEY_REG_left_reg_out[20]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[17]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[18]_i_1 
       (.I0(Q[18]),
        .I1(KEY_REG_left_reg_out[22]),
        .I2(KEY_REG_left_reg_out[21]),
        .O(key_schedule_out[18]));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[19]_i_1__0 
       (.I0(Q[19]),
        .I1(KEY_REG_left_reg_out[23]),
        .I2(KEY_REG_left_reg_out[22]),
        .I3(out[1]),
        .O(\temp_reg[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \temp_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(KEY_REG_left_reg_out[5]),
        .I2(KEY_REG_left_reg_out[4]),
        .O(key_schedule_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[20]_i_1 
       (.I0(Q[20]),
        .I1(KEY_REG_left_reg_out[24]),
        .I2(KEY_REG_left_reg_out[23]),
        .O(key_schedule_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[21]_i_1 
       (.I0(Q[21]),
        .I1(KEY_REG_left_reg_out[25]),
        .I2(KEY_REG_left_reg_out[24]),
        .O(key_schedule_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[22]_i_1 
       (.I0(Q[22]),
        .I1(KEY_REG_left_reg_out[26]),
        .I2(KEY_REG_left_reg_out[25]),
        .O(key_schedule_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[23]_i_1 
       (.I0(Q[23]),
        .I1(KEY_REG_left_reg_out[27]),
        .I2(KEY_REG_left_reg_out[26]),
        .O(key_schedule_out[23]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[24]_i_1__0 
       (.I0(Q[24]),
        .I1(KEY_REG_left_reg_out[28]),
        .I2(KEY_REG_left_reg_out[27]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[24]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[25]_i_1__0 
       (.I0(Q[25]),
        .I1(KEY_REG_left_reg_out[29]),
        .I2(KEY_REG_left_reg_out[28]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[25]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[26]_i_1 
       (.I0(Q[26]),
        .I1(KEY_REG_left_reg_out[30]),
        .I2(KEY_REG_left_reg_out[29]),
        .O(key_schedule_out[26]));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[27]_i_1__0 
       (.I0(Q[27]),
        .I1(KEY_REG_left_reg_out[31]),
        .I2(KEY_REG_left_reg_out[30]),
        .I3(out[1]),
        .O(\temp_reg[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[28]_i_1 
       (.I0(Q[28]),
        .I1(KEY_REG_left_reg_out[32]),
        .I2(KEY_REG_left_reg_out[31]),
        .O(key_schedule_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[29]_i_1 
       (.I0(Q[29]),
        .I1(KEY_REG_left_reg_out[33]),
        .I2(KEY_REG_left_reg_out[32]),
        .O(key_schedule_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(KEY_REG_left_reg_out[6]),
        .I2(KEY_REG_left_reg_out[5]),
        .O(key_schedule_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[30]_i_1 
       (.I0(Q[30]),
        .I1(KEY_REG_left_reg_out[34]),
        .I2(KEY_REG_left_reg_out[33]),
        .O(key_schedule_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[31]_i_1 
       (.I0(Q[31]),
        .I1(KEY_REG_left_reg_out[35]),
        .I2(KEY_REG_left_reg_out[34]),
        .O(key_schedule_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[32]_i_1 
       (.I0(Q[32]),
        .I1(KEY_REG_left_reg_out[36]),
        .I2(KEY_REG_left_reg_out[35]),
        .O(key_schedule_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[33]_i_1 
       (.I0(Q[33]),
        .I1(KEY_REG_left_reg_out[37]),
        .I2(KEY_REG_left_reg_out[36]),
        .O(key_schedule_out[33]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[34]_i_1__0 
       (.I0(Q[34]),
        .I1(KEY_REG_left_reg_out[38]),
        .I2(KEY_REG_left_reg_out[37]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[34]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[35]_i_1__0 
       (.I0(Q[35]),
        .I1(KEY_REG_left_reg_out[39]),
        .I2(KEY_REG_left_reg_out[38]),
        .I3(out[1]),
        .O(\temp_reg[35]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[36]_i_1 
       (.I0(Q[36]),
        .I1(KEY_REG_left_reg_out[40]),
        .I2(KEY_REG_left_reg_out[39]),
        .O(key_schedule_out[36]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[37]_i_1 
       (.I0(Q[37]),
        .I1(KEY_REG_left_reg_out[41]),
        .I2(KEY_REG_left_reg_out[40]),
        .O(key_schedule_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[38]_i_1 
       (.I0(Q[38]),
        .I1(KEY_REG_left_reg_out[42]),
        .I2(KEY_REG_left_reg_out[41]),
        .O(key_schedule_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[39]_i_1 
       (.I0(Q[39]),
        .I1(KEY_REG_left_reg_out[43]),
        .I2(KEY_REG_left_reg_out[42]),
        .O(key_schedule_out[39]));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[3]_i_1__0 
       (.I0(Q[3]),
        .I1(KEY_REG_left_reg_out[7]),
        .I2(KEY_REG_left_reg_out[6]),
        .I3(out[1]),
        .O(\temp_reg[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[40]_i_1__0 
       (.I0(Q[40]),
        .I1(KEY_REG_left_reg_out[44]),
        .I2(KEY_REG_left_reg_out[43]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[40]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[41]_i_1 
       (.I0(Q[41]),
        .I1(KEY_REG_left_reg_out[45]),
        .I2(KEY_REG_left_reg_out[44]),
        .O(key_schedule_out[41]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[42]_i_1__0 
       (.I0(Q[42]),
        .I1(KEY_REG_left_reg_out[46]),
        .I2(KEY_REG_left_reg_out[45]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[42]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[43]_i_1__0 
       (.I0(Q[43]),
        .I1(KEY_REG_left_reg_out[47]),
        .I2(KEY_REG_left_reg_out[46]),
        .I3(out[1]),
        .O(\temp_reg[43]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[44]_i_1 
       (.I0(Q[44]),
        .I1(KEY_REG_left_reg_out[48]),
        .I2(KEY_REG_left_reg_out[47]),
        .O(key_schedule_out[44]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[45]_i_1 
       (.I0(Q[45]),
        .I1(KEY_REG_left_reg_out[49]),
        .I2(KEY_REG_left_reg_out[48]),
        .O(key_schedule_out[45]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[46]_i_1 
       (.I0(Q[46]),
        .I1(KEY_REG_left_reg_out[50]),
        .I2(KEY_REG_left_reg_out[49]),
        .O(key_schedule_out[46]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[47]_i_1 
       (.I0(Q[47]),
        .I1(KEY_REG_left_reg_out[51]),
        .I2(KEY_REG_left_reg_out[50]),
        .O(key_schedule_out[47]));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[48]_i_1 
       (.I0(Q[48]),
        .I1(KEY_REG_left_reg_out[52]),
        .I2(KEY_REG_left_reg_out[51]),
        .O(key_schedule_out[48]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[49]_i_1__0 
       (.I0(Q[49]),
        .I1(KEY_REG_left_reg_out[53]),
        .I2(KEY_REG_left_reg_out[52]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[49]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(KEY_REG_left_reg_out[8]),
        .I2(KEY_REG_left_reg_out[7]),
        .O(key_schedule_out[4]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[50]_i_1__0 
       (.I0(Q[50]),
        .I1(KEY_REG_left_reg_out[54]),
        .I2(KEY_REG_left_reg_out[53]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[50]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[51]_i_1__0 
       (.I0(Q[51]),
        .I1(KEY_REG_left_reg_out[55]),
        .I2(KEY_REG_left_reg_out[54]),
        .I3(out[1]),
        .O(\temp_reg[51]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[52]_i_1 
       (.I0(Q[52]),
        .I1(KEY_REG_left_reg_out[56]),
        .I2(KEY_REG_left_reg_out[55]),
        .O(key_schedule_out[52]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[53]_i_1 
       (.I0(Q[53]),
        .I1(KEY_REG_left_reg_out[57]),
        .I2(KEY_REG_left_reg_out[56]),
        .O(key_schedule_out[53]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[54]_i_1 
       (.I0(Q[54]),
        .I1(KEY_REG_left_reg_out[58]),
        .I2(KEY_REG_left_reg_out[57]),
        .O(key_schedule_out[54]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[55]_i_1 
       (.I0(Q[55]),
        .I1(KEY_REG_left_reg_out[59]),
        .I2(KEY_REG_left_reg_out[58]),
        .O(key_schedule_out[55]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[56]_i_1__0 
       (.I0(Q[56]),
        .I1(KEY_REG_left_reg_out[60]),
        .I2(KEY_REG_left_reg_out[59]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[56]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[57]_i_1 
       (.I0(Q[57]),
        .I1(KEY_REG_left_reg_out[61]),
        .I2(KEY_REG_left_reg_out[60]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[58]_i_1__0 
       (.I0(Q[58]),
        .I1(KEY_REG_left_reg_out[62]),
        .I2(KEY_REG_left_reg_out[61]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[58]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hD000000000000000)) 
    \temp_reg[59]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\cnt_internal_value_reg[0] ),
        .I5(E),
        .O(\temp_reg[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6900)) 
    \temp_reg[59]_i_2__0 
       (.I0(Q[59]),
        .I1(KEY_REG_left_reg_out[63]),
        .I2(KEY_REG_left_reg_out[62]),
        .I3(out[1]),
        .O(\temp_reg[59]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(KEY_REG_left_reg_out[9]),
        .I2(KEY_REG_left_reg_out[8]),
        .O(key_schedule_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[60]_i_1 
       (.I0(Q[60]),
        .I1(KEY_REG_left_reg_out[0]),
        .I2(KEY_REG_left_reg_out[63]),
        .O(key_schedule_out[60]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[61]_i_1 
       (.I0(Q[61]),
        .I1(KEY_REG_left_reg_out[1]),
        .I2(KEY_REG_left_reg_out[0]),
        .O(key_schedule_out[61]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[62]_i_1 
       (.I0(Q[62]),
        .I1(KEY_REG_left_reg_out[2]),
        .I2(KEY_REG_left_reg_out[1]),
        .O(key_schedule_out[62]));
  LUT3 #(
    .INIT(8'hD0)) 
    \temp_reg[63]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(E),
        .O(\temp_reg[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[63]_i_2 
       (.I0(Q[63]),
        .I1(KEY_REG_left_reg_out[3]),
        .I2(KEY_REG_left_reg_out[2]),
        .O(key_schedule_out[63]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(KEY_REG_left_reg_out[10]),
        .I2(KEY_REG_left_reg_out[9]),
        .O(key_schedule_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(KEY_REG_left_reg_out[11]),
        .I2(KEY_REG_left_reg_out[10]),
        .O(key_schedule_out[7]));
  LUT6 #(
    .INIT(64'h69696969FF000000)) 
    \temp_reg[8]_i_1__0 
       (.I0(Q[8]),
        .I1(KEY_REG_left_reg_out[12]),
        .I2(KEY_REG_left_reg_out[11]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(out[1]),
        .O(\temp_reg[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_reg[9]_i_1 
       (.I0(Q[9]),
        .I1(KEY_REG_left_reg_out[13]),
        .I2(KEY_REG_left_reg_out[12]),
        .O(key_schedule_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[0]),
        .Q(KEY_REG_left_reg_out[0]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[10]),
        .Q(KEY_REG_left_reg_out[10]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[11]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[11]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[12]),
        .Q(KEY_REG_left_reg_out[12]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[13]),
        .Q(KEY_REG_left_reg_out[13]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[14]),
        .Q(KEY_REG_left_reg_out[14]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[15]),
        .Q(KEY_REG_left_reg_out[15]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[16]),
        .Q(KEY_REG_left_reg_out[16]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[17]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[18]),
        .Q(KEY_REG_left_reg_out[18]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[19]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[19]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[1]),
        .Q(KEY_REG_left_reg_out[1]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[20]),
        .Q(KEY_REG_left_reg_out[20]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[21]),
        .Q(KEY_REG_left_reg_out[21]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[22]),
        .Q(KEY_REG_left_reg_out[22]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[23]),
        .Q(KEY_REG_left_reg_out[23]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[24]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[25]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[26]),
        .Q(KEY_REG_left_reg_out[26]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[27]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[27]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[28]),
        .Q(KEY_REG_left_reg_out[28]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[29]),
        .Q(KEY_REG_left_reg_out[29]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[2]),
        .Q(KEY_REG_left_reg_out[2]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[30]),
        .Q(KEY_REG_left_reg_out[30]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[31]),
        .Q(KEY_REG_left_reg_out[31]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[32]),
        .Q(KEY_REG_left_reg_out[32]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[33]),
        .Q(KEY_REG_left_reg_out[33]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[34]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[34]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[35]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[35]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[36]),
        .Q(KEY_REG_left_reg_out[36]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[37]),
        .Q(KEY_REG_left_reg_out[37]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[38]),
        .Q(KEY_REG_left_reg_out[38]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[39]),
        .Q(KEY_REG_left_reg_out[39]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[3]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[3]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[40]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[41]),
        .Q(KEY_REG_left_reg_out[41]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[42]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[42]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[43]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[43]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[44]),
        .Q(KEY_REG_left_reg_out[44]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[45]),
        .Q(KEY_REG_left_reg_out[45]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[46]),
        .Q(KEY_REG_left_reg_out[46]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[47]),
        .Q(KEY_REG_left_reg_out[47]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[48]),
        .Q(KEY_REG_left_reg_out[48]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[49]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[4]),
        .Q(KEY_REG_left_reg_out[4]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[50]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[50]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[51]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[51]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[52]),
        .Q(KEY_REG_left_reg_out[52]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[53]),
        .Q(KEY_REG_left_reg_out[53]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[54]),
        .Q(KEY_REG_left_reg_out[54]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[55]),
        .Q(KEY_REG_left_reg_out[55]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[56]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[57]_i_1_n_0 ),
        .Q(KEY_REG_left_reg_out[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[58]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[58]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[59]_i_2__0_n_0 ),
        .Q(KEY_REG_left_reg_out[59]),
        .S(\temp_reg[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[5]),
        .Q(KEY_REG_left_reg_out[5]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[60]),
        .Q(KEY_REG_left_reg_out[60]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[61]),
        .Q(KEY_REG_left_reg_out[61]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[62]),
        .Q(KEY_REG_left_reg_out[62]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[63]),
        .Q(KEY_REG_left_reg_out[63]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[6]),
        .Q(KEY_REG_left_reg_out[6]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[7]),
        .Q(KEY_REG_left_reg_out[7]),
        .R(\temp_reg[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\temp_reg[8]_i_1__0_n_0 ),
        .Q(KEY_REG_left_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(KEY_REG_left_reg_out[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(key_schedule_out[9]),
        .Q(KEY_REG_left_reg_out[9]),
        .R(\temp_reg[63]_i_1_n_0 ));
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
