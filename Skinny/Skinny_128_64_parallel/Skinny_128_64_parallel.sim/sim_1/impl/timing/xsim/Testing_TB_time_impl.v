// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jun 20 19:01:10 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Skinny/Skinny_128_64_parallel/Skinny_128_64_parallel.sim/sim_1/impl/timing/xsim/Testing_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module SKINNY_64_128_parallel
   (\FSM_onehot_current_state_reg[5] ,
    out,
    clk_IBUF_BUFG);
  output [1:0]\FSM_onehot_current_state_reg[5] ;
  input [3:0]out;
  input clk_IBUF_BUFG;

  wire [61:44]AddRoundTWEAKEY_OUT;
  wire [1:0]\FSM_onehot_current_state_reg[5] ;
  wire \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_1 ;
  wire INST_IS_REG_n_0;
  wire INST_TK1_REG_n_0;
  wire OUT_MUX_SEL__6;
  wire [31:0]TK1_in;
  wire [31:0]TK2_in;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state;
  wire [5:0]lfsr_in;
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
  wire [3:0]out;
  wire regs_ce;
  wire [3:0]NLW_INST_IS_REG_AddRoundConstants_OUT_UNCONNECTED;
  wire [0:0]\NLW_INST_IS_REG_Q_reg[61]_0_UNCONNECTED ;
  wire [3:0]NLW_INST_TK1_REG_AddRoundConstants_OUT_UNCONNECTED;
  wire [0:0]\NLW_INST_TK1_REG_Q_reg[45]_0_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "loading:00,processing:10,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nx_state[0]),
        .Q(current_state[0]),
        .R(out[0]));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,idle:01" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* KEEP = "yes" *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_1 ),
        .D(nx_state[1]),
        .Q(current_state[1]),
        .R(out[0]));
  LUT6 #(
    .INIT(64'hffffffffffff0800)) 
    \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_gate_1 
       (.I0(lfsr_in[3]),
        .I1(lfsr_in[2]),
        .I2(lfsr_in[1]),
        .I3(lfsr_in[0]),
        .I4(out[0]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_1 ));
  \reg  INST_IS_REG
       (.AddRoundConstants_OUT(NLW_INST_IS_REG_AddRoundConstants_OUT_UNCONNECTED[3:0]),
        .CO(INST_IS_REG_n_0),
        .\FSM_sequential_current_state_reg[1] (INST_TK1_REG_n_0),
        .OUT_MUX_SEL__6(OUT_MUX_SEL__6),
        .Q(lfsr_in),
        .\Q_reg[61]_0 ({AddRoundTWEAKEY_OUT[61:60],AddRoundTWEAKEY_OUT[45],\NLW_INST_IS_REG_Q_reg[61]_0_UNCONNECTED [0]}),
        .TK1_in({TK1_in[31:30],TK1_in[27:14],TK1_in[11:0]}),
        .TK2_in({TK2_in[31:30],TK2_in[27:14],TK2_in[11:0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .lopt_9(TK2_in[12]),
        .out(current_state),
        .regs_ce(regs_ce));
  lfsr INST_LFSR
       (.CO(INST_IS_REG_n_0),
        .D(nx_state),
        .\FSM_onehot_current_state_reg[5] (\FSM_onehot_current_state_reg[5] ),
        .\FSM_onehot_current_state_reg[5]_0 (out[3:1]),
        .OUT_MUX_SEL__6(OUT_MUX_SEL__6),
        .Q(lfsr_in),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(current_state));
  reg_0 INST_TK1_REG
       (.AddRoundConstants_OUT(NLW_INST_TK1_REG_AddRoundConstants_OUT_UNCONNECTED[3:0]),
        .\Q_reg[2]_0 (INST_TK1_REG_n_0),
        .\Q_reg[31]_0 ({TK1_in[31:30],TK1_in[27:14],TK1_in[11:0]}),
        .\Q_reg[45]_0 ({AddRoundTWEAKEY_OUT[61:60],AddRoundTWEAKEY_OUT[45],\NLW_INST_TK1_REG_Q_reg[45]_0_UNCONNECTED [0]}),
        .TK2_in({TK2_in[29:28],TK2_in[13:12]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lfsr_in[5]),
        .lopt_1(lopt),
        .lopt_10(lfsr_in[0]),
        .lopt_11(lopt_8),
        .lopt_2(lopt_1),
        .lopt_3(lopt_2),
        .lopt_4(lopt_3),
        .lopt_5(lfsr_in[1]),
        .lopt_6(lopt_4),
        .lopt_7(lopt_5),
        .lopt_8(lopt_6),
        .lopt_9(lopt_7),
        .out(current_state),
        .regs_ce(regs_ce));
  reg_1 INST_TK2_REG
       (.\FSM_sequential_current_state_reg[1] (INST_TK1_REG_n_0),
        .TK2_in(TK2_in),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(current_state[1]),
        .regs_ce(regs_ce));
endmodule

(* ECO_CHECKSUM = "a9e32262" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[5] ;
  wire SKINNY_128_DUT_n_0;
  wire SKINNY_128_DUT_n_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire data_ready_W;
  wire led_out;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  (* RTL_KEEP = "yes" *) wire start_W;

initial begin
 $sdf_annotate("Testing_TB_time_impl.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(start_IBUF),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(start_IBUF),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "waiting:000100,start_enc:001000,idle:000001,loading:000010,enc:010000,success:100000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(rst_IBUF));
  (* FSM_ENCODED_STATES = "waiting:000100,start_enc:001000,idle:000001,loading:000010,enc:010000,success:100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(data_ready_W),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "waiting:000100,start_enc:001000,idle:000001,loading:000010,enc:010000,success:100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_ready_W),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "waiting:000100,start_enc:001000,idle:000001,loading:000010,enc:010000,success:100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(start_W),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "waiting:000100,start_enc:001000,idle:000001,loading:000010,enc:010000,success:100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SKINNY_128_DUT_n_1),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "waiting:000100,start_enc:001000,idle:000001,loading:000010,enc:010000,success:100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SKINNY_128_DUT_n_0),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  SKINNY_64_128_parallel SKINNY_128_DUT
       (.\FSM_onehot_current_state_reg[5] ({SKINNY_128_DUT_n_0,SKINNY_128_DUT_n_1}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,start_W,data_ready_W}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF led_out_OBUF_inst
       (.I(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(led_out));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

module lfsr
   (\FSM_onehot_current_state_reg[5] ,
    D,
    OUT_MUX_SEL__6,
    Q,
    out,
    CO,
    \FSM_onehot_current_state_reg[5]_0 ,
    clk_IBUF_BUFG);
  output [1:0]\FSM_onehot_current_state_reg[5] ;
  output [1:0]D;
  output OUT_MUX_SEL__6;
  output [5:0]Q;
  input [1:0]out;
  input [0:0]CO;
  input [2:0]\FSM_onehot_current_state_reg[5]_0 ;
  input clk_IBUF_BUFG;

  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]\FSM_onehot_current_state_reg[5] ;
  wire [2:0]\FSM_onehot_current_state_reg[5]_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire OUT_MUX_SEL__6;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;
  wire lfsr_rst;
  wire [1:0]out;
  wire [0:0]p_3_out;

  LUT6 #(
    .INIT(64'hFFFFFFFF0BFF0000)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(CO),
        .I4(\FSM_onehot_current_state_reg[5]_0 [1]),
        .I5(\FSM_onehot_current_state_reg[5]_0 [0]),
        .O(\FSM_onehot_current_state_reg[5] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4000000)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(CO),
        .I4(\FSM_onehot_current_state_reg[5]_0 [1]),
        .I5(\FSM_onehot_current_state_reg[5]_0 [2]),
        .O(\FSM_onehot_current_state_reg[5] [1]));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_current_state[5]_i_11 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .O(OUT_MUX_SEL__6));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0377)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[1]),
        .I2(\FSM_onehot_current_state_reg[5]_0 [0]),
        .I3(out[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[1]),
        .I2(\FSM_onehot_current_state_reg[5]_0 [0]),
        .I3(out[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(p_3_out));
  LUT1 #(
    .INIT(2'h1)) 
    \lfsr_internal[5]_i_1 
       (.I0(out[1]),
        .O(lfsr_rst));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_3_out),
        .Q(Q[0]),
        .S(lfsr_rst));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .R(lfsr_rst));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[2]),
        .R(lfsr_rst));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[3]),
        .R(lfsr_rst));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[4]),
        .R(lfsr_rst));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[5]),
        .R(lfsr_rst));
endmodule

