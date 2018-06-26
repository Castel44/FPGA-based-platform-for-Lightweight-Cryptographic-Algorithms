-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Tue Jun 26 01:57:56 2018
-- Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {F:/Documenti 2/University/Magistrale/Progettazione di
--               Sistemi Integrati/VHDL
--               projects/Xilinx_contest/Simeck/Simeck_48_96_serial/Simeck_48_96_serial.sim/sim_1/impl/func/xsim/Testing_IP_TB_func_impl.vhd}
-- Design      : Testing_IP
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CNT is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[5]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[5]_1\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[0]\ : out STD_LOGIC;
    \short_lfsr.lfsr_internal_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[5]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    start_IBUF : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \cnt_internal_value_reg[5]\ : in STD_LOGIC;
    IS_right_reg_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC;
    pwropt_2 : in STD_LOGIC;
    pwropt_3 : in STD_LOGIC;
    pwropt_4 : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : in STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC
  );
end CNT;

architecture STRUCTURE of CNT is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_onehot_current_state_reg[5]_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[5]_1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \xlnx_opt_FSM_onehot_current_state_reg[5]_0\ : STD_LOGIC;
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \cnt_internal_value_reg[0]\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \cnt_internal_value_reg[0]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \cnt_internal_value_reg[1]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cnt_internal_value_reg[1]\ : label is "CE=AUG";
begin
  AR(0) <= \^ar\(0);
  \FSM_onehot_current_state_reg[5]_0\ <= \^fsm_onehot_current_state_reg[5]_0\;
  \FSM_onehot_current_state_reg[5]_1\ <= \^fsm_onehot_current_state_reg[5]_1\;
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => start_IBUF,
      I1 => \FSM_onehot_current_state_reg[5]_2\(0),
      I2 => \^fsm_onehot_current_state_reg[5]_0\,
      I3 => \FSM_onehot_current_state_reg[5]_2\(3),
      O => \FSM_onehot_current_state_reg[5]\(0)
    );
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[5]_1\,
      I1 => \FSM_onehot_current_state_reg[5]_2\(2),
      I2 => \cnt_internal_value_reg[2]\,
      I3 => \FSM_onehot_current_state_reg[5]_2\(3),
      I4 => \^fsm_onehot_current_state_reg[5]_0\,
      O => \FSM_onehot_current_state_reg[5]\(1)
    );
\FSM_onehot_current_state[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB00FF00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => IS_right_reg_out,
      O => \^fsm_onehot_current_state_reg[5]_1\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \short_lfsr.lfsr_internal_reg[2]\,
      O => \FSM_sequential_current_state_reg[0]\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FBFF0000FB0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \short_lfsr.lfsr_internal_reg[2]\,
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \FSM_onehot_current_state_reg[5]_2\(1),
      O => D(0)
    );
\cnt_internal_value[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\cnt_internal_value[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => plusOp(1)
    );
\cnt_internal_value[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => \^ar\(0)
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2\,
      CLR => \^ar\(0),
      D => plusOp(0),
      Q => \^q\(0)
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2\,
      CLR => \^ar\(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\xlnx_opt_LUT_FSM_onehot_current_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"854B50E401E41A50"
    )
        port map (
      I0 => lopt,
      I1 => lopt_1,
      I2 => lopt_2,
      I3 => lopt_3,
      I4 => lopt_4,
      I5 => lopt_5,
      O => \xlnx_opt_FSM_onehot_current_state_reg[5]_0\
    );
\xlnx_opt_LUT_FSM_onehot_current_state[6]_i_3_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF04000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => IS_right_reg_out,
      I5 => \xlnx_opt_FSM_onehot_current_state_reg[5]_0\,
      O => \^fsm_onehot_current_state_reg[5]_0\
    );
\xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => pwropt_4,
      I1 => pwropt_3,
      I2 => pwropt_2,
      I3 => pwropt_1,
      I4 => pwropt,
      I5 => E(0),
      O => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CNT_48 is
  port (
    KEY_INPUT_MUX_OUT : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    lfsr_change_0 : out STD_LOGIC;
    \temp_reg_reg[23]\ : out STD_LOGIC;
    \temp_reg_reg[23]_0\ : out STD_LOGIC;
    \cnt_internal_value_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_internal_value_reg[6]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \short_lfsr.lfsr_internal_reg[2]\ : in STD_LOGIC;
    KEY_REG_an1_out : in STD_LOGIC;
    KEY_REG_bn1_out : in STD_LOGIC;
    IS_right_reg_an1_out : in STD_LOGIC;
    IS_left_reg_bn1_out : in STD_LOGIC;
    \short_lfsr.lfsr_internal_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    pwropt : out STD_LOGIC;
    pwropt_1 : out STD_LOGIC;
    pwropt_2 : out STD_LOGIC;
    pwropt_3 : out STD_LOGIC;
    pwropt_4 : out STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC
  );
end CNT_48;

architecture STRUCTURE of CNT_48 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^cnt_internal_value_reg[4]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^lfsr_change_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal serial_cnt_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \temp_reg[23]_i_10_n_0\ : STD_LOGIC;
  signal \temp_reg[23]_i_9_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[16]_srl32_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[16]_srl32_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_internal_value[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_internal_value[4]_i_1\ : label is "soft_lutpair10";
begin
  AR(0) <= \^ar\(0);
  \cnt_internal_value_reg[4]_0\(0) <= \^cnt_internal_value_reg[4]_0\(0);
  lfsr_change_0 <= \^lfsr_change_0\;
  lopt <= \temp_reg[23]_i_9_n_0\;
  lopt_1 <= \temp_reg[23]_i_10_n_0\;
  pwropt <= serial_cnt_out(0);
  pwropt_1 <= serial_cnt_out(1);
  pwropt_2 <= serial_cnt_out(2);
  pwropt_3 <= serial_cnt_out(3);
  pwropt_4 <= serial_cnt_out(4);
  \temp_reg_reg[23]\ <= 'Z';
\cnt_internal_value[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_cnt_out(0),
      O => p_0_in(0)
    );
\cnt_internal_value[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^lfsr_change_0\,
      I1 => \FSM_sequential_current_state_reg[1]_0\(1),
      I2 => \FSM_sequential_current_state_reg[1]_0\(0),
      I3 => \short_lfsr.lfsr_internal_reg[2]\,
      O => E(0)
    );
\cnt_internal_value[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => serial_cnt_out(1),
      I1 => serial_cnt_out(0),
      O => p_0_in(1)
    );
\cnt_internal_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => serial_cnt_out(2),
      I1 => serial_cnt_out(0),
      I2 => serial_cnt_out(1),
      O => p_0_in(2)
    );
\cnt_internal_value[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F0080"
    )
        port map (
      I0 => serial_cnt_out(2),
      I1 => serial_cnt_out(0),
      I2 => serial_cnt_out(1),
      I3 => serial_cnt_out(4),
      I4 => serial_cnt_out(3),
      O => p_0_in(3)
    );
\cnt_internal_value[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F807F00"
    )
        port map (
      I0 => serial_cnt_out(2),
      I1 => serial_cnt_out(0),
      I2 => serial_cnt_out(1),
      I3 => serial_cnt_out(4),
      I4 => serial_cnt_out(3),
      O => p_0_in(4)
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^cnt_internal_value_reg[4]_0\(0),
      CLR => \^ar\(0),
      D => p_0_in(0),
      Q => serial_cnt_out(0)
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^cnt_internal_value_reg[4]_0\(0),
      CLR => \^ar\(0),
      D => p_0_in(1),
      Q => serial_cnt_out(1)
    );
\cnt_internal_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^cnt_internal_value_reg[4]_0\(0),
      CLR => \^ar\(0),
      D => p_0_in(2),
      Q => serial_cnt_out(2)
    );
