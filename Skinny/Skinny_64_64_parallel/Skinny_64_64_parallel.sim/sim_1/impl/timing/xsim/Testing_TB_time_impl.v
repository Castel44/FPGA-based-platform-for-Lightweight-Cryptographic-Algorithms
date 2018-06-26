// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jun 20 19:34:55 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Skinny/Skinny_64_64_parallel/Skinny_64_64_parallel.sim/sim_1/impl/timing/xsim/Testing_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module SKINNY_64_64_parallel
   (D,
    out,
    clk_IBUF_BUFG);
  output [1:0]D;
  input [3:0]out;
  input clk_IBUF_BUFG;

  wire [1:0]D;
  wire \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_1 ;
  wire INST_IS_REG_n_0;
  wire INST_LFSR_n_4;
  wire INST_TW_REG_n_0;
  wire [63:32]TW_REG_OUT;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state;
  wire [5:0]lfsr_in;
  wire [1:0]nx_state;
  wire [3:0]out;
  wire regs_ce;

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
    .INIT(64'hffffffffffff0008)) 
    \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_gate_1 
       (.I0(lfsr_in[5]),
        .I1(lfsr_in[3]),
        .I2(lfsr_in[2]),
        .I3(lfsr_in[0]),
        .I4(out[0]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_1 ));
  \reg  INST_IS_REG
       (.CO(INST_IS_REG_n_0),
        .\FSM_sequential_current_state_reg[1] (INST_LFSR_n_4),
        .\FSM_sequential_current_state_reg[1]_0 (INST_TW_REG_n_0),
        .Q(lfsr_in),
        .TW_REG_OUT(TW_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(current_state[0]),
        .regs_ce(regs_ce));
  lfsr INST_LFSR
       (.CO(INST_IS_REG_n_0),
        .D(D),
        .\FSM_onehot_current_state_reg[4] (INST_LFSR_n_4),
        .\FSM_onehot_current_state_reg[5] (out[3:1]),
        .\FSM_sequential_current_state_reg[1] (nx_state),
        .Q(lfsr_in),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(current_state));
  reg_0 INST_TW_REG
       (.\Q_reg[59]_0 (INST_TW_REG_n_0),
        .TW_REG_OUT(TW_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(current_state),
        .regs_ce(regs_ce));
endmodule

(* ECO_CHECKSUM = "8b2f744e" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire SKINNY_64_DUT_n_0;
  wire SKINNY_64_DUT_n_1;
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
        .D(SKINNY_64_DUT_n_1),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "waiting:000100,start_enc:001000,idle:000001,loading:000010,enc:010000,success:100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SKINNY_64_DUT_n_0),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  SKINNY_64_64_parallel SKINNY_64_DUT
       (.D({SKINNY_64_DUT_n_0,SKINNY_64_DUT_n_1}),
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
   (D,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_onehot_current_state_reg[4] ,
    Q,
    out,
    \FSM_onehot_current_state_reg[5] ,
    CO,
    clk_IBUF_BUFG);
  output [1:0]D;
  output [1:0]\FSM_sequential_current_state_reg[1] ;
  output \FSM_onehot_current_state_reg[4] ;
  output [5:0]Q;
  input [1:0]out;
  input [2:0]\FSM_onehot_current_state_reg[5] ;
  input [0:0]CO;
  input clk_IBUF_BUFG;

  wire [0:0]CO;
  wire [1:0]D;
  wire \FSM_onehot_current_state_reg[4] ;
  wire [2:0]\FSM_onehot_current_state_reg[5] ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire [1:0]\FSM_sequential_current_state_reg[1] ;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;
  wire lfsr_rst;
  wire [1:0]out;
  wire [0:0]p_3_out;

  LUT6 #(
    .INIT(64'hFF45FF00FFFFFF00)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I2(out[1]),
        .I3(\FSM_onehot_current_state_reg[5] [0]),
        .I4(\FSM_onehot_current_state_reg[5] [1]),
        .I5(CO),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4000000)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\FSM_onehot_current_state_reg[5] [1]),
        .I4(CO),
        .I5(\FSM_onehot_current_state_reg[5] [2]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_current_state[5]_i_11 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_current_state_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h151F)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[1]),
        .I1(\FSM_onehot_current_state_reg[5] [0]),
        .I2(out[0]),
        .I3(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_current_state_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg[5] [0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_current_state_reg[1] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
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
    \FSM_sequential_current_state_reg[1] ,
    TW_REG_OUT,
    out,
    Q,
    \FSM_sequential_current_state_reg[1]_0 ,
    clk_IBUF_BUFG);
  output [0:0]CO;
  output regs_ce;
  input \FSM_sequential_current_state_reg[1] ;
  input [31:0]TW_REG_OUT;
  input [0:0]out;
  input [5:0]Q;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input clk_IBUF_BUFG;

  wire [63:48]AddRoundTWEAKEY_OUT;
  wire [44:44]AddRoundTWEAKEY_OUT__0;
  wire [0:0]CO;
  wire \FSM_onehot_current_state[5]_i_10_n_0 ;
  wire \FSM_onehot_current_state[5]_i_13_n_0 ;
  wire \FSM_onehot_current_state[5]_i_14_n_0 ;
  wire \FSM_onehot_current_state[5]_i_15_n_0 ;
  wire \FSM_onehot_current_state[5]_i_16_n_0 ;
  wire \FSM_onehot_current_state[5]_i_21_n_0 ;
  wire \FSM_onehot_current_state[5]_i_22_n_0 ;
  wire \FSM_onehot_current_state[5]_i_23_n_0 ;
  wire \FSM_onehot_current_state[5]_i_24_n_0 ;
  wire \FSM_onehot_current_state[5]_i_26_n_0 ;
  wire \FSM_onehot_current_state[5]_i_27_n_0 ;
  wire \FSM_onehot_current_state[5]_i_28_n_0 ;
  wire \FSM_onehot_current_state[5]_i_29_n_0 ;
  wire \FSM_onehot_current_state[5]_i_31_n_0 ;
  wire \FSM_onehot_current_state[5]_i_32_n_0 ;
  wire \FSM_onehot_current_state[5]_i_33_n_0 ;
  wire \FSM_onehot_current_state[5]_i_34_n_0 ;
  wire \FSM_onehot_current_state[5]_i_5_n_0 ;
  wire \FSM_onehot_current_state[5]_i_7_n_0 ;
  wire \FSM_onehot_current_state[5]_i_8_n_0 ;
  wire \FSM_onehot_current_state[5]_i_9_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_12_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_20_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_25_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg[5]_i_6_n_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[0].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[10].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[11].subcells/p_1_out__0 ;
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
  wire [0:0]\INST_SUBCELLS/subcells_gen[8].subcells/p_1_out__0 ;
  wire [0:0]\INST_SUBCELLS/subcells_gen[9].subcells/p_1_out__0 ;
  wire [63:0]IS_REG_OUT;
  wire [5:0]Q;
  wire \Q[17]_i_2_n_0 ;
  wire \Q[21]_i_1_n_0 ;
  wire \Q[53]_i_2_n_0 ;
  wire \Q[57]_i_2_n_0 ;
  wire \Q[5]_i_1_n_0 ;
  wire \Q[61]_i_2_n_0 ;
  wire [28:16]SUBCELLS_OUT;
  wire [31:0]TW_REG_OUT;
  wire [63:63]ciphertext_out_W;
  wire clk_IBUF_BUFG;
  wire [63:0]mixcolumns_out;
  wire [0:0]out;
  wire regs_ce;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_25_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_FSM_onehot_current_state_reg[5]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_current_state_reg[5]_i_6_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_current_state[5]_i_10 
       (.I0(mixcolumns_out[48]),
        .I1(mixcolumns_out[49]),
        .I2(mixcolumns_out[50]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_current_state[5]_i_13 
       (.I0(AddRoundTWEAKEY_OUT[61]),
        .I1(AddRoundTWEAKEY_OUT[62]),
        .I2(AddRoundTWEAKEY_OUT[63]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_current_state[5]_i_14 
       (.I0(AddRoundTWEAKEY_OUT[58]),
        .I1(AddRoundTWEAKEY_OUT[59]),
        .I2(AddRoundTWEAKEY_OUT[60]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_current_state[5]_i_15 
       (.I0(AddRoundTWEAKEY_OUT[55]),
        .I1(AddRoundTWEAKEY_OUT[56]),
        .I2(AddRoundTWEAKEY_OUT[57]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_current_state[5]_i_16 
       (.I0(AddRoundTWEAKEY_OUT[52]),
        .I1(AddRoundTWEAKEY_OUT[53]),
        .I2(AddRoundTWEAKEY_OUT[54]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_17 
       (.I0(IS_REG_OUT[6]),
        .I1(IS_REG_OUT[7]),
        .I2(IS_REG_OUT[4]),
        .O(\INST_SUBCELLS/subcells_gen[1].subcells/p_1_out__0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_18 
       (.I0(IS_REG_OUT[2]),
        .I1(IS_REG_OUT[3]),
        .I2(IS_REG_OUT[0]),
        .O(\INST_SUBCELLS/subcells_gen[0].subcells/p_1_out__0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_19 
       (.I0(IS_REG_OUT[14]),
        .I1(IS_REG_OUT[15]),
        .I2(IS_REG_OUT[12]),
        .O(\INST_SUBCELLS/subcells_gen[3].subcells/p_1_out__0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_current_state[5]_i_21 
       (.I0(AddRoundTWEAKEY_OUT[49]),
        .I1(AddRoundTWEAKEY_OUT[50]),
        .I2(AddRoundTWEAKEY_OUT[51]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004404004)) 
    \FSM_onehot_current_state[5]_i_22 
       (.I0(AddRoundTWEAKEY_OUT[48]),
        .I1(mixcolumns_out[30]),
        .I2(TW_REG_OUT[3]),
        .I3(\INST_SUBCELLS/subcells_gen[8].subcells/p_1_out__0 ),
        .I4(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000069)) 
    \FSM_onehot_current_state[5]_i_23 
       (.I0(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ),
        .I1(\INST_SUBCELLS/subcells_gen[11].subcells/p_1_out__0 ),
        .I2(TW_REG_OUT[15]),
        .I3(mixcolumns_out[28]),
        .I4(mixcolumns_out[29]),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_current_state[5]_i_24 
       (.I0(mixcolumns_out[24]),
        .I1(mixcolumns_out[25]),
        .I2(mixcolumns_out[26]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004114)) 
    \FSM_onehot_current_state[5]_i_26 
       (.I0(\Q[21]_i_1_n_0 ),
        .I1(TW_REG_OUT[11]),
        .I2(\INST_SUBCELLS/subcells_gen[10].subcells/p_1_out__0 ),
        .I3(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ),
        .I4(mixcolumns_out[22]),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041140000)) 
    \FSM_onehot_current_state[5]_i_27 
       (.I0(mixcolumns_out[18]),
        .I1(TW_REG_OUT[7]),
        .I2(\INST_SUBCELLS/subcells_gen[9].subcells/p_1_out__0 ),
        .I3(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ),
        .I4(mixcolumns_out[20]),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_current_state[5]_i_28 
       (.I0(mixcolumns_out[15]),
        .I1(mixcolumns_out[16]),
        .I2(mixcolumns_out[17]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \FSM_onehot_current_state[5]_i_29 
       (.I0(mixcolumns_out[12]),
        .I1(mixcolumns_out[13]),
        .I2(mixcolumns_out[14]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_30 
       (.I0(IS_REG_OUT[35]),
        .I1(IS_REG_OUT[34]),
        .I2(IS_REG_OUT[32]),
        .O(\INST_SUBCELLS/subcells_gen[8].subcells/p_1_out__0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_current_state[5]_i_31 
       (.I0(mixcolumns_out[9]),
        .I1(mixcolumns_out[11]),
        .I2(mixcolumns_out[10]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_current_state[5]_i_32 
       (.I0(mixcolumns_out[6]),
        .I1(mixcolumns_out[7]),
        .I2(mixcolumns_out[8]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \FSM_onehot_current_state[5]_i_33 
       (.I0(mixcolumns_out[3]),
        .I1(mixcolumns_out[4]),
        .I2(\Q[5]_i_1_n_0 ),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_current_state[5]_i_34 
       (.I0(mixcolumns_out[0]),
        .I1(mixcolumns_out[1]),
        .I2(mixcolumns_out[2]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_35 
       (.I0(IS_REG_OUT[43]),
        .I1(IS_REG_OUT[42]),
        .I2(IS_REG_OUT[40]),
        .O(\INST_SUBCELLS/subcells_gen[10].subcells/p_1_out__0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \FSM_onehot_current_state[5]_i_36 
       (.I0(IS_REG_OUT[39]),
        .I1(IS_REG_OUT[38]),
        .I2(IS_REG_OUT[36]),
        .O(\INST_SUBCELLS/subcells_gen[9].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'h000056A9)) 
    \FSM_onehot_current_state[5]_i_4 
       (.I0(mixcolumns_out[15]),
        .I1(IS_REG_OUT[10]),
        .I2(IS_REG_OUT[11]),
        .I3(IS_REG_OUT[8]),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .O(ciphertext_out_W));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_current_state[5]_i_5 
       (.I0(mixcolumns_out[60]),
        .I1(mixcolumns_out[61]),
        .I2(mixcolumns_out[62]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000028)) 
    \FSM_onehot_current_state[5]_i_7 
       (.I0(mixcolumns_out[57]),
        .I1(mixcolumns_out[11]),
        .I2(\INST_SUBCELLS/subcells_gen[1].subcells/p_1_out__0 ),
        .I3(mixcolumns_out[58]),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00004004)) 
    \FSM_onehot_current_state[5]_i_8 
       (.I0(mixcolumns_out[54]),
        .I1(mixcolumns_out[56]),
        .I2(mixcolumns_out[7]),
        .I3(\INST_SUBCELLS/subcells_gen[0].subcells/p_1_out__0 ),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00006000)) 
    \FSM_onehot_current_state[5]_i_9 
       (.I0(\INST_SUBCELLS/subcells_gen[3].subcells/p_1_out__0 ),
        .I1(mixcolumns_out[3]),
        .I2(mixcolumns_out[52]),
        .I3(mixcolumns_out[53]),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .O(\FSM_onehot_current_state[5]_i_9_n_0 ));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_12 
       (.CI(\FSM_onehot_current_state_reg[5]_i_20_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_12_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_12_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_21_n_0 ,\FSM_onehot_current_state[5]_i_22_n_0 ,\FSM_onehot_current_state[5]_i_23_n_0 ,\FSM_onehot_current_state[5]_i_24_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_2 
       (.CI(\FSM_onehot_current_state_reg[5]_i_3_n_0 ),
        .CO({\NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED [3:2],CO,\NLW_FSM_onehot_current_state_reg[5]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,ciphertext_out_W,\FSM_onehot_current_state[5]_i_5_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_20 
       (.CI(\FSM_onehot_current_state_reg[5]_i_25_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_20_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_20_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_26_n_0 ,\FSM_onehot_current_state[5]_i_27_n_0 ,\FSM_onehot_current_state[5]_i_28_n_0 ,\FSM_onehot_current_state[5]_i_29_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_25 
       (.CI(1'b0),
        .CO({\FSM_onehot_current_state_reg[5]_i_25_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_25_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_25_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_31_n_0 ,\FSM_onehot_current_state[5]_i_32_n_0 ,\FSM_onehot_current_state[5]_i_33_n_0 ,\FSM_onehot_current_state[5]_i_34_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_3 
       (.CI(\FSM_onehot_current_state_reg[5]_i_6_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_3_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_7_n_0 ,\FSM_onehot_current_state[5]_i_8_n_0 ,\FSM_onehot_current_state[5]_i_9_n_0 ,\FSM_onehot_current_state[5]_i_10_n_0 }));
  CARRY4 \FSM_onehot_current_state_reg[5]_i_6 
       (.CI(\FSM_onehot_current_state_reg[5]_i_12_n_0 ),
        .CO({\FSM_onehot_current_state_reg[5]_i_6_n_0 ,\NLW_FSM_onehot_current_state_reg[5]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_current_state_reg[5]_i_6_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_current_state[5]_i_13_n_0 ,\FSM_onehot_current_state[5]_i_14_n_0 ,\FSM_onehot_current_state[5]_i_15_n_0 ,\FSM_onehot_current_state[5]_i_16_n_0 }));
  LUT5 #(
    .INIT(32'h546DAB92)) 
    \Q[0]_i_1 
       (.I0(IS_REG_OUT[25]),
        .I1(IS_REG_OUT[24]),
        .I2(IS_REG_OUT[26]),
        .I3(IS_REG_OUT[27]),
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
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[11]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ),
        .I1(IS_REG_OUT[59]),
        .I2(IS_REG_OUT[58]),
        .I3(IS_REG_OUT[56]),
        .I4(TW_REG_OUT[27]),
        .O(mixcolumns_out[11]));
  LUT5 #(
    .INIT(32'h546DAB92)) 
    \Q[12]_i_1 
       (.I0(IS_REG_OUT[21]),
        .I1(IS_REG_OUT[20]),
        .I2(IS_REG_OUT[22]),
        .I3(IS_REG_OUT[23]),
        .I4(AddRoundTWEAKEY_OUT[60]),
        .O(mixcolumns_out[12]));
  LUT5 #(
    .INIT(32'h5647A9B8)) 
    \Q[13]_i_1 
       (.I0(IS_REG_OUT[22]),
        .I1(IS_REG_OUT[21]),
        .I2(IS_REG_OUT[20]),
        .I3(IS_REG_OUT[23]),
        .I4(AddRoundTWEAKEY_OUT[61]),
        .O(mixcolumns_out[13]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[14]_i_1 
       (.I0(IS_REG_OUT[23]),
        .I1(IS_REG_OUT[21]),
        .I2(IS_REG_OUT[22]),
        .I3(AddRoundTWEAKEY_OUT[62]),
        .O(mixcolumns_out[14]));
  LUT6 #(
    .INIT(64'h6969699696969669)) 
    \Q[15]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ),
        .I1(Q[3]),
        .I2(IS_REG_OUT[60]),
        .I3(IS_REG_OUT[62]),
        .I4(IS_REG_OUT[63]),
        .I5(TW_REG_OUT[31]),
        .O(mixcolumns_out[15]));
  LUT6 #(
    .INIT(64'hA99A55695665AA96)) 
    \Q[16]_i_1 
       (.I0(SUBCELLS_OUT[24]),
        .I1(IS_REG_OUT[39]),
        .I2(IS_REG_OUT[38]),
        .I3(IS_REG_OUT[36]),
        .I4(IS_REG_OUT[37]),
        .I5(TW_REG_OUT[4]),
        .O(mixcolumns_out[16]));
  LUT4 #(
    .INIT(16'hEB06)) 
    \Q[16]_i_2 
       (.I0(IS_REG_OUT[27]),
        .I1(IS_REG_OUT[26]),
        .I2(IS_REG_OUT[24]),
        .I3(IS_REG_OUT[25]),
        .O(SUBCELLS_OUT[24]));
  LUT6 #(
    .INIT(64'hAAA55569555AAA96)) 
    \Q[17]_i_1 
       (.I0(\Q[17]_i_2_n_0 ),
        .I1(IS_REG_OUT[39]),
        .I2(IS_REG_OUT[36]),
        .I3(IS_REG_OUT[37]),
        .I4(IS_REG_OUT[38]),
        .I5(TW_REG_OUT[5]),
        .O(mixcolumns_out[17]));
  LUT4 #(
    .INIT(16'hFC06)) 
    \Q[17]_i_2 
       (.I0(IS_REG_OUT[27]),
        .I1(IS_REG_OUT[24]),
        .I2(IS_REG_OUT[25]),
        .I3(IS_REG_OUT[26]),
        .O(\Q[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[18]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[6].subcells/p_2_out__0 ),
        .I1(IS_REG_OUT[38]),
        .I2(IS_REG_OUT[37]),
        .I3(IS_REG_OUT[39]),
        .I4(TW_REG_OUT[6]),
        .O(mixcolumns_out[18]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[19]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ),
        .I1(IS_REG_OUT[39]),
        .I2(IS_REG_OUT[38]),
        .I3(IS_REG_OUT[36]),
        .I4(TW_REG_OUT[7]),
        .O(mixcolumns_out[19]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[19]_i_2 
       (.I0(IS_REG_OUT[27]),
        .I1(IS_REG_OUT[26]),
        .I2(IS_REG_OUT[24]),
        .O(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'h5647A9B8)) 
    \Q[1]_i_1 
       (.I0(IS_REG_OUT[26]),
        .I1(IS_REG_OUT[25]),
        .I2(IS_REG_OUT[24]),
        .I3(IS_REG_OUT[27]),
        .I4(AddRoundTWEAKEY_OUT[49]),
        .O(mixcolumns_out[1]));
  LUT6 #(
    .INIT(64'hA99A55695665AA96)) 
    \Q[20]_i_1 
       (.I0(SUBCELLS_OUT[28]),
        .I1(IS_REG_OUT[43]),
        .I2(IS_REG_OUT[42]),
        .I3(IS_REG_OUT[40]),
        .I4(IS_REG_OUT[41]),
        .I5(TW_REG_OUT[8]),
        .O(mixcolumns_out[20]));
  LUT6 #(
    .INIT(64'h555AAA96AAA55569)) 
    \Q[21]_i_1 
       (.I0(\Q[53]_i_2_n_0 ),
        .I1(IS_REG_OUT[43]),
        .I2(IS_REG_OUT[40]),
        .I3(IS_REG_OUT[41]),
        .I4(IS_REG_OUT[42]),
        .I5(TW_REG_OUT[9]),
        .O(\Q[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[22]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ),
        .I1(IS_REG_OUT[42]),
        .I2(IS_REG_OUT[41]),
        .I3(IS_REG_OUT[43]),
        .I4(TW_REG_OUT[10]),
        .O(mixcolumns_out[22]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[23]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ),
        .I1(IS_REG_OUT[43]),
        .I2(IS_REG_OUT[42]),
        .I3(IS_REG_OUT[40]),
        .I4(TW_REG_OUT[11]),
        .O(mixcolumns_out[23]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[23]_i_2 
       (.I0(IS_REG_OUT[31]),
        .I1(IS_REG_OUT[30]),
        .I2(IS_REG_OUT[28]),
        .O(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'h564DA9B2)) 
    \Q[24]_i_1 
       (.I0(IS_REG_OUT[17]),
        .I1(IS_REG_OUT[16]),
        .I2(IS_REG_OUT[19]),
        .I3(IS_REG_OUT[18]),
        .I4(AddRoundTWEAKEY_OUT__0),
        .O(mixcolumns_out[24]));
  LUT6 #(
    .INIT(64'hA9A655695659AA96)) 
    \Q[24]_i_2 
       (.I0(TW_REG_OUT[12]),
        .I1(IS_REG_OUT[46]),
        .I2(IS_REG_OUT[47]),
        .I3(IS_REG_OUT[44]),
        .I4(IS_REG_OUT[45]),
        .I5(Q[4]),
        .O(AddRoundTWEAKEY_OUT__0));
  LUT6 #(
    .INIT(64'h6969699696969669)) 
    \Q[25]_i_1 
       (.I0(\Q[57]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(IS_REG_OUT[46]),
        .I3(IS_REG_OUT[45]),
        .I4(\INST_SUBCELLS/subcells_gen[11].subcells/p_1_out__0 ),
        .I5(TW_REG_OUT[13]),
        .O(mixcolumns_out[25]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[25]_i_2 
       (.I0(IS_REG_OUT[47]),
        .I1(IS_REG_OUT[46]),
        .I2(IS_REG_OUT[44]),
        .O(\INST_SUBCELLS/subcells_gen[11].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[26]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ),
        .I1(IS_REG_OUT[46]),
        .I2(IS_REG_OUT[45]),
        .I3(IS_REG_OUT[47]),
        .I4(TW_REG_OUT[14]),
        .O(mixcolumns_out[26]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[27]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ),
        .I1(IS_REG_OUT[47]),
        .I2(IS_REG_OUT[46]),
        .I3(IS_REG_OUT[44]),
        .I4(TW_REG_OUT[15]),
        .O(mixcolumns_out[27]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[27]_i_2 
       (.I0(IS_REG_OUT[18]),
        .I1(IS_REG_OUT[19]),
        .I2(IS_REG_OUT[16]),
        .O(\INST_SUBCELLS/subcells_gen[4].subcells/p_1_out__0 ));
  LUT6 #(
    .INIT(64'hA99A55695665AA96)) 
    \Q[28]_i_1 
       (.I0(SUBCELLS_OUT[20]),
        .I1(IS_REG_OUT[35]),
        .I2(IS_REG_OUT[34]),
        .I3(IS_REG_OUT[32]),
        .I4(IS_REG_OUT[33]),
        .I5(TW_REG_OUT[0]),
        .O(mixcolumns_out[28]));
  LUT6 #(
    .INIT(64'hAAA55569555AAA96)) 
    \Q[29]_i_1 
       (.I0(\Q[61]_i_2_n_0 ),
        .I1(IS_REG_OUT[35]),
        .I2(IS_REG_OUT[32]),
        .I3(IS_REG_OUT[33]),
        .I4(IS_REG_OUT[34]),
        .I5(TW_REG_OUT[1]),
        .O(mixcolumns_out[29]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[2]_i_1 
       (.I0(IS_REG_OUT[27]),
        .I1(IS_REG_OUT[25]),
        .I2(IS_REG_OUT[26]),
        .I3(AddRoundTWEAKEY_OUT[50]),
        .O(mixcolumns_out[2]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[30]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ),
        .I1(IS_REG_OUT[34]),
        .I2(IS_REG_OUT[33]),
        .I3(IS_REG_OUT[35]),
        .I4(TW_REG_OUT[2]),
        .O(mixcolumns_out[30]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[31]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ),
        .I1(IS_REG_OUT[35]),
        .I2(IS_REG_OUT[34]),
        .I3(IS_REG_OUT[32]),
        .I4(TW_REG_OUT[3]),
        .O(mixcolumns_out[31]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[31]_i_2 
       (.I0(IS_REG_OUT[23]),
        .I1(IS_REG_OUT[22]),
        .I2(IS_REG_OUT[20]),
        .O(\INST_SUBCELLS/subcells_gen[5].subcells/p_1_out__0 ));
  LUT5 #(
    .INIT(32'h666965A6)) 
    \Q[32]_i_1 
       (.I0(TW_REG_OUT[16]),
        .I1(IS_REG_OUT[49]),
        .I2(IS_REG_OUT[48]),
        .I3(IS_REG_OUT[51]),
        .I4(IS_REG_OUT[50]),
        .O(AddRoundTWEAKEY_OUT[48]));
  LUT5 #(
    .INIT(32'h6669656A)) 
    \Q[33]_i_1 
       (.I0(TW_REG_OUT[17]),
        .I1(IS_REG_OUT[50]),
        .I2(IS_REG_OUT[49]),
        .I3(IS_REG_OUT[48]),
        .I4(IS_REG_OUT[51]),
        .O(AddRoundTWEAKEY_OUT[49]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[34]_i_1 
       (.I0(TW_REG_OUT[18]),
        .I1(IS_REG_OUT[51]),
        .I2(IS_REG_OUT[49]),
        .I3(IS_REG_OUT[50]),
        .O(AddRoundTWEAKEY_OUT[50]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[35]_i_1 
       (.I0(TW_REG_OUT[19]),
        .I1(IS_REG_OUT[48]),
        .I2(IS_REG_OUT[50]),
        .I3(IS_REG_OUT[51]),
        .O(AddRoundTWEAKEY_OUT[51]));
  LUT5 #(
    .INIT(32'h666569A6)) 
    \Q[36]_i_1 
       (.I0(TW_REG_OUT[20]),
        .I1(IS_REG_OUT[53]),
        .I2(IS_REG_OUT[52]),
        .I3(IS_REG_OUT[54]),
        .I4(IS_REG_OUT[55]),
        .O(AddRoundTWEAKEY_OUT[52]));
  LUT5 #(
    .INIT(32'h6669656A)) 
    \Q[37]_i_1 
       (.I0(TW_REG_OUT[21]),
        .I1(IS_REG_OUT[54]),
        .I2(IS_REG_OUT[53]),
        .I3(IS_REG_OUT[52]),
        .I4(IS_REG_OUT[55]),
        .O(AddRoundTWEAKEY_OUT[53]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[38]_i_1 
       (.I0(TW_REG_OUT[22]),
        .I1(IS_REG_OUT[55]),
        .I2(IS_REG_OUT[53]),
        .I3(IS_REG_OUT[54]),
        .O(AddRoundTWEAKEY_OUT[54]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[39]_i_1 
       (.I0(TW_REG_OUT[23]),
        .I1(IS_REG_OUT[52]),
        .I2(IS_REG_OUT[54]),
        .I3(IS_REG_OUT[55]),
        .O(AddRoundTWEAKEY_OUT[55]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[3]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[6].subcells/p_1_out__0 ),
        .I1(IS_REG_OUT[51]),
        .I2(IS_REG_OUT[50]),
        .I3(IS_REG_OUT[48]),
        .I4(TW_REG_OUT[19]),
        .O(mixcolumns_out[3]));
  LUT5 #(
    .INIT(32'h666965A6)) 
    \Q[40]_i_1 
       (.I0(TW_REG_OUT[24]),
        .I1(IS_REG_OUT[57]),
        .I2(IS_REG_OUT[56]),
        .I3(IS_REG_OUT[59]),
        .I4(IS_REG_OUT[58]),
        .O(AddRoundTWEAKEY_OUT[56]));
  LUT5 #(
    .INIT(32'h6666695A)) 
    \Q[41]_i_1 
       (.I0(TW_REG_OUT[25]),
        .I1(IS_REG_OUT[58]),
        .I2(IS_REG_OUT[56]),
        .I3(IS_REG_OUT[59]),
        .I4(IS_REG_OUT[57]),
        .O(AddRoundTWEAKEY_OUT[57]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[42]_i_1 
       (.I0(TW_REG_OUT[26]),
        .I1(IS_REG_OUT[59]),
        .I2(IS_REG_OUT[58]),
        .I3(IS_REG_OUT[57]),
        .O(AddRoundTWEAKEY_OUT[58]));
  LUT4 #(
    .INIT(16'h6669)) 
    \Q[43]_i_1 
       (.I0(TW_REG_OUT[27]),
        .I1(IS_REG_OUT[56]),
        .I2(IS_REG_OUT[58]),
        .I3(IS_REG_OUT[59]),
        .O(AddRoundTWEAKEY_OUT[59]));
  LUT6 #(
    .INIT(64'hA9A655695659AA96)) 
    \Q[44]_i_1 
       (.I0(TW_REG_OUT[28]),
        .I1(IS_REG_OUT[62]),
        .I2(IS_REG_OUT[63]),
        .I3(IS_REG_OUT[60]),
        .I4(IS_REG_OUT[61]),
        .I5(Q[0]),
        .O(AddRoundTWEAKEY_OUT[60]));
  LUT6 #(
    .INIT(64'hAA9956655566A99A)) 
    \Q[45]_i_1 
       (.I0(TW_REG_OUT[29]),
        .I1(IS_REG_OUT[61]),
        .I2(IS_REG_OUT[63]),
        .I3(IS_REG_OUT[60]),
        .I4(IS_REG_OUT[62]),
        .I5(Q[1]),
        .O(AddRoundTWEAKEY_OUT[61]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[46]_i_1 
       (.I0(TW_REG_OUT[30]),
        .I1(IS_REG_OUT[62]),
        .I2(IS_REG_OUT[61]),
        .I3(IS_REG_OUT[63]),
        .I4(Q[2]),
        .O(AddRoundTWEAKEY_OUT[62]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[47]_i_1 
       (.I0(TW_REG_OUT[31]),
        .I1(IS_REG_OUT[63]),
        .I2(IS_REG_OUT[62]),
        .I3(IS_REG_OUT[60]),
        .I4(Q[3]),
        .O(AddRoundTWEAKEY_OUT[63]));
  LUT6 #(
    .INIT(64'hA9B2564D564DA9B2)) 
    \Q[48]_i_1 
       (.I0(IS_REG_OUT[13]),
        .I1(IS_REG_OUT[12]),
        .I2(IS_REG_OUT[15]),
        .I3(IS_REG_OUT[14]),
        .I4(AddRoundTWEAKEY_OUT[48]),
        .I5(SUBCELLS_OUT[24]),
        .O(mixcolumns_out[48]));
  LUT6 #(
    .INIT(64'hA9B856475647A9B8)) 
    \Q[49]_i_1 
       (.I0(IS_REG_OUT[14]),
        .I1(IS_REG_OUT[13]),
        .I2(IS_REG_OUT[12]),
        .I3(IS_REG_OUT[15]),
        .I4(AddRoundTWEAKEY_OUT[49]),
        .I5(\Q[17]_i_2_n_0 ),
        .O(mixcolumns_out[49]));
  LUT5 #(
    .INIT(32'h546DAB92)) 
    \Q[4]_i_1 
       (.I0(IS_REG_OUT[29]),
        .I1(IS_REG_OUT[28]),
        .I2(IS_REG_OUT[30]),
        .I3(IS_REG_OUT[31]),
        .I4(AddRoundTWEAKEY_OUT[52]),
        .O(mixcolumns_out[4]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[50]_i_1 
       (.I0(IS_REG_OUT[15]),
        .I1(IS_REG_OUT[13]),
        .I2(IS_REG_OUT[14]),
        .I3(AddRoundTWEAKEY_OUT[50]),
        .I4(\INST_SUBCELLS/subcells_gen[6].subcells/p_2_out__0 ),
        .O(mixcolumns_out[50]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[50]_i_2 
       (.I0(IS_REG_OUT[26]),
        .I1(IS_REG_OUT[25]),
        .I2(IS_REG_OUT[27]),
        .O(\INST_SUBCELLS/subcells_gen[6].subcells/p_2_out__0 ));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[51]_i_1 
       (.I0(IS_REG_OUT[12]),
        .I1(IS_REG_OUT[15]),
        .I2(IS_REG_OUT[14]),
        .I3(mixcolumns_out[3]),
        .O(mixcolumns_out[51]));
  LUT6 #(
    .INIT(64'hA9B2564D564DA9B2)) 
    \Q[52]_i_1 
       (.I0(IS_REG_OUT[1]),
        .I1(IS_REG_OUT[0]),
        .I2(IS_REG_OUT[3]),
        .I3(IS_REG_OUT[2]),
        .I4(AddRoundTWEAKEY_OUT[52]),
        .I5(SUBCELLS_OUT[28]),
        .O(mixcolumns_out[52]));
  LUT4 #(
    .INIT(16'hEB06)) 
    \Q[52]_i_2 
       (.I0(IS_REG_OUT[31]),
        .I1(IS_REG_OUT[30]),
        .I2(IS_REG_OUT[28]),
        .I3(IS_REG_OUT[29]),
        .O(SUBCELLS_OUT[28]));
  LUT6 #(
    .INIT(64'h5647A9B8A9B85647)) 
    \Q[53]_i_1 
       (.I0(IS_REG_OUT[2]),
        .I1(IS_REG_OUT[1]),
        .I2(IS_REG_OUT[0]),
        .I3(IS_REG_OUT[3]),
        .I4(AddRoundTWEAKEY_OUT[53]),
        .I5(\Q[53]_i_2_n_0 ),
        .O(mixcolumns_out[53]));
  LUT4 #(
    .INIT(16'hFC06)) 
    \Q[53]_i_2 
       (.I0(IS_REG_OUT[31]),
        .I1(IS_REG_OUT[28]),
        .I2(IS_REG_OUT[29]),
        .I3(IS_REG_OUT[30]),
        .O(\Q[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[54]_i_1 
       (.I0(IS_REG_OUT[3]),
        .I1(IS_REG_OUT[1]),
        .I2(IS_REG_OUT[2]),
        .I3(AddRoundTWEAKEY_OUT[54]),
        .I4(\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ),
        .O(mixcolumns_out[54]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[54]_i_2 
       (.I0(IS_REG_OUT[30]),
        .I1(IS_REG_OUT[29]),
        .I2(IS_REG_OUT[31]),
        .O(\INST_SUBCELLS/subcells_gen[7].subcells/p_2_out__0 ));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[55]_i_1 
       (.I0(IS_REG_OUT[0]),
        .I1(IS_REG_OUT[3]),
        .I2(IS_REG_OUT[2]),
        .I3(mixcolumns_out[7]),
        .O(mixcolumns_out[55]));
  LUT6 #(
    .INIT(64'hA9B2564D564DA9B2)) 
    \Q[56]_i_1 
       (.I0(IS_REG_OUT[5]),
        .I1(IS_REG_OUT[4]),
        .I2(IS_REG_OUT[7]),
        .I3(IS_REG_OUT[6]),
        .I4(AddRoundTWEAKEY_OUT[56]),
        .I5(SUBCELLS_OUT[16]),
        .O(mixcolumns_out[56]));
  LUT4 #(
    .INIT(16'hED06)) 
    \Q[56]_i_2 
       (.I0(IS_REG_OUT[18]),
        .I1(IS_REG_OUT[19]),
        .I2(IS_REG_OUT[16]),
        .I3(IS_REG_OUT[17]),
        .O(SUBCELLS_OUT[16]));
  LUT6 #(
    .INIT(64'hAA9C55635563AA9C)) 
    \Q[57]_i_1 
       (.I0(IS_REG_OUT[6]),
        .I1(IS_REG_OUT[4]),
        .I2(IS_REG_OUT[7]),
        .I3(IS_REG_OUT[5]),
        .I4(AddRoundTWEAKEY_OUT[57]),
        .I5(\Q[57]_i_2_n_0 ),
        .O(mixcolumns_out[57]));
  LUT4 #(
    .INIT(16'hFA14)) 
    \Q[57]_i_2 
       (.I0(IS_REG_OUT[17]),
        .I1(IS_REG_OUT[19]),
        .I2(IS_REG_OUT[16]),
        .I3(IS_REG_OUT[18]),
        .O(\Q[57]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[58]_i_1 
       (.I0(IS_REG_OUT[7]),
        .I1(IS_REG_OUT[6]),
        .I2(IS_REG_OUT[5]),
        .I3(AddRoundTWEAKEY_OUT[58]),
        .I4(\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ),
        .O(mixcolumns_out[58]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[58]_i_2 
       (.I0(IS_REG_OUT[17]),
        .I1(IS_REG_OUT[18]),
        .I2(IS_REG_OUT[19]),
        .O(\INST_SUBCELLS/subcells_gen[4].subcells/p_2_out__0 ));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[59]_i_1 
       (.I0(IS_REG_OUT[4]),
        .I1(IS_REG_OUT[7]),
        .I2(IS_REG_OUT[6]),
        .I3(mixcolumns_out[11]),
        .O(mixcolumns_out[59]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[59]_i_2 
       (.I0(out),
        .O(regs_ce));
  LUT5 #(
    .INIT(32'hA9B85647)) 
    \Q[5]_i_1 
       (.I0(IS_REG_OUT[30]),
        .I1(IS_REG_OUT[29]),
        .I2(IS_REG_OUT[28]),
        .I3(IS_REG_OUT[31]),
        .I4(AddRoundTWEAKEY_OUT[53]),
        .O(\Q[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9B2564D564DA9B2)) 
    \Q[60]_i_1 
       (.I0(IS_REG_OUT[9]),
        .I1(IS_REG_OUT[8]),
        .I2(IS_REG_OUT[11]),
        .I3(IS_REG_OUT[10]),
        .I4(AddRoundTWEAKEY_OUT[60]),
        .I5(SUBCELLS_OUT[20]),
        .O(mixcolumns_out[60]));
  LUT4 #(
    .INIT(16'hEB06)) 
    \Q[60]_i_2 
       (.I0(IS_REG_OUT[23]),
        .I1(IS_REG_OUT[22]),
        .I2(IS_REG_OUT[20]),
        .I3(IS_REG_OUT[21]),
        .O(SUBCELLS_OUT[20]));
  LUT6 #(
    .INIT(64'hAA9C55635563AA9C)) 
    \Q[61]_i_1 
       (.I0(IS_REG_OUT[10]),
        .I1(IS_REG_OUT[8]),
        .I2(IS_REG_OUT[11]),
        .I3(IS_REG_OUT[9]),
        .I4(AddRoundTWEAKEY_OUT[61]),
        .I5(\Q[61]_i_2_n_0 ),
        .O(mixcolumns_out[61]));
  LUT4 #(
    .INIT(16'hFC06)) 
    \Q[61]_i_2 
       (.I0(IS_REG_OUT[23]),
        .I1(IS_REG_OUT[20]),
        .I2(IS_REG_OUT[21]),
        .I3(IS_REG_OUT[22]),
        .O(\Q[61]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[62]_i_1 
       (.I0(IS_REG_OUT[11]),
        .I1(IS_REG_OUT[10]),
        .I2(IS_REG_OUT[9]),
        .I3(AddRoundTWEAKEY_OUT[62]),
        .I4(\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ),
        .O(mixcolumns_out[62]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Q[62]_i_2 
       (.I0(IS_REG_OUT[22]),
        .I1(IS_REG_OUT[21]),
        .I2(IS_REG_OUT[23]),
        .O(\INST_SUBCELLS/subcells_gen[5].subcells/p_2_out__0 ));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[63]_i_1 
       (.I0(IS_REG_OUT[8]),
        .I1(IS_REG_OUT[11]),
        .I2(IS_REG_OUT[10]),
        .I3(mixcolumns_out[15]),
        .O(mixcolumns_out[63]));
  LUT4 #(
    .INIT(16'h56A9)) 
    \Q[6]_i_1 
       (.I0(IS_REG_OUT[31]),
        .I1(IS_REG_OUT[29]),
        .I2(IS_REG_OUT[30]),
        .I3(AddRoundTWEAKEY_OUT[54]),
        .O(mixcolumns_out[6]));
  LUT5 #(
    .INIT(32'hA95656A9)) 
    \Q[7]_i_1 
       (.I0(\INST_SUBCELLS/subcells_gen[7].subcells/p_1_out__0 ),
        .I1(IS_REG_OUT[55]),
        .I2(IS_REG_OUT[54]),
        .I3(IS_REG_OUT[52]),
        .I4(TW_REG_OUT[23]),
        .O(mixcolumns_out[7]));
  LUT5 #(
    .INIT(32'h564DA9B2)) 
    \Q[8]_i_1 
       (.I0(IS_REG_OUT[17]),
        .I1(IS_REG_OUT[16]),
        .I2(IS_REG_OUT[19]),
        .I3(IS_REG_OUT[18]),
        .I4(AddRoundTWEAKEY_OUT[56]),
        .O(mixcolumns_out[8]));
  LUT5 #(
    .INIT(32'h5563AA9C)) 
    \Q[9]_i_1 
       (.I0(IS_REG_OUT[18]),
        .I1(IS_REG_OUT[16]),
        .I2(IS_REG_OUT[19]),
        .I3(IS_REG_OUT[17]),
        .I4(AddRoundTWEAKEY_OUT[57]),
        .O(mixcolumns_out[9]));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[0]),
        .Q(IS_REG_OUT[0]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[10]),
        .Q(IS_REG_OUT[10]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[11]),
        .Q(IS_REG_OUT[11]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[12]),
        .Q(IS_REG_OUT[12]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[13]),
        .Q(IS_REG_OUT[13]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[14]),
        .Q(IS_REG_OUT[14]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[15]),
        .Q(IS_REG_OUT[15]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[16]),
        .Q(IS_REG_OUT[16]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[17]),
        .Q(IS_REG_OUT[17]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[18]),
        .Q(IS_REG_OUT[18]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[19]),
        .Q(IS_REG_OUT[19]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[1]),
        .Q(IS_REG_OUT[1]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[20]),
        .Q(IS_REG_OUT[20]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[21]_i_1_n_0 ),
        .Q(IS_REG_OUT[21]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[22]),
        .Q(IS_REG_OUT[22]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[23]),
        .Q(IS_REG_OUT[23]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[24]),
        .Q(IS_REG_OUT[24]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[25]),
        .Q(IS_REG_OUT[25]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[26]),
        .Q(IS_REG_OUT[26]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[27]),
        .Q(IS_REG_OUT[27]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[28]),
        .Q(IS_REG_OUT[28]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[29]),
        .Q(IS_REG_OUT[29]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[2]),
        .Q(IS_REG_OUT[2]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[30]),
        .Q(IS_REG_OUT[30]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[31]),
        .Q(IS_REG_OUT[31]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[48]),
        .Q(IS_REG_OUT[32]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[49]),
        .Q(IS_REG_OUT[33]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[50]),
        .Q(IS_REG_OUT[34]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[51]),
        .Q(IS_REG_OUT[35]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[52]),
        .Q(IS_REG_OUT[36]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[53]),
        .Q(IS_REG_OUT[37]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[54]),
        .Q(IS_REG_OUT[38]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[55]),
        .Q(IS_REG_OUT[39]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[3]),
        .Q(IS_REG_OUT[3]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[56]),
        .Q(IS_REG_OUT[40]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[57]),
        .Q(IS_REG_OUT[41]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[58]),
        .Q(IS_REG_OUT[42]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[59]),
        .Q(IS_REG_OUT[43]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[60]),
        .Q(IS_REG_OUT[44]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[61]),
        .Q(IS_REG_OUT[45]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[62]),
        .Q(IS_REG_OUT[46]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(AddRoundTWEAKEY_OUT[63]),
        .Q(IS_REG_OUT[47]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[48]),
        .Q(IS_REG_OUT[48]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[49]),
        .Q(IS_REG_OUT[49]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[4]),
        .Q(IS_REG_OUT[4]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[50]),
        .Q(IS_REG_OUT[50]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[51]),
        .Q(IS_REG_OUT[51]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[52]),
        .Q(IS_REG_OUT[52]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[53]),
        .Q(IS_REG_OUT[53]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[54]),
        .Q(IS_REG_OUT[54]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[55]),
        .Q(IS_REG_OUT[55]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[56]),
        .Q(IS_REG_OUT[56]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[57]),
        .Q(IS_REG_OUT[57]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[58]),
        .Q(IS_REG_OUT[58]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[59]),
        .Q(IS_REG_OUT[59]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q[5]_i_1_n_0 ),
        .Q(IS_REG_OUT[5]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[60]),
        .Q(IS_REG_OUT[60]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[61]),
        .Q(IS_REG_OUT[61]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[62]),
        .Q(IS_REG_OUT[62]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[63]),
        .Q(IS_REG_OUT[63]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[6]),
        .Q(IS_REG_OUT[6]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[7]),
        .Q(IS_REG_OUT[7]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[8]),
        .Q(IS_REG_OUT[8]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(mixcolumns_out[9]),
        .Q(IS_REG_OUT[9]),
        .R(\FSM_sequential_current_state_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module reg_0
   (\Q_reg[59]_0 ,
    TW_REG_OUT,
    out,
    regs_ce,
    clk_IBUF_BUFG);
  output \Q_reg[59]_0 ;
  output [31:0]TW_REG_OUT;
  input [1:0]out;
  input regs_ce;
  input clk_IBUF_BUFG;

  wire \Q_reg[59]_0 ;
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
  wire [31:0]TW_REG_OUT;
  wire clk_IBUF_BUFG;
  wire [1:0]out;
  wire regs_ce;

  LUT2 #(
    .INIT(4'h1)) 
    \Q[59]_i_1__0 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[0]),
        .Q(\Q_reg_n_0_[0] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[10]),
        .Q(\Q_reg_n_0_[10] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[11]),
        .Q(\Q_reg_n_0_[11] ),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[12]),
        .Q(\Q_reg_n_0_[12] ),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[13]),
        .Q(\Q_reg_n_0_[13] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[14]),
        .Q(\Q_reg_n_0_[14] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[15]),
        .Q(\Q_reg_n_0_[15] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[16]),
        .Q(\Q_reg_n_0_[16] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[17]),
        .Q(\Q_reg_n_0_[17] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[18]),
        .Q(\Q_reg_n_0_[18] ),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[19]),
        .Q(\Q_reg_n_0_[19] ),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[1]),
        .Q(\Q_reg_n_0_[1] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[20]),
        .Q(\Q_reg_n_0_[20] ),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[21]),
        .Q(\Q_reg_n_0_[21] ),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[22]),
        .Q(\Q_reg_n_0_[22] ),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[23]),
        .Q(\Q_reg_n_0_[23] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[24]),
        .Q(\Q_reg_n_0_[24] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[25]),
        .Q(\Q_reg_n_0_[25] ),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[26]),
        .Q(\Q_reg_n_0_[26] ),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[27]),
        .Q(\Q_reg_n_0_[27] ),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[28]),
        .Q(\Q_reg_n_0_[28] ),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[29]),
        .Q(\Q_reg_n_0_[29] ),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[2]),
        .Q(\Q_reg_n_0_[2] ),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[30]),
        .Q(\Q_reg_n_0_[30] ),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[31]),
        .Q(\Q_reg_n_0_[31] ),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[16] ),
        .Q(TW_REG_OUT[0]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[17] ),
        .Q(TW_REG_OUT[1]),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[18] ),
        .Q(TW_REG_OUT[2]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[19] ),
        .Q(TW_REG_OUT[3]),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[12] ),
        .Q(TW_REG_OUT[4]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[13] ),
        .Q(TW_REG_OUT[5]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[14] ),
        .Q(TW_REG_OUT[6]),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[15] ),
        .Q(TW_REG_OUT[7]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[3]),
        .Q(\Q_reg_n_0_[3] ),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[4] ),
        .Q(TW_REG_OUT[8]),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[5] ),
        .Q(TW_REG_OUT[9]),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[6] ),
        .Q(TW_REG_OUT[10]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[7] ),
        .Q(TW_REG_OUT[11]),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[20] ),
        .Q(TW_REG_OUT[12]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[21] ),
        .Q(TW_REG_OUT[13]),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[22] ),
        .Q(TW_REG_OUT[14]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[23] ),
        .Q(TW_REG_OUT[15]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[8] ),
        .Q(TW_REG_OUT[16]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[9] ),
        .Q(TW_REG_OUT[17]),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[4]),
        .Q(\Q_reg_n_0_[4] ),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[10] ),
        .Q(TW_REG_OUT[18]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[11] ),
        .Q(TW_REG_OUT[19]),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[28] ),
        .Q(TW_REG_OUT[20]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[29] ),
        .Q(TW_REG_OUT[21]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[30] ),
        .Q(TW_REG_OUT[22]),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[31] ),
        .Q(TW_REG_OUT[23]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[0] ),
        .Q(TW_REG_OUT[24]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[1] ),
        .Q(TW_REG_OUT[25]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[2] ),
        .Q(TW_REG_OUT[26]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[3] ),
        .Q(TW_REG_OUT[27]),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[5]),
        .Q(\Q_reg_n_0_[5] ),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[24] ),
        .Q(TW_REG_OUT[28]),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[25] ),
        .Q(TW_REG_OUT[29]),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[26] ),
        .Q(TW_REG_OUT[30]),
        .S(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(\Q_reg_n_0_[27] ),
        .Q(TW_REG_OUT[31]),
        .S(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[6]),
        .Q(\Q_reg_n_0_[6] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[7]),
        .Q(\Q_reg_n_0_[7] ),
        .R(\Q_reg[59]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[8]),
        .Q(\Q_reg_n_0_[8] ),
        .R(\Q_reg[59]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(regs_ce),
        .D(TW_REG_OUT[9]),
        .Q(\Q_reg_n_0_[9] ),
        .S(\Q_reg[59]_0 ));
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
