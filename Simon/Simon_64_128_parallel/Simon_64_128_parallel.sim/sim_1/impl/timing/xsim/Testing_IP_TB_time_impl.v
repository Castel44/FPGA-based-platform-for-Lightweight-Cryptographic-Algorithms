// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Jun 23 20:45:28 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simon/Simon_64_128_parallel/Simon_64_128_parallel.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
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
    \current_state_reg[2]_0 ,
    \temp_reg_reg[0] ,
    current_state,
    rst_IBUF,
    \FSM_sequential_current_state_reg[1] ,
    IS_CE,
    clk_IBUF_BUFG);
  output \current_state_reg[0] ;
  output [1:0]Q;
  output \current_state_reg[2] ;
  output \current_state_reg[2]_0 ;
  output \temp_reg_reg[0] ;
  input [2:0]current_state;
  input rst_IBUF;
  input \FSM_sequential_current_state_reg[1] ;
  input IS_CE;
  input clk_IBUF_BUFG;

  wire \FSM_sequential_current_state_reg[1] ;
  wire IS_CE;
  wire [1:0]Q;
  wire ce;
  wire clk_IBUF_BUFG;
  wire [2:2]cnt_internal_value;
  wire \cnt_internal_value[2]_i_3_n_0 ;
  wire [2:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire [2:0]plusOp;
  wire rst_IBUF;
  wire \temp_reg_reg[0] ;

  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \INST_IS_REG/temp_reg[18]_i_1 
       (.I0(Q[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(Q[0]),
        .I5(IS_CE),
        .O(\temp_reg_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_internal_value[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_internal_value[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(ce));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_2 
       (.I0(cnt_internal_value),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp[2]));
  LUT3 #(
    .INIT(8'hA4)) 
    \cnt_internal_value[2]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(\cnt_internal_value[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[2]_i_3_n_0 ),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[2]_i_3_n_0 ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce),
        .CLR(\cnt_internal_value[2]_i_3_n_0 ),
        .D(plusOp[2]),
        .Q(cnt_internal_value));
  LUT6 #(
    .INIT(64'hFFFFFFFF2202AAAA)) 
    \current_state[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(cnt_internal_value),
        .I4(current_state[2]),
        .I5(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF0080)) 
    \current_state[2]_i_11 
       (.I0(cnt_internal_value),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(\current_state_reg[2] ));
  LUT3 #(
    .INIT(8'hBF)) 
    \current_state[2]_i_2 
       (.I0(cnt_internal_value),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\current_state_reg[2]_0 ));
endmodule

module Simon_64_128_parallel
   (IS_CE,
    \current_state_reg[1] ,
    \current_state_reg[2] ,
    \temp_reg_reg[18] ,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[1] ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \cnt_internal_value_reg[2] ,
    \current_state_reg[1]_0 ,
    \cnt_internal_value_reg[2]_0 ,
    Q);
  output IS_CE;
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[18] ;
  input clk_IBUF_BUFG;
  input \cnt_internal_value_reg[1] ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \cnt_internal_value_reg[2] ;
  input \current_state_reg[1]_0 ;
  input \cnt_internal_value_reg[2]_0 ;
  input [1:0]Q;

  wire [25:8]D;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[0]_i_5_n_0 ;
  wire INST_Ki2_Ki1_n_0;
  wire INST_Ki2_Ki1_n_21;
  wire INST_Ki2_Ki1_n_26;
  wire INST_Ki2_Ki1_n_27;
  wire INST_Ki2_Ki1_n_28;
  wire INST_Ki2_Ki1_n_29;
  wire INST_Ki2_Ki1_n_30;
  wire INST_Ki2_Ki1_n_31;
  wire INST_LFSR_n_10;
  wire INST_LFSR_n_4;
  wire INST_LFSR_n_5;
  wire INST_LFSR_n_6;
  wire INST_LFSR_n_7;
  wire INST_LFSR_n_8;
  wire INST_LFSR_n_9;
  wire IS_CE;
  wire KEY_REG_CE;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[2]_0 ;
  wire [2:0]current_state;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[2] ;
  wire end_encrypt;
  wire [31:0]key_schedule_out;
  wire [31:0]ki0_KEY_REG_OUT;
  wire [31:0]ki2_KEY_REG_OUT;
  wire [31:0]ki3_KEY_REG_OUT;
  wire lfsr_rst;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg_reg[18] ;
  wire z_in;

  LUT5 #(
    .INIT(32'h00FF0100)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state_0[0]),
        .I4(current_state_0[1]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_LFSR_n_10),
        .Q(current_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_LFSR_n_9),
        .Q(current_state_0[1]),
        .R(1'b0));
  end_encrypt_shift_reg INST_END_ENCRYPT_SHIFT_REG
       (.AR(lfsr_rst),
        .E(INST_LFSR_n_5),
        .Q(end_encrypt),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  parallel_tapped_shift_reg INST_IS_REG
       (.\FSM_sequential_current_state_reg[0] (INST_LFSR_n_4),
        .\FSM_sequential_current_state_reg[1] (IS_CE),
        .Q(Q),
        .\Q_reg[31] (ki0_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1] ),
        .\cnt_internal_value_reg[2] (\cnt_internal_value_reg[2] ),
        .\cnt_internal_value_reg[2]_0 (\cnt_internal_value_reg[2]_0 ),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[1]_0 (\current_state_reg[1]_0 ),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .out(current_state_0),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[18]_0 (\temp_reg_reg[18] ));
  \reg  INST_Ki0
       (.KEY_REG_CE(KEY_REG_CE),
        .Q(ki0_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwropt(INST_LFSR_n_10),
        .pwropt_1(INST_LFSR_n_9),
        .pwropt_2(pwropt),
        .pwropt_3(pwropt_3),
        .\temp_reg_reg[63] (ki2_KEY_REG_OUT));
  normal_shift_reg INST_Ki2_Ki1
       (.D({D[25:24],D[17],D[8]}),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(ki2_KEY_REG_OUT),
        .\Q_reg[11] (INST_Ki2_Ki1_n_26),
        .\Q_reg[12] (INST_Ki2_Ki1_n_27),
        .\Q_reg[19] (INST_Ki2_Ki1_n_28),
        .\Q_reg[20] (INST_Ki2_Ki1_n_29),
        .\Q_reg[27] (INST_Ki2_Ki1_n_30),
        .\Q_reg[28] (INST_Ki2_Ki1_n_31),
        .\Q_reg[31] ({key_schedule_out[31:29],key_schedule_out[26],key_schedule_out[23:21],key_schedule_out[18],key_schedule_out[16:13],key_schedule_out[10:9],key_schedule_out[7:5],key_schedule_out[2:0]}),
        .\Q_reg[31]_0 (ki3_KEY_REG_OUT),
        .\Q_reg[31]_1 (ki0_KEY_REG_OUT),
        .\Q_reg[3] (INST_Ki2_Ki1_n_0),
        .\Q_reg[4] (INST_Ki2_Ki1_n_21),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state({current_state[2],current_state[0]}),
        .out(current_state_0),
        .pwropt(INST_LFSR_n_10),
        .pwropt_1(INST_LFSR_n_9),
        .pwropt_2(pwropt),
        .pwropt_3(pwropt_1),
        .pwropt_4(pwropt_2),
        .z_in(z_in));
  reg_0 INST_Ki3
       (.D({D[25:24],D[17],D[8]}),
        .\FSM_sequential_current_state_reg[0] (INST_LFSR_n_6),
        .\FSM_sequential_current_state_reg[0]_0 (INST_LFSR_n_8),
        .\FSM_sequential_current_state_reg[0]_1 (INST_Ki2_Ki1_n_31),
        .\FSM_sequential_current_state_reg[0]_2 (INST_Ki2_Ki1_n_29),
        .\FSM_sequential_current_state_reg[0]_3 (INST_Ki2_Ki1_n_27),
        .\FSM_sequential_current_state_reg[0]_4 (INST_Ki2_Ki1_n_21),
        .\FSM_sequential_current_state_reg[0]_5 (INST_LFSR_n_7),
        .\FSM_sequential_current_state_reg[0]_6 (INST_Ki2_Ki1_n_30),
        .\FSM_sequential_current_state_reg[0]_7 (INST_Ki2_Ki1_n_28),
        .\FSM_sequential_current_state_reg[0]_8 (INST_Ki2_Ki1_n_26),
        .\FSM_sequential_current_state_reg[0]_9 (INST_Ki2_Ki1_n_0),
        .KEY_REG_CE(KEY_REG_CE),
        .\Q_reg[31]_0 ({key_schedule_out[31:29],key_schedule_out[26],key_schedule_out[23:21],key_schedule_out[18],key_schedule_out[16:13],key_schedule_out[10:9],key_schedule_out[7:5],key_schedule_out[2:0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[31] (ki3_KEY_REG_OUT));
  lfsr INST_LFSR
       (.AR(lfsr_rst),
        .E(INST_LFSR_n_5),
        .\FSM_sequential_current_state_reg[0] (INST_LFSR_n_10),
        .\FSM_sequential_current_state_reg[1] (INST_LFSR_n_9),
        .\FSM_sequential_current_state_reg[1]_0 (\temp_reg_reg[18] ),
        .IS_CE(IS_CE),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(Q),
        .\Q_reg[0] (INST_LFSR_n_6),
        .\Q_reg[27] (INST_LFSR_n_7),
        .\Q_reg[28] (INST_LFSR_n_8),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (\FSM_sequential_current_state[0]_i_4_n_0 ),
        .\current_state_reg[2] (\FSM_sequential_current_state[0]_i_5_n_0 ),
        .out(current_state_0),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .\reg_internal_reg[1] (end_encrypt),
        .\temp_reg_reg[1] (INST_LFSR_n_4),
        .z_in(z_in));
endmodule

(* Datapath = "32" *) (* ECO_CHECKSUM = "46ded228" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire INST_CNT_n_3;
  wire INST_CNT_n_4;
  wire INST_CNT_n_5;
  wire IS_CE;
  wire Simon_DUT_n_1;
  wire Simon_DUT_n_2;
  wire Simon_DUT_n_3;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]cnt_internal_value;
  wire [2:0]current_state;
  wire \current_state[2]_i_3_n_0 ;
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
       (.\FSM_sequential_current_state_reg[1] (Simon_DUT_n_3),
        .IS_CE(IS_CE),
        .Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_0),
        .\current_state_reg[2] (INST_CNT_n_3),
        .\current_state_reg[2]_0 (INST_CNT_n_4),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[0] (INST_CNT_n_5));
  Simon_64_128_parallel Simon_DUT
       (.IS_CE(IS_CE),
        .Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (INST_CNT_n_5),
        .\cnt_internal_value_reg[2] (INST_CNT_n_4),
        .\cnt_internal_value_reg[2]_0 (INST_CNT_n_3),
        .current_state(current_state),
        .\current_state_reg[1] (Simon_DUT_n_1),
        .\current_state_reg[1]_0 (\current_state[2]_i_3_n_0 ),
        .\current_state_reg[2] (Simon_DUT_n_2),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[18] (Simon_DUT_n_3));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[2]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\current_state[2]_i_3_n_0 ));
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
        .D(Simon_DUT_n_1),
        .Q(current_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Simon_DUT_n_2),
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

module end_encrypt_shift_reg
   (Q,
    E,
    clk_IBUF_BUFG,
    AR);
  output [0:0]Q;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \reg_internal_reg_n_0_[0] ;

  FDPE #(
    .INIT(1'b1)) 
    \reg_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q),
        .PRE(AR),
        .Q(\reg_internal_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\reg_internal_reg_n_0_[0] ),
        .Q(Q));
endmodule

module lfsr
   (IS_CE,
    z_in,
    KEY_REG_CE,
    AR,
    \temp_reg_reg[1] ,
    E,
    \Q_reg[0] ,
    \Q_reg[27] ,
    \Q_reg[28] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    out,
    \FSM_sequential_current_state_reg[1]_0 ,
    current_state,
    Q,
    \reg_internal_reg[1] ,
    \current_state_reg[0] ,
    \current_state_reg[2] ,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3);
  output IS_CE;
  output z_in;
  output KEY_REG_CE;
  output [0:0]AR;
  output \temp_reg_reg[1] ;
  output [0:0]E;
  output \Q_reg[0] ;
  output \Q_reg[27] ;
  output \Q_reg[28] ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  input [1:0]out;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input [2:0]current_state;
  input [1:0]Q;
  input [0:0]\reg_internal_reg[1] ;
  input \current_state_reg[0] ;
  input \current_state_reg[2] ;
  input clk_IBUF_BUFG;
  output pwropt;
  output pwropt_1;
  output pwropt_2;
  output pwropt_3;

  wire [0:0]AR;
  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire IS_CE;
  wire KEY_REG_CE;
  wire [1:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[27] ;
  wire \Q_reg[28] ;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire lfsr_ce;
  wire \lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ;
  wire [4:0]lfsr_parallel_out;
  wire [1:0]out;
  wire p_0_in4_in;
  wire [1:1]p_0_out;
  wire [0:0]p_2_out;
  wire [0:0]\reg_internal_reg[1] ;
  wire \t_sequence_reg_n_0_[0] ;
  wire \temp_reg[63]_i_2_n_0 ;
  wire \temp_reg_reg[1] ;
  wire \xlnx_opt_FSM_sequential_current_state_reg[1] ;
  wire z_in;

  assign pwropt = lfsr_parallel_out[2];
  assign pwropt_1 = p_0_out;
  assign pwropt_2 = lfsr_ce;
  assign pwropt_3 = lfsr_parallel_out[3];
  LUT6 #(
    .INIT(64'h00000000808080FF)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\reg_internal_reg[1] ),
        .I2(out[1]),
        .I3(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I4(\current_state_reg[0] ),
        .I5(\current_state_reg[2] ),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(lfsr_parallel_out[0]),
        .I1(lfsr_parallel_out[1]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[4]),
        .I4(lfsr_parallel_out[3]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(lfsr_parallel_out[1]),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[4]),
        .I4(lfsr_parallel_out[2]),
        .I5(out[0]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_2 
       (.I0(lfsr_parallel_out[4]),
        .I1(p_0_in4_in),
        .O(z_in));
  LUT3 #(
    .INIT(8'hF4)) 
    \Q[25]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .O(KEY_REG_CE));
  LUT6 #(
    .INIT(64'hB000000000000000)) 
    \Q[27]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(Q[0]),
        .O(\Q_reg[27] ));
  LUT6 #(
    .INIT(64'hB000000000000000)) 
    \Q[28]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(Q[1]),
        .O(\Q_reg[28] ));
  LUT3 #(
    .INIT(8'hB0)) 
    \Q[31]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .O(\Q_reg[0] ));
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
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .CLR(AR),
        .D(p_2_out),
        .Q(lfsr_parallel_out[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .CLR(AR),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .CLR(AR),
        .D(p_0_out),
        .Q(lfsr_parallel_out[2]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .CLR(AR),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ),
        .D(lfsr_parallel_out[3]),
        .PRE(AR),
        .Q(lfsr_parallel_out[4]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \reg_internal[1]_i_1 
       (.I0(lfsr_parallel_out[3]),
        .I1(lfsr_parallel_out[4]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[0]),
        .I5(\FSM_sequential_current_state_reg[1]_0 ),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_internal[1]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .O(AR));
  LUT2 #(
    .INIT(4'hB)) 
    \t_sequence[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .O(lfsr_ce));
  FDPE #(
    .INIT(1'b1)) 
    \t_sequence_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .D(p_0_in4_in),
        .PRE(AR),
        .Q(\t_sequence_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \t_sequence_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(AR),
        .D(\t_sequence_reg_n_0_[0] ),
        .Q(p_0_in4_in));
  LUT3 #(
    .INIT(8'h8A)) 
    \temp_reg[31]_i_1 
       (.I0(IS_CE),
        .I1(out[0]),
        .I2(out[1]),
        .O(\temp_reg_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[63]_i_1 
       (.I0(out[1]),
        .I1(\temp_reg[63]_i_2_n_0 ),
        .O(IS_CE));
  LUT6 #(
    .INIT(64'h1545555555554555)) 
    \temp_reg[63]_i_2 
       (.I0(out[0]),
        .I1(lfsr_parallel_out[4]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[3]),
        .I5(lfsr_parallel_out[0]),
        .O(\temp_reg[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[1]_i_1 
       (.I0(out[1]),
        .I1(lfsr_parallel_out[4]),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[3]),
        .I5(lfsr_parallel_out[0]),
        .O(\xlnx_opt_FSM_sequential_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFF0FF22222026)) 
    \xlnx_opt_LUT_FSM_sequential_current_state[1]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(\xlnx_opt_FSM_sequential_current_state_reg[1] ),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT3 #(
    .INIT(8'hD0)) 
    \xlnx_opt_LUT_lfsr_internal_reg[0]_CE_cooolgate_en_gate_100 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .I2(lfsr_ce),
        .O(\lfsr_internal_reg[0]_CE_cooolgate_en_sig_6 ));
endmodule

module normal_shift_reg
   (\Q_reg[3] ,
    \Q_reg[31] ,
    \Q_reg[4] ,
    D,
    \Q_reg[11] ,
    \Q_reg[12] ,
    \Q_reg[19] ,
    \Q_reg[20] ,
    \Q_reg[27] ,
    \Q_reg[28] ,
    Q,
    out,
    current_state,
    KEY_REG_CE,
    clk_IBUF_BUFG,
    \Q_reg[31]_0 ,
    \Q_reg[31]_1 ,
    z_in,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3,
    pwropt_4);
  output \Q_reg[3] ;
  output [19:0]\Q_reg[31] ;
  output \Q_reg[4] ;
  output [3:0]D;
  output \Q_reg[11] ;
  output \Q_reg[12] ;
  output \Q_reg[19] ;
  output \Q_reg[20] ;
  output \Q_reg[27] ;
  output \Q_reg[28] ;
  output [31:0]Q;
  input [1:0]out;
  input [1:0]current_state;
  input KEY_REG_CE;
  input clk_IBUF_BUFG;
  input [31:0]\Q_reg[31]_0 ;
  input [31:0]\Q_reg[31]_1 ;
  input z_in;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;
  input pwropt_4;

  wire [3:0]D;
  wire KEY_REG_CE;
  wire [31:0]Q;
  wire \Q_reg[11] ;
  wire \Q_reg[12] ;
  wire \Q_reg[19] ;
  wire \Q_reg[20] ;
  wire \Q_reg[27] ;
  wire \Q_reg[28] ;
  wire [19:0]\Q_reg[31] ;
  wire [31:0]\Q_reg[31]_0 ;
  wire [31:0]\Q_reg[31]_1 ;
  wire \Q_reg[3] ;
  wire \Q_reg[4] ;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire [28:3]key_schedule_out;
  wire [1:0]out;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire pwropt_4;
  wire \temp_reg_reg[0]_CE_cooolgate_en_sig_2 ;
  wire \temp_reg_reg_n_0_[0] ;
  wire \temp_reg_reg_n_0_[10] ;
  wire \temp_reg_reg_n_0_[11] ;
  wire \temp_reg_reg_n_0_[12] ;
  wire \temp_reg_reg_n_0_[13] ;
  wire \temp_reg_reg_n_0_[14] ;
  wire \temp_reg_reg_n_0_[15] ;
  wire \temp_reg_reg_n_0_[16] ;
  wire \temp_reg_reg_n_0_[17] ;
  wire \temp_reg_reg_n_0_[18] ;
  wire \temp_reg_reg_n_0_[19] ;
  wire \temp_reg_reg_n_0_[1] ;
  wire \temp_reg_reg_n_0_[20] ;
  wire \temp_reg_reg_n_0_[21] ;
  wire \temp_reg_reg_n_0_[22] ;
  wire \temp_reg_reg_n_0_[23] ;
  wire \temp_reg_reg_n_0_[24] ;
  wire \temp_reg_reg_n_0_[25] ;
  wire \temp_reg_reg_n_0_[26] ;
  wire \temp_reg_reg_n_0_[27] ;
  wire \temp_reg_reg_n_0_[28] ;
  wire \temp_reg_reg_n_0_[29] ;
  wire \temp_reg_reg_n_0_[2] ;
  wire \temp_reg_reg_n_0_[30] ;
  wire \temp_reg_reg_n_0_[31] ;
  wire \temp_reg_reg_n_0_[3] ;
  wire \temp_reg_reg_n_0_[4] ;
  wire \temp_reg_reg_n_0_[5] ;
  wire \temp_reg_reg_n_0_[6] ;
  wire \temp_reg_reg_n_0_[7] ;
  wire \temp_reg_reg_n_0_[8] ;
  wire \temp_reg_reg_n_0_[9] ;
  wire \xlnx_opt_D[0] ;
  wire \xlnx_opt_D[1] ;
  wire \xlnx_opt_D[2] ;
  wire \xlnx_opt_D[3] ;
  wire z_in;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Q[0]_i_1 
       (.I0(Q[0]),
        .I1(\Q_reg[31]_0 [3]),
        .I2(\Q_reg[31]_1 [0]),
        .I3(Q[1]),
        .I4(\Q_reg[31]_0 [4]),
        .I5(z_in),
        .O(\Q_reg[31] [0]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[10]_i_1 
       (.I0(\Q_reg[31]_1 [10]),
        .I1(Q[11]),
        .I2(\Q_reg[31]_0 [14]),
        .I3(Q[10]),
        .I4(\Q_reg[31]_0 [13]),
        .O(\Q_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[11]_i_1 
       (.I0(key_schedule_out[11]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[11] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[11]_i_2 
       (.I0(\Q_reg[31]_1 [11]),
        .I1(Q[12]),
        .I2(\Q_reg[31]_0 [15]),
        .I3(Q[11]),
        .I4(\Q_reg[31]_0 [14]),
        .O(key_schedule_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[12]_i_1 
       (.I0(key_schedule_out[12]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[12] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[12]_i_2 
       (.I0(\Q_reg[31]_1 [12]),
        .I1(Q[13]),
        .I2(\Q_reg[31]_0 [16]),
        .I3(Q[12]),
        .I4(\Q_reg[31]_0 [15]),
        .O(key_schedule_out[12]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[13]_i_1 
       (.I0(\Q_reg[31]_1 [13]),
        .I1(Q[14]),
        .I2(\Q_reg[31]_0 [17]),
        .I3(Q[13]),
        .I4(\Q_reg[31]_0 [16]),
        .O(\Q_reg[31] [8]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[14]_i_1 
       (.I0(\Q_reg[31]_1 [14]),
        .I1(Q[15]),
        .I2(\Q_reg[31]_0 [18]),
        .I3(Q[14]),
        .I4(\Q_reg[31]_0 [17]),
        .O(\Q_reg[31] [9]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[15]_i_1 
       (.I0(\Q_reg[31]_1 [15]),
        .I1(Q[16]),
        .I2(\Q_reg[31]_0 [19]),
        .I3(Q[15]),
        .I4(\Q_reg[31]_0 [18]),
        .O(\Q_reg[31] [10]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[16]_i_1 
       (.I0(\Q_reg[31]_1 [16]),
        .I1(Q[17]),
        .I2(\Q_reg[31]_0 [20]),
        .I3(Q[16]),
        .I4(\Q_reg[31]_0 [19]),
        .O(\Q_reg[31] [11]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[18]_i_1 
       (.I0(\Q_reg[31]_1 [18]),
        .I1(Q[19]),
        .I2(\Q_reg[31]_0 [22]),
        .I3(Q[18]),
        .I4(\Q_reg[31]_0 [21]),
        .O(\Q_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[19]_i_1 
       (.I0(key_schedule_out[19]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[19] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[19]_i_2 
       (.I0(\Q_reg[31]_1 [19]),
        .I1(Q[20]),
        .I2(\Q_reg[31]_0 [23]),
        .I3(Q[19]),
        .I4(\Q_reg[31]_0 [22]),
        .O(key_schedule_out[19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \Q[1]_i_1 
       (.I0(\Q_reg[31]_1 [1]),
        .I1(Q[2]),
        .I2(\Q_reg[31]_0 [5]),
        .I3(Q[1]),
        .I4(\Q_reg[31]_0 [4]),
        .O(\Q_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[20]_i_1 
       (.I0(key_schedule_out[20]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[20] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[20]_i_2 
       (.I0(\Q_reg[31]_1 [20]),
        .I1(Q[21]),
        .I2(\Q_reg[31]_0 [24]),
        .I3(Q[20]),
        .I4(\Q_reg[31]_0 [23]),
        .O(key_schedule_out[20]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[21]_i_1 
       (.I0(\Q_reg[31]_1 [21]),
        .I1(Q[22]),
        .I2(\Q_reg[31]_0 [25]),
        .I3(Q[21]),
        .I4(\Q_reg[31]_0 [24]),
        .O(\Q_reg[31] [13]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[22]_i_1 
       (.I0(\Q_reg[31]_1 [22]),
        .I1(Q[23]),
        .I2(\Q_reg[31]_0 [26]),
        .I3(Q[22]),
        .I4(\Q_reg[31]_0 [25]),
        .O(\Q_reg[31] [14]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[23]_i_1 
       (.I0(\Q_reg[31]_1 [23]),
        .I1(Q[24]),
        .I2(\Q_reg[31]_0 [27]),
        .I3(Q[23]),
        .I4(\Q_reg[31]_0 [26]),
        .O(\Q_reg[31] [15]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[26]_i_1 
       (.I0(\Q_reg[31]_1 [26]),
        .I1(Q[27]),
        .I2(\Q_reg[31]_0 [30]),
        .I3(Q[26]),
        .I4(\Q_reg[31]_0 [29]),
        .O(\Q_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[27]_i_2 
       (.I0(key_schedule_out[27]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[27] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[27]_i_3 
       (.I0(\Q_reg[31]_1 [27]),
        .I1(Q[28]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(Q[27]),
        .I4(\Q_reg[31]_0 [30]),
        .O(key_schedule_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[28]_i_2 
       (.I0(key_schedule_out[28]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[28] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[28]_i_3 
       (.I0(\Q_reg[31]_1 [28]),
        .I1(Q[29]),
        .I2(\Q_reg[31]_0 [0]),
        .I3(Q[28]),
        .I4(\Q_reg[31]_0 [31]),
        .O(key_schedule_out[28]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[29]_i_1 
       (.I0(\Q_reg[31]_1 [29]),
        .I1(Q[30]),
        .I2(\Q_reg[31]_0 [1]),
        .I3(Q[29]),
        .I4(\Q_reg[31]_0 [0]),
        .O(\Q_reg[31] [17]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[31]_1 [2]),
        .I1(Q[3]),
        .I2(\Q_reg[31]_0 [6]),
        .I3(Q[2]),
        .I4(\Q_reg[31]_0 [5]),
        .O(\Q_reg[31] [2]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[30]_i_1 
       (.I0(\Q_reg[31]_1 [30]),
        .I1(Q[31]),
        .I2(\Q_reg[31]_0 [2]),
        .I3(Q[30]),
        .I4(\Q_reg[31]_0 [1]),
        .O(\Q_reg[31] [18]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[31]_i_2 
       (.I0(\Q_reg[31]_1 [31]),
        .I1(Q[0]),
        .I2(\Q_reg[31]_0 [3]),
        .I3(Q[31]),
        .I4(\Q_reg[31]_0 [2]),
        .O(\Q_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[3]_i_1 
       (.I0(key_schedule_out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[3] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[3]_i_2 
       (.I0(\Q_reg[31]_1 [3]),
        .I1(Q[4]),
        .I2(\Q_reg[31]_0 [7]),
        .I3(Q[3]),
        .I4(\Q_reg[31]_0 [6]),
        .O(key_schedule_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Q[4]_i_1 
       (.I0(key_schedule_out[4]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[4] ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[4]_i_2 
       (.I0(\Q_reg[31]_1 [4]),
        .I1(Q[5]),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Q[4]),
        .I4(\Q_reg[31]_0 [7]),
        .O(key_schedule_out[4]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[5]_i_1 
       (.I0(\Q_reg[31]_1 [5]),
        .I1(Q[6]),
        .I2(\Q_reg[31]_0 [9]),
        .I3(Q[5]),
        .I4(\Q_reg[31]_0 [8]),
        .O(\Q_reg[31] [3]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[6]_i_1 
       (.I0(\Q_reg[31]_1 [6]),
        .I1(Q[7]),
        .I2(\Q_reg[31]_0 [10]),
        .I3(Q[6]),
        .I4(\Q_reg[31]_0 [9]),
        .O(\Q_reg[31] [4]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[7]_i_1 
       (.I0(\Q_reg[31]_1 [7]),
        .I1(Q[8]),
        .I2(\Q_reg[31]_0 [11]),
        .I3(Q[7]),
        .I4(\Q_reg[31]_0 [10]),
        .O(\Q_reg[31] [5]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[9]_i_1 
       (.I0(\Q_reg[31]_1 [9]),
        .I1(Q[10]),
        .I2(\Q_reg[31]_0 [13]),
        .I3(Q[9]),
        .I4(\Q_reg[31]_0 [12]),
        .O(\Q_reg[31] [6]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [0]),
        .Q(\temp_reg_reg_n_0_[0] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [10]),
        .Q(\temp_reg_reg_n_0_[10] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [11]),
        .Q(\temp_reg_reg_n_0_[11] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [12]),
        .Q(\temp_reg_reg_n_0_[12] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [13]),
        .Q(\temp_reg_reg_n_0_[13] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [14]),
        .Q(\temp_reg_reg_n_0_[14] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [15]),
        .Q(\temp_reg_reg_n_0_[15] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [16]),
        .Q(\temp_reg_reg_n_0_[16] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [17]),
        .Q(\temp_reg_reg_n_0_[17] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [18]),
        .Q(\temp_reg_reg_n_0_[18] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [19]),
        .Q(\temp_reg_reg_n_0_[19] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [1]),
        .Q(\temp_reg_reg_n_0_[1] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [20]),
        .Q(\temp_reg_reg_n_0_[20] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [21]),
        .Q(\temp_reg_reg_n_0_[21] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [22]),
        .Q(\temp_reg_reg_n_0_[22] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [23]),
        .Q(\temp_reg_reg_n_0_[23] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [24]),
        .Q(\temp_reg_reg_n_0_[24] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [25]),
        .Q(\temp_reg_reg_n_0_[25] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [26]),
        .Q(\temp_reg_reg_n_0_[26] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [27]),
        .Q(\temp_reg_reg_n_0_[27] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [28]),
        .Q(\temp_reg_reg_n_0_[28] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [29]),
        .Q(\temp_reg_reg_n_0_[29] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [2]),
        .Q(\temp_reg_reg_n_0_[2] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [30]),
        .Q(\temp_reg_reg_n_0_[30] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [31]),
        .Q(\temp_reg_reg_n_0_[31] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [3]),
        .Q(\temp_reg_reg_n_0_[3] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[10] ),
        .Q(Q[10]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[11] ),
        .Q(Q[11]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[12] ),
        .Q(Q[12]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[13] ),
        .Q(Q[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[14] ),
        .Q(Q[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[15] ),
        .Q(Q[15]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[16] ),
        .Q(Q[16]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[17] ),
        .Q(Q[17]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [4]),
        .Q(\temp_reg_reg_n_0_[4] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[18] ),
        .Q(Q[18]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[19] ),
        .Q(Q[19]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[20] ),
        .Q(Q[20]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[21] ),
        .Q(Q[21]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[22] ),
        .Q(Q[22]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[23] ),
        .Q(Q[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[24] ),
        .Q(Q[24]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[25] ),
        .Q(Q[25]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[26] ),
        .Q(Q[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[27] ),
        .Q(Q[27]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [5]),
        .Q(\temp_reg_reg_n_0_[5] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[28] ),
        .Q(Q[28]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[29] ),
        .Q(Q[29]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[30] ),
        .Q(Q[30]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\temp_reg_reg_n_0_[31] ),
        .Q(Q[31]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [6]),
        .Q(\temp_reg_reg_n_0_[6] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [7]),
        .Q(\temp_reg_reg_n_0_[7] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [8]),
        .Q(\temp_reg_reg_n_0_[8] ),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\Q_reg[31]_0 [9]),
        .Q(\temp_reg_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \xlnx_opt_LUT_Q[17]_i_1 
       (.I0(\Q_reg[31]_1 [17]),
        .I1(Q[18]),
        .I2(\Q_reg[31]_0 [21]),
        .I3(Q[17]),
        .I4(\Q_reg[31]_0 [20]),
        .O(\xlnx_opt_D[1] ));
  LUT5 #(
    .INIT(32'hD000F222)) 
    \xlnx_opt_LUT_Q[17]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\xlnx_opt_D[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \xlnx_opt_LUT_Q[24]_i_1 
       (.I0(\Q_reg[31]_1 [24]),
        .I1(Q[25]),
        .I2(\Q_reg[31]_0 [28]),
        .I3(Q[24]),
        .I4(\Q_reg[31]_0 [27]),
        .O(\xlnx_opt_D[2] ));
  LUT5 #(
    .INIT(32'hD000F222)) 
    \xlnx_opt_LUT_Q[24]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\xlnx_opt_D[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \xlnx_opt_LUT_Q[25]_i_2 
       (.I0(\Q_reg[31]_1 [25]),
        .I1(Q[26]),
        .I2(\Q_reg[31]_0 [29]),
        .I3(Q[25]),
        .I4(\Q_reg[31]_0 [28]),
        .O(\xlnx_opt_D[3] ));
  LUT5 #(
    .INIT(32'hD000F222)) 
    \xlnx_opt_LUT_Q[25]_i_2_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\xlnx_opt_D[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \xlnx_opt_LUT_Q[8]_i_1 
       (.I0(\Q_reg[31]_1 [8]),
        .I1(Q[9]),
        .I2(\Q_reg[31]_0 [12]),
        .I3(Q[8]),
        .I4(\Q_reg[31]_0 [11]),
        .O(\xlnx_opt_D[0] ));
  LUT5 #(
    .INIT(32'hD000F222)) 
    \xlnx_opt_LUT_Q[8]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\xlnx_opt_D[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFDA00000000)) 
    \xlnx_opt_LUT_temp_reg_reg[0]_CE_cooolgate_en_gate_2 
       (.I0(pwropt_4),
        .I1(pwropt_3),
        .I2(pwropt_2),
        .I3(pwropt_1),
        .I4(pwropt),
        .I5(KEY_REG_CE),
        .O(\temp_reg_reg[0]_CE_cooolgate_en_sig_2 ));
endmodule

module parallel_tapped_shift_reg
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    \temp_reg_reg[18]_0 ,
    \FSM_sequential_current_state_reg[1] ,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[0] ,
    \cnt_internal_value_reg[1] ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \cnt_internal_value_reg[2] ,
    \current_state_reg[1]_0 ,
    \cnt_internal_value_reg[2]_0 ,
    Q,
    out,
    \Q_reg[31] );
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[18]_0 ;
  input \FSM_sequential_current_state_reg[1] ;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[0] ;
  input \cnt_internal_value_reg[1] ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \cnt_internal_value_reg[2] ;
  input \current_state_reg[1]_0 ;
  input \cnt_internal_value_reg[2]_0 ;
  input [1:0]Q;
  input [1:0]out;
  input [31:0]\Q_reg[31] ;

  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [31:0]IS_left_reg_out;
  wire [31:0]IS_right_reg_out;
  wire [1:0]Q;
  wire [31:0]\Q_reg[31] ;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[1] ;
  wire \cnt_internal_value_reg[2] ;
  wire \cnt_internal_value_reg[2]_0 ;
  wire [2:0]current_state;
  wire \current_state[2]_i_10_n_0 ;
  wire \current_state[2]_i_12_n_0 ;
  wire \current_state[2]_i_13_n_0 ;
  wire \current_state[2]_i_14_n_0 ;
  wire \current_state[2]_i_15_n_0 ;
  wire \current_state[2]_i_18_n_0 ;
  wire \current_state[2]_i_19_n_0 ;
  wire \current_state[2]_i_20_n_0 ;
  wire \current_state[2]_i_21_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[2] ;
  wire [1:0]out;
  wire [30:2]p_0_in;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg[0]_i_1_n_0 ;
  wire \temp_reg[10]_i_1_n_0 ;
  wire \temp_reg[12]_i_1_n_0 ;
  wire \temp_reg[15]_i_1_n_0 ;
  wire \temp_reg[16]_i_2_n_0 ;
  wire \temp_reg[17]_i_2_n_0 ;
  wire \temp_reg[18]_i_2_n_0 ;
  wire \temp_reg[19]_i_2_n_0 ;
  wire \temp_reg[1]_i_1_n_0 ;
  wire \temp_reg[20]_i_1_n_0 ;
  wire \temp_reg[23]_i_1_n_0 ;
  wire \temp_reg[24]_i_2_n_0 ;
  wire \temp_reg[25]_i_1_n_0 ;
  wire \temp_reg[26]_i_2_n_0 ;
  wire \temp_reg[27]_i_1_n_0 ;
  wire \temp_reg[28]_i_1_n_0 ;
  wire \temp_reg[30]_i_2_n_0 ;
  wire \temp_reg[31]_i_2_n_0 ;
  wire \temp_reg[3]_i_2_n_0 ;
  wire \temp_reg[4]_i_1_n_0 ;
  wire \temp_reg[7]_i_1_n_0 ;
  wire \temp_reg[8]_i_2_n_0 ;
  wire \temp_reg[9]_i_1_n_0 ;
  wire \temp_reg_reg[18]_0 ;
  wire \xlnx_opt_current_state[2]_i_4_n_0 ;
  wire \xlnx_opt_current_state[2]_i_4_n_0_1 ;
  wire \xlnx_opt_current_state[2]_i_4_n_0_2 ;
  wire \xlnx_opt_current_state[2]_i_4_n_0_3 ;
  wire \xlnx_opt_current_state[2]_i_4_n_0_4 ;
  wire \xlnx_opt_current_state[2]_i_4_n_0_5 ;
  wire \xlnx_opt_p_0_in[11] ;
  wire \xlnx_opt_p_0_in[13] ;
  wire \xlnx_opt_p_0_in[14] ;
  wire \xlnx_opt_p_0_in[21] ;
  wire \xlnx_opt_p_0_in[22] ;
  wire \xlnx_opt_p_0_in[29] ;
  wire \xlnx_opt_p_0_in[2] ;
  wire \xlnx_opt_p_0_in[5] ;
  wire \xlnx_opt_p_0_in[6] ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8AAA)) 
    \current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(start_IBUF),
        .I4(\current_state[2]_i_4_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000FB0000)) 
    \current_state[2]_i_1 
       (.I0(\cnt_internal_value_reg[2] ),
        .I1(current_state[2]),
        .I2(\current_state_reg[1]_0 ),
        .I3(\current_state[2]_i_4_n_0 ),
        .I4(\current_state[2]_i_5_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \current_state[2]_i_10 
       (.I0(IS_right_reg_out[15]),
        .I1(IS_right_reg_out[22]),
        .I2(IS_right_reg_out[23]),
        .I3(IS_right_reg_out[19]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\current_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[2]_i_12 
       (.I0(\current_state[2]_i_19_n_0 ),
        .I1(\current_state[2]_i_20_n_0 ),
        .I2(IS_right_reg_out[17]),
        .I3(IS_right_reg_out[24]),
        .I4(IS_right_reg_out[16]),
        .I5(IS_right_reg_out[21]),
        .O(\current_state[2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \current_state[2]_i_13 
       (.I0(IS_right_reg_out[1]),
        .I1(current_state[1]),
        .I2(IS_right_reg_out[26]),
        .I3(IS_right_reg_out[12]),
        .I4(\current_state[2]_i_21_n_0 ),
        .O(\current_state[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \current_state[2]_i_14 
       (.I0(\current_state[2]_i_15_n_0 ),
        .I1(IS_right_reg_out[31]),
        .I2(IS_right_reg_out[14]),
        .I3(IS_right_reg_out[30]),
        .I4(IS_right_reg_out[10]),
        .O(\current_state[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_15 
       (.I0(IS_right_reg_out[0]),
        .I1(IS_right_reg_out[8]),
        .I2(IS_right_reg_out[2]),
        .I3(IS_right_reg_out[7]),
        .O(\current_state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[2]_i_18 
       (.I0(IS_right_reg_out[6]),
        .I1(IS_right_reg_out[20]),
        .I2(IS_right_reg_out[16]),
        .I3(out[0]),
        .O(\current_state[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \current_state[2]_i_19 
       (.I0(IS_right_reg_out[13]),
        .I1(IS_right_reg_out[9]),
        .I2(IS_right_reg_out[18]),
        .I3(IS_right_reg_out[6]),
        .I4(IS_right_reg_out[28]),
        .I5(IS_right_reg_out[27]),
        .O(\current_state[2]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \current_state[2]_i_20 
       (.I0(IS_right_reg_out[5]),
        .I1(IS_right_reg_out[11]),
        .I2(IS_right_reg_out[4]),
        .I3(IS_right_reg_out[20]),
        .O(\current_state[2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_21 
       (.I0(IS_right_reg_out[29]),
        .I1(current_state[0]),
        .I2(IS_right_reg_out[3]),
        .I3(IS_right_reg_out[25]),
        .O(\current_state[2]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \current_state[2]_i_5 
       (.I0(\cnt_internal_value_reg[2]_0 ),
        .I1(\current_state[2]_i_10_n_0 ),
        .I2(\current_state[2]_i_12_n_0 ),
        .I3(\current_state[2]_i_13_n_0 ),
        .I4(\current_state[2]_i_14_n_0 ),
        .O(\current_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg_reg[18]_0 ),
        .I1(IS_left_reg_out[30]),
        .I2(\Q_reg[31] [0]),
        .I3(IS_right_reg_out[0]),
        .I4(IS_left_reg_out[31]),
        .I5(IS_left_reg_out[24]),
        .O(\temp_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[10]_i_1 
       (.I0(\temp_reg_reg[18]_0 ),
        .I1(IS_left_reg_out[8]),
        .I2(\Q_reg[31] [10]),
        .I3(IS_right_reg_out[10]),
        .I4(IS_left_reg_out[2]),
        .I5(IS_left_reg_out[9]),
        .O(\temp_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[12]_i_1 
       (.I0(IS_left_reg_out[11]),
        .I1(IS_left_reg_out[4]),
        .I2(IS_right_reg_out[12]),
        .I3(\Q_reg[31] [12]),
        .I4(IS_left_reg_out[10]),
        .O(\temp_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[15]_i_1 
       (.I0(IS_left_reg_out[14]),
        .I1(IS_left_reg_out[7]),
        .I2(IS_right_reg_out[15]),
        .I3(\Q_reg[31] [15]),
        .I4(IS_left_reg_out[13]),
        .O(\temp_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[16]_i_1 
       (.I0(\temp_reg[16]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[16]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[16]_i_2 
       (.I0(IS_left_reg_out[15]),
        .I1(IS_left_reg_out[8]),
        .I2(IS_right_reg_out[16]),
        .I3(\Q_reg[31] [16]),
        .I4(IS_left_reg_out[14]),
        .O(\temp_reg[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[17]_i_1 
       (.I0(\temp_reg[17]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[17]_i_2 
       (.I0(IS_left_reg_out[16]),
        .I1(IS_left_reg_out[9]),
        .I2(IS_right_reg_out[17]),
        .I3(\Q_reg[31] [17]),
        .I4(IS_left_reg_out[15]),
        .O(\temp_reg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[18]_i_2 
       (.I0(\temp_reg_reg[18]_0 ),
        .I1(IS_left_reg_out[16]),
        .I2(\Q_reg[31] [18]),
        .I3(IS_right_reg_out[18]),
        .I4(IS_left_reg_out[10]),
        .I5(IS_left_reg_out[17]),
        .O(\temp_reg[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[19]_i_1 
       (.I0(\temp_reg[19]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[19]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[19]_i_2 
       (.I0(IS_left_reg_out[18]),
        .I1(IS_left_reg_out[11]),
        .I2(IS_right_reg_out[19]),
        .I3(\Q_reg[31] [19]),
        .I4(IS_left_reg_out[17]),
        .O(\temp_reg[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[1]_i_1 
       (.I0(IS_left_reg_out[25]),
        .I1(IS_left_reg_out[0]),
        .I2(IS_right_reg_out[1]),
        .I3(\Q_reg[31] [1]),
        .I4(IS_left_reg_out[31]),
        .O(\temp_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[20]_i_1 
       (.I0(IS_left_reg_out[19]),
        .I1(IS_left_reg_out[12]),
        .I2(IS_right_reg_out[20]),
        .I3(\Q_reg[31] [20]),
        .I4(IS_left_reg_out[18]),
        .O(\temp_reg[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[23]_i_1 
       (.I0(IS_left_reg_out[22]),
        .I1(IS_left_reg_out[15]),
        .I2(IS_right_reg_out[23]),
        .I3(\Q_reg[31] [23]),
        .I4(IS_left_reg_out[21]),
        .O(\temp_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[24]_i_1 
       (.I0(\temp_reg[24]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[24]_i_2 
       (.I0(IS_left_reg_out[23]),
        .I1(IS_left_reg_out[16]),
        .I2(IS_right_reg_out[24]),
        .I3(\Q_reg[31] [24]),
        .I4(IS_left_reg_out[22]),
        .O(\temp_reg[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[25]_i_1 
       (.I0(IS_left_reg_out[24]),
        .I1(IS_left_reg_out[17]),
        .I2(IS_right_reg_out[25]),
        .I3(\Q_reg[31] [25]),
        .I4(IS_left_reg_out[23]),
        .O(\temp_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[26]_i_1 
       (.I0(\temp_reg[26]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[26]_i_2 
       (.I0(IS_left_reg_out[25]),
        .I1(IS_left_reg_out[18]),
        .I2(IS_right_reg_out[26]),
        .I3(\Q_reg[31] [26]),
        .I4(IS_left_reg_out[24]),
        .O(\temp_reg[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[27]_i_1 
       (.I0(IS_left_reg_out[26]),
        .I1(IS_left_reg_out[19]),
        .I2(IS_right_reg_out[27]),
        .I3(\Q_reg[31] [27]),
        .I4(IS_left_reg_out[25]),
        .O(\temp_reg[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[28]_i_1 
       (.I0(IS_left_reg_out[27]),
        .I1(IS_left_reg_out[20]),
        .I2(IS_right_reg_out[28]),
        .I3(\Q_reg[31] [28]),
        .I4(IS_left_reg_out[26]),
        .O(\temp_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[30]_i_1 
       (.I0(\temp_reg[30]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[30]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[30]_i_2 
       (.I0(IS_left_reg_out[29]),
        .I1(IS_left_reg_out[22]),
        .I2(IS_right_reg_out[30]),
        .I3(\Q_reg[31] [30]),
        .I4(IS_left_reg_out[28]),
        .O(\temp_reg[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[30]_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\temp_reg_reg[18]_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[31]_i_2 
       (.I0(IS_left_reg_out[23]),
        .I1(IS_left_reg_out[30]),
        .I2(IS_right_reg_out[31]),
        .I3(\Q_reg[31] [31]),
        .I4(IS_left_reg_out[29]),
        .O(\temp_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[3]_i_1 
       (.I0(\temp_reg[3]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[3]_i_2 
       (.I0(IS_left_reg_out[27]),
        .I1(IS_left_reg_out[2]),
        .I2(IS_right_reg_out[3]),
        .I3(\Q_reg[31] [3]),
        .I4(IS_left_reg_out[1]),
        .O(\temp_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[4]_i_1 
       (.I0(\temp_reg_reg[18]_0 ),
        .I1(IS_left_reg_out[2]),
        .I2(\Q_reg[31] [4]),
        .I3(IS_right_reg_out[4]),
        .I4(IS_left_reg_out[3]),
        .I5(IS_left_reg_out[28]),
        .O(\temp_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[7]_i_1 
       (.I0(IS_left_reg_out[6]),
        .I1(IS_left_reg_out[31]),
        .I2(IS_right_reg_out[7]),
        .I3(\Q_reg[31] [7]),
        .I4(IS_left_reg_out[5]),
        .O(\temp_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \temp_reg[8]_i_1 
       (.I0(\temp_reg[8]_i_2_n_0 ),
        .I1(\temp_reg_reg[18]_0 ),
        .I2(current_state[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(current_state[0]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[8]_i_2 
       (.I0(IS_left_reg_out[7]),
        .I1(IS_left_reg_out[0]),
        .I2(IS_right_reg_out[8]),
        .I3(\Q_reg[31] [8]),
        .I4(IS_left_reg_out[6]),
        .O(\temp_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[9]_i_1 
       (.I0(\temp_reg_reg[18]_0 ),
        .I1(IS_left_reg_out[7]),
        .I2(\Q_reg[31] [9]),
        .I3(IS_right_reg_out[9]),
        .I4(IS_left_reg_out[1]),
        .I5(IS_left_reg_out[8]),
        .O(\temp_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[0]_i_1_n_0 ),
        .Q(IS_left_reg_out[0]),
        .S(\cnt_internal_value_reg[1] ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[10]_i_1_n_0 ),
        .Q(IS_left_reg_out[10]),
        .S(\cnt_internal_value_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[11]),
        .Q(IS_left_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[12]_i_1_n_0 ),
        .Q(IS_left_reg_out[12]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[13]),
        .Q(IS_left_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[14]),
        .Q(IS_left_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[15]_i_1_n_0 ),
        .Q(IS_left_reg_out[15]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[16]),
        .Q(IS_left_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[17]),
        .Q(IS_left_reg_out[17]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[18]_i_2_n_0 ),
        .Q(IS_left_reg_out[18]),
        .S(\cnt_internal_value_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[19]),
        .Q(IS_left_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[1]_i_1_n_0 ),
        .Q(IS_left_reg_out[1]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[20]_i_1_n_0 ),
        .Q(IS_left_reg_out[20]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[21]),
        .Q(IS_left_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[22]),
        .Q(IS_left_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[23]_i_1_n_0 ),
        .Q(IS_left_reg_out[23]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[24]),
        .Q(IS_left_reg_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[25]_i_1_n_0 ),
        .Q(IS_left_reg_out[25]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[26]),
        .Q(IS_left_reg_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[27]_i_1_n_0 ),
        .Q(IS_left_reg_out[27]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[28]_i_1_n_0 ),
        .Q(IS_left_reg_out[28]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[29]),
        .Q(IS_left_reg_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[2]),
        .Q(IS_left_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[30]),
        .Q(IS_left_reg_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[31]_i_2_n_0 ),
        .Q(IS_left_reg_out[31]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[0]),
        .Q(IS_right_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[1]),
        .Q(IS_right_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[2]),
        .Q(IS_right_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[3]),
        .Q(IS_right_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[4]),
        .Q(IS_right_reg_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[5]),
        .Q(IS_right_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[6]),
        .Q(IS_right_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[7]),
        .Q(IS_right_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[3]),
        .Q(IS_left_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[8]),
        .Q(IS_right_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[9]),
        .Q(IS_right_reg_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[10]),
        .Q(IS_right_reg_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[11]),
        .Q(IS_right_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[12]),
        .Q(IS_right_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[13]),
        .Q(IS_right_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[14]),
        .Q(IS_right_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[15]),
        .Q(IS_right_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[16]),
        .Q(IS_right_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[17]),
        .Q(IS_right_reg_out[17]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[4]_i_1_n_0 ),
        .Q(IS_left_reg_out[4]),
        .S(\cnt_internal_value_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[18]),
        .Q(IS_right_reg_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[19]),
        .Q(IS_right_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[20]),
        .Q(IS_right_reg_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[21]),
        .Q(IS_right_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[22]),
        .Q(IS_right_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[23]),
        .Q(IS_right_reg_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[24]),
        .Q(IS_right_reg_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[25]),
        .Q(IS_right_reg_out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[26]),
        .Q(IS_right_reg_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[27]),
        .Q(IS_right_reg_out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[5]),
        .Q(IS_left_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[28]),
        .Q(IS_right_reg_out[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[29]),
        .Q(IS_right_reg_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[30]),
        .Q(IS_right_reg_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(IS_left_reg_out[31]),
        .Q(IS_right_reg_out[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[6]),
        .Q(IS_left_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[7]_i_1_n_0 ),
        .Q(IS_left_reg_out[7]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(p_0_in[8]),
        .Q(IS_left_reg_out[8]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1] ),
        .D(\temp_reg[9]_i_1_n_0 ),
        .Q(IS_left_reg_out[9]),
        .S(\cnt_internal_value_reg[1] ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_4 
       (.I0(\current_state[2]_i_15_n_0 ),
        .I1(IS_right_reg_out[27]),
        .I2(IS_right_reg_out[18]),
        .I3(current_state[1]),
        .I4(IS_right_reg_out[3]),
        .O(\xlnx_opt_current_state[2]_i_4_n_0_5 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \xlnx_opt_LUT_current_state[2]_i_4_1 
       (.I0(IS_right_reg_out[14]),
        .I1(IS_right_reg_out[26]),
        .I2(IS_right_reg_out[4]),
        .I3(IS_right_reg_out[10]),
        .O(\xlnx_opt_current_state[2]_i_4_n_0_4 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \xlnx_opt_LUT_current_state[2]_i_4_2 
       (.I0(IS_right_reg_out[25]),
        .I1(IS_right_reg_out[1]),
        .I2(IS_right_reg_out[29]),
        .I3(IS_right_reg_out[28]),
        .I4(\xlnx_opt_current_state[2]_i_4_n_0_4 ),
        .O(\xlnx_opt_current_state[2]_i_4_n_0_3 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \xlnx_opt_LUT_current_state[2]_i_4_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(IS_right_reg_out[13]),
        .I3(IS_right_reg_out[9]),
        .O(\xlnx_opt_current_state[2]_i_4_n_0_2 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \xlnx_opt_LUT_current_state[2]_i_4_4 
       (.I0(IS_right_reg_out[12]),
        .I1(IS_right_reg_out[17]),
        .I2(IS_right_reg_out[11]),
        .I3(IS_right_reg_out[24]),
        .I4(\xlnx_opt_current_state[2]_i_4_n_0_2 ),
        .O(\xlnx_opt_current_state[2]_i_4_n_0_1 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \xlnx_opt_LUT_current_state[2]_i_4_5 
       (.I0(IS_right_reg_out[30]),
        .I1(IS_right_reg_out[5]),
        .I2(IS_right_reg_out[21]),
        .I3(IS_right_reg_out[31]),
        .I4(\current_state[2]_i_18_n_0 ),
        .O(\xlnx_opt_current_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \xlnx_opt_LUT_current_state[2]_i_4_6 
       (.I0(\current_state[2]_i_10_n_0 ),
        .I1(\xlnx_opt_current_state[2]_i_4_n_0_5 ),
        .I2(\xlnx_opt_current_state[2]_i_4_n_0_3 ),
        .I3(\xlnx_opt_current_state[2]_i_4_n_0_1 ),
        .I4(\xlnx_opt_current_state[2]_i_4_n_0 ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[11]_i_1 
       (.I0(IS_left_reg_out[10]),
        .I1(IS_left_reg_out[3]),
        .I2(IS_right_reg_out[11]),
        .I3(\Q_reg[31] [11]),
        .I4(IS_left_reg_out[9]),
        .O(\xlnx_opt_p_0_in[11] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[11]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[11] ),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[13]_i_1 
       (.I0(IS_left_reg_out[12]),
        .I1(IS_left_reg_out[5]),
        .I2(IS_right_reg_out[13]),
        .I3(\Q_reg[31] [13]),
        .I4(IS_left_reg_out[11]),
        .O(\xlnx_opt_p_0_in[13] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[13]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[13] ),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[14]_i_1 
       (.I0(IS_left_reg_out[13]),
        .I1(IS_left_reg_out[6]),
        .I2(IS_right_reg_out[14]),
        .I3(\Q_reg[31] [14]),
        .I4(IS_left_reg_out[12]),
        .O(\xlnx_opt_p_0_in[14] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[14]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[14] ),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[21]_i_1 
       (.I0(IS_left_reg_out[20]),
        .I1(IS_left_reg_out[13]),
        .I2(IS_right_reg_out[21]),
        .I3(\Q_reg[31] [21]),
        .I4(IS_left_reg_out[19]),
        .O(\xlnx_opt_p_0_in[21] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[21]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[21] ),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[22]_i_1 
       (.I0(IS_left_reg_out[21]),
        .I1(IS_left_reg_out[14]),
        .I2(IS_right_reg_out[22]),
        .I3(\Q_reg[31] [22]),
        .I4(IS_left_reg_out[20]),
        .O(\xlnx_opt_p_0_in[22] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[22]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[22] ),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[29]_i_1 
       (.I0(IS_left_reg_out[28]),
        .I1(IS_left_reg_out[21]),
        .I2(IS_right_reg_out[29]),
        .I3(\Q_reg[31] [29]),
        .I4(IS_left_reg_out[27]),
        .O(\xlnx_opt_p_0_in[29] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[29]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[29] ),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[2]_i_1 
       (.I0(IS_left_reg_out[26]),
        .I1(IS_left_reg_out[1]),
        .I2(IS_right_reg_out[2]),
        .I3(\Q_reg[31] [2]),
        .I4(IS_left_reg_out[0]),
        .O(\xlnx_opt_p_0_in[2] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[2]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[2] ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[5]_i_1 
       (.I0(IS_left_reg_out[29]),
        .I1(IS_left_reg_out[4]),
        .I2(IS_right_reg_out[5]),
        .I3(\Q_reg[31] [5]),
        .I4(IS_left_reg_out[3]),
        .O(\xlnx_opt_p_0_in[5] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[5]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[5] ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \xlnx_opt_LUT_temp_reg[6]_i_1 
       (.I0(IS_left_reg_out[30]),
        .I1(IS_left_reg_out[5]),
        .I2(IS_right_reg_out[6]),
        .I3(\Q_reg[31] [6]),
        .I4(IS_left_reg_out[4]),
        .O(\xlnx_opt_p_0_in[6] ));
  LUT6 #(
    .INIT(64'h0000D0002222F222)) 
    \xlnx_opt_LUT_temp_reg[6]_i_1_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\xlnx_opt_p_0_in[6] ),
        .O(p_0_in[6]));
endmodule

module \reg 
   (Q,
    KEY_REG_CE,
    \temp_reg_reg[63] ,
    clk_IBUF_BUFG,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3);
  output [31:0]Q;
  input KEY_REG_CE;
  input [31:0]\temp_reg_reg[63] ;
  input clk_IBUF_BUFG;
  input pwropt;
  input pwropt_1;
  input pwropt_2;
  input pwropt_3;

  wire KEY_REG_CE;
  wire [31:0]Q;
  wire \Q_reg[0]_CE_cooolgate_en_sig_4 ;
  wire clk_IBUF_BUFG;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire [31:0]\temp_reg_reg[63] ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [0]),
        .Q(Q[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [10]),
        .Q(Q[10]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [11]),
        .Q(Q[11]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [12]),
        .Q(Q[12]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [13]),
        .Q(Q[13]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [14]),
        .Q(Q[14]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [15]),
        .Q(Q[15]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [16]),
        .Q(Q[16]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [17]),
        .Q(Q[17]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [18]),
        .Q(Q[18]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [19]),
        .Q(Q[19]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [1]),
        .Q(Q[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [20]),
        .Q(Q[20]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [21]),
        .Q(Q[21]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [22]),
        .Q(Q[22]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [23]),
        .Q(Q[23]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [24]),
        .Q(Q[24]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [25]),
        .Q(Q[25]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [26]),
        .Q(Q[26]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [27]),
        .Q(Q[27]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [28]),
        .Q(Q[28]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [29]),
        .Q(Q[29]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [2]),
        .Q(Q[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [30]),
        .Q(Q[30]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [31]),
        .Q(Q[31]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [3]),
        .Q(Q[3]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [4]),
        .Q(Q[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [5]),
        .Q(Q[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [6]),
        .Q(Q[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [7]),
        .Q(Q[7]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [8]),
        .Q(Q[8]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\Q_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(\temp_reg_reg[63] [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF80000)) 
    \xlnx_opt_LUT_Q_reg[0]_CE_cooolgate_en_gate_67 
       (.I0(pwropt_3),
        .I1(pwropt_2),
        .I2(pwropt_1),
        .I3(pwropt),
        .I4(KEY_REG_CE),
        .O(\Q_reg[0]_CE_cooolgate_en_sig_4 ));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module reg_0
   (\temp_reg_reg[31] ,
    KEY_REG_CE,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[0] ,
    \Q_reg[31]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    \FSM_sequential_current_state_reg[0]_3 ,
    \FSM_sequential_current_state_reg[0]_4 ,
    \FSM_sequential_current_state_reg[0]_5 ,
    \FSM_sequential_current_state_reg[0]_6 ,
    \FSM_sequential_current_state_reg[0]_7 ,
    \FSM_sequential_current_state_reg[0]_8 ,
    \FSM_sequential_current_state_reg[0]_9 );
  output [31:0]\temp_reg_reg[31] ;
  input KEY_REG_CE;
  input [3:0]D;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[0] ;
  input [19:0]\Q_reg[31]_0 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input \FSM_sequential_current_state_reg[0]_3 ;
  input \FSM_sequential_current_state_reg[0]_4 ;
  input \FSM_sequential_current_state_reg[0]_5 ;
  input \FSM_sequential_current_state_reg[0]_6 ;
  input \FSM_sequential_current_state_reg[0]_7 ;
  input \FSM_sequential_current_state_reg[0]_8 ;
  input \FSM_sequential_current_state_reg[0]_9 ;

  wire [3:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[0]_3 ;
  wire \FSM_sequential_current_state_reg[0]_4 ;
  wire \FSM_sequential_current_state_reg[0]_5 ;
  wire \FSM_sequential_current_state_reg[0]_6 ;
  wire \FSM_sequential_current_state_reg[0]_7 ;
  wire \FSM_sequential_current_state_reg[0]_8 ;
  wire \FSM_sequential_current_state_reg[0]_9 ;
  wire KEY_REG_CE;
  wire [19:0]\Q_reg[31]_0 ;
  wire clk_IBUF_BUFG;
  wire [31:0]\temp_reg_reg[31] ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [0]),
        .Q(\temp_reg_reg[31] [0]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [7]),
        .Q(\temp_reg_reg[31] [10]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_8 ),
        .Q(\temp_reg_reg[31] [11]),
        .S(\FSM_sequential_current_state_reg[0]_5 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_3 ),
        .Q(\temp_reg_reg[31] [12]),
        .S(\FSM_sequential_current_state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [8]),
        .Q(\temp_reg_reg[31] [13]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [9]),
        .Q(\temp_reg_reg[31] [14]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [10]),
        .Q(\temp_reg_reg[31] [15]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [11]),
        .Q(\temp_reg_reg[31] [16]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[1]),
        .Q(\temp_reg_reg[31] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [12]),
        .Q(\temp_reg_reg[31] [18]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_7 ),
        .Q(\temp_reg_reg[31] [19]),
        .S(\FSM_sequential_current_state_reg[0]_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [1]),
        .Q(\temp_reg_reg[31] [1]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_2 ),
        .Q(\temp_reg_reg[31] [20]),
        .S(\FSM_sequential_current_state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [13]),
        .Q(\temp_reg_reg[31] [21]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [14]),
        .Q(\temp_reg_reg[31] [22]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [15]),
        .Q(\temp_reg_reg[31] [23]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[2]),
        .Q(\temp_reg_reg[31] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[3]),
        .Q(\temp_reg_reg[31] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [16]),
        .Q(\temp_reg_reg[31] [26]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_6 ),
        .Q(\temp_reg_reg[31] [27]),
        .S(\FSM_sequential_current_state_reg[0]_5 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_1 ),
        .Q(\temp_reg_reg[31] [28]),
        .S(\FSM_sequential_current_state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [17]),
        .Q(\temp_reg_reg[31] [29]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [2]),
        .Q(\temp_reg_reg[31] [2]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [18]),
        .Q(\temp_reg_reg[31] [30]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [19]),
        .Q(\temp_reg_reg[31] [31]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_9 ),
        .Q(\temp_reg_reg[31] [3]),
        .S(\FSM_sequential_current_state_reg[0]_5 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\FSM_sequential_current_state_reg[0]_4 ),
        .Q(\temp_reg_reg[31] [4]),
        .S(\FSM_sequential_current_state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [3]),
        .Q(\temp_reg_reg[31] [5]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [4]),
        .Q(\temp_reg_reg[31] [6]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [5]),
        .Q(\temp_reg_reg[31] [7]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[0]),
        .Q(\temp_reg_reg[31] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[31]_0 [6]),
        .Q(\temp_reg_reg[31] [9]),
        .R(\FSM_sequential_current_state_reg[0] ));
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