\cnt_internal_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^cnt_internal_value_reg[4]_0\(0),
      CLR => \^ar\(0),
      D => p_0_in(3),
      Q => serial_cnt_out(3)
    );
\cnt_internal_value_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^cnt_internal_value_reg[4]_0\(0),
      CLR => \^ar\(0),
      D => p_0_in(4),
      Q => serial_cnt_out(4)
    );
lfsr_change_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => serial_cnt_out(3),
      I1 => serial_cnt_out(4),
      I2 => serial_cnt_out(1),
      I3 => serial_cnt_out(0),
      I4 => serial_cnt_out(2),
      O => \^lfsr_change_0\
    );
\short_lfsr.lfsr_internal[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]_0\(0),
      O => \^cnt_internal_value_reg[4]_0\(0)
    );
\short_lfsr.lfsr_internal[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]_0\(0),
      I1 => \FSM_sequential_current_state_reg[1]_0\(1),
      O => \^ar\(0)
    );
\temp_reg[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_cnt_out(1),
      I1 => serial_cnt_out(0),
      O => \temp_reg[23]_i_10_n_0\
    );
\temp_reg[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333333332220"
    )
        port map (
      I0 => serial_cnt_out(2),
      I1 => \FSM_sequential_current_state_reg[1]_0\(0),
      I2 => serial_cnt_out(1),
      I3 => serial_cnt_out(0),
      I4 => serial_cnt_out(4),
      I5 => serial_cnt_out(3),
      O => \temp_reg_reg[23]_0\
    );
\temp_reg[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]_0\(0),
      I1 => serial_cnt_out(2),
      I2 => serial_cnt_out(4),
      I3 => serial_cnt_out(3),
      O => \temp_reg[23]_i_9_n_0\
    );
\temp_reg_reg[16]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600960096FF9600"
    )
        port map (
      I0 => \temp_reg_reg[0]\,
      I1 => \temp_reg_reg[16]_srl32_i_3_n_0\,
      I2 => \temp_reg_reg[16]_srl32_i_4_n_0\,
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \out\(0),
      I5 => \cnt_internal_value_reg[6]\,
      O => KEY_INPUT_MUX_OUT
    );
\temp_reg_reg[16]_srl32_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => \short_lfsr.lfsr_internal_reg[4]\(0),
      I1 => serial_cnt_out(0),
      I2 => serial_cnt_out(1),
      I3 => serial_cnt_out(2),
      I4 => serial_cnt_out(4),
      I5 => serial_cnt_out(3),
      O => \temp_reg_reg[16]_srl32_i_3_n_0\
    );
\temp_reg_reg[16]_srl32_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAAA2A2A2AA"
    )
        port map (
      I0 => KEY_REG_an1_out,
      I1 => \FSM_sequential_current_state_reg[1]_0\(1),
      I2 => \temp_reg[23]_i_9_n_0\,
      I3 => \temp_reg[23]_i_10_n_0\,
      I4 => \FSM_sequential_current_state_reg[1]_0\(0),
      I5 => KEY_REG_bn1_out,
      O => \temp_reg_reg[16]_srl32_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \CNT__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[23]\ : out STD_LOGIC;
    \temp_reg_reg[23]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[6]\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[5]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cnt_internal_value_reg[1]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]_1\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : out STD_LOGIC;
    lopt_5 : out STD_LOGIC;
    lopt_6 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \CNT__parameterized0\ : entity is "CNT";
end \CNT__parameterized0\;

