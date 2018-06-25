// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Jun 23 20:07:25 2018
// Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/Documenti
//               2/University/Magistrale/Progettazione di Sistemi Integrati/VHDL
//               projects/Xilinx_contest/Simon/Simon_48_96_parallel/Simon_48_96_parallel.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v}
// Design      : Testing_IP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CNT
   (\current_state_reg[0] ,
    \current_state_reg[2] ,
    Q,
    D,
    \Q_reg[19] ,
    current_state,
    rst_IBUF,
    \FSM_sequential_current_state_reg[0] ,
    \temp_reg_reg[9] ,
    \FSM_sequential_current_state_reg[1] ,
    \temp_reg_reg[19] ,
    \temp_reg_reg[18] ,
    \temp_reg_reg[12] ,
    \temp_reg_reg[13] ,
    \temp_reg_reg[20] ,
    key_schedule_out,
    \temp_reg_reg[7] ,
    \temp_reg_reg[21] ,
    \temp_reg_reg[8] ,
    \temp_reg_reg[15] ,
    \temp_reg_reg[18]_0 ,
    clk_IBUF_BUFG);
  output \current_state_reg[0] ;
  output \current_state_reg[2] ;
  output [2:0]Q;
  output [10:0]D;
  output [2:0]\Q_reg[19] ;
  input [2:0]current_state;
  input rst_IBUF;
  input \FSM_sequential_current_state_reg[0] ;
  input \temp_reg_reg[9] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \temp_reg_reg[19] ;
  input \temp_reg_reg[18] ;
  input \temp_reg_reg[12] ;
  input \temp_reg_reg[13] ;
  input \temp_reg_reg[20] ;
  input [2:0]key_schedule_out;
  input \temp_reg_reg[7] ;
  input \temp_reg_reg[21] ;
  input \temp_reg_reg[8] ;
  input \temp_reg_reg[15] ;
  input \temp_reg_reg[18]_0 ;
  input clk_IBUF_BUFG;

  wire [10:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [2:0]Q;
  wire [2:0]\Q_reg[19] ;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[2]_i_1_n_0 ;
  wire \cnt_internal_value[2]_i_2_n_0 ;
  wire \cnt_internal_value[2]_i_3_n_0 ;
  wire [2:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire [2:0]key_schedule_out;
  wire [1:0]plusOp;
  wire rst_IBUF;
  wire \temp_reg_reg[12] ;
  wire \temp_reg_reg[13] ;
  wire \temp_reg_reg[15] ;
  wire \temp_reg_reg[18] ;
  wire \temp_reg_reg[18]_0 ;
  wire \temp_reg_reg[19] ;
  wire \temp_reg_reg[20] ;
  wire \temp_reg_reg[21] ;
  wire \temp_reg_reg[7] ;
  wire \temp_reg_reg[8] ;
  wire \temp_reg_reg[9] ;

  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    \Q[16]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .I5(key_schedule_out[1]),
        .O(\Q_reg[19] [1]));
  LUT6 #(
    .INIT(64'hC0C0C0C0C0EAFFC0)) 
    \Q[19]_i_1 
       (.I0(Q[1]),
        .I1(key_schedule_out[2]),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_sequential_current_state_reg[0] ),
        .O(\Q_reg[19] [2]));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    \Q[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .I5(key_schedule_out[0]),
        .O(\Q_reg[19] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_internal_value[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .O(\cnt_internal_value[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\cnt_internal_value[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA4)) 
    \cnt_internal_value[2]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\cnt_internal_value[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value[2]_i_1_n_0 ),
        .CLR(\cnt_internal_value[2]_i_3_n_0 ),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value[2]_i_1_n_0 ),
        .CLR(\cnt_internal_value[2]_i_3_n_0 ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_internal_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_internal_value[2]_i_1_n_0 ),
        .CLR(\cnt_internal_value[2]_i_3_n_0 ),
        .D(\cnt_internal_value[2]_i_2_n_0 ),
        .Q(Q[2]));
  LUT5 #(
    .INIT(32'hFFFF44C4)) 
    \current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(current_state[1]),
        .I4(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT3 #(
    .INIT(8'hBF)) 
    \current_state[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB9BBBBBB98888888)) 
    \current_state[2]_i_6 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(current_state[0]),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \temp_reg[10]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[9] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0025FFFF00250025)) 
    \temp_reg[13]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[12] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0025FFFF00250025)) 
    \temp_reg[14]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[13] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    \temp_reg[16]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[15] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    \temp_reg[19]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[18]_0 ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0025FFFF00250025)) 
    \temp_reg[21]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[20] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0204FFFF02040204)) 
    \temp_reg[22]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_sequential_current_state_reg[0] ),
        .I3(Q[2]),
        .I4(\temp_reg_reg[21] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \temp_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[18] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \temp_reg[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[19] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0204FFFF02040204)) 
    \temp_reg[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_sequential_current_state_reg[0] ),
        .I3(Q[2]),
        .I4(\temp_reg_reg[7] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    \temp_reg[9]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(\temp_reg_reg[8] ),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(D[3]));
endmodule