module \reg 
   (CO,
    regs_ce,
    AddRoundConstants_OUT,
    \Q_reg[61]_0 ,
    OUT_MUX_SEL__6,
    out,
    Q,
    TK1_in,
    TK2_in,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[1] ,
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
  output [0:0]CO;
  output regs_ce;
  output [3:0]AddRoundConstants_OUT;
  input [3:0]\Q_reg[61]_0 ;
  input OUT_MUX_SEL__6;
  input [1:0]out;
  input [5:0]Q;
  input [27:0]TK1_in;
  input [27:0]TK2_in;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[1] ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  input lopt_8;
  input lopt_9;

  wire [63:32]AddRoundTWEAKEY_OUT;
  wire [0:0]CO;
  wire [20:20]D;
  wire \FSM_onehot_current_state[5]_i_10_n_0 ;
  wire \FSM_onehot_current_state[5]_i_12_n_0 ;
  wire \FSM_onehot_current_state[5]_i_14_n_0 ;
  wire \FSM_onehot_current_state[5]_i_15_n_0 ;
  wire \FSM_onehot_current_state[5]_i_16_n_0 ;
  wire \FSM_onehot_current_state[5]_i_17_n_0 ;
  wire \FSM_onehot_current_state[5]_i_19_n_0 ;
  wire \FSM_onehot_current_state[5]_i_21_n_0 ;
  wire \FSM_onehot_current_state[5]_i_22_n_0 ;
  wire \FSM_onehot_current_state[5]_i_24_n_0 ;
  wire \FSM_onehot_current_state[5]_i_25_n_0 ;
  wire \FSM_onehot_current_state[5]_i_27_n_0 ;
  wire \FSM_onehot_current_state[5]_i_28_n_0 ;
  wire \FSM_onehot_current_state[5]_i_29_n_0 ;
  wire \FSM_onehot_current_state[5]_i_30_n_0 ;
  wire \FSM_onehot_current_state[5]_i_32_n_0 ;
  wire \FSM_onehot_current_state[5]_i_33_n_0 ;
  wire \FSM_onehot_current_state[5]_i_34_n_0 ;
  wire \FSM_onehot_current_state[5]_i_35_n_0 ;
  wire \FSM_onehot_current_state[5]_i_36_n_0 ;
  wire \FSM_onehot_current_state[5]_i_37_n_0 ;
  wire \FSM_onehot_current_state[5]_i_38_n_0 ;
  wire \FSM_onehot_current_state[5]_i_39_n_0 ;
  wire \FSM_onehot_current_state[5]_i_40_n_0 ;
  wire \FSM_onehot_current_state[5]_i_41_n_0 ;
  wire \FSM_onehot_current_state[5]_i_4_n_0 ;
  wire \FSM_onehot_current_state[5]_i_5_n_0 ;
  wire \FSM_onehot_current_state[5]_i_7_n_0 ;
  wire \FSM_onehot_current_state[5]_i_8_n_0 ;
  wire \FSM_onehot_current_state[5]_i_9_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_13_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_26_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_31_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_6_n_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[0].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[1].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[3].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[6].subcells/p_2_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[9].subcells/p_2_out ;
  wire IN_MUX_SEL;
  wire [63:0]IS_REG_OUT;
  wire OUT_MUX_SEL__6;
  wire [5:0]Q;
  wire \Q[11]_i_1_n_0 ;
  wire \Q[16]_i_1_n_0 ;
  wire \Q[17]_i_1_n_0 ;
  wire \Q[18]_i_1_n_0 ;
  wire \Q[19]_i_1_n_0 ;
  wire \Q[21]_i_1_n_0 ;
  wire \Q[22]_i_1_n_0 ;
  wire \Q[24]_i_1_n_0 ;
  wire \Q[26]_i_1_n_0 ;
  wire \Q[27]_i_1_n_0 ;
  wire \Q[28]_i_1_n_0 ;
  wire \Q[30]_i_1_n_0 ;
  wire \Q[31]_i_1_n_0 ;
  wire \Q[3]_i_1_n_0 ;
  wire \Q[49]_i_1_n_0 ;
  wire \Q[50]_i_1_n_0 ;
  wire \Q[52]_i_1_n_0 ;
  wire \Q[54]_i_1_n_0 ;
  wire \Q[56]_i_1_n_0 ;
  wire \Q[57]_i_1_n_0 ;
  wire \Q[58]_i_1_n_0 ;
  wire \Q[62]_i_1_n_0 ;
  wire \Q[63]_i_1_n_0 ;
  wire \Q[7]_i_1_n_0 ;
  wire [3:0]\Q_reg[61]_0 ;
  wire [28:28]SUBCELLS_OUT;
  wire [27:0]TK1_in;
  wire [27:0]TK2_in;
  wire clk_IBUF_BUFG;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire [61:0]mixcolumns_out;
  wire [1:0]out;
  wire regs_ce;
  wire \xlnx_opt_Q[24]_i_1_n_0 ;
  wire \xlnx_opt_Q[24]_i_1_n_0_1 ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_26_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_26_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_31_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_31_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_6_O_UNCONNECTED ;

  assign \^lopt  = lopt_8;
  assign \^lopt_1  = lopt_9;
  assign lopt = IS_REG_OUT[46];
  assign lopt_1 = IS_REG_OUT[47];
  assign lopt_2 = IS_REG_OUT[44];
  assign lopt_3 = IS_REG_OUT[45];
  assign lopt_4 = IS_REG_OUT[62];
  assign lopt_5 = IS_REG_OUT[63];
  assign lopt_6 = IS_REG_OUT[60];
  assign lopt_7 = IS_REG_OUT[61];
  LUT6 #(
    .INIT(64'h0080800080000080)) 
    \FSM_onehot_current_state[5]_i_10 
       (.I0(\FSM_onehot_current_state[5]_i_24_n_0 ),
        .I1(OUT_MUX_SEL__6),
        .I2(\Q[50]_i_1_n_0 ),
        .I3(mixcolumns_out[0]),
        .I4(\FSM_onehot_current_state[5]_i_25_n_0 ),
        .I5(IS_REG_OUT[13]),
        .O(\FSM_onehot_current_state[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFA9)) 
    \FSM_onehot_current_state[5]_i_12 
       (.I0(IS_REG_OUT[8]),
        .I1(IS_REG_OUT[11]),
        .I2(IS_REG_OUT[10]),
        .I3(IS_REG_OUT[9]),
        .O(\FSM_onehot_current_state[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_current_state[5]_i_14 
       (.I0(\Q_reg[61]_0 [3]),
        .I1(AddRoundTWEAKEY_OUT[63]),
        .I2(AddRoundTWEAKEY_OUT[62]),
        .I3(OUT_MUX_SEL__6),
        .O(\FSM_onehot_current_state[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \FSM_onehot_current_state[5]_i_15 
       (.I0(AddRoundTWEAKEY_OUT[58]),
        .I1(AddRoundTWEAKEY_OUT[59]),
        .I2(\Q_reg[61]_0 [2]),
        .I3(OUT_MUX_SEL__6),
        .O(\FSM_onehot_current_state[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_current_state[5]_i_16 
       (.I0(AddRoundTWEAKEY_OUT[55]),
        .I1(AddRoundTWEAKEY_OUT[56]),
        .I2(AddRoundTWEAKEY_OUT[57]),
        .I3(OUT_MUX_SEL__6),
        .O(\FSM_onehot_current_state[5]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_current_state[5]_i_17 
       (.I0(AddRoundTWEAKEY_OUT[52]),
        .I1(AddRoundTWEAKEY_OUT[53]),
        .I2(AddRoundTWEAKEY_OUT[54]),
        .I3(OUT_MUX_SEL__6),
        .O(\FSM_onehot_current_state[5]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_18 
       (.I0(IS_REG_OUT[6]),
        .I1(IS_REG_OUT[7]),
        .I2(IS_REG_OUT[4]),
        .O(\INST_SUBCELLS/subcells_gen[1].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'hEE1411EB)) 
    \FSM_onehot_current_state[5]_i_19 
       (.I0(IS_REG_OUT[5]),
        .I1(IS_REG_OUT[4]),
        .I2(IS_REG_OUT[7]),
        .I3(IS_REG_OUT[6]),
        .I4(mixcolumns_out[9]),
        .O(\FSM_onehot_current_state[5]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_20 
       (.I0(IS_REG_OUT[2]),
        .I1(IS_REG_OUT[3]),
        .I2(IS_REG_OUT[0]),
        .O(\INST_SUBCELLS/subcells_gen[0].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'hED1412EB)) 
    \FSM_onehot_current_state[5]_i_21 
       (.I0(IS_REG_OUT[4]),
        .I1(IS_REG_OUT[7]),
        .I2(IS_REG_OUT[6]),
        .I3(IS_REG_OUT[5]),
        .I4(mixcolumns_out[8]),
        .O(\FSM_onehot_current_state[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h12EBED14ED1412EB)) 
    \FSM_onehot_current_state[5]_i_22 
       (.I0(IS_REG_OUT[0]),
        .I1(IS_REG_OUT[3]),
        .I2(IS_REG_OUT[2]),
        .I3(IS_REG_OUT[1]),
        .I4(AddRoundTWEAKEY_OUT[52]),
        .I5(SUBCELLS_OUT),
        .O(\FSM_onehot_current_state[5]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_23 
       (.I0(IS_REG_OUT[14]),
        .I1(IS_REG_OUT[15]),
        .I2(IS_REG_OUT[12]),
        .O(\INST_SUBCELLS/subcells_gen[3].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'hAB985467)) 
    \FSM_onehot_current_state[5]_i_24 
       (.I0(IS_REG_OUT[14]),
        .I1(IS_REG_OUT[13]),
        .I2(IS_REG_OUT[15]),
        .I3(IS_REG_OUT[12]),
        .I4(mixcolumns_out[1]),
        .O(\FSM_onehot_current_state[5]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hEDEB)) 
    \FSM_onehot_current_state[5]_i_25 
       (.I0(IS_REG_OUT[12]),
        .I1(IS_REG_OUT[15]),
        .I2(IS_REG_OUT[14]),
        .I3(IS_REG_OUT[13]),
        .O(\FSM_onehot_current_state[5]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_current_state[5]_i_27 
       (.I0(AddRoundTWEAKEY_OUT[49]),
        .I1(AddRoundTWEAKEY_OUT[50]),
        .I2(AddRoundTWEAKEY_OUT[51]),
        .I3(OUT_MUX_SEL__6),
        .O(\FSM_onehot_current_state[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h09FF00FF00FF09FF)) 
    \FSM_onehot_current_state[5]_i_28 
       (.I0(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ),
        .I1(AddRoundTWEAKEY_OUT[35]),
        .I2(AddRoundTWEAKEY_OUT[48]),
        .I3(OUT_MUX_SEL__6),
        .I4(AddRoundTWEAKEY_OUT[34]),
        .I5(\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ),
        .O(\FSM_onehot_current_state[5]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h08800000)) 
    \FSM_onehot_current_state[5]_i_29 
       (.I0(mixcolumns_out[29]),
        .I1(OUT_MUX_SEL__6),
        .I2(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ),
        .I3(AddRoundTWEAKEY_OUT[47]),
        .I4(\Q[28]_i_1_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h04400000)) 
    \FSM_onehot_current_state[5]_i_30 
       (.I0(mixcolumns_out[25]),
        .I1(OUT_MUX_SEL__6),
        .I2(\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ),
        .I3(AddRoundTWEAKEY_OUT[46]),
        .I4(\Q[24]_i_1_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0028280000000000)) 
    \FSM_onehot_current_state[5]_i_32 
       (.I0(OUT_MUX_SEL__6),
        .I1(\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ),
        .I2(AddRoundTWEAKEY_OUT[42]),
        .I3(AddRoundTWEAKEY_OUT[43]),
        .I4(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ),
        .I5(\Q[21]_i_1_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0880000000000880)) 
    \FSM_onehot_current_state[5]_i_33 
       (.I0(\FSM_onehot_current_state[5]_i_40_n_0 ),
        .I1(OUT_MUX_SEL__6),
        .I2(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ),
        .I3(AddRoundTWEAKEY_OUT[39]),
        .I4(SUBCELLS_OUT),
        .I5(AddRoundTWEAKEY_OUT[40]),
        .O(\FSM_onehot_current_state[5]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h80080000)) 
    \FSM_onehot_current_state[5]_i_34 
       (.I0(\Q[16]_i_1_n_0 ),
        .I1(OUT_MUX_SEL__6),
        .I2(AddRoundTWEAKEY_OUT[63]),
        .I3(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ),
        .I4(\FSM_onehot_current_state[5]_i_41_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h40040000)) 
    \FSM_onehot_current_state[5]_i_35 
       (.I0(mixcolumns_out[12]),
        .I1(OUT_MUX_SEL__6),
        .I2(AddRoundTWEAKEY_OUT[62]),
        .I3(\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ),
        .I4(mixcolumns_out[13]),
        .O(\FSM_onehot_current_state[5]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2800002800000000)) 
    \FSM_onehot_current_state[5]_i_36 
       (.I0(OUT_MUX_SEL__6),
        .I1(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ),
        .I2(AddRoundTWEAKEY_OUT[59]),
        .I3(AddRoundTWEAKEY_OUT[58]),
        .I4(\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ),
        .I5(mixcolumns_out[9]),
        .O(\FSM_onehot_current_state[5]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h2800002800000000)) 
    \FSM_onehot_current_state[5]_i_37 
       (.I0(OUT_MUX_SEL__6),
        .I1(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ),
        .I2(AddRoundTWEAKEY_OUT[55]),
        .I3(AddRoundTWEAKEY_OUT[54]),
        .I4(\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ),
        .I5(mixcolumns_out[8]),
        .O(\FSM_onehot_current_state[5]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000606000)) 
    \FSM_onehot_current_state[5]_i_38 
       (.I0(SUBCELLS_OUT),
        .I1(AddRoundTWEAKEY_OUT[52]),
        .I2(OUT_MUX_SEL__6),
        .I3(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ),
        .I4(AddRoundTWEAKEY_OUT[51]),
        .I5(mixcolumns_out[5]),
        .O(\FSM_onehot_current_state[5]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h04400000)) 
    \FSM_onehot_current_state[5]_i_39 
       (.I0(mixcolumns_out[0]),
        .I1(OUT_MUX_SEL__6),
        .I2(AddRoundTWEAKEY_OUT[50]),
        .I3(\INST_SUBCELLS/subcells_gen[6].subcells/p_2_out__0 ),
        .I4(mixcolumns_out[1]),
        .O(\FSM_onehot_current_state[5]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h66699996FFFFFFFF)) 
    \FSM_onehot_current_state[5]_i_4 
       (.I0(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ),
        .I1(AddRoundTWEAKEY_OUT[63]),
        .I2(IS_REG_OUT[10]),
        .I3(IS_REG_OUT[11]),
        .I4(IS_REG_OUT[8]),
        .I5(OUT_MUX_SEL__6),
        .O(\FSM_onehot_current_state[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669966996696996)) 
    \FSM_onehot_current_state[5]_i_40 
       (.I0(TK1_in[6]),
        .I1(\INST_SUBCELLS/subcells_gen[9].subcells/p_2_out ),
        .I2(TK2_in[6]),
        .I3(IS_REG_OUT[27]),
        .I4(IS_REG_OUT[26]),
        .I5(IS_REG_OUT[25]),
        .O(\FSM_onehot_current_state[5]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hA9A95665)) 
    \FSM_onehot_current_state[5]_i_41 
       (.I0(AddRoundTWEAKEY_OUT[37]),
        .I1(IS_REG_OUT[25]),
        .I2(IS_REG_OUT[24]),
        .I3(IS_REG_OUT[27]),
        .I4(IS_REG_OUT[26]),
        .O(\FSM_onehot_current_state[5]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0040400040000040)) 
    \FSM_onehot_current_state[5]_i_5 
       (.I0(mixcolumns_out[60]),
        .I1(\Q[62]_i_1_n_0 ),
        .I2(OUT_MUX_SEL__6),
        .I3(mixcolumns_out[13]),
        .I4(\FSM_onehot_current_state[5]_i_12_n_0 ),
        .I5(IS_REG_OUT[10]),
        .O(\FSM_onehot_current_state[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9600000000000000)) 
    \FSM_onehot_current_state[5]_i_7 
       (.I0(\INST_SUBCELLS/subcells_gen[1].subcells/p_1_out__0 ),
        .I1(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ),
        .I2(AddRoundTWEAKEY_OUT[59]),
        .I3(\Q[58]_i_1_n_0 ),
        .I4(OUT_MUX_SEL__6),
        .I5(\FSM_onehot_current_state[5]_i_19_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9600000000000000)) 
    \FSM_onehot_current_state[5]_i_8 
       (.I0(\INST_SUBCELLS/subcells_gen[0].subcells/p_1_out__0 ),
        .I1(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ),
        .I2(AddRoundTWEAKEY_OUT[55]),
        .I3(\Q[54]_i_1_n_0 ),
        .I4(OUT_MUX_SEL__6),
        .I5(\FSM_onehot_current_state[5]_i_21_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8228000000000000)) 
    \FSM_onehot_current_state[5]_i_9 
       (.I0(\FSM_onehot_current_state[5]_i_22_n_0 ),
        .I1(AddRoundTWEAKEY_OUT[51]),
        .I2(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ),
        .I3(\INST_SUBCELLS/subcells_gen[3].subcells/p_1_out__0 ),
        .I4(OUT_MUX_SEL__6),
        .I5(mixcolumns_out[53]),
        .O(\FSM_onehot_current_state[5]_i_9_n_0 ));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_13 
       (.CI(\FSM_onehot_current_state_reg[5]_i_26_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_13_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_13_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_27_n_0 ,\FSM_onehot_current_state[5]_i_28_n_0 ,\FSM_onehot_current_state[5]_i_29_n_0 ,\FSM_onehot_current_state[5]_i_30_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_2 
       (.CI(\FSM_onehot_current_state_reg[5]_i_3_n_0 ),
        .CO({\NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED [3:2],CO,\NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\FSM_onehot_current_state[5]_i_4_n_0 ,\FSM_onehot_current_state[5]_i_5_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_26 
       (.CI(\FSM_onehot_current_state_reg[5]_i_31_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_26_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_26_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_26_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_32_n_0 ,\FSM_onehot_current_state[5]_i_33_n_0 ,\FSM_onehot_current_state[5]_i_34_n_0 ,\FSM_onehot_current_state[5]_i_35_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_3 
       (.CI(\FSM_onehot_current_state_reg[5]_i_6_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_3_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_7_n_0 ,\FSM_onehot_current_state[5]_i_8_n_0 ,\FSM_onehot_current_state[5]_i_9_n_0 ,\FSM_onehot_current_state[5]_i_10_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_31 
       (.CI(1'b0),
        .CO({\FSM_onehot_current_state_reg[5]_i_31_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_31_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_31_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_36_n_0 ,\FSM_onehot_current_state[5]_i_37_n_0 ,\FSM_onehot_current_state[5]_i_38_n_0 ,\FSM_onehot_current_state[5]_i_39_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_6 
       (.CI(\FSM_onehot_current_state_reg[5]_i_13_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_6_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_6_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_14_n_0 ,\FSM_onehot_current_state[5]_i_15_n_0 ,\FSM_onehot_current_state[5]_i_16_n_0 ,\FSM_onehot_current_state[5]_i_17_n_0 }));
  LUT5 #(
    .INIT(32'h12EBED14)) 
    \Q[0]_i_1 
       (.I0(IS_REG_OUT[24]),
        .I1(IS_REG_OUT[27]),
        .I2(IS_REG_OUT[26]),
        .I3(IS_REG_OUT[25]),
        .I4(AddRoundTWEAKEY_OUT[48]),
        .O(mixcolumns_out[0]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[10]_i_1 
       (.I0(IS_REG_OUT[19]),
        .I1(IS_REG_OUT[18]),
        .I2(IS_REG_OUT[17]),
        .I3(AddRoundTWEAKEY_OUT[58]),
        .O(mixcolumns_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[11]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[59]),
        .I1(IS_REG_OUT[16]),
        .I2(IS_REG_OUT[19]),
        .I3(IS_REG_OUT[18]),
        .O(\Q[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h12EBED14)) 
    \Q[12]_i_1 
       (.I0(IS_REG_OUT[20]),
        .I1(IS_REG_OUT[23]),
        .I2(IS_REG_OUT[22]),
        .I3(IS_REG_OUT[21]),
        .I4(\Q_reg[61]_0 [2]),
        .O(mixcolumns_out[12]));
  LUT5 #(
    .INIT(32'h11EBEE14)) 
    \Q[13]_i_1 
       (.I0(IS_REG_OUT[21]),
        .I1(IS_REG_OUT[20]),
        .I2(IS_REG_OUT[23]),
        .I3(IS_REG_OUT[22]),
        .I4(\Q_reg[61]_0 [3]),
        .O(mixcolumns_out[13]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[14]_i_1 
       (.I0(IS_REG_OUT[23]),
        .I1(IS_REG_OUT[22]),
        .I2(IS_REG_OUT[21]),
        .I3(AddRoundTWEAKEY_OUT[62]),
        .O(mixcolumns_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[15]_i_1 
       (.I0(IS_REG_OUT[20]),
        .I1(IS_REG_OUT[23]),
        .I2(IS_REG_OUT[22]),
        .I3(AddRoundTWEAKEY_OUT[63]),
        .O(mixcolumns_out[15]));
  LUT5 #(
    .INIT(32'h5659A99A)) 
    \Q[16]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[36]),
        .I1(IS_REG_OUT[24]),
        .I2(IS_REG_OUT[27]),
        .I3(IS_REG_OUT[26]),
        .I4(IS_REG_OUT[25]),
        .O(\Q[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hED0612F912F9ED06)) 
    \Q[16]_i_2 
       (.I0(IS_REG_OUT[38]),
        .I1(IS_REG_OUT[39]),
        .I2(IS_REG_OUT[36]),
        .I3(IS_REG_OUT[37]),
        .I4(TK1_in[4]),
        .I5(TK2_in[4]),
        .O(AddRoundTWEAKEY_OUT[36]));
  LUT5 #(
    .INIT(32'h554BAAB4)) 
    \Q[17]_i_1 
       (.I0(IS_REG_OUT[26]),
        .I1(IS_REG_OUT[27]),
        .I2(IS_REG_OUT[24]),
        .I3(IS_REG_OUT[25]),
        .I4(AddRoundTWEAKEY_OUT[37]),
        .O(\Q[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC0603F903F9FC06)) 
    \Q[17]_i_2 
       (.I0(IS_REG_OUT[39]),
        .I1(IS_REG_OUT[36]),
        .I2(IS_REG_OUT[37]),
        .I3(IS_REG_OUT[38]),
        .I4(TK1_in[5]),
        .I5(TK2_in[5]),
        .O(AddRoundTWEAKEY_OUT[37]));
  LUT6 #(
    .INIT(64'h6969699696969669)) 
    \Q[18]_i_1 
       (.I0(TK1_in[6]),
        .I1(\INST_SUBCELLS/subcells_gen[9].subcells/p_2_out ),
        .I2(TK2_in[6]),
        .I3(IS_REG_OUT[25]),
        .I4(IS_REG_OUT[26]),
        .I5(IS_REG_OUT[27]),
        .O(\Q[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[18]_i_2 
       (.I0(IS_REG_OUT[37]),
        .I1(IS_REG_OUT[38]),
        .I2(IS_REG_OUT[39]),
        .O(\INST_SUBCELLS/subcells_gen[9].subcells/p_2_out ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[19]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[39]),
        .I1(IS_REG_OUT[24]),
        .I2(IS_REG_OUT[27]),
        .I3(IS_REG_OUT[26]),
        .O(\Q[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[19]_i_2 
       (.I0(IS_REG_OUT[38]),
        .I1(IS_REG_OUT[39]),
        .I2(IS_REG_OUT[36]),
        .I3(TK1_in[7]),
        .I4(TK2_in[7]),
        .O(AddRoundTWEAKEY_OUT[39]));
  LUT5 #(
    .INIT(32'h11EBEE14)) 
    \Q[1]_i_1 
       (.I0(IS_REG_OUT[25]),
        .I1(IS_REG_OUT[24]),
        .I2(IS_REG_OUT[27]),
        .I3(IS_REG_OUT[26]),
        .I4(AddRoundTWEAKEY_OUT[49]),
        .O(mixcolumns_out[1]));
  LUT6 #(
    .INIT(64'h000057490000A8B6)) 
    \Q[20]_i_1 
       (.I0(IS_REG_OUT[29]),
        .I1(IS_REG_OUT[30]),
        .I2(IS_REG_OUT[31]),
        .I3(IS_REG_OUT[28]),
        .I4(IN_MUX_SEL),
        .I5(AddRoundTWEAKEY_OUT[40]),
        .O(D));
  LUT2 #(
    .INIT(4'h1)) 
    \Q[20]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .O(IN_MUX_SEL));
  LUT6 #(
    .INIT(64'hED0612F912F9ED06)) 
    \Q[20]_i_3 
       (.I0(IS_REG_OUT[42]),
        .I1(IS_REG_OUT[43]),
        .I2(IS_REG_OUT[40]),
        .I3(IS_REG_OUT[41]),
        .I4(TK1_in[8]),
        .I5(TK2_in[8]),
        .O(AddRoundTWEAKEY_OUT[40]));
  LUT5 #(
    .INIT(32'h999996A5)) 
    \Q[21]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[41]),
        .I1(IS_REG_OUT[30]),
        .I2(IS_REG_OUT[28]),
        .I3(IS_REG_OUT[31]),
        .I4(IS_REG_OUT[29]),
        .O(\Q[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC0603F903F9FC06)) 
    \Q[21]_i_2 
       (.I0(IS_REG_OUT[43]),
        .I1(IS_REG_OUT[40]),
        .I2(IS_REG_OUT[41]),
        .I3(IS_REG_OUT[42]),
        .I4(TK1_in[9]),
        .I5(TK2_in[9]),
        .O(AddRoundTWEAKEY_OUT[41]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[22]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[42]),
        .I1(IS_REG_OUT[31]),
        .I2(IS_REG_OUT[30]),
        .I3(IS_REG_OUT[29]),
        .O(\Q[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[22]_i_2 
       (.I0(IS_REG_OUT[41]),
        .I1(IS_REG_OUT[42]),
        .I2(IS_REG_OUT[43]),
        .I3(TK1_in[10]),
        .I4(TK2_in[10]),
        .O(AddRoundTWEAKEY_OUT[42]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[23]_i_1 
       (.I0(IS_REG_OUT[28]),
        .I1(IS_REG_OUT[31]),
        .I2(IS_REG_OUT[30]),
        .I3(AddRoundTWEAKEY_OUT[43]),
        .O(mixcolumns_out[23]));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[23]_i_2 
       (.I0(IS_REG_OUT[42]),
        .I1(IS_REG_OUT[43]),
        .I2(IS_REG_OUT[40]),
        .I3(TK1_in[11]),
        .I4(TK2_in[11]),
        .O(AddRoundTWEAKEY_OUT[43]));
  LUT5 #(
    .INIT(32'h11EBEE14)) 
    \Q[25]_i_1 
       (.I0(IS_REG_OUT[17]),
        .I1(IS_REG_OUT[16]),
        .I2(IS_REG_OUT[19]),
        .I3(IS_REG_OUT[18]),
        .I4(\Q_reg[61]_0 [1]),
        .O(mixcolumns_out[25]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[26]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[46]),
        .I1(IS_REG_OUT[19]),
        .I2(IS_REG_OUT[18]),
        .I3(IS_REG_OUT[17]),
        .O(\Q[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[26]_i_2 
       (.I0(IS_REG_OUT[45]),
        .I1(IS_REG_OUT[46]),
        .I2(IS_REG_OUT[47]),
        .I3(TK1_in[12]),
        .I4(TK2_in[12]),
        .O(AddRoundTWEAKEY_OUT[46]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[27]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[47]),
        .I1(IS_REG_OUT[16]),
        .I2(IS_REG_OUT[19]),
        .I3(IS_REG_OUT[18]),
        .O(\Q[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[27]_i_2 
       (.I0(IS_REG_OUT[46]),
        .I1(IS_REG_OUT[47]),
        .I2(IS_REG_OUT[44]),
        .I3(TK1_in[13]),
        .I4(TK2_in[13]),
        .O(AddRoundTWEAKEY_OUT[47]));
  LUT5 #(
    .INIT(32'h5659A99A)) 
    \Q[28]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[32]),
        .I1(IS_REG_OUT[20]),
        .I2(IS_REG_OUT[23]),
        .I3(IS_REG_OUT[22]),
        .I4(IS_REG_OUT[21]),
        .O(\Q[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hED0612F912F9ED06)) 
    \Q[28]_i_2 
       (.I0(IS_REG_OUT[34]),
        .I1(IS_REG_OUT[35]),
        .I2(IS_REG_OUT[32]),
        .I3(IS_REG_OUT[33]),
        .I4(TK1_in[0]),
        .I5(TK2_in[0]),
        .O(AddRoundTWEAKEY_OUT[32]));
  LUT5 #(
    .INIT(32'h11EBEE14)) 
    \Q[29]_i_1 
       (.I0(IS_REG_OUT[21]),
        .I1(IS_REG_OUT[20]),
        .I2(IS_REG_OUT[23]),
        .I3(IS_REG_OUT[22]),
        .I4(AddRoundTWEAKEY_OUT[33]),
        .O(mixcolumns_out[29]));
  LUT6 #(
    .INIT(64'hFC0603F903F9FC06)) 
    \Q[29]_i_2 
       (.I0(IS_REG_OUT[35]),
        .I1(IS_REG_OUT[32]),
        .I2(IS_REG_OUT[33]),
        .I3(IS_REG_OUT[34]),
        .I4(TK1_in[1]),
        .I5(TK2_in[1]),
        .O(AddRoundTWEAKEY_OUT[33]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[2]_i_1 
       (.I0(IS_REG_OUT[27]),
        .I1(IS_REG_OUT[26]),
        .I2(IS_REG_OUT[25]),
        .I3(AddRoundTWEAKEY_OUT[50]),
        .O(mixcolumns_out[2]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[30]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[34]),
        .I1(IS_REG_OUT[21]),
        .I2(IS_REG_OUT[22]),
        .I3(IS_REG_OUT[23]),
        .O(\Q[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[30]_i_2 
       (.I0(IS_REG_OUT[33]),
        .I1(IS_REG_OUT[34]),
        .I2(IS_REG_OUT[35]),
        .I3(TK1_in[2]),
        .I4(TK2_in[2]),
        .O(AddRoundTWEAKEY_OUT[34]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1EE1)) 
    \Q[31]_i_1 
       (.I0(IS_REG_OUT[22]),
        .I1(IS_REG_OUT[23]),
        .I2(IS_REG_OUT[20]),
        .I3(AddRoundTWEAKEY_OUT[35]),
        .O(\Q[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[31]_i_2 
       (.I0(IS_REG_OUT[34]),
        .I1(IS_REG_OUT[35]),
        .I2(IS_REG_OUT[32]),
        .I3(TK1_in[3]),
        .I4(TK2_in[3]),
        .O(AddRoundTWEAKEY_OUT[35]));
  LUT6 #(
    .INIT(64'hED0612F912F9ED06)) 
    \Q[32]_i_1__0 
       (.I0(IS_REG_OUT[50]),
        .I1(IS_REG_OUT[51]),
        .I2(IS_REG_OUT[48]),
        .I3(IS_REG_OUT[49]),
        .I4(TK1_in[14]),
        .I5(TK2_in[14]),
        .O(AddRoundTWEAKEY_OUT[48]));
  LUT6 #(
    .INIT(64'hFC0603F903F9FC06)) 
    \Q[33]_i_1 
       (.I0(IS_REG_OUT[51]),
        .I1(IS_REG_OUT[48]),
        .I2(IS_REG_OUT[49]),
        .I3(IS_REG_OUT[50]),
        .I4(TK1_in[15]),
        .I5(TK2_in[15]),
        .O(AddRoundTWEAKEY_OUT[49]));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[34]_i_1 
       (.I0(IS_REG_OUT[49]),
        .I1(IS_REG_OUT[50]),
        .I2(IS_REG_OUT[51]),
        .I3(TK1_in[16]),
        .I4(TK2_in[16]),
        .O(AddRoundTWEAKEY_OUT[50]));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[35]_i_1 
       (.I0(IS_REG_OUT[50]),
        .I1(IS_REG_OUT[51]),
        .I2(IS_REG_OUT[48]),
        .I3(TK1_in[17]),
        .I4(TK2_in[17]),
        .O(AddRoundTWEAKEY_OUT[51]));
  LUT6 #(
    .INIT(64'hED0612F912F9ED06)) 
    \Q[36]_i_1__0 
       (.I0(IS_REG_OUT[54]),
        .I1(IS_REG_OUT[55]),
        .I2(IS_REG_OUT[52]),
        .I3(IS_REG_OUT[53]),
        .I4(TK1_in[18]),
        .I5(TK2_in[18]),
        .O(AddRoundTWEAKEY_OUT[52]));
  LUT6 #(
    .INIT(64'hFC0603F903F9FC06)) 
    \Q[37]_i_1 
       (.I0(IS_REG_OUT[55]),
        .I1(IS_REG_OUT[52]),
        .I2(IS_REG_OUT[53]),
        .I3(IS_REG_OUT[54]),
        .I4(TK1_in[19]),
        .I5(TK2_in[19]),
        .O(AddRoundTWEAKEY_OUT[53]));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[38]_i_1 
       (.I0(IS_REG_OUT[53]),
        .I1(IS_REG_OUT[54]),
        .I2(IS_REG_OUT[55]),
        .I3(TK1_in[20]),
        .I4(TK2_in[20]),
        .O(AddRoundTWEAKEY_OUT[54]));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[39]_i_1 
       (.I0(IS_REG_OUT[54]),
        .I1(IS_REG_OUT[55]),
        .I2(IS_REG_OUT[52]),
        .I3(TK1_in[21]),
        .I4(TK2_in[21]),
        .O(AddRoundTWEAKEY_OUT[55]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[3]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[51]),
        .I1(IS_REG_OUT[24]),
        .I2(IS_REG_OUT[27]),
        .I3(IS_REG_OUT[26]),
        .O(\Q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hED0612F912F9ED06)) 
    \Q[40]_i_1__0 
       (.I0(IS_REG_OUT[58]),
        .I1(IS_REG_OUT[59]),
        .I2(IS_REG_OUT[56]),
        .I3(IS_REG_OUT[57]),
        .I4(TK1_in[22]),
        .I5(TK2_in[22]),
        .O(AddRoundTWEAKEY_OUT[56]));
  LUT6 #(
    .INIT(64'hFC0603F903F9FC06)) 
    \Q[41]_i_1 
       (.I0(IS_REG_OUT[59]),
        .I1(IS_REG_OUT[56]),
        .I2(IS_REG_OUT[57]),
        .I3(IS_REG_OUT[58]),
        .I4(TK1_in[23]),
        .I5(TK2_in[23]),
        .O(AddRoundTWEAKEY_OUT[57]));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[42]_i_1 
       (.I0(IS_REG_OUT[57]),
        .I1(IS_REG_OUT[58]),
        .I2(IS_REG_OUT[59]),
        .I3(TK1_in[24]),
        .I4(TK2_in[24]),
        .O(AddRoundTWEAKEY_OUT[58]));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[43]_i_1 
       (.I0(IS_REG_OUT[58]),
        .I1(IS_REG_OUT[59]),
        .I2(IS_REG_OUT[56]),
        .I3(TK1_in[25]),
        .I4(TK2_in[25]),
        .O(AddRoundTWEAKEY_OUT[59]));
  LUT6 #(
    .INIT(64'h6669999699966669)) 
    \Q[46]_i_1 
       (.I0(Q[2]),
        .I1(IS_REG_OUT[63]),
        .I2(IS_REG_OUT[62]),
        .I3(IS_REG_OUT[61]),
        .I4(TK1_in[26]),
        .I5(TK2_in[26]),
        .O(AddRoundTWEAKEY_OUT[62]));
  LUT6 #(
    .INIT(64'h6669999699966669)) 
    \Q[47]_i_1 
       (.I0(Q[3]),
        .I1(IS_REG_OUT[60]),
        .I2(IS_REG_OUT[63]),
        .I3(IS_REG_OUT[62]),
        .I4(TK1_in[27]),
        .I5(TK2_in[27]),
        .O(AddRoundTWEAKEY_OUT[63]));
  LUT5 #(
    .INIT(32'h564DA9B2)) 
    \Q[48]_i_1 
       (.I0(IS_REG_OUT[13]),
        .I1(IS_REG_OUT[12]),
        .I2(IS_REG_OUT[15]),
        .I3(IS_REG_OUT[14]),
        .I4(mixcolumns_out[0]),
        .O(mixcolumns_out[48]));
  LUT5 #(
    .INIT(32'h5566AA96)) 
    \Q[49]_i_1 
       (.I0(mixcolumns_out[1]),
        .I1(IS_REG_OUT[12]),
        .I2(IS_REG_OUT[15]),
        .I3(IS_REG_OUT[13]),
        .I4(IS_REG_OUT[14]),
        .O(\Q[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h12EBED14)) 
    \Q[4]_i_1 
       (.I0(IS_REG_OUT[28]),
        .I1(IS_REG_OUT[31]),
        .I2(IS_REG_OUT[30]),
        .I3(IS_REG_OUT[29]),
        .I4(AddRoundTWEAKEY_OUT[52]),
        .O(mixcolumns_out[4]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[50]_i_1 
       (.I0(IS_REG_OUT[15]),
        .I1(IS_REG_OUT[14]),
        .I2(IS_REG_OUT[13]),
        .I3(AddRoundTWEAKEY_OUT[50]),
        .I4(\INST_SUBCELLS/subcells_gen[6].subcells/p_2_out__0 ),
        .O(\Q[50]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[50]_i_2 
       (.I0(IS_REG_OUT[25]),
        .I1(IS_REG_OUT[26]),
        .I2(IS_REG_OUT[27]),
        .O(\INST_SUBCELLS/subcells_gen[6].subcells/p_2_out__0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[51]_i_1 
       (.I0(IS_REG_OUT[14]),
        .I1(IS_REG_OUT[15]),
        .I2(IS_REG_OUT[12]),
        .I3(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ),
        .I4(AddRoundTWEAKEY_OUT[51]),
        .O(mixcolumns_out[51]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[51]_i_2 
       (.I0(IS_REG_OUT[26]),
        .I1(IS_REG_OUT[27]),
        .I2(IS_REG_OUT[24]),
        .O(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ));
  LUT6 #(
    .INIT(64'h9696966696996996)) 
    \Q[52]_i_1 
       (.I0(SUBCELLS_OUT),
        .I1(AddRoundTWEAKEY_OUT[52]),
        .I2(IS_REG_OUT[1]),
        .I3(IS_REG_OUT[2]),
        .I4(IS_REG_OUT[3]),
        .I5(IS_REG_OUT[0]),
        .O(\Q[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA8B6)) 
    \Q[52]_i_2 
       (.I0(IS_REG_OUT[29]),
        .I1(IS_REG_OUT[30]),
        .I2(IS_REG_OUT[31]),
        .I3(IS_REG_OUT[28]),
        .O(SUBCELLS_OUT));
  LUT5 #(
    .INIT(32'h5563AA9C)) 
    \Q[53]_i_1 
       (.I0(IS_REG_OUT[2]),
        .I1(IS_REG_OUT[0]),
        .I2(IS_REG_OUT[3]),
        .I3(IS_REG_OUT[1]),
        .I4(mixcolumns_out[5]),
        .O(mixcolumns_out[53]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[54]_i_1 
       (.I0(IS_REG_OUT[3]),
        .I1(IS_REG_OUT[2]),
        .I2(IS_REG_OUT[1]),
        .I3(AddRoundTWEAKEY_OUT[54]),
        .I4(\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ),
        .O(\Q[54]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[54]_i_2 
       (.I0(IS_REG_OUT[29]),
        .I1(IS_REG_OUT[30]),
        .I2(IS_REG_OUT[31]),
        .O(\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[55]_i_1 
       (.I0(IS_REG_OUT[2]),
        .I1(IS_REG_OUT[3]),
        .I2(IS_REG_OUT[0]),
        .I3(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ),
        .I4(AddRoundTWEAKEY_OUT[55]),
        .O(mixcolumns_out[55]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[55]_i_2 
       (.I0(IS_REG_OUT[30]),
        .I1(IS_REG_OUT[31]),
        .I2(IS_REG_OUT[28]),
        .O(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'h666A6596)) 
    \Q[56]_i_1 
       (.I0(mixcolumns_out[8]),
        .I1(IS_REG_OUT[5]),
        .I2(IS_REG_OUT[6]),
        .I3(IS_REG_OUT[7]),
        .I4(IS_REG_OUT[4]),
        .O(\Q[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6666659A)) 
    \Q[57]_i_1 
       (.I0(mixcolumns_out[9]),
        .I1(IS_REG_OUT[6]),
        .I2(IS_REG_OUT[7]),
        .I3(IS_REG_OUT[4]),
        .I4(IS_REG_OUT[5]),
        .O(\Q[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[58]_i_1 
       (.I0(IS_REG_OUT[7]),
        .I1(IS_REG_OUT[6]),
        .I2(IS_REG_OUT[5]),
        .I3(AddRoundTWEAKEY_OUT[58]),
        .I4(\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ),
        .O(\Q[58]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[58]_i_2 
       (.I0(IS_REG_OUT[17]),
        .I1(IS_REG_OUT[18]),
        .I2(IS_REG_OUT[19]),
        .O(\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \Q[59]_i_1 
       (.I0(IS_REG_OUT[6]),
        .I1(IS_REG_OUT[7]),
        .I2(IS_REG_OUT[4]),
        .I3(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ),
        .I4(AddRoundTWEAKEY_OUT[59]),
        .O(mixcolumns_out[59]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[59]_i_2 
       (.I0(IS_REG_OUT[18]),
        .I1(IS_REG_OUT[19]),
        .I2(IS_REG_OUT[16]),
        .O(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'hAA9C5563)) 
    \Q[5]_i_1 
       (.I0(IS_REG_OUT[30]),
        .I1(IS_REG_OUT[28]),
        .I2(IS_REG_OUT[31]),
        .I3(IS_REG_OUT[29]),
        .I4(AddRoundTWEAKEY_OUT[53]),
        .O(mixcolumns_out[5]));
  LUT5 #(
    .INIT(32'h12EBED14)) 
    \Q[60]_i_1 
       (.I0(IS_REG_OUT[8]),
        .I1(IS_REG_OUT[11]),
        .I2(IS_REG_OUT[10]),
        .I3(IS_REG_OUT[9]),
        .I4(mixcolumns_out[12]),
        .O(mixcolumns_out[60]));
  LUT5 #(
    .INIT(32'h5563AA9C)) 
    \Q[61]_i_1 
       (.I0(IS_REG_OUT[10]),
        .I1(IS_REG_OUT[8]),
        .I2(IS_REG_OUT[11]),
        .I3(IS_REG_OUT[9]),
        .I4(mixcolumns_out[13]),
        .O(mixcolumns_out[61]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[62]_i_1 
       (.I0(IS_REG_OUT[11]),
        .I1(IS_REG_OUT[10]),
        .I2(IS_REG_OUT[9]),
        .I3(AddRoundTWEAKEY_OUT[62]),
        .I4(\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ),
        .O(\Q[62]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[62]_i_2 
       (.I0(out[0]),
        .O(regs_ce));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[62]_i_2__0 
       (.I0(IS_REG_OUT[21]),
        .I1(IS_REG_OUT[22]),
        .I2(IS_REG_OUT[23]),
        .O(\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ));
  LUT5 #(
    .INIT(32'h99966669)) 
    \Q[63]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ),
        .I1(AddRoundTWEAKEY_OUT[63]),
        .I2(IS_REG_OUT[10]),
        .I3(IS_REG_OUT[11]),
        .I4(IS_REG_OUT[8]),
        .O(\Q[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[63]_i_2 
       (.I0(IS_REG_OUT[22]),
        .I1(IS_REG_OUT[23]),
        .I2(IS_REG_OUT[20]),
        .O(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[6]_i_1 
       (.I0(IS_REG_OUT[31]),
        .I1(IS_REG_OUT[30]),
        .I2(IS_REG_OUT[29]),
        .I3(AddRoundTWEAKEY_OUT[54]),
        .O(mixcolumns_out[6]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[7]_i_1 
       (.I0(AddRoundTWEAKEY_OUT[55]),
        .I1(IS_REG_OUT[28]),
        .I2(IS_REG_OUT[31]),
        .I3(IS_REG_OUT[30]),
        .O(\Q[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h12EBED14)) 
    \Q[8]_i_1 
       (.I0(IS_REG_OUT[16]),
        .I1(IS_REG_OUT[19]),
        .I2(IS_REG_OUT[18]),
        .I3(IS_REG_OUT[17]),
        .I4(AddRoundTWEAKEY_OUT[56]),
        .O(mixcolumns_out[8]));
  LUT5 #(
    .INIT(32'h11EBEE14)) 
    \Q[9]_i_1 
       (.I0(IS_REG_OUT[17]),
        .I1(IS_REG_OUT[16]),
        .I2(IS_REG_OUT[19]),
        .I3(IS_REG_OUT[18]),
        .I4(AddRoundTWEAKEY_OUT[57]),
        .O(mixcolumns_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[0]),
        .Q(IS_REG_OUT[0]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[10]),
        .Q(IS_REG_OUT[10]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[11]_i_1_n_0 ),
        .Q(IS_REG_OUT[11]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[12]),
        .Q(IS_REG_OUT[12]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[13]),
        .Q(IS_REG_OUT[13]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[14]),
        .Q(IS_REG_OUT[14]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[15]),
        .Q(IS_REG_OUT[15]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[16]_i_1_n_0 ),
        .Q(IS_REG_OUT[16]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[17]_i_1_n_0 ),
        .Q(IS_REG_OUT[17]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[18]_i_1_n_0 ),
        .Q(IS_REG_OUT[18]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[19]_i_1_n_0 ),
        .Q(IS_REG_OUT[19]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[1]),
        .Q(IS_REG_OUT[1]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(D),
        .Q(IS_REG_OUT[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[21]_i_1_n_0 ),
        .Q(IS_REG_OUT[21]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[22]_i_1_n_0 ),
        .Q(IS_REG_OUT[22]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[23]),
        .Q(IS_REG_OUT[23]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[24]_i_1_n_0 ),
        .Q(IS_REG_OUT[24]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[25]),
        .Q(IS_REG_OUT[25]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[26]_i_1_n_0 ),
        .Q(IS_REG_OUT[26]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[27]_i_1_n_0 ),
        .Q(IS_REG_OUT[27]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[28]_i_1_n_0 ),
        .Q(IS_REG_OUT[28]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[29]),
        .Q(IS_REG_OUT[29]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[2]),
        .Q(IS_REG_OUT[2]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[30]_i_1_n_0 ),
        .Q(IS_REG_OUT[30]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[31]_i_1_n_0 ),
        .Q(IS_REG_OUT[31]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[48]),
        .Q(IS_REG_OUT[32]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[49]),
        .Q(IS_REG_OUT[33]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[50]),
        .Q(IS_REG_OUT[34]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[51]),
        .Q(IS_REG_OUT[35]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[52]),
        .Q(IS_REG_OUT[36]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[53]),
        .Q(IS_REG_OUT[37]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[54]),
        .Q(IS_REG_OUT[38]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[55]),
        .Q(IS_REG_OUT[39]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[3]_i_1_n_0 ),
        .Q(IS_REG_OUT[3]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[56]),
        .Q(IS_REG_OUT[40]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[57]),
        .Q(IS_REG_OUT[41]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[58]),
        .Q(IS_REG_OUT[42]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[59]),
        .Q(IS_REG_OUT[43]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[61]_0 [2]),
        .Q(IS_REG_OUT[44]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[61]_0 [3]),
        .Q(IS_REG_OUT[45]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[62]),
        .Q(IS_REG_OUT[46]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[63]),
        .Q(IS_REG_OUT[47]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[48]),
        .Q(IS_REG_OUT[48]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[49]_i_1_n_0 ),
        .Q(IS_REG_OUT[49]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[4]),
        .Q(IS_REG_OUT[4]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[50]_i_1_n_0 ),
        .Q(IS_REG_OUT[50]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[51]),
        .Q(IS_REG_OUT[51]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[52]_i_1_n_0 ),
        .Q(IS_REG_OUT[52]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[53]),
        .Q(IS_REG_OUT[53]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[54]_i_1_n_0 ),
        .Q(IS_REG_OUT[54]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[55]),
        .Q(IS_REG_OUT[55]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[56]_i_1_n_0 ),
        .Q(IS_REG_OUT[56]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[57]_i_1_n_0 ),
        .Q(IS_REG_OUT[57]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[58]_i_1_n_0 ),
        .Q(IS_REG_OUT[58]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[59]),
        .Q(IS_REG_OUT[59]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[5]),
        .Q(IS_REG_OUT[5]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[60]),
        .Q(IS_REG_OUT[60]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[61]),
        .Q(IS_REG_OUT[61]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[62]_i_1_n_0 ),
        .Q(IS_REG_OUT[62]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[63]_i_1_n_0 ),
        .Q(IS_REG_OUT[63]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[6]),
        .Q(IS_REG_OUT[6]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[7]_i_1_n_0 ),
        .Q(IS_REG_OUT[7]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[8]),
        .Q(IS_REG_OUT[8]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[9]),
        .Q(IS_REG_OUT[9]),
        .R(\FSM_sequential_current_state_reg[1] ));
  LUT5 #(
    .INIT(32'hA9A65665)) 
    \xlnx_opt_LUT_Q[24]_i_1 
       (.I0(Q[4]),
        .I1(IS_REG_OUT[44]),
        .I2(IS_REG_OUT[47]),
        .I3(IS_REG_OUT[46]),
        .I4(IS_REG_OUT[45]),
        .O(\xlnx_opt_Q[24]_i_1_n_0_1 ));
  LUT3 #(
    .INIT(8'h69)) 
    \xlnx_opt_LUT_Q[24]_i_1_1 
       (.I0(\^lopt ),
        .I1(\^lopt_1 ),
        .I2(\xlnx_opt_Q[24]_i_1_n_0_1 ),
        .O(\xlnx_opt_Q[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h12EBED14)) 
    \xlnx_opt_LUT_Q[24]_i_1_2 
       (.I0(IS_REG_OUT[16]),
        .I1(IS_REG_OUT[19]),
        .I2(IS_REG_OUT[18]),
        .I3(IS_REG_OUT[17]),
        .I4(\xlnx_opt_Q[24]_i_1_n_0 ),
        .O(\Q[24]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module reg_0
   (\Q_reg[2]_0 ,
    \Q_reg[31]_0 ,
    \Q_reg[45]_0 ,
    out,
    regs_ce,
    clk_IBUF_BUFG,
    AddRoundConstants_OUT,
    TK2_in,
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
  output \Q_reg[2]_0 ;
  output [27:0]\Q_reg[31]_0 ;
  output [3:0]\Q_reg[45]_0 ;
  input [1:0]out;
  input regs_ce;
  input clk_IBUF_BUFG;
  input [3:0]AddRoundConstants_OUT;
  input [3:0]TK2_in;
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
  output lopt_11;

  wire \Q_reg[2]_0 ;
  wire [27:0]\Q_reg[31]_0 ;
  wire [3:0]\Q_reg[45]_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[10] ;
  wire \Q_reg_n_0_[11] ;
  wire \Q_reg_n_0_[12] ;
  wire \Q_reg_n_0_[13] ;
  wire \Q_reg_n_0_[14] ;
  wire \Q_reg_n_0_[15] ;
  wire \Q_reg_n_0_[16] ;
  wire \Q_reg_n_0_[17] ;
  wire \Q_reg_n_0_[18] ;
  wire \Q_reg_n_0_[19] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[20] ;
  wire \Q_reg_n_0_[21] ;
  wire \Q_reg_n_0_[22] ;
  wire \Q_reg_n_0_[23] ;
  wire \Q_reg_n_0_[24] ;
  wire \Q_reg_n_0_[25] ;
  wire \Q_reg_n_0_[26] ;
  wire \Q_reg_n_0_[27] ;
  wire \Q_reg_n_0_[28] ;
  wire \Q_reg_n_0_[29] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[30] ;
  wire \Q_reg_n_0_[31] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire [29:12]TK1_in;
  wire [3:0]TK2_in;
  wire clk_IBUF_BUFG;
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
  wire [1:0]out;
  wire regs_ce;
  wire \xlnx_opt_Q_reg[45]_0[1] ;
  wire \xlnx_opt_Q_reg[45]_0[2] ;
  wire \xlnx_opt_Q_reg[45]_0[3] ;

  assign lopt_11 = TK1_in[12];
  LUT2 #(
    .INIT(4'h1)) 
    \Q[62]_i_1__0 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [0]),
        .Q(\Q_reg_n_0_[0] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [10]),
        .Q(\Q_reg_n_0_[10] ),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [11]),
        .Q(\Q_reg_n_0_[11] ),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK1_in[12]),
        .Q(\Q_reg_n_0_[12] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK1_in[13]),
        .Q(\Q_reg_n_0_[13] ),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [12]),
        .Q(\Q_reg_n_0_[14] ),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [13]),
        .Q(\Q_reg_n_0_[15] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [14]),
        .Q(\Q_reg_n_0_[16] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [15]),
        .Q(\Q_reg_n_0_[17] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [16]),
        .Q(\Q_reg_n_0_[18] ),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [17]),
        .Q(\Q_reg_n_0_[19] ),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [1]),
        .Q(\Q_reg_n_0_[1] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [18]),
        .Q(\Q_reg_n_0_[20] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [19]),
        .Q(\Q_reg_n_0_[21] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [20]),
        .Q(\Q_reg_n_0_[22] ),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [21]),
        .Q(\Q_reg_n_0_[23] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [22]),
        .Q(\Q_reg_n_0_[24] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [23]),
        .Q(\Q_reg_n_0_[25] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [24]),
        .Q(\Q_reg_n_0_[26] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [25]),
        .Q(\Q_reg_n_0_[27] ),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK1_in[28]),
        .Q(\Q_reg_n_0_[28] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK1_in[29]),
        .Q(\Q_reg_n_0_[29] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [2]),
        .Q(\Q_reg_n_0_[2] ),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [26]),
        .Q(\Q_reg_n_0_[30] ),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [27]),
        .Q(\Q_reg_n_0_[31] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[16] ),
        .Q(\Q_reg[31]_0 [0]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[17] ),
        .Q(\Q_reg[31]_0 [1]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[18] ),
        .Q(\Q_reg[31]_0 [2]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[19] ),
        .Q(\Q_reg[31]_0 [3]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[12] ),
        .Q(\Q_reg[31]_0 [4]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[13] ),
        .Q(\Q_reg[31]_0 [5]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[14] ),
        .Q(\Q_reg[31]_0 [6]),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[15] ),
        .Q(\Q_reg[31]_0 [7]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [3]),
        .Q(\Q_reg_n_0_[3] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[4] ),
        .Q(\Q_reg[31]_0 [8]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[5] ),
        .Q(\Q_reg[31]_0 [9]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[6] ),
        .Q(\Q_reg[31]_0 [10]),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[7] ),
        .Q(\Q_reg[31]_0 [11]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[20] ),
        .Q(TK1_in[12]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[21] ),
        .Q(TK1_in[13]),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[22] ),
        .Q(\Q_reg[31]_0 [12]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[23] ),
        .Q(\Q_reg[31]_0 [13]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[8] ),
        .Q(\Q_reg[31]_0 [14]),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[9] ),
        .Q(\Q_reg[31]_0 [15]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [4]),
        .Q(\Q_reg_n_0_[4] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[10] ),
        .Q(\Q_reg[31]_0 [16]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[11] ),
        .Q(\Q_reg[31]_0 [17]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[28] ),
        .Q(\Q_reg[31]_0 [18]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[29] ),
        .Q(\Q_reg[31]_0 [19]),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[30] ),
        .Q(\Q_reg[31]_0 [20]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[31] ),
        .Q(\Q_reg[31]_0 [21]),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[0] ),
        .Q(\Q_reg[31]_0 [22]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[1] ),
        .Q(\Q_reg[31]_0 [23]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[2] ),
        .Q(\Q_reg[31]_0 [24]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[3] ),
        .Q(\Q_reg[31]_0 [25]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [5]),
        .Q(\Q_reg_n_0_[5] ),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[24] ),
        .Q(TK1_in[28]),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[25] ),
        .Q(TK1_in[29]),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[26] ),
        .Q(\Q_reg[31]_0 [26]),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[27] ),
        .Q(\Q_reg[31]_0 [27]),
        .S(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [6]),
        .Q(\Q_reg_n_0_[6] ),
        .S(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [7]),
        .Q(\Q_reg_n_0_[7] ),
        .R(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [8]),
        .Q(\Q_reg_n_0_[8] ),
        .R(\Q_reg[2]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg[31]_0 [9]),
        .Q(\Q_reg_n_0_[9] ),
        .S(\Q_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h99999A65)) 
    \xlnx_opt_LUT_Q[25]_i_2 
       (.I0(lopt),
        .I1(lopt_1),
        .I2(lopt_2),
        .I3(lopt_3),
        .I4(lopt_4),
        .O(\xlnx_opt_Q_reg[45]_0[1] ));
  LUT3 #(
    .INIT(8'h69)) 
    \xlnx_opt_LUT_Q[25]_i_2_1 
       (.I0(TK1_in[13]),
        .I1(TK2_in[1]),
        .I2(\xlnx_opt_Q_reg[45]_0[1] ),
        .O(\Q_reg[45]_0 [1]));
  LUT5 #(
    .INIT(32'hA9A65665)) 
    \xlnx_opt_LUT_Q[44]_i_1 
       (.I0(lopt_10),
        .I1(lopt_8),
        .I2(lopt_7),
        .I3(lopt_6),
        .I4(lopt_9),
        .O(\xlnx_opt_Q_reg[45]_0[2] ));
  LUT3 #(
    .INIT(8'h69)) 
    \xlnx_opt_LUT_Q[44]_i_1_1 
       (.I0(TK1_in[28]),
        .I1(TK2_in[2]),
        .I2(\xlnx_opt_Q_reg[45]_0[2] ),
        .O(\Q_reg[45]_0 [2]));
  LUT5 #(
    .INIT(32'h99999A65)) 
    \xlnx_opt_LUT_Q[45]_i_1 
       (.I0(lopt_5),
        .I1(lopt_6),
        .I2(lopt_7),
        .I3(lopt_8),
        .I4(lopt_9),
        .O(\xlnx_opt_Q_reg[45]_0[3] ));
  LUT3 #(
    .INIT(8'h69)) 
    \xlnx_opt_LUT_Q[45]_i_1_1 
       (.I0(TK1_in[29]),
        .I1(TK2_in[3]),
        .I2(\xlnx_opt_Q_reg[45]_0[3] ),
        .O(\Q_reg[45]_0 [3]));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module reg_1
   (TK2_in,
    out,
    regs_ce,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[1] );
  output [31:0]TK2_in;
  input [0:0]out;
  input regs_ce;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[1] ;

  wire \FSM_sequential_current_state_reg[1] ;
  wire \Q[32]_i_1_n_0 ;
  wire \Q[36]_i_1_n_0 ;
  wire \Q[40]_i_1_n_0 ;
  wire \Q[44]_i_1__0_n_0 ;
  wire \Q[48]_i_1__0_n_0 ;
  wire \Q[52]_i_1__0_n_0 ;
  wire \Q[56]_i_1__0_n_0 ;
  wire \Q[60]_i_1__0_n_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[10] ;
  wire \Q_reg_n_0_[11] ;
  wire \Q_reg_n_0_[12] ;
  wire \Q_reg_n_0_[13] ;
  wire \Q_reg_n_0_[14] ;
  wire \Q_reg_n_0_[15] ;
  wire \Q_reg_n_0_[16] ;
  wire \Q_reg_n_0_[17] ;
  wire \Q_reg_n_0_[18] ;
  wire \Q_reg_n_0_[19] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[20] ;
  wire \Q_reg_n_0_[21] ;
  wire \Q_reg_n_0_[22] ;
  wire \Q_reg_n_0_[23] ;
  wire \Q_reg_n_0_[28] ;
  wire \Q_reg_n_0_[29] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[30] ;
  wire \Q_reg_n_0_[31] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire [31:0]TK2_in;
  wire clk_IBUF_BUFG;
  wire [3:0]lfsr_tk2_in;
  wire [0:0]out;
  wire regs_ce;

  LUT3 #(
    .INIT(8'h28)) 
    \Q[32]_i_1 
       (.I0(out),
        .I1(\Q_reg_n_0_[18] ),
        .I2(\Q_reg_n_0_[19] ),
        .O(\Q[32]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[36]_i_1 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(\Q_reg_n_0_[15] ),
        .O(\Q[36]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[40]_i_1 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q_reg_n_0_[7] ),
        .O(\Q[40]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[44]_i_1__0 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(\Q_reg_n_0_[23] ),
        .O(\Q[44]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[48]_i_1__0 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(\Q_reg_n_0_[11] ),
        .O(\Q[48]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \Q[52]_i_1__0 
       (.I0(out),
        .I1(\Q_reg_n_0_[30] ),
        .I2(\Q_reg_n_0_[31] ),
        .O(\Q[52]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \Q[56]_i_1__0 
       (.I0(out),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[3] ),
        .O(\Q[56]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[60]_i_1__0 
       (.I0(lfsr_tk2_in[2]),
        .I1(lfsr_tk2_in[3]),
        .O(\Q[60]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[0]),
        .Q(\Q_reg_n_0_[0] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[10]),
        .Q(\Q_reg_n_0_[10] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[11]),
        .Q(\Q_reg_n_0_[11] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[12]),
        .Q(\Q_reg_n_0_[12] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[13]),
        .Q(\Q_reg_n_0_[13] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[14]),
        .Q(\Q_reg_n_0_[14] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[15]),
        .Q(\Q_reg_n_0_[15] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[16]),
        .Q(\Q_reg_n_0_[16] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[17]),
        .Q(\Q_reg_n_0_[17] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[18]),
        .Q(\Q_reg_n_0_[18] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[19]),
        .Q(\Q_reg_n_0_[19] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[1]),
        .Q(\Q_reg_n_0_[1] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[20]),
        .Q(\Q_reg_n_0_[20] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[21]),
        .Q(\Q_reg_n_0_[21] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[22]),
        .Q(\Q_reg_n_0_[22] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[23]),
        .Q(\Q_reg_n_0_[23] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[24]),
        .Q(lfsr_tk2_in[0]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[25]),
        .Q(lfsr_tk2_in[1]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[26]),
        .Q(lfsr_tk2_in[2]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[27]),
        .Q(lfsr_tk2_in[3]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[28]),
        .Q(\Q_reg_n_0_[28] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[29]),
        .Q(\Q_reg_n_0_[29] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[2]),
        .Q(\Q_reg_n_0_[2] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[30]),
        .Q(\Q_reg_n_0_[30] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[31]),
        .Q(\Q_reg_n_0_[31] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[32]_i_1_n_0 ),
        .Q(TK2_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[16] ),
        .Q(TK2_in[1]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[17] ),
        .Q(TK2_in[2]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[18] ),
        .Q(TK2_in[3]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[36]_i_1_n_0 ),
        .Q(TK2_in[4]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[12] ),
        .Q(TK2_in[5]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[13] ),
        .Q(TK2_in[6]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[14] ),
        .Q(TK2_in[7]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[3]),
        .Q(\Q_reg_n_0_[3] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[40]_i_1_n_0 ),
        .Q(TK2_in[8]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[4] ),
        .Q(TK2_in[9]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[5] ),
        .Q(TK2_in[10]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[6] ),
        .Q(TK2_in[11]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[44]_i_1__0_n_0 ),
        .Q(TK2_in[12]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[20] ),
        .Q(TK2_in[13]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[21] ),
        .Q(TK2_in[14]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[22] ),
        .Q(TK2_in[15]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[48]_i_1__0_n_0 ),
        .Q(TK2_in[16]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[8] ),
        .Q(TK2_in[17]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[4]),
        .Q(\Q_reg_n_0_[4] ),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[9] ),
        .Q(TK2_in[18]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[10] ),
        .Q(TK2_in[19]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[52]_i_1__0_n_0 ),
        .Q(TK2_in[20]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[28] ),
        .Q(TK2_in[21]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[29] ),
        .Q(TK2_in[22]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[30] ),
        .Q(TK2_in[23]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[56]_i_1__0_n_0 ),
        .Q(TK2_in[24]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[0] ),
        .Q(TK2_in[25]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[1] ),
        .Q(TK2_in[26]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[2] ),
        .Q(TK2_in[27]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[5]),
        .Q(\Q_reg_n_0_[5] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[60]_i_1__0_n_0 ),
        .Q(TK2_in[28]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(lfsr_tk2_in[0]),
        .Q(TK2_in[29]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(lfsr_tk2_in[1]),
        .Q(TK2_in[30]),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(lfsr_tk2_in[2]),
        .Q(TK2_in[31]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[6]),
        .Q(\Q_reg_n_0_[6] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[7]),
        .Q(\Q_reg_n_0_[7] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[8]),
        .Q(\Q_reg_n_0_[8] ),
        .S(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TK2_in[9]),
        .Q(\Q_reg_n_0_[9] ),
        .R(\FSM_sequential_current_state_reg[1] ));
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