architecture STRUCTURE of \CNT__parameterized0\ is
  signal \FSM_onehot_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[6]\ : STD_LOGIC;
  signal cnt_ce_W : STD_LOGIC;
  signal \cnt_internal_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[6]_i_4_n_0\ : STD_LOGIC;
  signal cnt_out_W : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal cnt_rst_W : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \temp_reg_reg[16]_srl32_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[16]_srl32_i_7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_internal_value[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_internal_value[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_internal_value[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_internal_value[3]_i_1__0\ : label is "soft_lutpair3";
begin
  \FSM_onehot_current_state_reg[6]\ <= \^fsm_onehot_current_state_reg[6]\;
  lopt <= cnt_out_W(5);
  lopt_1 <= cnt_out_W(4);
  lopt_2 <= cnt_out_W(1);
  lopt_3 <= cnt_out_W(2);
  lopt_4 <= cnt_out_W(0);
  lopt_5 <= cnt_out_W(3);
  lopt_6 <= cnt_out_W(6);
  \FSM_onehot_current_state_reg[5]\ <= 'Z';
  \temp_reg_reg[23]_0\ <= 'Z';
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFAAAA"
    )
        port map (
      I0 => \out\(0),
      I1 => cnt_out_W(6),
      I2 => \FSM_onehot_current_state[3]_i_2_n_0\,
      I3 => cnt_out_W(5),
      I4 => \out\(1),
      O => D(0)
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => cnt_out_W(6),
      I1 => \FSM_onehot_current_state[3]_i_2_n_0\,
      I2 => cnt_out_W(5),
      I3 => \out\(1),
      I4 => \FSM_onehot_current_state[4]_i_2_n_0\,
      I5 => \out\(2),
      O => D(1)
    );
\FSM_onehot_current_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_out_W(4),
      I1 => cnt_out_W(2),
      I2 => cnt_out_W(3),
      I3 => cnt_out_W(0),
      I4 => cnt_out_W(1),
      O => \FSM_onehot_current_state[3]_i_2_n_0\
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_current_state[4]_i_2_n_0\,
      I1 => \out\(2),
      I2 => \cnt_internal_value_reg[1]_0\,
      I3 => \out\(3),
      O => D(2)
    );
\FSM_onehot_current_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => cnt_out_W(4),
      I1 => cnt_out_W(5),
      I2 => cnt_out_W(1),
      I3 => cnt_out_W(0),
      I4 => \FSM_onehot_current_state[4]_i_3_n_0\,
      I5 => cnt_out_W(6),
      O => \FSM_onehot_current_state[4]_i_2_n_0\
    );
\FSM_onehot_current_state[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_out_W(2),
      I1 => cnt_out_W(3),
      O => \FSM_onehot_current_state[4]_i_3_n_0\
    );
\FSM_onehot_current_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \out\(5),
      I1 => \out\(4),
      I2 => \^fsm_onehot_current_state_reg[6]\,
      I3 => \cnt_internal_value_reg[1]_1\,
      O => D(3)
    );
\FSM_onehot_current_state[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \FSM_onehot_current_state[6]_i_4_n_0\,
      I1 => cnt_out_W(2),
      I2 => cnt_out_W(3),
      I3 => cnt_out_W(6),
      O => \^fsm_onehot_current_state_reg[6]\
    );
\FSM_onehot_current_state[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => cnt_out_W(0),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(5),
      I3 => cnt_out_W(4),
      O => \FSM_onehot_current_state[6]_i_4_n_0\
    );
\cnt_internal_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_out_W(0),
      O => \cnt_internal_value[0]_i_1_n_0\
    );
\cnt_internal_value[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_out_W(0),
      I1 => cnt_out_W(1),
      O => \cnt_internal_value[1]_i_1__0_n_0\
    );
\cnt_internal_value[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt_out_W(2),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(0),
      O => \cnt_internal_value[2]_i_1__0_n_0\
    );
\cnt_internal_value[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cnt_out_W(3),
      I1 => cnt_out_W(0),
      I2 => cnt_out_W(1),
      I3 => cnt_out_W(2),
      O => \cnt_internal_value[3]_i_1__0_n_0\
    );
\cnt_internal_value[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cnt_out_W(4),
      I1 => cnt_out_W(2),
      I2 => cnt_out_W(3),
      I3 => cnt_out_W(0),
      I4 => cnt_out_W(1),
      O => \cnt_internal_value[4]_i_1__0_n_0\
    );
\cnt_internal_value[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt_out_W(5),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(0),
      I3 => cnt_out_W(3),
      I4 => cnt_out_W(2),
      I5 => cnt_out_W(4),
      O => \cnt_internal_value[5]_i_1_n_0\
    );
\cnt_internal_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(4),
      I2 => \out\(1),
      O => cnt_ce_W
    );
\cnt_internal_value[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => cnt_out_W(6),
      I1 => cnt_out_W(4),
      I2 => cnt_out_W(2),
      I3 => cnt_out_W(3),
      I4 => \cnt_internal_value[6]_i_4_n_0\,
      I5 => cnt_out_W(5),
      O => \plusOp__0\(6)
    );
\cnt_internal_value[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(0),
      I2 => \out\(5),
      O => cnt_rst_W
    );
\cnt_internal_value[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_out_W(0),
      I1 => cnt_out_W(1),
      O => \cnt_internal_value[6]_i_4_n_0\
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_ce_W,
      CLR => cnt_rst_W,
      D => \cnt_internal_value[0]_i_1_n_0\,
      Q => cnt_out_W(0)
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_ce_W,
      CLR => cnt_rst_W,
      D => \cnt_internal_value[1]_i_1__0_n_0\,
      Q => cnt_out_W(1)
    );
\cnt_internal_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_ce_W,
      CLR => cnt_rst_W,
      D => \cnt_internal_value[2]_i_1__0_n_0\,
      Q => cnt_out_W(2)
    );
\cnt_internal_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_ce_W,
      CLR => cnt_rst_W,
      D => \cnt_internal_value[3]_i_1__0_n_0\,
      Q => cnt_out_W(3)
    );
\cnt_internal_value_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_ce_W,
      CLR => cnt_rst_W,
      D => \cnt_internal_value[4]_i_1__0_n_0\,
      Q => cnt_out_W(4)
    );
\cnt_internal_value_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_ce_W,
      CLR => cnt_rst_W,
      D => \cnt_internal_value[5]_i_1_n_0\,
      Q => cnt_out_W(5)
    );
\cnt_internal_value_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => cnt_ce_W,
      CLR => cnt_rst_W,
      D => \plusOp__0\(6),
      Q => cnt_out_W(6)
    );
\temp_reg_reg[16]_srl32_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp_reg_reg[16]_srl32_i_6_n_0\,
      I1 => \temp_reg_reg[16]_srl32_i_7_n_0\,
      O => \temp_reg_reg[23]\,
      S => cnt_out_W(6)
    );
\temp_reg_reg[16]_srl32_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFF79DF6DBFD"
    )
        port map (
      I0 => cnt_out_W(5),
      I1 => cnt_out_W(4),
      I2 => cnt_out_W(1),
      I3 => cnt_out_W(0),
      I4 => cnt_out_W(3),
      I5 => cnt_out_W(2),
      O => \temp_reg_reg[16]_srl32_i_6_n_0\
    );
