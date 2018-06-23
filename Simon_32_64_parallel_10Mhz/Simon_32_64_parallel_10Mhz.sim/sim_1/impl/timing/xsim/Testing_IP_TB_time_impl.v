// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Sat Jun 23 12:29:18 2018
// Host        : sam-xubuntu running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/sam/Desktop/VIVADO_git_PSI_ciphers/VIVADO-lightweight-crypto-project/Simon/Simon_32_64_parallel/Simon_32_64_parallel.sim/sim_1/impl/timing/xsim/Testing_IP_TB_time_impl.v
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
    current_state,
    rst_IBUF,
    clk_IBUF_BUFG);
  output \current_state_reg[0] ;
  output \current_state_reg[2] ;
  output [2:0]Q;
  input [2:0]current_state;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire [2:0]Q;
  wire ce;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value[2]_i_3_n_0 ;
  wire [2:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state_reg[0] ;
  wire \current_state_reg[2] ;
  wire [2:0]plusOp;
  wire rst_IBUF;

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
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h21)) 
    \cnt_internal_value[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(ce));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_internal_value[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp[2]));
  LUT3 #(
    .INIT(8'hC2)) 
    \cnt_internal_value[2]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
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
        .Q(Q[2]));
  LUT5 #(
    .INIT(32'hFFFF4C44)) 
    \current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\current_state[0]_i_2_n_0 ),
        .I4(rst_IBUF),
        .O(\current_state_reg[0] ));
  LUT3 #(
    .INIT(8'hF7)) 
    \current_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE5E4E4E4A4E4E4E4)) 
    \current_state[2]_i_6 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\current_state_reg[2] ));
endmodule