module Simon_48_96_parallel
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    \Q_reg[19] ,
    \temp_reg_reg[5] ,
    \temp_reg_reg[5]_0 ,
    \temp_reg_reg[22] ,
    \temp_reg_reg[21] ,
    \temp_reg_reg[19] ,
    \temp_reg_reg[16] ,
    \temp_reg_reg[14] ,
    \temp_reg_reg[13] ,
    \temp_reg_reg[10] ,
    \temp_reg_reg[9] ,
    \temp_reg_reg[8] ,
    \temp_reg_reg[3] ,
    \temp_reg_reg[2] ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    \cnt_internal_value_reg[1] ,
    Q,
    \cnt_internal_value_reg[1]_0 ,
    clk_IBUF_BUFG);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output [2:0]\Q_reg[19] ;
  output \temp_reg_reg[5] ;
  output \temp_reg_reg[5]_0 ;
  output \temp_reg_reg[22] ;
  output \temp_reg_reg[21] ;
  output \temp_reg_reg[19] ;
  output \temp_reg_reg[16] ;
  output \temp_reg_reg[14] ;
  output \temp_reg_reg[13] ;
  output \temp_reg_reg[10] ;
  output \temp_reg_reg[9] ;
  output \temp_reg_reg[8] ;
  output \temp_reg_reg[3] ;
  output \temp_reg_reg[2] ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \current_state_reg[2]_0 ;
  input \current_state_reg[2]_1 ;
  input [2:0]\cnt_internal_value_reg[1] ;
  input [2:0]Q;
  input [10:0]\cnt_internal_value_reg[1]_0 ;
  input clk_IBUF_BUFG;

  wire [20:3]D;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire INST_LFSR_n_4;
  wire INST_LFSR_n_5;
  wire INST_LFSR_n_6;
  wire INST_LFSR_n_7;
  wire INST_LFSR_n_8;
  wire INST_LFSR_n_9;
  wire IS_CE;
  wire KEY_REG_CE;
  wire [2:0]Q;
  wire [2:0]\Q_reg[19] ;
  wire clk_IBUF_BUFG;
  wire [2:0]\cnt_internal_value_reg[1] ;
  wire [10:0]\cnt_internal_value_reg[1]_0 ;
  wire [2:0]current_state;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire end_encrypt;
  wire [23:0]key_schedule_out;
  wire [23:0]ki0_KEY_REG_OUT;
  wire [23:0]ki2_KEY_REG_OUT;
  wire [23:0]ki3_KEY_REG_OUT;
  wire [4:4]lfsr_parallel_out;
  wire lfsr_rst;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg_reg[10] ;
  wire \temp_reg_reg[13] ;
  wire \temp_reg_reg[14] ;
  wire \temp_reg_reg[16] ;
  wire \temp_reg_reg[19] ;
  wire \temp_reg_reg[21] ;
  wire \temp_reg_reg[22] ;
  wire \temp_reg_reg[2] ;
  wire \temp_reg_reg[3] ;
  wire \temp_reg_reg[5] ;
  wire \temp_reg_reg[5]_0 ;
  wire \temp_reg_reg[8] ;
  wire \temp_reg_reg[9] ;

  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(current_state_0[1]),
        .I1(current_state_0[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_LFSR_n_9),
        .Q(current_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_LFSR_n_8),
        .Q(current_state_0[1]),
        .R(1'b0));
  end_encrypt_shift_reg INST_END_ENCRYPT_SHIFT_REG
       (.AR(lfsr_rst),
        .E(INST_LFSR_n_4),
        .Q(end_encrypt),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  parallel_tapped_shift_reg INST_IS_REG
       (.\FSM_sequential_current_state_reg[1] (INST_LFSR_n_5),
        .\FSM_sequential_current_state_reg[1]_0 (INST_LFSR_n_6),
        .IS_CE(IS_CE),
        .Q(Q),
        .\Q_reg[23] (ki0_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] (\cnt_internal_value_reg[1]_0 ),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .\current_state_reg[2]_0 (\current_state_reg[2]_0 ),
        .\current_state_reg[2]_1 (\current_state_reg[2]_1 ),
        .out(current_state_0),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[10]_0 (\temp_reg_reg[10] ),
        .\temp_reg_reg[13]_0 (\temp_reg_reg[13] ),
        .\temp_reg_reg[14]_0 (\temp_reg_reg[14] ),
        .\temp_reg_reg[16]_0 (\temp_reg_reg[16] ),
        .\temp_reg_reg[19]_0 (\temp_reg_reg[19] ),
        .\temp_reg_reg[21]_0 (\temp_reg_reg[21] ),
        .\temp_reg_reg[22]_0 (\temp_reg_reg[22] ),
        .\temp_reg_reg[2]_0 (\temp_reg_reg[2] ),
        .\temp_reg_reg[3]_0 (\temp_reg_reg[3] ),
        .\temp_reg_reg[5]_0 (\temp_reg_reg[5]_0 ),
        .\temp_reg_reg[5]_1 (\temp_reg_reg[5] ),
        .\temp_reg_reg[8]_0 (\temp_reg_reg[8] ),
        .\temp_reg_reg[9]_0 (\temp_reg_reg[9] ));
  \reg  INST_Ki0
       (.KEY_REG_CE(KEY_REG_CE),
        .Q(ki0_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[47] (ki2_KEY_REG_OUT));
  normal_shift_reg INST_Ki2_Ki1
       (.D({D[20],D[17],D[12:11],D[8],D[4:3]}),
        .\FSM_sequential_current_state_reg[0] (\temp_reg_reg[5]_0 ),
        .\FSM_sequential_current_state_reg[1] (\temp_reg_reg[5] ),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(Q),
        .\Q_reg[19] (\Q_reg[19] ),
        .\Q_reg[23] ({key_schedule_out[23:21],key_schedule_out[18],key_schedule_out[15:13],key_schedule_out[10:9],key_schedule_out[7:5],key_schedule_out[2],key_schedule_out[0]}),
        .\Q_reg[23]_0 (ki2_KEY_REG_OUT),
        .\Q_reg[23]_1 (ki3_KEY_REG_OUT),
        .\Q_reg[23]_2 (ki0_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\lfsr_internal_reg[4] (lfsr_parallel_out));
  reg_0 INST_Ki3
       (.D({D[20],\cnt_internal_value_reg[1] [2],D[17],\cnt_internal_value_reg[1] [1],D[12:11],D[8],D[4:3],\cnt_internal_value_reg[1] [0]}),
        .\FSM_sequential_current_state_reg[0] (INST_LFSR_n_7),
        .KEY_REG_CE(KEY_REG_CE),
        .\Q_reg[23]_0 ({key_schedule_out[23:21],key_schedule_out[18],key_schedule_out[15:13],key_schedule_out[10:9],key_schedule_out[7:5],key_schedule_out[2],key_schedule_out[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[23] (ki3_KEY_REG_OUT));
  lfsr INST_LFSR
       (.AR(lfsr_rst),
        .E(INST_LFSR_n_4),
        .\FSM_sequential_current_state_reg[0] (INST_LFSR_n_9),
        .\FSM_sequential_current_state_reg[0]_0 (\temp_reg_reg[5]_0 ),
        .\FSM_sequential_current_state_reg[1] (INST_LFSR_n_8),
        .\FSM_sequential_current_state_reg[1]_0 (\temp_reg_reg[5] ),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state[0]_i_3_n_0 ),
        .IS_CE(IS_CE),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(lfsr_parallel_out),
        .\Q_reg[0] (INST_LFSR_n_7),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (Q),
        .current_state(current_state),
        .\current_state_reg[1] (\FSM_sequential_current_state[0]_i_4_n_0 ),
        .out(current_state_0),
        .\reg_internal_reg[1] (end_encrypt),
        .\temp_reg_reg[20] (INST_LFSR_n_6),
        .\temp_reg_reg[7] (INST_LFSR_n_5));
endmodule

(* Datapath = "24" *) (* ECO_CHECKSUM = "aa1a3bc3" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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

  wire [19:1]D;
  wire INST_CNT_n_0;
  wire INST_CNT_n_1;
  wire Simon_DUT_n_0;
  wire Simon_DUT_n_1;
  wire Simon_DUT_n_10;
  wire Simon_DUT_n_11;
  wire Simon_DUT_n_12;
  wire Simon_DUT_n_13;
  wire Simon_DUT_n_14;
  wire Simon_DUT_n_15;
  wire Simon_DUT_n_16;
  wire Simon_DUT_n_17;
  wire Simon_DUT_n_5;
  wire Simon_DUT_n_6;
  wire Simon_DUT_n_7;
  wire Simon_DUT_n_8;
  wire Simon_DUT_n_9;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cnt_internal_value;
  wire [2:0]current_state;
  wire \current_state[2]_i_3_n_0 ;
  wire [19:1]key_schedule_out;
  wire led_out;
  wire led_out_OBUF;
  wire [22:2]p_0_in;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;

initial begin
 $sdf_annotate("Testing_IP_TB_time_impl.sdf",,,,"tool_control");
end
  CNT INST_CNT
       (.D({p_0_in[22:21],p_0_in[19],p_0_in[16],p_0_in[14:13],p_0_in[10:8],p_0_in[3:2]}),
        .\FSM_sequential_current_state_reg[0] (Simon_DUT_n_6),
        .\FSM_sequential_current_state_reg[1] (Simon_DUT_n_5),
        .Q(cnt_internal_value),
        .\Q_reg[19] ({D[19],D[16],D[1]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[0] (INST_CNT_n_0),
        .\current_state_reg[2] (INST_CNT_n_1),
        .key_schedule_out({key_schedule_out[19],key_schedule_out[16],key_schedule_out[1]}),
        .rst_IBUF(rst_IBUF),
        .\temp_reg_reg[12] (Simon_DUT_n_12),
        .\temp_reg_reg[13] (Simon_DUT_n_11),
        .\temp_reg_reg[15] (Simon_DUT_n_10),
        .\temp_reg_reg[18] (Simon_DUT_n_17),
        .\temp_reg_reg[18]_0 (Simon_DUT_n_9),
        .\temp_reg_reg[19] (Simon_DUT_n_16),
        .\temp_reg_reg[20] (Simon_DUT_n_8),
        .\temp_reg_reg[21] (Simon_DUT_n_7),
        .\temp_reg_reg[7] (Simon_DUT_n_15),
        .\temp_reg_reg[8] (Simon_DUT_n_14),
        .\temp_reg_reg[9] (Simon_DUT_n_13));
  Simon_48_96_parallel Simon_DUT
       (.Q(cnt_internal_value),
        .\Q_reg[19] ({key_schedule_out[19],key_schedule_out[16],key_schedule_out[1]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[1] ({D[19],D[16],D[1]}),
        .\cnt_internal_value_reg[1]_0 ({p_0_in[22:21],p_0_in[19],p_0_in[16],p_0_in[14:13],p_0_in[10:8],p_0_in[3:2]}),
        .current_state(current_state),
        .\current_state_reg[1] (Simon_DUT_n_0),
        .\current_state_reg[2] (Simon_DUT_n_1),
        .\current_state_reg[2]_0 (\current_state[2]_i_3_n_0 ),
        .\current_state_reg[2]_1 (INST_CNT_n_1),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[10] (Simon_DUT_n_13),
        .\temp_reg_reg[13] (Simon_DUT_n_12),
        .\temp_reg_reg[14] (Simon_DUT_n_11),
        .\temp_reg_reg[16] (Simon_DUT_n_10),
        .\temp_reg_reg[19] (Simon_DUT_n_9),
        .\temp_reg_reg[21] (Simon_DUT_n_8),
        .\temp_reg_reg[22] (Simon_DUT_n_7),
        .\temp_reg_reg[2] (Simon_DUT_n_17),
        .\temp_reg_reg[3] (Simon_DUT_n_16),
        .\temp_reg_reg[5] (Simon_DUT_n_5),
        .\temp_reg_reg[5]_0 (Simon_DUT_n_6),
        .\temp_reg_reg[8] (Simon_DUT_n_15),
        .\temp_reg_reg[9] (Simon_DUT_n_14));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[2]_i_3 
       (.I0(current_state[2]),
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
    Q,
    KEY_REG_CE,
    AR,
    E,
    \temp_reg_reg[7] ,
    \temp_reg_reg[20] ,
    \Q_reg[0] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    out,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \cnt_internal_value_reg[2] ,
    current_state,
    \FSM_sequential_current_state_reg[1]_1 ,
    \reg_internal_reg[1] ,
    \current_state_reg[1] ,
    clk_IBUF_BUFG);
  output IS_CE;
  output [0:0]Q;
  output KEY_REG_CE;
  output [0:0]AR;
  output [0:0]E;
  output \temp_reg_reg[7] ;
  output \temp_reg_reg[20] ;
  output \Q_reg[0] ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  input [1:0]out;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input [2:0]\cnt_internal_value_reg[2] ;
  input [2:0]current_state;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input [0:0]\reg_internal_reg[1] ;
  input \current_state_reg[1] ;
  input clk_IBUF_BUFG;

  wire [0:0]AR;
  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire IS_CE;
  wire KEY_REG_CE;
  wire [0:0]Q;
  wire \Q_reg[0] ;
  wire clk_IBUF_BUFG;
  wire [2:0]\cnt_internal_value_reg[2] ;
  wire [2:0]current_state;
  wire \current_state_reg[1] ;
  wire lfsr_ce;
  wire [3:0]lfsr_parallel_out;
  wire [1:0]out;
  wire [1:1]p_0_out;
  wire [0:0]p_2_out;
  wire [0:0]\reg_internal_reg[1] ;
  wire \temp_reg[47]_i_2_n_0 ;
  wire \temp_reg_reg[20] ;
  wire \temp_reg_reg[7] ;

  LUT6 #(
    .INIT(64'h0000000011111011)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state_reg[1]_1 ),
        .I2(\reg_internal_reg[1] ),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\current_state_reg[1] ),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(out[0]),
        .I1(lfsr_parallel_out[0]),
        .I2(Q),
        .I3(lfsr_parallel_out[2]),
        .I4(lfsr_parallel_out[1]),
        .I5(lfsr_parallel_out[3]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222002272)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(out[1]),
        .I1(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I2(out[0]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(lfsr_parallel_out[2]),
        .I1(Q),
        .I2(lfsr_parallel_out[0]),
        .I3(out[0]),
        .I4(lfsr_parallel_out[1]),
        .I5(lfsr_parallel_out[3]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \Q[20]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(KEY_REG_CE));
  LUT3 #(
    .INIT(8'hB0)) 
    \Q[23]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(\Q_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(lfsr_parallel_out[2]),
        .I1(Q),
        .O(p_2_out));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[2]_i_1 
       (.I0(lfsr_parallel_out[1]),
        .I1(lfsr_parallel_out[0]),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'hB)) 
    \lfsr_internal[4]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .O(lfsr_ce));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(AR),
        .D(p_2_out),
        .Q(lfsr_parallel_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(AR),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(AR),
        .D(p_0_out),
        .Q(lfsr_parallel_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(AR),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .D(lfsr_parallel_out[3]),
        .PRE(AR),
        .Q(Q));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \reg_internal[1]_i_1 
       (.I0(lfsr_parallel_out[0]),
        .I1(Q),
        .I2(lfsr_parallel_out[2]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[3]),
        .I5(\FSM_sequential_current_state_reg[1]_0 ),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_internal[1]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .O(AR));
  LUT6 #(
    .INIT(64'h0000000000000E00)) 
    \temp_reg[20]_i_1 
       (.I0(out[1]),
        .I1(\temp_reg[47]_i_2_n_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(\cnt_internal_value_reg[2] [0]),
        .I4(\cnt_internal_value_reg[2] [1]),
        .I5(\cnt_internal_value_reg[2] [2]),
        .O(\temp_reg_reg[20] ));
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_reg[23]_i_1 
       (.I0(out[1]),
        .I1(\temp_reg[47]_i_2_n_0 ),
        .I2(out[0]),
        .O(\temp_reg_reg[7] ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[47]_i_1 
       (.I0(out[1]),
        .I1(\temp_reg[47]_i_2_n_0 ),
        .O(IS_CE));
  LUT6 #(
    .INIT(64'h1555555555155155)) 
    \temp_reg[47]_i_2 
       (.I0(out[0]),
        .I1(lfsr_parallel_out[2]),
        .I2(lfsr_parallel_out[0]),
        .I3(lfsr_parallel_out[1]),
        .I4(lfsr_parallel_out[3]),
        .I5(Q),
        .O(\temp_reg[47]_i_2_n_0 ));
endmodule

module normal_shift_reg
   (D,
    \Q_reg[23] ,
    \Q_reg[23]_0 ,
    \Q_reg[19] ,
    \FSM_sequential_current_state_reg[1] ,
    Q,
    \FSM_sequential_current_state_reg[0] ,
    KEY_REG_CE,
    clk_IBUF_BUFG,
    \Q_reg[23]_1 ,
    \Q_reg[23]_2 ,
    \lfsr_internal_reg[4] );
  output [6:0]D;
  output [13:0]\Q_reg[23] ;
  output [23:0]\Q_reg[23]_0 ;
  output [2:0]\Q_reg[19] ;
  input \FSM_sequential_current_state_reg[1] ;
  input [2:0]Q;
  input \FSM_sequential_current_state_reg[0] ;
  input KEY_REG_CE;
  input clk_IBUF_BUFG;
  input [23:0]\Q_reg[23]_1 ;
  input [23:0]\Q_reg[23]_2 ;
  input [0:0]\lfsr_internal_reg[4] ;

  wire [6:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire KEY_REG_CE;
  wire [2:0]Q;
  wire [2:0]\Q_reg[19] ;
  wire [13:0]\Q_reg[23] ;
  wire [23:0]\Q_reg[23]_0 ;
  wire [23:0]\Q_reg[23]_1 ;
  wire [23:0]\Q_reg[23]_2 ;
  wire clk_IBUF_BUFG;
  wire [20:3]key_schedule_out;
  wire [0:0]\lfsr_internal_reg[4] ;
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
  wire \temp_reg_reg_n_0_[2] ;
  wire \temp_reg_reg_n_0_[3] ;
  wire \temp_reg_reg_n_0_[4] ;
  wire \temp_reg_reg_n_0_[5] ;
  wire \temp_reg_reg_n_0_[6] ;
  wire \temp_reg_reg_n_0_[7] ;
  wire \temp_reg_reg_n_0_[8] ;
  wire \temp_reg_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \Q[0]_i_1 
       (.I0(\Q_reg[23]_0 [0]),
        .I1(\Q_reg[23]_1 [3]),
        .I2(\Q_reg[23]_2 [0]),
        .I3(\Q_reg[23]_0 [1]),
        .I4(\Q_reg[23]_1 [4]),
        .I5(\lfsr_internal_reg[4] ),
        .O(\Q_reg[23] [0]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[10]_i_1 
       (.I0(\Q_reg[23]_2 [10]),
        .I1(\Q_reg[23]_0 [11]),
        .I2(\Q_reg[23]_1 [14]),
        .I3(\Q_reg[23]_0 [10]),
        .I4(\Q_reg[23]_1 [13]),
        .O(\Q_reg[23] [6]));
  LUT6 #(
    .INIT(64'h8888888888F8FF88)) 
    \Q[11]_i_1 
       (.I0(key_schedule_out[11]),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_sequential_current_state_reg[0] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[11]_i_2 
       (.I0(\Q_reg[23]_2 [11]),
        .I1(\Q_reg[23]_0 [12]),
        .I2(\Q_reg[23]_1 [15]),
        .I3(\Q_reg[23]_0 [11]),
        .I4(\Q_reg[23]_1 [14]),
        .O(key_schedule_out[11]));
  LUT6 #(
    .INIT(64'hFFFF404440444044)) 
    \Q[12]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_current_state_reg[1] ),
        .I5(key_schedule_out[12]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[12]_i_2 
       (.I0(\Q_reg[23]_2 [12]),
        .I1(\Q_reg[23]_0 [13]),
        .I2(\Q_reg[23]_1 [16]),
        .I3(\Q_reg[23]_0 [12]),
        .I4(\Q_reg[23]_1 [15]),
        .O(key_schedule_out[12]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[13]_i_1 
       (.I0(\Q_reg[23]_2 [13]),
        .I1(\Q_reg[23]_0 [14]),
        .I2(\Q_reg[23]_1 [17]),
        .I3(\Q_reg[23]_0 [13]),
        .I4(\Q_reg[23]_1 [16]),
        .O(\Q_reg[23] [7]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[14]_i_1 
       (.I0(\Q_reg[23]_2 [14]),
        .I1(\Q_reg[23]_0 [15]),
        .I2(\Q_reg[23]_1 [18]),
        .I3(\Q_reg[23]_0 [14]),
        .I4(\Q_reg[23]_1 [17]),
        .O(\Q_reg[23] [8]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[15]_i_1 
       (.I0(\Q_reg[23]_2 [15]),
        .I1(\Q_reg[23]_0 [16]),
        .I2(\Q_reg[23]_1 [19]),
        .I3(\Q_reg[23]_0 [15]),
        .I4(\Q_reg[23]_1 [18]),
        .O(\Q_reg[23] [9]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[16]_i_2 
       (.I0(\Q_reg[23]_2 [16]),
        .I1(\Q_reg[23]_0 [17]),
        .I2(\Q_reg[23]_1 [20]),
        .I3(\Q_reg[23]_0 [16]),
        .I4(\Q_reg[23]_1 [19]),
        .O(\Q_reg[19] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h888F)) 
    \Q[17]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(key_schedule_out[17]),
        .I2(Q[2]),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[17]_i_2 
       (.I0(\Q_reg[23]_2 [17]),
        .I1(\Q_reg[23]_0 [18]),
        .I2(\Q_reg[23]_1 [21]),
        .I3(\Q_reg[23]_0 [17]),
        .I4(\Q_reg[23]_1 [20]),
        .O(key_schedule_out[17]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[18]_i_1 
       (.I0(\Q_reg[23]_2 [18]),
        .I1(\Q_reg[23]_0 [19]),
        .I2(\Q_reg[23]_1 [22]),
        .I3(\Q_reg[23]_0 [18]),
        .I4(\Q_reg[23]_1 [21]),
        .O(\Q_reg[23] [10]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[19]_i_2 
       (.I0(\Q_reg[23]_2 [19]),
        .I1(\Q_reg[23]_0 [20]),
        .I2(\Q_reg[23]_1 [23]),
        .I3(\Q_reg[23]_0 [19]),
        .I4(\Q_reg[23]_1 [22]),
        .O(\Q_reg[19] [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \Q[1]_i_2 
       (.I0(\Q_reg[23]_2 [1]),
        .I1(\Q_reg[23]_0 [2]),
        .I2(\Q_reg[23]_1 [5]),
        .I3(\Q_reg[23]_0 [1]),
        .I4(\Q_reg[23]_1 [4]),
        .O(\Q_reg[19] [0]));
  LUT6 #(
    .INIT(64'h88888888F888F8F8)) 
    \Q[20]_i_2 
       (.I0(key_schedule_out[20]),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_sequential_current_state_reg[0] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[20]_i_3 
       (.I0(\Q_reg[23]_2 [20]),
        .I1(\Q_reg[23]_0 [21]),
        .I2(\Q_reg[23]_1 [0]),
        .I3(\Q_reg[23]_0 [20]),
        .I4(\Q_reg[23]_1 [23]),
        .O(key_schedule_out[20]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[21]_i_1 
       (.I0(\Q_reg[23]_2 [21]),
        .I1(\Q_reg[23]_0 [22]),
        .I2(\Q_reg[23]_1 [1]),
        .I3(\Q_reg[23]_0 [21]),
        .I4(\Q_reg[23]_1 [0]),
        .O(\Q_reg[23] [11]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[22]_i_1 
       (.I0(\Q_reg[23]_2 [22]),
        .I1(\Q_reg[23]_0 [23]),
        .I2(\Q_reg[23]_1 [2]),
        .I3(\Q_reg[23]_0 [22]),
        .I4(\Q_reg[23]_1 [1]),
        .O(\Q_reg[23] [12]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[23]_i_2 
       (.I0(\Q_reg[23]_2 [23]),
        .I1(\Q_reg[23]_0 [0]),
        .I2(\Q_reg[23]_1 [3]),
        .I3(\Q_reg[23]_0 [23]),
        .I4(\Q_reg[23]_1 [2]),
        .O(\Q_reg[23] [13]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[23]_2 [2]),
        .I1(\Q_reg[23]_0 [3]),
        .I2(\Q_reg[23]_1 [6]),
        .I3(\Q_reg[23]_0 [2]),
        .I4(\Q_reg[23]_1 [5]),
        .O(\Q_reg[23] [1]));
  LUT6 #(
    .INIT(64'h8F888F8888888F88)) 
    \Q[3]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(key_schedule_out[3]),
        .I2(\FSM_sequential_current_state_reg[0] ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[3]_i_2 
       (.I0(\Q_reg[23]_2 [3]),
        .I1(\Q_reg[23]_0 [4]),
        .I2(\Q_reg[23]_1 [7]),
        .I3(\Q_reg[23]_0 [3]),
        .I4(\Q_reg[23]_1 [6]),
        .O(key_schedule_out[3]));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \Q[4]_i_1 
       (.I0(key_schedule_out[4]),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_sequential_current_state_reg[0] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[4]_i_2 
       (.I0(\Q_reg[23]_2 [4]),
        .I1(\Q_reg[23]_0 [5]),
        .I2(\Q_reg[23]_1 [8]),
        .I3(\Q_reg[23]_0 [4]),
        .I4(\Q_reg[23]_1 [7]),
        .O(key_schedule_out[4]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[5]_i_1 
       (.I0(\Q_reg[23]_2 [5]),
        .I1(\Q_reg[23]_0 [6]),
        .I2(\Q_reg[23]_1 [9]),
        .I3(\Q_reg[23]_0 [5]),
        .I4(\Q_reg[23]_1 [8]),
        .O(\Q_reg[23] [2]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[6]_i_1 
       (.I0(\Q_reg[23]_2 [6]),
        .I1(\Q_reg[23]_0 [7]),
        .I2(\Q_reg[23]_1 [10]),
        .I3(\Q_reg[23]_0 [6]),
        .I4(\Q_reg[23]_1 [9]),
        .O(\Q_reg[23] [3]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[7]_i_1 
       (.I0(\Q_reg[23]_2 [7]),
        .I1(\Q_reg[23]_0 [8]),
        .I2(\Q_reg[23]_1 [11]),
        .I3(\Q_reg[23]_0 [7]),
        .I4(\Q_reg[23]_1 [10]),
        .O(\Q_reg[23] [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF111)) 
    \Q[8]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_sequential_current_state_reg[0] ),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(key_schedule_out[8]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[8]_i_2 
       (.I0(\Q_reg[23]_2 [8]),
        .I1(\Q_reg[23]_0 [9]),
        .I2(\Q_reg[23]_1 [12]),
        .I3(\Q_reg[23]_0 [8]),
        .I4(\Q_reg[23]_1 [11]),
        .O(key_schedule_out[8]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[9]_i_1 
       (.I0(\Q_reg[23]_2 [9]),
        .I1(\Q_reg[23]_0 [10]),
        .I2(\Q_reg[23]_1 [13]),
        .I3(\Q_reg[23]_0 [9]),
        .I4(\Q_reg[23]_1 [12]),
        .O(\Q_reg[23] [5]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [0]),
        .Q(\temp_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [10]),
        .Q(\temp_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [11]),
        .Q(\temp_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [12]),
        .Q(\temp_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [13]),
        .Q(\temp_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [14]),
        .Q(\temp_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [15]),
        .Q(\temp_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [16]),
        .Q(\temp_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [17]),
        .Q(\temp_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [18]),
        .Q(\temp_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [19]),
        .Q(\temp_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [1]),
        .Q(\temp_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [20]),
        .Q(\temp_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [21]),
        .Q(\temp_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [22]),
        .Q(\temp_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [23]),
        .Q(\temp_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[0] ),
        .Q(\Q_reg[23]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[1] ),
        .Q(\Q_reg[23]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[2] ),
        .Q(\Q_reg[23]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[3] ),
        .Q(\Q_reg[23]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[4] ),
        .Q(\Q_reg[23]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[5] ),
        .Q(\Q_reg[23]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [2]),
        .Q(\temp_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[6] ),
        .Q(\Q_reg[23]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[7] ),
        .Q(\Q_reg[23]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[8] ),
        .Q(\Q_reg[23]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[9] ),
        .Q(\Q_reg[23]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[10] ),
        .Q(\Q_reg[23]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[11] ),
        .Q(\Q_reg[23]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[12] ),
        .Q(\Q_reg[23]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[13] ),
        .Q(\Q_reg[23]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[14] ),
        .Q(\Q_reg[23]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[15] ),
        .Q(\Q_reg[23]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [3]),
        .Q(\temp_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[16] ),
        .Q(\Q_reg[23]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[17] ),
        .Q(\Q_reg[23]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[18] ),
        .Q(\Q_reg[23]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[19] ),
        .Q(\Q_reg[23]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[20] ),
        .Q(\Q_reg[23]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[21] ),
        .Q(\Q_reg[23]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[22] ),
        .Q(\Q_reg[23]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[23] ),
        .Q(\Q_reg[23]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [4]),
        .Q(\temp_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [5]),
        .Q(\temp_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [6]),
        .Q(\temp_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [7]),
        .Q(\temp_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [8]),
        .Q(\temp_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_1 [9]),
        .Q(\temp_reg_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module parallel_tapped_shift_reg
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    \temp_reg_reg[5]_0 ,
    \temp_reg_reg[5]_1 ,
    \temp_reg_reg[22]_0 ,
    \temp_reg_reg[21]_0 ,
    \temp_reg_reg[19]_0 ,
    \temp_reg_reg[16]_0 ,
    \temp_reg_reg[14]_0 ,
    \temp_reg_reg[13]_0 ,
    \temp_reg_reg[10]_0 ,
    \temp_reg_reg[9]_0 ,
    \temp_reg_reg[8]_0 ,
    \temp_reg_reg[3]_0 ,
    \temp_reg_reg[2]_0 ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    Q,
    \Q_reg[23] ,
    out,
    IS_CE,
    clk_IBUF_BUFG,
    \cnt_internal_value_reg[1] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[1]_0 );
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[5]_0 ;
  output \temp_reg_reg[5]_1 ;
  output \temp_reg_reg[22]_0 ;
  output \temp_reg_reg[21]_0 ;
  output \temp_reg_reg[19]_0 ;
  output \temp_reg_reg[16]_0 ;
  output \temp_reg_reg[14]_0 ;
  output \temp_reg_reg[13]_0 ;
  output \temp_reg_reg[10]_0 ;
  output \temp_reg_reg[9]_0 ;
  output \temp_reg_reg[8]_0 ;
  output \temp_reg_reg[3]_0 ;
  output \temp_reg_reg[2]_0 ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \current_state_reg[2]_0 ;
  input \current_state_reg[2]_1 ;
  input [2:0]Q;
  input [23:0]\Q_reg[23] ;
  input [1:0]out;
  input IS_CE;
  input clk_IBUF_BUFG;
  input [10:0]\cnt_internal_value_reg[1] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \FSM_sequential_current_state_reg[1]_0 ;

  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire IS_CE;
  wire [23:0]IS_left_reg_out;
  wire [23:0]IS_right_reg_out;
  wire [2:0]Q;
  wire [23:0]\Q_reg[23] ;
  wire clk_IBUF_BUFG;
  wire [10:0]\cnt_internal_value_reg[1] ;
  wire [2:0]current_state;
  wire \current_state[2]_i_10_n_0 ;
  wire \current_state[2]_i_11_n_0 ;
  wire \current_state[2]_i_12_n_0 ;
  wire \current_state[2]_i_13_n_0 ;
  wire \current_state[2]_i_14_n_0 ;
  wire \current_state[2]_i_15_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state[2]_i_8_n_0 ;
  wire \current_state[2]_i_9_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire [1:0]out;
  wire [6:1]p_0_in;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg[0]_i_1_n_0 ;
  wire \temp_reg[11]_i_1_n_0 ;
  wire \temp_reg[12]_i_1_n_0 ;
  wire \temp_reg[15]_i_1_n_0 ;
  wire \temp_reg[17]_i_1_n_0 ;
  wire \temp_reg[18]_i_1_n_0 ;
  wire \temp_reg[1]_i_2_n_0 ;
  wire \temp_reg[20]_i_2_n_0 ;
  wire \temp_reg[23]_i_2_n_0 ;
  wire \temp_reg[4]_i_2_n_0 ;
  wire \temp_reg[5]_i_2_n_0 ;
  wire \temp_reg[6]_i_2_n_0 ;
  wire \temp_reg[7]_i_1_n_0 ;
  wire \temp_reg_reg[10]_0 ;
  wire \temp_reg_reg[13]_0 ;
  wire \temp_reg_reg[14]_0 ;
  wire \temp_reg_reg[16]_0 ;
  wire \temp_reg_reg[19]_0 ;
  wire \temp_reg_reg[21]_0 ;
  wire \temp_reg_reg[22]_0 ;
  wire \temp_reg_reg[2]_0 ;
  wire \temp_reg_reg[3]_0 ;
  wire \temp_reg_reg[5]_0 ;
  wire \temp_reg_reg[5]_1 ;
  wire \temp_reg_reg[8]_0 ;
  wire \temp_reg_reg[9]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF8AAA8EAE)) 
    \current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(start_IBUF),
        .I4(\current_state[2]_i_2_n_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000FFFF8F88)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\current_state_reg[2]_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(\current_state[2]_i_5_n_0 ),
        .I4(\current_state_reg[2]_1 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[2] ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \current_state[2]_i_10 
       (.I0(IS_right_reg_out[13]),
        .I1(IS_right_reg_out[14]),
        .I2(IS_right_reg_out[12]),
        .I3(IS_right_reg_out[10]),
        .O(\current_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \current_state[2]_i_11 
       (.I0(IS_right_reg_out[2]),
        .I1(IS_right_reg_out[3]),
        .I2(IS_right_reg_out[20]),
        .I3(IS_right_reg_out[21]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\current_state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \current_state[2]_i_12 
       (.I0(IS_right_reg_out[16]),
        .I1(IS_right_reg_out[18]),
        .I2(IS_right_reg_out[19]),
        .I3(IS_right_reg_out[11]),
        .O(\current_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \current_state[2]_i_13 
       (.I0(IS_right_reg_out[7]),
        .I1(IS_right_reg_out[6]),
        .I2(IS_right_reg_out[1]),
        .I3(IS_right_reg_out[0]),
        .I4(IS_right_reg_out[4]),
        .I5(IS_right_reg_out[5]),
        .O(\current_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \current_state[2]_i_14 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(IS_right_reg_out[15]),
        .I3(IS_right_reg_out[17]),
        .I4(IS_right_reg_out[23]),
        .I5(IS_right_reg_out[22]),
        .O(\current_state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \current_state[2]_i_15 
       (.I0(IS_right_reg_out[13]),
        .I1(IS_right_reg_out[14]),
        .I2(IS_right_reg_out[8]),
        .I3(IS_right_reg_out[9]),
        .I4(IS_right_reg_out[12]),
        .I5(IS_right_reg_out[10]),
        .O(\current_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \current_state[2]_i_2 
       (.I0(\current_state[2]_i_7_n_0 ),
        .I1(\current_state[2]_i_8_n_0 ),
        .I2(\current_state[2]_i_9_n_0 ),
        .I3(\current_state[2]_i_10_n_0 ),
        .I4(\current_state[2]_i_11_n_0 ),
        .I5(\current_state[2]_i_12_n_0 ),
        .O(\current_state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \current_state[2]_i_4 
       (.I0(\current_state[2]_i_13_n_0 ),
        .I1(\current_state[2]_i_14_n_0 ),
        .I2(\current_state[2]_i_15_n_0 ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \current_state[2]_i_5 
       (.I0(IS_right_reg_out[11]),
        .I1(IS_right_reg_out[19]),
        .I2(IS_right_reg_out[18]),
        .I3(IS_right_reg_out[16]),
        .I4(\current_state[2]_i_11_n_0 ),
        .O(\current_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \current_state[2]_i_7 
       (.I0(IS_right_reg_out[9]),
        .I1(IS_right_reg_out[7]),
        .I2(IS_right_reg_out[8]),
        .I3(IS_right_reg_out[6]),
        .O(\current_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \current_state[2]_i_8 
       (.I0(IS_right_reg_out[0]),
        .I1(IS_right_reg_out[5]),
        .I2(IS_right_reg_out[1]),
        .I3(IS_right_reg_out[4]),
        .O(\current_state[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \current_state[2]_i_9 
       (.I0(IS_right_reg_out[17]),
        .I1(IS_right_reg_out[22]),
        .I2(IS_right_reg_out[15]),
        .I3(IS_right_reg_out[23]),
        .O(\current_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg_reg[5]_1 ),
        .I1(IS_right_reg_out[0]),
        .I2(IS_left_reg_out[22]),
        .I3(\Q_reg[23] [0]),
        .I4(IS_left_reg_out[23]),
        .I5(IS_left_reg_out[16]),
        .O(\temp_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[10]_i_2 
       (.I0(IS_left_reg_out[9]),
        .I1(IS_left_reg_out[2]),
        .I2(\Q_reg[23] [10]),
        .I3(IS_left_reg_out[8]),
        .I4(IS_right_reg_out[10]),
        .O(\temp_reg_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[11]_i_1 
       (.I0(\temp_reg_reg[5]_1 ),
        .I1(IS_right_reg_out[11]),
        .I2(IS_left_reg_out[9]),
        .I3(\Q_reg[23] [11]),
        .I4(IS_left_reg_out[3]),
        .I5(IS_left_reg_out[10]),
        .O(\temp_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[12]_i_1 
       (.I0(IS_left_reg_out[11]),
        .I1(IS_left_reg_out[4]),
        .I2(\Q_reg[23] [12]),
        .I3(IS_left_reg_out[10]),
        .I4(IS_right_reg_out[12]),
        .O(\temp_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[13]_i_2 
       (.I0(IS_left_reg_out[12]),
        .I1(IS_left_reg_out[5]),
        .I2(\Q_reg[23] [13]),
        .I3(IS_left_reg_out[11]),
        .I4(IS_right_reg_out[13]),
        .O(\temp_reg_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[14]_i_2 
       (.I0(IS_left_reg_out[13]),
        .I1(IS_left_reg_out[6]),
        .I2(\Q_reg[23] [14]),
        .I3(IS_left_reg_out[12]),
        .I4(IS_right_reg_out[14]),
        .O(\temp_reg_reg[14]_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[15]_i_1 
       (.I0(IS_left_reg_out[14]),
        .I1(IS_left_reg_out[7]),
        .I2(\Q_reg[23] [15]),
        .I3(IS_left_reg_out[13]),
        .I4(IS_right_reg_out[15]),
        .O(\temp_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[16]_i_2 
       (.I0(IS_left_reg_out[15]),
        .I1(IS_left_reg_out[8]),
        .I2(\Q_reg[23] [16]),
        .I3(IS_left_reg_out[14]),
        .I4(IS_right_reg_out[16]),
        .O(\temp_reg_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[17]_i_1 
       (.I0(\temp_reg_reg[5]_1 ),
        .I1(IS_right_reg_out[17]),
        .I2(IS_left_reg_out[15]),
        .I3(\Q_reg[23] [17]),
        .I4(IS_left_reg_out[9]),
        .I5(IS_left_reg_out[16]),
        .O(\temp_reg[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[18]_i_1 
       (.I0(IS_left_reg_out[17]),
        .I1(IS_left_reg_out[10]),
        .I2(IS_left_reg_out[16]),
        .I3(\Q_reg[23] [18]),
        .I4(IS_right_reg_out[18]),
        .O(\temp_reg[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[19]_i_2 
       (.I0(IS_left_reg_out[18]),
        .I1(IS_left_reg_out[11]),
        .I2(\Q_reg[23] [19]),
        .I3(IS_left_reg_out[17]),
        .I4(IS_right_reg_out[19]),
        .O(\temp_reg_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h4011FFFF40114011)) 
    \temp_reg[1]_i_1 
       (.I0(\temp_reg_reg[5]_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\temp_reg[1]_i_2_n_0 ),
        .I5(\temp_reg_reg[5]_1 ),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[1]_i_2 
       (.I0(IS_left_reg_out[17]),
        .I1(IS_left_reg_out[0]),
        .I2(\Q_reg[23] [1]),
        .I3(IS_left_reg_out[23]),
        .I4(IS_right_reg_out[1]),
        .O(\temp_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882288228)) 
    \temp_reg[20]_i_2 
       (.I0(\temp_reg_reg[5]_1 ),
        .I1(IS_right_reg_out[20]),
        .I2(IS_left_reg_out[18]),
        .I3(\Q_reg[23] [20]),
        .I4(IS_left_reg_out[12]),
        .I5(IS_left_reg_out[19]),
        .O(\temp_reg[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[21]_i_2 
       (.I0(IS_left_reg_out[20]),
        .I1(IS_left_reg_out[13]),
        .I2(\Q_reg[23] [21]),
        .I3(IS_left_reg_out[19]),
        .I4(IS_right_reg_out[21]),
        .O(\temp_reg_reg[21]_0 ));
  LUT4 #(
    .INIT(16'h4FFF)) 
    \temp_reg[22]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\temp_reg_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[22]_i_3 
       (.I0(IS_left_reg_out[21]),
        .I1(IS_left_reg_out[14]),
        .I2(IS_left_reg_out[20]),
        .I3(\Q_reg[23] [22]),
        .I4(IS_right_reg_out[22]),
        .O(\temp_reg_reg[22]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_reg[22]_i_4 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\temp_reg_reg[5]_1 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[23]_i_2 
       (.I0(IS_left_reg_out[22]),
        .I1(IS_left_reg_out[15]),
        .I2(IS_left_reg_out[21]),
        .I3(\Q_reg[23] [23]),
        .I4(IS_right_reg_out[23]),
        .O(\temp_reg[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[2]_i_2 
       (.I0(IS_left_reg_out[18]),
        .I1(IS_left_reg_out[1]),
        .I2(\Q_reg[23] [2]),
        .I3(IS_left_reg_out[0]),
        .I4(IS_right_reg_out[2]),
        .O(\temp_reg_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[3]_i_2 
       (.I0(IS_left_reg_out[19]),
        .I1(IS_left_reg_out[2]),
        .I2(\Q_reg[23] [3]),
        .I3(IS_left_reg_out[1]),
        .I4(IS_right_reg_out[3]),
        .O(\temp_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \temp_reg[4]_i_1 
       (.I0(\temp_reg_reg[5]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\temp_reg[4]_i_2_n_0 ),
        .I5(\temp_reg_reg[5]_1 ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[4]_i_2 
       (.I0(IS_left_reg_out[20]),
        .I1(IS_left_reg_out[3]),
        .I2(\Q_reg[23] [4]),
        .I3(IS_left_reg_out[2]),
        .I4(IS_right_reg_out[4]),
        .O(\temp_reg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F44444F)) 
    \temp_reg[5]_i_1 
       (.I0(\temp_reg[5]_i_2_n_0 ),
        .I1(\temp_reg_reg[5]_1 ),
        .I2(\temp_reg_reg[5]_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[5]_i_2 
       (.I0(IS_left_reg_out[21]),
        .I1(IS_left_reg_out[4]),
        .I2(\Q_reg[23] [5]),
        .I3(IS_left_reg_out[3]),
        .I4(IS_right_reg_out[5]),
        .O(\temp_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444444444F444F)) 
    \temp_reg[6]_i_1 
       (.I0(\temp_reg[6]_i_2_n_0 ),
        .I1(\temp_reg_reg[5]_1 ),
        .I2(\temp_reg_reg[5]_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[6]_i_2 
       (.I0(IS_left_reg_out[22]),
        .I1(IS_left_reg_out[5]),
        .I2(\Q_reg[23] [6]),
        .I3(IS_left_reg_out[4]),
        .I4(IS_right_reg_out[6]),
        .O(\temp_reg[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \temp_reg[7]_i_1 
       (.I0(IS_left_reg_out[6]),
        .I1(IS_left_reg_out[23]),
        .I2(\Q_reg[23] [7]),
        .I3(IS_left_reg_out[5]),
        .I4(IS_right_reg_out[7]),
        .O(\temp_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[8]_i_2 
       (.I0(IS_left_reg_out[7]),
        .I1(IS_left_reg_out[0]),
        .I2(\Q_reg[23] [8]),
        .I3(IS_left_reg_out[6]),
        .I4(IS_right_reg_out[8]),
        .O(\temp_reg_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h87787887)) 
    \temp_reg[9]_i_2 
       (.I0(IS_left_reg_out[8]),
        .I1(IS_left_reg_out[1]),
        .I2(\Q_reg[23] [9]),
        .I3(IS_left_reg_out[7]),
        .I4(IS_right_reg_out[9]),
        .O(\temp_reg_reg[9]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[0]_i_1_n_0 ),
        .Q(IS_left_reg_out[0]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [4]),
        .Q(IS_left_reg_out[10]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[11]_i_1_n_0 ),
        .Q(IS_left_reg_out[11]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[12]_i_1_n_0 ),
        .Q(IS_left_reg_out[12]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [5]),
        .Q(IS_left_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [6]),
        .Q(IS_left_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[15]_i_1_n_0 ),
        .Q(IS_left_reg_out[15]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [7]),
        .Q(IS_left_reg_out[16]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[17]_i_1_n_0 ),
        .Q(IS_left_reg_out[17]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[18]_i_1_n_0 ),
        .Q(IS_left_reg_out[18]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [8]),
        .Q(IS_left_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[1]),
        .Q(IS_left_reg_out[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[20]_i_2_n_0 ),
        .Q(IS_left_reg_out[20]),
        .S(\FSM_sequential_current_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [9]),
        .Q(IS_left_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [10]),
        .Q(IS_left_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[23]_i_2_n_0 ),
        .Q(IS_left_reg_out[23]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[0]),
        .Q(IS_right_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[1]),
        .Q(IS_right_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[2]),
        .Q(IS_right_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[3]),
        .Q(IS_right_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[4]),
        .Q(IS_right_reg_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[5]),
        .Q(IS_right_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [0]),
        .Q(IS_left_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[6]),
        .Q(IS_right_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[7]),
        .Q(IS_right_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[8]),
        .Q(IS_right_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[9]),
        .Q(IS_right_reg_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[10]),
        .Q(IS_right_reg_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[11]),
        .Q(IS_right_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[12]),
        .Q(IS_right_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[13]),
        .Q(IS_right_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[14]),
        .Q(IS_right_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[15]),
        .Q(IS_right_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [1]),
        .Q(IS_left_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[16]),
        .Q(IS_right_reg_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[17]),
        .Q(IS_right_reg_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[18]),
        .Q(IS_right_reg_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[19]),
        .Q(IS_right_reg_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[20]),
        .Q(IS_right_reg_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[21]),
        .Q(IS_right_reg_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[22]),
        .Q(IS_right_reg_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(IS_left_reg_out[23]),
        .Q(IS_right_reg_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[4]),
        .Q(IS_left_reg_out[4]),
        .R(1'b0));
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
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(p_0_in[6]),
        .Q(IS_left_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\temp_reg[7]_i_1_n_0 ),
        .Q(IS_left_reg_out[7]),
        .R(\FSM_sequential_current_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [2]),
        .Q(IS_left_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(IS_CE),
        .D(\cnt_internal_value_reg[1] [3]),
        .Q(IS_left_reg_out[9]),
        .R(1'b0));
endmodule

module \reg 
   (Q,
    KEY_REG_CE,
    \temp_reg_reg[47] ,
    clk_IBUF_BUFG);
  output [23:0]Q;
  input KEY_REG_CE;
  input [23:0]\temp_reg_reg[47] ;
  input clk_IBUF_BUFG;

  wire KEY_REG_CE;
  wire [23:0]Q;
  wire clk_IBUF_BUFG;
  wire [23:0]\temp_reg_reg[47] ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[47] [9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module reg_0
   (\temp_reg_reg[23] ,
    KEY_REG_CE,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_current_state_reg[0] ,
    \Q_reg[23]_0 );
  output [23:0]\temp_reg_reg[23] ;
  input KEY_REG_CE;
  input [9:0]D;
  input clk_IBUF_BUFG;
  input \FSM_sequential_current_state_reg[0] ;
  input [13:0]\Q_reg[23]_0 ;

  wire [9:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire KEY_REG_CE;
  wire [13:0]\Q_reg[23]_0 ;
  wire clk_IBUF_BUFG;
  wire [23:0]\temp_reg_reg[23] ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [0]),
        .Q(\temp_reg_reg[23] [0]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [6]),
        .Q(\temp_reg_reg[23] [10]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[4]),
        .Q(\temp_reg_reg[23] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[5]),
        .Q(\temp_reg_reg[23] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [7]),
        .Q(\temp_reg_reg[23] [13]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [8]),
        .Q(\temp_reg_reg[23] [14]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [9]),
        .Q(\temp_reg_reg[23] [15]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[6]),
        .Q(\temp_reg_reg[23] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[7]),
        .Q(\temp_reg_reg[23] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [10]),
        .Q(\temp_reg_reg[23] [18]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[8]),
        .Q(\temp_reg_reg[23] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[0]),
        .Q(\temp_reg_reg[23] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[9]),
        .Q(\temp_reg_reg[23] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [11]),
        .Q(\temp_reg_reg[23] [21]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [12]),
        .Q(\temp_reg_reg[23] [22]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [13]),
        .Q(\temp_reg_reg[23] [23]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [1]),
        .Q(\temp_reg_reg[23] [2]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[1]),
        .Q(\temp_reg_reg[23] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[2]),
        .Q(\temp_reg_reg[23] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [2]),
        .Q(\temp_reg_reg[23] [5]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [3]),
        .Q(\temp_reg_reg[23] [6]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [4]),
        .Q(\temp_reg_reg[23] [7]),
        .R(\FSM_sequential_current_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[3]),
        .Q(\temp_reg_reg[23] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[23]_0 [5]),
        .Q(\temp_reg_reg[23] [9]),
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