\temp_reg_reg[16]_srl32_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF016FD"
    )
        port map (
      I0 => cnt_out_W(4),
      I1 => cnt_out_W(3),
      I2 => cnt_out_W(1),
      I3 => cnt_out_W(0),
      I4 => cnt_out_W(2),
      O => \temp_reg_reg[16]_srl32_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    KEY_REG_CE : out STD_LOGIC;
    IS_ce : out STD_LOGIC;
    \temp_reg_reg[23]\ : out STD_LOGIC;
    \short_lfsr.lfsr_internal_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end lfsr;

architecture STRUCTURE of lfsr is
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^short_lfsr.lfsr_internal_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^temp_reg_reg[23]\ : STD_LOGIC;
  signal xlnx_opt_IS_ce : STD_LOGIC;
begin
  \short_lfsr.lfsr_internal_reg[0]_0\(0) <= \^short_lfsr.lfsr_internal_reg[0]_0\(0);
  \temp_reg_reg[23]\ <= \^temp_reg_reg[23]\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01F50105"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \out\(0),
      I2 => \FSM_sequential_current_state_reg[1]\(1),
      I3 => \FSM_sequential_current_state_reg[1]\(0),
      I4 => \cnt_internal_value_reg[1]\,
      O => D(0)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555455555"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]\(0),
      I1 => lfsr_parallel_out(2),
      I2 => lfsr_parallel_out(0),
      I3 => lfsr_parallel_out(3),
      I4 => \^short_lfsr.lfsr_internal_reg[0]_0\(0),
      I5 => lfsr_parallel_out(1),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => lfsr_parallel_out(2),
      I1 => \^short_lfsr.lfsr_internal_reg[0]_0\(0),
      I2 => lfsr_parallel_out(1),
      I3 => lfsr_parallel_out(3),
      I4 => lfsr_parallel_out(0),
      O => \^temp_reg_reg[23]\
    );
\short_lfsr.lfsr_internal[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^short_lfsr.lfsr_internal_reg[0]_0\(0),
      I1 => lfsr_parallel_out(2),
      O => p_2_out(0)
    );
\short_lfsr.lfsr_internal_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_2_out(0),
      PRE => \FSM_sequential_current_state_reg[0]\(0),
      Q => lfsr_parallel_out(0)
    );
\short_lfsr.lfsr_internal_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => lfsr_parallel_out(0),
      PRE => \FSM_sequential_current_state_reg[0]\(0),
      Q => lfsr_parallel_out(1)
    );
\short_lfsr.lfsr_internal_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => lfsr_parallel_out(1),
      PRE => \FSM_sequential_current_state_reg[0]\(0),
      Q => lfsr_parallel_out(2)
    );
\short_lfsr.lfsr_internal_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => lfsr_parallel_out(2),
      PRE => \FSM_sequential_current_state_reg[0]\(0),
      Q => lfsr_parallel_out(3)
    );
\short_lfsr.lfsr_internal_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => lfsr_parallel_out(3),
      PRE => \FSM_sequential_current_state_reg[0]\(0),
      Q => \^short_lfsr.lfsr_internal_reg[0]_0\(0)
    );
\temp_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]\(0),
      I1 => \FSM_sequential_current_state_reg[1]\(1),
      I2 => \FSM_sequential_current_state[0]_i_2_n_0\,
      O => KEY_REG_CE
    );
\xlnx_opt_LUT_temp_reg[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA08AAAAA"
    )
        port map (
      I0 => AR(0),
      I1 => lfsr_parallel_out(2),
      I2 => lfsr_parallel_out(0),
      I3 => lfsr_parallel_out(3),
      I4 => \^short_lfsr.lfsr_internal_reg[0]_0\(0),
      I5 => lfsr_parallel_out(1),
      O => xlnx_opt_IS_ce
    );
\xlnx_opt_LUT_temp_reg[23]_i_1__0_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0030EF00"
    )
        port map (
      I0 => \^temp_reg_reg[23]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \FSM_sequential_current_state_reg[1]\(1),
      I4 => \FSM_sequential_current_state_reg[1]\(0),
      I5 => xlnx_opt_IS_ce,
      O => IS_ce
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity normal_shift_reg is
  port (
    \temp_reg_reg[23]\ : out STD_LOGIC;
    \temp_reg_reg[23]_0\ : out STD_LOGIC;
    KEY_REG_CE : in STD_LOGIC;
    KEY_INPUT_MUX_OUT : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end normal_shift_reg;

architecture STRUCTURE of normal_shift_reg is
  signal \temp_reg_reg[16]_srl32_n_1\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[16]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \temp_reg_reg[0]_srl16\ : label is "SRLC32E";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[0]_srl16\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[0]_srl16\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[0]_srl16 ";
  attribute srl_bus_name of \temp_reg_reg[16]_srl32\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[16]_srl32\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[16]_srl32 ";
begin
\temp_reg[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      O => \temp_reg_reg[23]_0\
    );
\temp_reg_reg[0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[16]_srl32_n_1\,
      Q => \temp_reg_reg[23]\
    );
\temp_reg_reg[16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => KEY_INPUT_MUX_OUT,
      Q => \NLW_temp_reg_reg[16]_srl32_Q_UNCONNECTED\,
      Q31 => \temp_reg_reg[16]_srl32_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tapped_shift_reg is
  port (
    KEY_REG_an1_out : out STD_LOGIC;
    A_KEY_REG_OUT : out STD_LOGIC;
    \temp_reg_reg[23]_0\ : out STD_LOGIC;
    KEY_REG_CE : in STD_LOGIC;
    B_KEY_REG_OUT : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    KEY_REG_bn5_out : in STD_LOGIC
  );
end tapped_shift_reg;

architecture STRUCTURE of tapped_shift_reg is
  signal \^a_key_reg_out\ : STD_LOGIC;
  signal \^key_reg_an1_out\ : STD_LOGIC;
  signal KEY_REG_an5_out : STD_LOGIC;
  signal \temp_reg_reg[1]_srl18_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[20]_srl3_n_0\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[1]_srl18 ";
  attribute srl_bus_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[20]_srl3 ";
begin
  A_KEY_REG_OUT <= \^a_key_reg_out\;
  KEY_REG_an1_out <= \^key_reg_an1_out\;
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[1]_srl18_n_0\,
      Q => \^a_key_reg_out\,
      R => '0'
    );
\temp_reg_reg[16]_srl32_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A66AAAAAAAA"
    )
        port map (
      I0 => \^a_key_reg_out\,
      I1 => KEY_REG_an5_out,
      I2 => \cnt_internal_value_reg[2]\,
      I3 => \out\(0),
      I4 => KEY_REG_bn5_out,
      I5 => B_KEY_REG_OUT,
      O => \temp_reg_reg[23]_0\
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[20]_srl3_n_0\,
      Q => KEY_REG_an5_out,
      R => '0'
    );
\temp_reg_reg[1]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => KEY_REG_an5_out,
      Q => \temp_reg_reg[1]_srl18_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\
    );