module Simon_32_64_parallel
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \current_state_reg[2]_0 ,
    \current_state_reg[1]_0 ,
    Q,
    clk_IBUF_BUFG);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \current_state_reg[2]_0 ;
  input \current_state_reg[1]_0 ;
  input [2:0]Q;
  input clk_IBUF_BUFG;

  wire [12:3]D;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire INST_IS_REG_n_2;
  wire INST_Ki3_n_0;
  wire INST_Ki3_n_1;
  wire INST_Ki3_n_2;
  wire INST_LFSR_n_3;
  wire INST_LFSR_n_4;
  wire INST_LFSR_n_5;
  wire IS_CE;
  wire KEY_REG_CE;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire \current_state[1]_i_4_n_0 ;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state_0;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire [15:0]key_schedule_out;
  wire [15:0]ki0_KEY_REG_OUT;
  wire [15:0]ki2_KEY_REG_OUT;
  wire [15:0]ki3_KEY_REG_OUT;
  wire [4:4]lfsr_parallel_out;
  wire rst_IBUF;
  wire start_IBUF;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_LFSR_n_5),
        .Q(current_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "loading:00,processing:10,end_encrypt:11,idle:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INST_LFSR_n_4),
        .Q(current_state_0[1]),
        .R(1'b0));
  parallel_tapped_shift_reg INST_IS_REG
       (.E(IS_CE),
        .\FSM_sequential_current_state_reg[0] (\current_state[1]_i_4_n_0 ),
        .Q(Q),
        .\Q_reg[15] (ki0_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .\current_state_reg[1]_0 (\current_state_reg[1]_0 ),
        .\current_state_reg[2] (\current_state_reg[2] ),
        .\current_state_reg[2]_0 (\current_state_reg[2]_0 ),
        .out(current_state_0),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .\temp_reg_reg[8]_0 (INST_IS_REG_n_2));
  \reg  INST_Ki0
       (.KEY_REG_CE(KEY_REG_CE),
        .Q(ki0_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\temp_reg_reg[31] (ki2_KEY_REG_OUT));
  normal_shift_reg INST_Ki2_Ki1
       (.D({D[12:11],D[8],D[4:3]}),
        .\FSM_sequential_current_state_reg[0] (INST_IS_REG_n_2),
        .\FSM_sequential_current_state_reg[0]_0 (INST_Ki3_n_0),
        .\FSM_sequential_current_state_reg[0]_1 (INST_Ki3_n_1),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(ki0_KEY_REG_OUT),
        .\Q_reg[15] (ki2_KEY_REG_OUT),
        .\Q_reg[15]_0 (ki3_KEY_REG_OUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_internal_value_reg[2] (INST_Ki3_n_2),
        .key_schedule_out({key_schedule_out[15:13],key_schedule_out[10:9],key_schedule_out[7:5],key_schedule_out[2:0]}),
        .\lfsr_internal_reg[4] (lfsr_parallel_out));
  reg_0 INST_Ki3
       (.D({D[12:11],D[8],D[4:3]}),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(Q),
        .\Q_reg[3]_0 (INST_Ki3_n_0),
        .\Q_reg[4]_0 (INST_Ki3_n_1),
        .\Q_reg[8]_0 (INST_Ki3_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state({current_state[2],current_state[0]}),
        .key_schedule_out({key_schedule_out[15:13],key_schedule_out[10:9],key_schedule_out[7:5],key_schedule_out[2:0]}),
        .\lfsr_internal_reg[0] (INST_LFSR_n_3),
        .out(current_state_0),
        .\temp_reg_reg[15] (ki3_KEY_REG_OUT));
  lfsr INST_LFSR
       (.E(IS_CE),
        .\FSM_sequential_current_state_reg[0] (INST_LFSR_n_5),
        .\FSM_sequential_current_state_reg[1] (INST_LFSR_n_4),
        .KEY_REG_CE(KEY_REG_CE),
        .Q(lfsr_parallel_out),
        .\Q_reg[15] (INST_LFSR_n_3),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[1] (\FSM_sequential_current_state[0]_i_4_n_0 ),
        .out(current_state_0));
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[1]_i_4 
       (.I0(current_state_0[0]),
        .I1(current_state_0[1]),
        .O(\current_state[1]_i_4_n_0 ));
endmodule

(* Datapath = "16" *) (* ECO_CHECKSUM = "ed92e265" *) 
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
  wire Simon_DUT_n_0;
  wire Simon_DUT_n_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cnt_internal_value;
  wire [2:0]current_state;
  wire \current_state[2]_i_2_n_0 ;
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
        .\current_state_reg[2] (INST_CNT_n_1),
        .rst_IBUF(rst_IBUF));
  Simon_32_64_parallel Simon_DUT
       (.Q(cnt_internal_value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\current_state_reg[1] (Simon_DUT_n_0),
        .\current_state_reg[1]_0 (INST_CNT_n_1),
        .\current_state_reg[2] (Simon_DUT_n_1),
        .\current_state_reg[2]_0 (\current_state[2]_i_2_n_0 ),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[2]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .O(\current_state[2]_i_2_n_0 ));
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

module lfsr
   (Q,
    KEY_REG_CE,
    E,
    \Q_reg[15] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    out,
    current_state,
    \current_state_reg[1] ,
    clk_IBUF_BUFG);
  output [0:0]Q;
  output KEY_REG_CE;
  output [0:0]E;
  output \Q_reg[15] ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  input [1:0]out;
  input [2:0]current_state;
  input \current_state_reg[1] ;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire KEY_REG_CE;
  wire [0:0]Q;
  wire \Q_reg[15] ;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire \current_state_reg[1] ;
  wire lfsr_ce;
  wire lfsr_internal0;
  wire [3:0]lfsr_parallel_out;
  wire lfsr_rst;
  wire [1:0]out;
  wire [0:0]p_3_out;
  wire \temp_reg[31]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'hEEEF0000EEEFAA05)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I3(out[1]),
        .I4(\current_state_reg[1] ),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(lfsr_parallel_out[1]),
        .I1(lfsr_parallel_out[2]),
        .I2(out[1]),
        .I3(lfsr_parallel_out[0]),
        .I4(lfsr_parallel_out[3]),
        .I5(Q),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(lfsr_parallel_out[0]),
        .I1(lfsr_parallel_out[1]),
        .I2(Q),
        .I3(lfsr_parallel_out[3]),
        .I4(lfsr_parallel_out[2]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA00AAAAAAAE)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFF0000FFDF0000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(lfsr_parallel_out[0]),
        .I1(lfsr_parallel_out[3]),
        .I2(out[0]),
        .I3(\temp_reg[31]_i_2_n_0 ),
        .I4(out[1]),
        .I5(lfsr_parallel_out[2]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEFFF)) 
    \Q[12]_i_1 
       (.I0(lfsr_parallel_out[0]),
        .I1(\temp_reg[31]_i_2_n_0 ),
        .I2(lfsr_parallel_out[3]),
        .I3(lfsr_parallel_out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(KEY_REG_CE));
  LUT6 #(
    .INIT(64'h000000000000EFFF)) 
    \Q[15]_i_1 
       (.I0(lfsr_parallel_out[0]),
        .I1(\temp_reg[31]_i_2_n_0 ),
        .I2(lfsr_parallel_out[3]),
        .I3(lfsr_parallel_out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\Q_reg[15] ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[0]_i_1 
       (.I0(Q),
        .I1(lfsr_parallel_out[2]),
        .O(p_3_out));
  LUT2 #(
    .INIT(4'hB)) 
    \lfsr_internal[4]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .O(lfsr_ce));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_internal[4]_i_2 
       (.I0(Q),
        .I1(lfsr_parallel_out[3]),
        .O(lfsr_internal0));
  LUT2 #(
    .INIT(4'h2)) 
    \lfsr_internal[4]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .O(lfsr_rst));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(lfsr_rst),
        .D(p_3_out),
        .Q(lfsr_parallel_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(lfsr_rst),
        .D(lfsr_parallel_out[0]),
        .Q(lfsr_parallel_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(lfsr_rst),
        .D(lfsr_parallel_out[1]),
        .Q(lfsr_parallel_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .CLR(lfsr_rst),
        .D(lfsr_parallel_out[2]),
        .Q(lfsr_parallel_out[3]));
  FDPE #(
    .INIT(1'b0)) 
    \lfsr_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(lfsr_ce),
        .D(lfsr_internal0),
        .PRE(lfsr_rst),
        .Q(Q));
  LUT6 #(
    .INIT(64'hFF00FF00FFFFFF9D)) 
    \temp_reg[31]_i_1 
       (.I0(lfsr_parallel_out[0]),
        .I1(lfsr_parallel_out[3]),
        .I2(lfsr_parallel_out[2]),
        .I3(out[1]),
        .I4(\temp_reg[31]_i_2_n_0 ),
        .I5(out[0]),
        .O(E));
  LUT2 #(
    .INIT(4'h7)) 
    \temp_reg[31]_i_2 
       (.I0(lfsr_parallel_out[1]),
        .I1(Q),
        .O(\temp_reg[31]_i_2_n_0 ));
endmodule

module normal_shift_reg
   (D,
    \Q_reg[15] ,
    key_schedule_out,
    \FSM_sequential_current_state_reg[0] ,
    Q,
    \Q_reg[15]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \cnt_internal_value_reg[2] ,
    KEY_REG_CE,
    clk_IBUF_BUFG,
    \lfsr_internal_reg[4] );
  output [4:0]D;
  output [15:0]\Q_reg[15] ;
  output [10:0]key_schedule_out;
  input \FSM_sequential_current_state_reg[0] ;
  input [15:0]Q;
  input [15:0]\Q_reg[15]_0 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \cnt_internal_value_reg[2] ;
  input KEY_REG_CE;
  input clk_IBUF_BUFG;
  input [0:0]\lfsr_internal_reg[4] ;

  wire [4:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire [13:4]\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in ;
  wire KEY_REG_CE;
  wire [15:0]Q;
  wire [15:0]\Q_reg[15] ;
  wire [15:0]\Q_reg[15]_0 ;
  wire clk_IBUF_BUFG;
  wire \cnt_internal_value_reg[2] ;
  wire [10:0]key_schedule_out;
  wire [0:0]\lfsr_internal_reg[4] ;
  wire \temp_reg_reg_n_0_[0] ;
  wire \temp_reg_reg_n_0_[10] ;
  wire \temp_reg_reg_n_0_[11] ;
  wire \temp_reg_reg_n_0_[12] ;
  wire \temp_reg_reg_n_0_[13] ;
  wire \temp_reg_reg_n_0_[14] ;
  wire \temp_reg_reg_n_0_[15] ;
  wire \temp_reg_reg_n_0_[1] ;
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
       (.I0(\Q_reg[15] [0]),
        .I1(\Q_reg[15]_0 [3]),
        .I2(Q[0]),
        .I3(\Q_reg[15] [1]),
        .I4(\Q_reg[15]_0 [4]),
        .I5(\lfsr_internal_reg[4] ),
        .O(key_schedule_out[0]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[10]_i_1 
       (.I0(Q[10]),
        .I1(\Q_reg[15] [11]),
        .I2(\Q_reg[15]_0 [14]),
        .I3(\Q_reg[15] [10]),
        .I4(\Q_reg[15]_0 [13]),
        .O(key_schedule_out[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF41141441)) 
    \Q[11]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(Q[11]),
        .I2(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [12]),
        .I3(\Q_reg[15] [11]),
        .I4(\Q_reg[15]_0 [14]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[11]_i_2 
       (.I0(\Q_reg[15] [12]),
        .I1(\Q_reg[15]_0 [15]),
        .O(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [12]));
  LUT6 #(
    .INIT(64'hFFFFFFFF41141441)) 
    \Q[12]_i_2 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(Q[12]),
        .I2(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [13]),
        .I3(\Q_reg[15] [12]),
        .I4(\Q_reg[15]_0 [15]),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[12]_i_3 
       (.I0(\Q_reg[15] [13]),
        .I1(\Q_reg[15]_0 [0]),
        .O(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [13]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[13]_i_1 
       (.I0(Q[13]),
        .I1(\Q_reg[15] [14]),
        .I2(\Q_reg[15]_0 [1]),
        .I3(\Q_reg[15] [13]),
        .I4(\Q_reg[15]_0 [0]),
        .O(key_schedule_out[8]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[14]_i_1 
       (.I0(Q[14]),
        .I1(\Q_reg[15] [15]),
        .I2(\Q_reg[15]_0 [2]),
        .I3(\Q_reg[15] [14]),
        .I4(\Q_reg[15]_0 [1]),
        .O(key_schedule_out[9]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[15]_i_2 
       (.I0(Q[15]),
        .I1(\Q_reg[15] [0]),
        .I2(\Q_reg[15]_0 [3]),
        .I3(\Q_reg[15] [15]),
        .I4(\Q_reg[15]_0 [2]),
        .O(key_schedule_out[10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \Q[1]_i_1 
       (.I0(Q[1]),
        .I1(\Q_reg[15] [2]),
        .I2(\Q_reg[15]_0 [5]),
        .I3(\Q_reg[15] [1]),
        .I4(\Q_reg[15]_0 [4]),
        .O(key_schedule_out[1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[2]_i_1 
       (.I0(Q[2]),
        .I1(\Q_reg[15] [3]),
        .I2(\Q_reg[15]_0 [6]),
        .I3(\Q_reg[15] [2]),
        .I4(\Q_reg[15]_0 [5]),
        .O(key_schedule_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF41141441)) 
    \Q[3]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(Q[3]),
        .I2(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [4]),
        .I3(\Q_reg[15] [3]),
        .I4(\Q_reg[15]_0 [6]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_2 
       (.I0(\Q_reg[15] [4]),
        .I1(\Q_reg[15]_0 [7]),
        .O(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF41141441)) 
    \Q[4]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(Q[4]),
        .I2(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [5]),
        .I3(\Q_reg[15] [4]),
        .I4(\Q_reg[15]_0 [7]),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_2 
       (.I0(\Q_reg[15] [5]),
        .I1(\Q_reg[15]_0 [8]),
        .O(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [5]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[5]_i_1 
       (.I0(Q[5]),
        .I1(\Q_reg[15] [6]),
        .I2(\Q_reg[15]_0 [9]),
        .I3(\Q_reg[15] [5]),
        .I4(\Q_reg[15]_0 [8]),
        .O(key_schedule_out[3]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[6]_i_1 
       (.I0(Q[6]),
        .I1(\Q_reg[15] [7]),
        .I2(\Q_reg[15]_0 [10]),
        .I3(\Q_reg[15] [6]),
        .I4(\Q_reg[15]_0 [9]),
        .O(key_schedule_out[4]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[7]_i_1 
       (.I0(Q[7]),
        .I1(\Q_reg[15] [8]),
        .I2(\Q_reg[15]_0 [11]),
        .I3(\Q_reg[15] [7]),
        .I4(\Q_reg[15]_0 [10]),
        .O(key_schedule_out[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF41141441)) 
    \Q[8]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(Q[8]),
        .I2(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [9]),
        .I3(\Q_reg[15] [8]),
        .I4(\Q_reg[15]_0 [11]),
        .I5(\cnt_internal_value_reg[2] ),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[8]_i_2 
       (.I0(\Q_reg[15] [9]),
        .I1(\Q_reg[15]_0 [12]),
        .O(\INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in [9]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \Q[9]_i_1 
       (.I0(Q[9]),
        .I1(\Q_reg[15] [10]),
        .I2(\Q_reg[15]_0 [13]),
        .I3(\Q_reg[15] [9]),
        .I4(\Q_reg[15]_0 [12]),
        .O(key_schedule_out[6]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [0]),
        .Q(\temp_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [10]),
        .Q(\temp_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [11]),
        .Q(\temp_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [12]),
        .Q(\temp_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [13]),
        .Q(\temp_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [14]),
        .Q(\temp_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [15]),
        .Q(\temp_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[0] ),
        .Q(\Q_reg[15] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[1] ),
        .Q(\Q_reg[15] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[2] ),
        .Q(\Q_reg[15] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[3] ),
        .Q(\Q_reg[15] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [1]),
        .Q(\temp_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[4] ),
        .Q(\Q_reg[15] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[5] ),
        .Q(\Q_reg[15] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[6] ),
        .Q(\Q_reg[15] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[7] ),
        .Q(\Q_reg[15] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[8] ),
        .Q(\Q_reg[15] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[9] ),
        .Q(\Q_reg[15] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[10] ),
        .Q(\Q_reg[15] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[11] ),
        .Q(\Q_reg[15] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[12] ),
        .Q(\Q_reg[15] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[13] ),
        .Q(\Q_reg[15] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [2]),
        .Q(\temp_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[14] ),
        .Q(\Q_reg[15] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg_n_0_[15] ),
        .Q(\Q_reg[15] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [3]),
        .Q(\temp_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [4]),
        .Q(\temp_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [5]),
        .Q(\temp_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [6]),
        .Q(\temp_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [7]),
        .Q(\temp_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [8]),
        .Q(\temp_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\Q_reg[15]_0 [9]),
        .Q(\temp_reg_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module parallel_tapped_shift_reg
   (\current_state_reg[1] ,
    \current_state_reg[2] ,
    \temp_reg_reg[8]_0 ,
    current_state,
    start_IBUF,
    rst_IBUF,
    \current_state_reg[2]_0 ,
    \current_state_reg[1]_0 ,
    out,
    Q,
    \Q_reg[15] ,
    \FSM_sequential_current_state_reg[0] ,
    E,
    clk_IBUF_BUFG);
  output \current_state_reg[1] ;
  output \current_state_reg[2] ;
  output \temp_reg_reg[8]_0 ;
  input [2:0]current_state;
  input start_IBUF;
  input rst_IBUF;
  input \current_state_reg[2]_0 ;
  input \current_state_reg[1]_0 ;
  input [1:0]out;
  input [2:0]Q;
  input [15:0]\Q_reg[15] ;
  input \FSM_sequential_current_state_reg[0] ;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [15:0]IS_left_reg_out;
  wire [15:0]IS_right_reg_out;
  wire [2:0]Q;
  wire [15:0]\Q_reg[15] ;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state[2]_i_8_n_0 ;
  wire \current_state[2]_i_9_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire [1:0]out;
  wire [15:0]p_0_in;
  wire rst_IBUF;
  wire start_IBUF;
  wire \temp_reg[0]_i_2_n_0 ;
  wire \temp_reg[10]_i_2_n_0 ;
  wire \temp_reg[11]_i_2_n_0 ;
  wire \temp_reg[13]_i_2_n_0 ;
  wire \temp_reg[14]_i_2_n_0 ;
  wire \temp_reg[14]_i_3_n_0 ;
  wire \temp_reg[1]_i_2_n_0 ;
  wire \temp_reg[2]_i_2_n_0 ;
  wire \temp_reg[4]_i_2_n_0 ;
  wire \temp_reg[5]_i_2_n_0 ;
  wire \temp_reg[6]_i_2_n_0 ;
  wire \temp_reg[8]_i_2_n_0 ;
  wire \temp_reg_reg[8]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFDDFF0404)) 
    \current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(\current_state[1]_i_2_n_0 ),
        .I3(start_IBUF),
        .I4(current_state[1]),
        .I5(rst_IBUF),
        .O(\current_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \current_state[1]_i_2 
       (.I0(\current_state[2]_i_3_n_0 ),
        .I1(\current_state[2]_i_8_n_0 ),
        .I2(\current_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_current_state_reg[0] ),
        .I4(IS_right_reg_out[14]),
        .I5(IS_right_reg_out[15]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \current_state[1]_i_3 
       (.I0(IS_right_reg_out[4]),
        .I1(IS_right_reg_out[6]),
        .I2(IS_right_reg_out[7]),
        .I3(IS_right_reg_out[12]),
        .O(\current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFAFA8)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(\current_state[2]_i_5_n_0 ),
        .I4(\current_state_reg[1]_0 ),
        .I5(rst_IBUF),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \current_state[2]_i_3 
       (.I0(IS_right_reg_out[11]),
        .I1(IS_right_reg_out[13]),
        .I2(IS_right_reg_out[9]),
        .I3(IS_right_reg_out[10]),
        .I4(IS_right_reg_out[8]),
        .I5(IS_right_reg_out[5]),
        .O(\current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \current_state[2]_i_4 
       (.I0(\current_state[2]_i_7_n_0 ),
        .I1(IS_right_reg_out[4]),
        .I2(IS_right_reg_out[6]),
        .I3(IS_right_reg_out[7]),
        .I4(IS_right_reg_out[12]),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \current_state[2]_i_5 
       (.I0(IS_right_reg_out[8]),
        .I1(IS_right_reg_out[5]),
        .I2(\current_state[2]_i_9_n_0 ),
        .O(\current_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[2]_i_7 
       (.I0(IS_right_reg_out[15]),
        .I1(IS_right_reg_out[14]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\current_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \current_state[2]_i_8 
       (.I0(IS_right_reg_out[1]),
        .I1(IS_right_reg_out[0]),
        .I2(IS_right_reg_out[3]),
        .I3(IS_right_reg_out[2]),
        .O(\current_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \current_state[2]_i_9 
       (.I0(IS_right_reg_out[11]),
        .I1(IS_right_reg_out[13]),
        .I2(IS_right_reg_out[9]),
        .I3(IS_right_reg_out[10]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\current_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg[14]_i_2_n_0 ),
        .I1(\temp_reg[0]_i_2_n_0 ),
        .I2(IS_right_reg_out[0]),
        .I3(IS_left_reg_out[14]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[0]_i_2 
       (.I0(IS_left_reg_out[15]),
        .I1(IS_left_reg_out[8]),
        .I2(\Q_reg[15] [0]),
        .O(\temp_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F888F88888F)) 
    \temp_reg[10]_i_1 
       (.I0(Q[0]),
        .I1(\temp_reg[14]_i_2_n_0 ),
        .I2(\temp_reg_reg[8]_0 ),
        .I3(IS_left_reg_out[8]),
        .I4(IS_right_reg_out[10]),
        .I5(\temp_reg[10]_i_2_n_0 ),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[10]_i_2 
       (.I0(IS_left_reg_out[9]),
        .I1(IS_left_reg_out[2]),
        .I2(\Q_reg[15] [10]),
        .O(\temp_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4F444F44444F)) 
    \temp_reg[11]_i_1 
       (.I0(Q[0]),
        .I1(\temp_reg[14]_i_2_n_0 ),
        .I2(\temp_reg_reg[8]_0 ),
        .I3(IS_left_reg_out[9]),
        .I4(IS_right_reg_out[11]),
        .I5(\temp_reg[11]_i_2_n_0 ),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[11]_i_2 
       (.I0(IS_left_reg_out[10]),
        .I1(IS_left_reg_out[3]),
        .I2(\Q_reg[15] [11]),
        .O(\temp_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[12]_i_1 
       (.I0(IS_left_reg_out[11]),
        .I1(IS_left_reg_out[4]),
        .I2(\Q_reg[15] [12]),
        .I3(IS_right_reg_out[12]),
        .I4(IS_left_reg_out[10]),
        .I5(\temp_reg_reg[8]_0 ),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[13]_i_1 
       (.I0(\temp_reg[14]_i_2_n_0 ),
        .I1(\temp_reg[13]_i_2_n_0 ),
        .I2(IS_right_reg_out[13]),
        .I3(IS_left_reg_out[11]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[13]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[13]_i_2 
       (.I0(IS_left_reg_out[12]),
        .I1(IS_left_reg_out[5]),
        .I2(\Q_reg[15] [13]),
        .O(\temp_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[14]_i_1 
       (.I0(\temp_reg[14]_i_2_n_0 ),
        .I1(\temp_reg[14]_i_3_n_0 ),
        .I2(IS_right_reg_out[14]),
        .I3(IS_left_reg_out[12]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'h000000000000B000)) 
    \temp_reg[14]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\temp_reg[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[14]_i_3 
       (.I0(IS_left_reg_out[13]),
        .I1(IS_left_reg_out[6]),
        .I2(\Q_reg[15] [14]),
        .O(\temp_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[15]_i_1 
       (.I0(IS_left_reg_out[14]),
        .I1(IS_left_reg_out[7]),
        .I2(\Q_reg[15] [15]),
        .I3(IS_right_reg_out[15]),
        .I4(IS_left_reg_out[13]),
        .I5(\temp_reg_reg[8]_0 ),
        .O(p_0_in[15]));
  LUT2 #(
    .INIT(4'hB)) 
    \temp_reg[15]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\temp_reg_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h444F4F444F44444F)) 
    \temp_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(\temp_reg[14]_i_2_n_0 ),
        .I2(\temp_reg_reg[8]_0 ),
        .I3(IS_left_reg_out[15]),
        .I4(IS_right_reg_out[1]),
        .I5(\temp_reg[1]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[1]_i_2 
       (.I0(IS_left_reg_out[9]),
        .I1(IS_left_reg_out[0]),
        .I2(\Q_reg[15] [1]),
        .O(\temp_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[2]_i_1 
       (.I0(\temp_reg[14]_i_2_n_0 ),
        .I1(\temp_reg[2]_i_2_n_0 ),
        .I2(IS_right_reg_out[2]),
        .I3(IS_left_reg_out[0]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[2]_i_2 
       (.I0(IS_left_reg_out[10]),
        .I1(IS_left_reg_out[1]),
        .I2(\Q_reg[15] [2]),
        .O(\temp_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[3]_i_1 
       (.I0(IS_left_reg_out[11]),
        .I1(IS_left_reg_out[2]),
        .I2(\Q_reg[15] [3]),
        .I3(IS_right_reg_out[3]),
        .I4(IS_left_reg_out[1]),
        .I5(\temp_reg_reg[8]_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h444F4F444F44444F)) 
    \temp_reg[4]_i_1 
       (.I0(Q[0]),
        .I1(\temp_reg[14]_i_2_n_0 ),
        .I2(\temp_reg_reg[8]_0 ),
        .I3(IS_left_reg_out[2]),
        .I4(IS_right_reg_out[4]),
        .I5(\temp_reg[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[4]_i_2 
       (.I0(IS_left_reg_out[12]),
        .I1(IS_left_reg_out[3]),
        .I2(\Q_reg[15] [4]),
        .O(\temp_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[5]_i_1 
       (.I0(\temp_reg[14]_i_2_n_0 ),
        .I1(\temp_reg[5]_i_2_n_0 ),
        .I2(IS_right_reg_out[5]),
        .I3(IS_left_reg_out[3]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[5]_i_2 
       (.I0(IS_left_reg_out[13]),
        .I1(IS_left_reg_out[4]),
        .I2(\Q_reg[15] [5]),
        .O(\temp_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBBEAAAA)) 
    \temp_reg[6]_i_1 
       (.I0(\temp_reg[14]_i_2_n_0 ),
        .I1(\temp_reg[6]_i_2_n_0 ),
        .I2(IS_right_reg_out[6]),
        .I3(IS_left_reg_out[4]),
        .I4(out[1]),
        .I5(out[0]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_reg[6]_i_2 
       (.I0(IS_left_reg_out[14]),
        .I1(IS_left_reg_out[5]),
        .I2(\Q_reg[15] [6]),
        .O(\temp_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[7]_i_1 
       (.I0(IS_left_reg_out[15]),
        .I1(IS_left_reg_out[6]),
        .I2(\Q_reg[15] [7]),
        .I3(IS_right_reg_out[7]),
        .I4(IS_left_reg_out[5]),
        .I5(\temp_reg_reg[8]_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h888F8F888F88888F)) 
    \temp_reg[8]_i_1 
       (.I0(Q[0]),
        .I1(\temp_reg[14]_i_2_n_0 ),
        .I2(\temp_reg_reg[8]_0 ),
        .I3(IS_left_reg_out[6]),
        .I4(IS_right_reg_out[8]),
        .I5(\temp_reg[8]_i_2_n_0 ),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h87)) 
    \temp_reg[8]_i_2 
       (.I0(IS_left_reg_out[7]),
        .I1(IS_left_reg_out[0]),
        .I2(\Q_reg[15] [8]),
        .O(\temp_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000078878778)) 
    \temp_reg[9]_i_1 
       (.I0(IS_left_reg_out[8]),
        .I1(IS_left_reg_out[1]),
        .I2(\Q_reg[15] [9]),
        .I3(IS_right_reg_out[9]),
        .I4(IS_left_reg_out[7]),
        .I5(\temp_reg_reg[8]_0 ),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[0]),
        .Q(IS_left_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[10]),
        .Q(IS_left_reg_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[11]),
        .Q(IS_left_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[12]),
        .Q(IS_left_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[13]),
        .Q(IS_left_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[14]),
        .Q(IS_left_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[15]),
        .Q(IS_left_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[0]),
        .Q(IS_right_reg_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[1]),
        .Q(IS_right_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[2]),
        .Q(IS_right_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[3]),
        .Q(IS_right_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[1]),
        .Q(IS_left_reg_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[4]),
        .Q(IS_right_reg_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[5]),
        .Q(IS_right_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[6]),
        .Q(IS_right_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[7]),
        .Q(IS_right_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[8]),
        .Q(IS_right_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[9]),
        .Q(IS_right_reg_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[10]),
        .Q(IS_right_reg_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[11]),
        .Q(IS_right_reg_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[12]),
        .Q(IS_right_reg_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[13]),
        .Q(IS_right_reg_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[2]),
        .Q(IS_left_reg_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[14]),
        .Q(IS_right_reg_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(IS_left_reg_out[15]),
        .Q(IS_right_reg_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[3]),
        .Q(IS_left_reg_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[4]),
        .Q(IS_left_reg_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[5]),
        .Q(IS_left_reg_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[6]),
        .Q(IS_left_reg_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[7]),
        .Q(IS_left_reg_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[8]),
        .Q(IS_left_reg_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[9]),
        .Q(IS_left_reg_out[9]),
        .R(1'b0));
endmodule

module \reg 
   (Q,
    KEY_REG_CE,
    \temp_reg_reg[31] ,
    clk_IBUF_BUFG);
  output [15:0]Q;
  input KEY_REG_CE;
  input [15:0]\temp_reg_reg[31] ;
  input clk_IBUF_BUFG;

  wire KEY_REG_CE;
  wire [15:0]Q;
  wire clk_IBUF_BUFG;
  wire [15:0]\temp_reg_reg[31] ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(\temp_reg_reg[31] [9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module reg_0
   (\Q_reg[3]_0 ,
    \Q_reg[4]_0 ,
    \Q_reg[8]_0 ,
    \temp_reg_reg[15] ,
    out,
    current_state,
    Q,
    KEY_REG_CE,
    D,
    clk_IBUF_BUFG,
    \lfsr_internal_reg[0] ,
    key_schedule_out);
  output \Q_reg[3]_0 ;
  output \Q_reg[4]_0 ;
  output \Q_reg[8]_0 ;
  output [15:0]\temp_reg_reg[15] ;
  input [1:0]out;
  input [1:0]current_state;
  input [2:0]Q;
  input KEY_REG_CE;
  input [4:0]D;
  input clk_IBUF_BUFG;
  input \lfsr_internal_reg[0] ;
  input [10:0]key_schedule_out;

  wire [4:0]D;
  wire KEY_REG_CE;
  wire [2:0]Q;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[4]_0 ;
  wire \Q_reg[8]_0 ;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire [10:0]key_schedule_out;
  wire \lfsr_internal_reg[0] ;
  wire [1:0]out;
  wire [15:0]\temp_reg_reg[15] ;

  LUT6 #(
    .INIT(64'h0000B00000000000)) 
    \Q[11]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\Q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000B00000000000)) 
    \Q[12]_i_4 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\Q_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h40400040)) 
    \Q[8]_i_3 
       (.I0(Q[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\Q_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[0]),
        .Q(\temp_reg_reg[15] [0]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[7]),
        .Q(\temp_reg_reg[15] [10]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[3]),
        .Q(\temp_reg_reg[15] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[4]),
        .Q(\temp_reg_reg[15] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[8]),
        .Q(\temp_reg_reg[15] [13]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[9]),
        .Q(\temp_reg_reg[15] [14]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[10]),
        .Q(\temp_reg_reg[15] [15]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[1]),
        .Q(\temp_reg_reg[15] [1]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[2]),
        .Q(\temp_reg_reg[15] [2]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[0]),
        .Q(\temp_reg_reg[15] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[1]),
        .Q(\temp_reg_reg[15] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[3]),
        .Q(\temp_reg_reg[15] [5]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[4]),
        .Q(\temp_reg_reg[15] [6]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[5]),
        .Q(\temp_reg_reg[15] [7]),
        .R(\lfsr_internal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(D[2]),
        .Q(\temp_reg_reg[15] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(KEY_REG_CE),
        .D(key_schedule_out[6]),
        .Q(\temp_reg_reg[15] [9]),
        .R(\lfsr_internal_reg[0] ));
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