\temp_reg_reg[20]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \^key_reg_an1_out\,
      Q => \temp_reg_reg[20]_srl3_n_0\
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => B_KEY_REG_OUT,
      Q => \^key_reg_an1_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tapped_shift_reg_0 is
  port (
    KEY_REG_bn1_out : out STD_LOGIC;
    KEY_REG_bn5_out : out STD_LOGIC;
    B_KEY_REG_OUT : out STD_LOGIC;
    KEY_REG_CE : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tapped_shift_reg_0 : entity is "tapped_shift_reg";
end tapped_shift_reg_0;

architecture STRUCTURE of tapped_shift_reg_0 is
  signal \^key_reg_bn1_out\ : STD_LOGIC;
  signal \^key_reg_bn5_out\ : STD_LOGIC;
  signal \temp_reg_reg[1]_srl18_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[20]_srl3_n_0\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[1]_srl18 ";
  attribute srl_bus_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[20]_srl3 ";
begin
  KEY_REG_bn1_out <= \^key_reg_bn1_out\;
  KEY_REG_bn5_out <= \^key_reg_bn5_out\;
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[1]_srl18_n_0\,
      Q => B_KEY_REG_OUT,
      R => '0'
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[20]_srl3_n_0\,
      Q => \^key_reg_bn5_out\,
      R => '0'
    );
\temp_reg_reg[1]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \^key_reg_bn5_out\,
      Q => \temp_reg_reg[1]_srl18_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\
    );
\temp_reg_reg[20]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \^key_reg_bn1_out\,
      Q => \temp_reg_reg[20]_srl3_n_0\
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \FSM_sequential_current_state_reg[0]\,
      Q => \^key_reg_bn1_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tapped_shift_reg_1 is
  port (
    IS_left_reg_bn1_out : out STD_LOGIC;
    IS_left_reg_out : out STD_LOGIC;
    IS_ce : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    A_KEY_REG_OUT : in STD_LOGIC;
    IS_right_reg_out : in STD_LOGIC;
    \temp_reg_reg[23]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_current_state_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    IS_right_reg_an5_out : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : in STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : in STD_LOGIC;
    lopt_7 : in STD_LOGIC;
    lopt_8 : in STD_LOGIC;
    lopt_9 : in STD_LOGIC;
    lopt_10 : in STD_LOGIC;
    lopt_11 : in STD_LOGIC;
    lopt_12 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tapped_shift_reg_1 : entity is "tapped_shift_reg";
end tapped_shift_reg_1;

architecture STRUCTURE of tapped_shift_reg_1 is
  signal IS_INPUT_MUX_OUT : STD_LOGIC;
  signal \^is_left_reg_bn1_out\ : STD_LOGIC;
  signal IS_left_reg_bn5_out : STD_LOGIC;
  signal \^is_left_reg_out\ : STD_LOGIC;
  signal \temp_reg_reg[1]_srl18_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[20]_srl3_n_0\ : STD_LOGIC;
  signal xlnx_opt_IS_INPUT_MUX_OUT : STD_LOGIC;
  signal xlnx_opt_IS_INPUT_MUX_OUT_1 : STD_LOGIC;
  signal xlnx_opt_IS_INPUT_MUX_OUT_2 : STD_LOGIC;
  signal xlnx_opt_IS_INPUT_MUX_OUT_3 : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[1]_srl18 ";
  attribute srl_bus_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[20]_srl3 ";
begin
  IS_left_reg_bn1_out <= \^is_left_reg_bn1_out\;
  IS_left_reg_out <= \^is_left_reg_out\;
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[1]_srl18_n_0\,
      Q => \^is_left_reg_out\,
      R => '0'
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[20]_srl3_n_0\,
      Q => IS_left_reg_bn5_out,
      R => '0'
    );
\temp_reg_reg[1]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => IS_ce,
      CLK => clk_IBUF_BUFG,
      D => IS_left_reg_bn5_out,
      Q => \temp_reg_reg[1]_srl18_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\
    );
\temp_reg_reg[20]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_ce,
      CLK => clk_IBUF_BUFG,
      D => \^is_left_reg_bn1_out\,
      Q => \temp_reg_reg[20]_srl3_n_0\
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => IS_INPUT_MUX_OUT,
      Q => \^is_left_reg_bn1_out\,
      R => '0'
    );
\xlnx_opt_LUT_temp_reg[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0080"
    )
        port map (
      I0 => \^is_left_reg_out\,
      I1 => IS_left_reg_bn5_out,
      I2 => \out\(0),
      I3 => \cnt_internal_value_reg[2]\,
      I4 => IS_right_reg_an5_out,
      O => xlnx_opt_IS_INPUT_MUX_OUT_3
    );
\xlnx_opt_LUT_temp_reg[23]_i_2_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECECECCC4C4C4CC"
    )
        port map (
      I0 => \out\(0),
      I1 => lopt,
      I2 => lopt_1,
      I3 => lopt_2,
      I4 => lopt_3,
      I5 => lopt_4,
      O => xlnx_opt_IS_INPUT_MUX_OUT_2
    );
\xlnx_opt_LUT_temp_reg[23]_i_2_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88DF9EBF8CFCEED"
    )
        port map (
      I0 => lopt_5,
      I1 => lopt_6,
      I2 => lopt_7,
      I3 => lopt_8,
      I4 => lopt_9,
      I5 => lopt_10,
      O => xlnx_opt_IS_INPUT_MUX_OUT_1
    );
\xlnx_opt_LUT_temp_reg[23]_i_2_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => lopt_11,
      I1 => lopt_12,
      I2 => xlnx_opt_IS_INPUT_MUX_OUT_1,
      O => xlnx_opt_IS_INPUT_MUX_OUT
    );
\xlnx_opt_LUT_temp_reg[23]_i_2_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"609090606F9F9F6F"
    )
        port map (
      I0 => A_KEY_REG_OUT,
      I1 => IS_right_reg_out,
      I2 => \FSM_sequential_current_state_reg[1]\,
      I3 => xlnx_opt_IS_INPUT_MUX_OUT_3,
      I4 => xlnx_opt_IS_INPUT_MUX_OUT_2,
      I5 => xlnx_opt_IS_INPUT_MUX_OUT,
      O => IS_INPUT_MUX_OUT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tapped_shift_reg_2 is
  port (
    IS_right_reg_an1_out : out STD_LOGIC;
    IS_right_reg_an5_out : out STD_LOGIC;
    IS_right_reg_out : out STD_LOGIC;
    IS_ce : in STD_LOGIC;
    IS_left_reg_out : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tapped_shift_reg_2 : entity is "tapped_shift_reg";
end tapped_shift_reg_2;

architecture STRUCTURE of tapped_shift_reg_2 is
  signal \^is_right_reg_an1_out\ : STD_LOGIC;
  signal \^is_right_reg_an5_out\ : STD_LOGIC;
  signal \temp_reg_reg[1]_srl18_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[20]_srl3_n_0\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl18\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[1]_srl18 ";
  attribute srl_bus_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[20]_srl3\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[20]_srl3 ";
begin
  IS_right_reg_an1_out <= \^is_right_reg_an1_out\;
  IS_right_reg_an5_out <= \^is_right_reg_an5_out\;
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[1]_srl18_n_0\,
      Q => IS_right_reg_out,
      R => '0'
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[20]_srl3_n_0\,
      Q => \^is_right_reg_an5_out\,
      R => '0'
    );
\temp_reg_reg[1]_srl18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10001",
      CE => IS_ce,
      CLK => clk_IBUF_BUFG,
      D => \^is_right_reg_an5_out\,
      Q => \temp_reg_reg[1]_srl18_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl18_Q31_UNCONNECTED\
    );
\temp_reg_reg[20]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_ce,
      CLK => clk_IBUF_BUFG,
      D => \^is_right_reg_an1_out\,
      Q => \temp_reg_reg[20]_srl3_n_0\
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => IS_left_reg_out,
      Q => \^is_right_reg_an1_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Simeck_48_96_serial is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[5]\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[5]_0\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \FSM_onehot_current_state_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cnt_internal_value_reg[6]\ : in STD_LOGIC;
    start_IBUF : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \cnt_internal_value_reg[5]\ : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : in STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : in STD_LOGIC
  );
end Simeck_48_96_serial;

architecture STRUCTURE of Simeck_48_96_serial is
  signal A_KEY_REG_OUT : STD_LOGIC;
  signal B_KEY_REG_OUT : STD_LOGIC;
  signal INST_A_KEY_REG_n_2 : STD_LOGIC;
  signal INST_ENCR_DONE_CNT_n_8 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_0 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_1 : STD_LOGIC;
  signal INST_LFSR_n_3 : STD_LOGIC;
  signal INST_SERIAL_CNT_n_4 : STD_LOGIC;
  signal IS_ce : STD_LOGIC;
  signal IS_left_reg_bn1_out : STD_LOGIC;
  signal IS_left_reg_out : STD_LOGIC;
  signal IS_right_reg_an1_out : STD_LOGIC;
  signal IS_right_reg_an5_out : STD_LOGIC;
  signal IS_right_reg_out : STD_LOGIC;
  signal KEY_INPUT_MUX_OUT : STD_LOGIC;
  signal KEY_REG_CE : STD_LOGIC;
  signal KEY_REG_an1_out : STD_LOGIC;
  signal KEY_REG_bn1_out : STD_LOGIC;
  signal KEY_REG_bn5_out : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal ending_cnt_ce : STD_LOGIC;
  signal ending_cnt_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ending_cnt_rst : STD_LOGIC;
  signal lfsr_change : STD_LOGIC;
  signal lfsr_change_0 : STD_LOGIC;
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 4 to 4 );
  signal lfsr_rst : STD_LOGIC;
  signal \^lopt_6\ : STD_LOGIC;
  signal lopt_7 : STD_LOGIC;
  signal lopt_8 : STD_LOGIC;
  signal nx_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pwropt : STD_LOGIC;
  signal pwropt_1 : STD_LOGIC;
  signal pwropt_2 : STD_LOGIC;
  signal pwropt_3 : STD_LOGIC;
  signal pwropt_4 : STD_LOGIC;
  signal \NLW_INST_ENCR_DONE_CNT_cnt_internal_value_reg[5]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_IS_LEFT_REG_FSM_onehot_current_state_reg[2]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_IS_LEFT_REG_temp_reg_reg[23]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SERIAL_CNT_temp_reg_reg[23]_UNCONNECTED\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "loading:00,processing:10,idle:01";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "loading:00,processing:10,idle:01";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
begin
  lopt_8 <= lopt_6;
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => nx_state(0),
      Q => current_state(0),
      R => \out\(1)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => nx_state(1),
      Q => current_state(1),
      R => \out\(1)
    );
INST_A_KEY_REG: entity work.tapped_shift_reg
     port map (
      A_KEY_REG_OUT => A_KEY_REG_OUT,
      B_KEY_REG_OUT => B_KEY_REG_OUT,
      KEY_REG_CE => KEY_REG_CE,
      KEY_REG_an1_out => KEY_REG_an1_out,
      KEY_REG_bn5_out => KEY_REG_bn5_out,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[2]\ => INST_SERIAL_CNT_n_4,
      \out\(0) => current_state(1),
      \temp_reg_reg[23]_0\ => INST_A_KEY_REG_n_2
    );
INST_B_KEY_REG: entity work.tapped_shift_reg_0
     port map (
      B_KEY_REG_OUT => B_KEY_REG_OUT,
      \FSM_sequential_current_state_reg[0]\ => INST_LEFT_KEY_REG_n_0,
      KEY_REG_CE => KEY_REG_CE,
      KEY_REG_bn1_out => KEY_REG_bn1_out,
      KEY_REG_bn5_out => KEY_REG_bn5_out,
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
INST_ENCR_DONE_CNT: entity work.CNT
     port map (
      AR(0) => ending_cnt_rst,
      D(0) => nx_state(1),
      E(0) => ending_cnt_ce,
      \FSM_onehot_current_state_reg[5]\(1 downto 0) => D(1 downto 0),
      \FSM_onehot_current_state_reg[5]_0\ => \FSM_onehot_current_state_reg[5]\,
      \FSM_onehot_current_state_reg[5]_1\ => \FSM_onehot_current_state_reg[5]_0\,
      \FSM_onehot_current_state_reg[5]_2\(3 downto 1) => \out\(5 downto 3),
      \FSM_onehot_current_state_reg[5]_2\(0) => \out\(0),
      \FSM_sequential_current_state_reg[0]\ => INST_ENCR_DONE_CNT_n_8,
      IS_right_reg_out => IS_right_reg_out,
      Q(1 downto 0) => ending_cnt_out(1 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[2]\ => \cnt_internal_value_reg[2]\,
      \cnt_internal_value_reg[5]\ => \NLW_INST_ENCR_DONE_CNT_cnt_internal_value_reg[5]_UNCONNECTED\,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      \out\(1 downto 0) => current_state(1 downto 0),
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      pwropt_2 => pwropt_2,
      pwropt_3 => pwropt_3,
      pwropt_4 => pwropt_4,
      \short_lfsr.lfsr_internal_reg[2]\ => INST_LFSR_n_3,
      start_IBUF => start_IBUF
    );
INST_IS_LEFT_REG: entity work.tapped_shift_reg_1
     port map (
      A_KEY_REG_OUT => A_KEY_REG_OUT,
      \FSM_onehot_current_state_reg[2]\ => \NLW_INST_IS_LEFT_REG_FSM_onehot_current_state_reg[2]_UNCONNECTED\,
      \FSM_sequential_current_state_reg[1]\ => INST_LEFT_KEY_REG_n_1,
      IS_ce => IS_ce,
      IS_left_reg_bn1_out => IS_left_reg_bn1_out,
      IS_left_reg_out => IS_left_reg_out,
      IS_right_reg_an5_out => IS_right_reg_an5_out,
      IS_right_reg_out => IS_right_reg_out,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[2]\ => INST_SERIAL_CNT_n_4,
      lopt => IS_right_reg_an1_out,
      lopt_1 => \^lopt_6\,
      lopt_10 => lopt_5,
      lopt_11 => \out\(2),
      lopt_12 => lopt_8,
      lopt_2 => lopt_7,
      lopt_3 => current_state(0),
      lopt_4 => IS_left_reg_bn1_out,
      lopt_5 => lopt,
      lopt_6 => lopt_1,
      lopt_7 => lopt_2,
      lopt_8 => lopt_4,
      lopt_9 => lopt_3,
      \out\(0) => current_state(1),
      \temp_reg_reg[23]_0\ => \NLW_INST_IS_LEFT_REG_temp_reg_reg[23]_0_UNCONNECTED\
    );
INST_IS_RIGHT_REG: entity work.tapped_shift_reg_2
     port map (
      IS_ce => IS_ce,
      IS_left_reg_out => IS_left_reg_out,
      IS_right_reg_an1_out => IS_right_reg_an1_out,
      IS_right_reg_an5_out => IS_right_reg_an5_out,
      IS_right_reg_out => IS_right_reg_out,
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
INST_LEFT_KEY_REG: entity work.normal_shift_reg
     port map (
      KEY_INPUT_MUX_OUT => KEY_INPUT_MUX_OUT,
      KEY_REG_CE => KEY_REG_CE,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \out\(1 downto 0) => current_state(1 downto 0),
      \temp_reg_reg[23]\ => INST_LEFT_KEY_REG_n_0,
      \temp_reg_reg[23]_0\ => INST_LEFT_KEY_REG_n_1
    );
INST_LFSR: entity work.lfsr
     port map (
      AR(0) => ending_cnt_rst,
      CLK => lfsr_change,
      D(0) => nx_state(0),
      E(0) => busy,
      \FSM_sequential_current_state_reg[0]\(0) => lfsr_rst,
      \FSM_sequential_current_state_reg[1]\(1 downto 0) => current_state(1 downto 0),
      IS_ce => IS_ce,
      KEY_REG_CE => KEY_REG_CE,
      Q(1 downto 0) => ending_cnt_out(1 downto 0),
      \cnt_internal_value_reg[1]\ => INST_ENCR_DONE_CNT_n_8,
      \out\(0) => \out\(3),
      \short_lfsr.lfsr_internal_reg[0]_0\(0) => lfsr_parallel_out(4),
      \temp_reg_reg[23]\ => INST_LFSR_n_3
    );
INST_SERIAL_CNT: entity work.CNT_48
     port map (
      AR(0) => lfsr_rst,
      E(0) => ending_cnt_ce,
      \FSM_sequential_current_state_reg[1]\ => INST_LEFT_KEY_REG_n_1,
      \FSM_sequential_current_state_reg[1]_0\(1 downto 0) => current_state(1 downto 0),
      IS_left_reg_bn1_out => IS_left_reg_bn1_out,
      IS_right_reg_an1_out => IS_right_reg_an1_out,
      KEY_INPUT_MUX_OUT => KEY_INPUT_MUX_OUT,
      KEY_REG_an1_out => KEY_REG_an1_out,
      KEY_REG_bn1_out => KEY_REG_bn1_out,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[4]_0\(0) => busy,
      \cnt_internal_value_reg[6]\ => \cnt_internal_value_reg[6]\,
      lfsr_change_0 => lfsr_change_0,
      lopt => \^lopt_6\,
      lopt_1 => lopt_7,
      \out\(0) => \out\(2),
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      pwropt_2 => pwropt_2,
      pwropt_3 => pwropt_3,
      pwropt_4 => pwropt_4,
      \short_lfsr.lfsr_internal_reg[2]\ => INST_LFSR_n_3,
      \short_lfsr.lfsr_internal_reg[4]\(0) => lfsr_parallel_out(4),
      \temp_reg_reg[0]\ => INST_A_KEY_REG_n_2,
      \temp_reg_reg[23]\ => \NLW_INST_SERIAL_CNT_temp_reg_reg[23]_UNCONNECTED\,
      \temp_reg_reg[23]_0\ => INST_SERIAL_CNT_n_4
    );
lfsr_change_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => lfsr_change_0,
      Q => lfsr_change,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Testing_IP is
  port (
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    led_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Testing_IP : entity is true;
  attribute Datapath : integer;
  attribute Datapath of Testing_IP : entity is 24;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Testing_IP : entity is "ecfd847b";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of Testing_IP : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of Testing_IP : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of Testing_IP : entity is 0;
end Testing_IP;

architecture STRUCTURE of Testing_IP is
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[6]\ : signal is "yes";
  signal INST_CNT_n_0 : STD_LOGIC;
  signal INST_CNT_n_1 : STD_LOGIC;
  signal INST_CNT_n_2 : STD_LOGIC;
  signal INST_CNT_n_3 : STD_LOGIC;
  signal INST_CNT_n_4 : STD_LOGIC;
  signal INST_CNT_n_6 : STD_LOGIC;
  signal Simeck_DUT_n_0 : STD_LOGIC;
  signal Simeck_DUT_n_1 : STD_LOGIC;
  signal Simeck_DUT_n_2 : STD_LOGIC;
  signal Simeck_DUT_n_3 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data_ready_W : STD_LOGIC;
  attribute RTL_KEEP of data_ready_W : signal is "yes";
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal start_W : STD_LOGIC;
  attribute RTL_KEEP of start_W : signal is "yes";
  signal \NLW_INST_CNT_FSM_onehot_current_state_reg[5]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_CNT_temp_reg_reg[23]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Simeck_DUT_FSM_onehot_current_state_reg[2]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Simeck_DUT_cnt_internal_value_reg[5]_UNCONNECTED\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000";
  attribute KEEP of \FSM_onehot_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000";
  attribute KEEP of \FSM_onehot_current_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000";
  attribute KEEP of \FSM_onehot_current_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000";
  attribute KEEP of \FSM_onehot_current_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000";
  attribute KEEP of \FSM_onehot_current_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "loading:0000010,waiting:0000100,start_enc:0001000,enc:0010000,idle:0000001,ending:0100000,success:1000000";
  attribute KEEP of \FSM_onehot_current_state_reg[6]\ : label is "yes";
begin
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => start_IBUF,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Simeck_DUT_n_1,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      S => rst_IBUF
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => data_ready_W,
      R => rst_IBUF
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_CNT_n_3,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => rst_IBUF
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_CNT_n_2,
      Q => start_W,
      R => rst_IBUF
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_CNT_n_1,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\,
      R => rst_IBUF
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Simeck_DUT_n_0,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\,
      R => rst_IBUF
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_CNT_n_0,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\,
      R => rst_IBUF
    );
INST_CNT: entity work.\CNT__parameterized0\
     port map (
      D(3) => INST_CNT_n_0,
      D(2) => INST_CNT_n_1,
      D(1) => INST_CNT_n_2,
      D(0) => INST_CNT_n_3,
      \FSM_onehot_current_state_reg[5]\ => \NLW_INST_CNT_FSM_onehot_current_state_reg[5]_UNCONNECTED\,
      \FSM_onehot_current_state_reg[6]\ => INST_CNT_n_6,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[1]_0\ => Simeck_DUT_n_3,
      \cnt_internal_value_reg[1]_1\ => Simeck_DUT_n_2,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      \out\(5) => \FSM_onehot_current_state_reg_n_0_[6]\,
      \out\(4) => \FSM_onehot_current_state_reg_n_0_[5]\,
      \out\(3) => \FSM_onehot_current_state_reg_n_0_[4]\,
      \out\(2) => start_W,
      \out\(1) => \FSM_onehot_current_state_reg_n_0_[2]\,
      \out\(0) => data_ready_W,
      \temp_reg_reg[23]\ => INST_CNT_n_4,
      \temp_reg_reg[23]_0\ => \NLW_INST_CNT_temp_reg_reg[23]_0_UNCONNECTED\
    );
Simeck_DUT: entity work.Simeck_48_96_serial
     port map (
      D(1) => Simeck_DUT_n_0,
      D(0) => Simeck_DUT_n_1,
      \FSM_onehot_current_state_reg[2]\ => \NLW_Simeck_DUT_FSM_onehot_current_state_reg[2]_UNCONNECTED\,
      \FSM_onehot_current_state_reg[5]\ => Simeck_DUT_n_2,
      \FSM_onehot_current_state_reg[5]_0\ => Simeck_DUT_n_3,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[2]\ => INST_CNT_n_6,
      \cnt_internal_value_reg[5]\ => \NLW_Simeck_DUT_cnt_internal_value_reg[5]_UNCONNECTED\,
      \cnt_internal_value_reg[6]\ => INST_CNT_n_4,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      \out\(5) => \FSM_onehot_current_state_reg_n_0_[5]\,
      \out\(4) => \FSM_onehot_current_state_reg_n_0_[4]\,
      \out\(3) => start_W,
      \out\(2) => \FSM_onehot_current_state_reg_n_0_[2]\,
      \out\(1) => data_ready_W,
      \out\(0) => \FSM_onehot_current_state_reg_n_0_[0]\,
      start_IBUF => start_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
led_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => \FSM_onehot_current_state_reg_n_0_[6]\,
      O => led_out
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
end STRUCTURE;
