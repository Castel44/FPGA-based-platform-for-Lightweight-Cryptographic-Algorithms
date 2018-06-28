-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Thu Jun 28 14:44:33 2018
-- Host        : sam-xubuntu running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/sam/Desktop/VIVADO_git_PSI_ciphers/VIVADO-lightweight-crypto-project/Simeck/Simeck_64_128_parallel/Simeck_64_128_parallel.sim/sim_1/impl/func/xsim/Testing_IP_TB_func_impl.vhd
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
    \current_state_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \current_state_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \temp_reg_reg[28]\ : out STD_LOGIC;
    \temp_reg_reg[27]\ : out STD_LOGIC;
    \current_state_reg[2]_0\ : out STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_IBUF : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    \temp_reg_reg[30]\ : in STD_LOGIC;
    \temp_reg_reg[8]\ : in STD_LOGIC;
    \temp_reg_reg[16]\ : in STD_LOGIC;
    \temp_reg_reg[17]\ : in STD_LOGIC;
    \temp_reg_reg[19]\ : in STD_LOGIC;
    \temp_reg_reg[24]\ : in STD_LOGIC;
    \temp_reg_reg[26]\ : in STD_LOGIC;
    \temp_reg_reg[30]_0\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end CNT;

architecture STRUCTURE of CNT is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ce : STD_LOGIC;
  signal \cnt_internal_value[1]_i_3_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_internal_value[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_internal_value[1]_i_2\ : label is "soft_lutpair2";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\cnt_internal_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\cnt_internal_value[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      O => ce
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
\cnt_internal_value[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      O => \cnt_internal_value[1]_i_3_n_0\
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ce,
      CLR => \cnt_internal_value[1]_i_3_n_0\,
      D => plusOp(0),
      Q => \^q\(0)
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ce,
      CLR => \cnt_internal_value[1]_i_3_n_0\,
      D => plusOp(1),
      Q => \^q\(1)
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0444CCCC"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => current_state(2),
      I5 => rst_IBUF,
      O => \current_state_reg[0]\
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \current_state_reg[2]_0\
    );
\current_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCDDDCDC"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \current_state_reg[2]\
    );
\temp_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[16]\,
      O => D(2)
    );
\temp_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[17]\,
      O => D(3)
    );
\temp_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[19]\,
      O => D(4)
    );
\temp_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[24]\,
      O => D(5)
    );
\temp_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[26]\,
      O => D(6)
    );
\temp_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[30]_0\,
      O => D(7)
    );
\temp_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[30]\,
      O => D(0)
    );
\temp_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \temp_reg_reg[8]\,
      O => D(1)
    );
\temp_reg_reg[59]_srl2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => \^q\(0),
      O => \temp_reg_reg[27]\
    );
\temp_reg_reg[60]_srl2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => \^q\(1),
      O => \temp_reg_reg[28]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    KEY_REG_CE : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    pwropt : out STD_LOGIC;
    pwropt_1 : out STD_LOGIC
  );
end lfsr;

architecture STRUCTURE of lfsr is
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[0]\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[1]\ : STD_LOGIC;
  signal \^key_reg_ce\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lfsr_ce : STD_LOGIC;
  signal \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\ : STD_LOGIC;
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal lfsr_rst : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \temp_reg[63]_i_2__0_n_0\ : STD_LOGIC;
  signal \temp_reg[63]_i_2_n_0\ : STD_LOGIC;
  signal \xlnx_opt_FSM_sequential_current_state_reg[1]\ : STD_LOGIC;
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \lfsr_internal_reg[0]\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \lfsr_internal_reg[0]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \lfsr_internal_reg[1]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \lfsr_internal_reg[1]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \lfsr_internal_reg[2]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \lfsr_internal_reg[2]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \lfsr_internal_reg[3]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \lfsr_internal_reg[3]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \lfsr_internal_reg[4]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \lfsr_internal_reg[4]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \lfsr_internal_reg[5]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \lfsr_internal_reg[5]\ : label is "CE=AUG";
begin
  \FSM_sequential_current_state_reg[0]\ <= \^fsm_sequential_current_state_reg[0]\;
  \FSM_sequential_current_state_reg[1]\ <= \^fsm_sequential_current_state_reg[1]\;
  KEY_REG_CE <= \^key_reg_ce\;
  Q(0) <= \^q\(0);
  pwropt <= lfsr_parallel_out(0);
  pwropt_1 <= lfsr_rst;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBB00BBAB"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \^key_reg_ce\,
      I2 => lfsr_rst,
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => \^fsm_sequential_current_state_reg[0]\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I1 => lfsr_parallel_out(3),
      I2 => lfsr_parallel_out(1),
      I3 => \out\(1),
      I4 => lfsr_parallel_out(4),
      I5 => \^q\(0),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => lfsr_parallel_out(2),
      I1 => lfsr_parallel_out(0),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\lfsr_internal[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => lfsr_parallel_out(4),
      O => p_3_out(0)
    );
\lfsr_internal[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => lfsr_rst
    );
\lfsr_internal[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      O => lfsr_ce
    );
\lfsr_internal_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\,
      D => p_3_out(0),
      Q => lfsr_parallel_out(0),
      S => lfsr_rst
    );
\lfsr_internal_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\,
      D => lfsr_parallel_out(0),
      Q => lfsr_parallel_out(1),
      S => lfsr_rst
    );
\lfsr_internal_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\,
      D => lfsr_parallel_out(1),
      Q => lfsr_parallel_out(2),
      S => lfsr_rst
    );
\lfsr_internal_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\,
      D => lfsr_parallel_out(2),
      Q => lfsr_parallel_out(3),
      S => lfsr_rst
    );
\lfsr_internal_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\,
      D => lfsr_parallel_out(3),
      Q => lfsr_parallel_out(4),
      S => lfsr_rst
    );
\lfsr_internal_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\,
      D => lfsr_parallel_out(4),
      Q => \^q\(0),
      S => lfsr_rst
    );
\temp_reg[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555545555"
    )
        port map (
      I0 => \out\(0),
      I1 => lfsr_parallel_out(0),
      I2 => lfsr_parallel_out(1),
      I3 => lfsr_parallel_out(2),
      I4 => \temp_reg[63]_i_2__0_n_0\,
      I5 => \out\(1),
      O => \^key_reg_ce\
    );
\temp_reg[63]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDCDDDD"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => lfsr_parallel_out(2),
      I3 => lfsr_parallel_out(3),
      I4 => \temp_reg[63]_i_2_n_0\,
      O => E(0)
    );
\temp_reg[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => lfsr_parallel_out(4),
      I1 => \^q\(0),
      I2 => lfsr_parallel_out(1),
      I3 => lfsr_parallel_out(0),
      O => \temp_reg[63]_i_2_n_0\
    );
\temp_reg[63]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => lfsr_parallel_out(3),
      I1 => lfsr_parallel_out(4),
      I2 => \^q\(0),
      O => \temp_reg[63]_i_2__0_n_0\
    );
\xlnx_opt_LUT_FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555555555555555"
    )
        port map (
      I0 => \out\(1),
      I1 => lfsr_parallel_out(0),
      I2 => lfsr_parallel_out(2),
      I3 => \out\(0),
      I4 => lfsr_parallel_out(1),
      I5 => \temp_reg[63]_i_2__0_n_0\,
      O => \xlnx_opt_FSM_sequential_current_state_reg[1]\
    );
\xlnx_opt_LUT_FSM_sequential_current_state[1]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000004FFFFF0FF"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => \xlnx_opt_FSM_sequential_current_state_reg[1]\,
      O => \^fsm_sequential_current_state_reg[1]\
    );
\xlnx_opt_LUT_lfsr_internal_reg[0]_CE_cooolgate_en_gate_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^fsm_sequential_current_state_reg[0]\,
      I1 => \^fsm_sequential_current_state_reg[1]\,
      I2 => lfsr_ce,
      O => \lfsr_internal_reg[0]_CE_cooolgate_en_sig_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity normal_shift_reg is
  port (
    \temp_reg_reg[28]\ : out STD_LOGIC;
    \temp_reg_reg[27]\ : out STD_LOGIC;
    \temp_reg_reg[25]\ : out STD_LOGIC;
    \temp_reg_reg[24]\ : out STD_LOGIC;
    \temp_reg_reg[20]\ : out STD_LOGIC;
    \temp_reg_reg[19]\ : out STD_LOGIC;
    \temp_reg_reg[17]\ : out STD_LOGIC;
    \temp_reg_reg[12]\ : out STD_LOGIC;
    \temp_reg_reg[11]\ : out STD_LOGIC;
    \temp_reg_reg[8]\ : out STD_LOGIC;
    \temp_reg_reg[4]\ : out STD_LOGIC;
    \temp_reg_reg[3]\ : out STD_LOGIC;
    \temp_reg_reg[8]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 19 downto 0 );
    KEY_REG_CE : in STD_LOGIC;
    \temp_reg_reg[60]\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \temp_reg_reg[59]\ : in STD_LOGIC;
    \temp_reg_reg[20]_0\ : in STD_LOGIC;
    \temp_reg_reg[19]_0\ : in STD_LOGIC;
    \temp_reg_reg[52]\ : in STD_LOGIC;
    \temp_reg_reg[51]\ : in STD_LOGIC;
    \temp_reg_reg[12]_0\ : in STD_LOGIC;
    \temp_reg_reg[44]\ : in STD_LOGIC;
    \temp_reg_reg[43]\ : in STD_LOGIC;
    \temp_reg_reg[3]_0\ : in STD_LOGIC;
    \temp_reg_reg[36]\ : in STD_LOGIC;
    \temp_reg_reg[35]\ : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \temp_reg_reg[31]_0\ : in STD_LOGIC;
    \temp_reg_reg[25]_0\ : in STD_LOGIC;
    \temp_reg_reg[24]_0\ : in STD_LOGIC;
    \temp_reg_reg[21]_0\ : in STD_LOGIC;
    \temp_reg_reg[18]_0\ : in STD_LOGIC;
    \temp_reg_reg[17]_0\ : in STD_LOGIC;
    \temp_reg_reg[16]_0\ : in STD_LOGIC;
    \temp_reg_reg[13]_0\ : in STD_LOGIC;
    \temp_reg_reg[11]_0\ : in STD_LOGIC;
    \temp_reg_reg[10]_0\ : in STD_LOGIC;
    \temp_reg_reg[9]_0\ : in STD_LOGIC;
    \temp_reg_reg[8]_1\ : in STD_LOGIC;
    \temp_reg_reg[5]_0\ : in STD_LOGIC;
    \temp_reg_reg[4]_0\ : in STD_LOGIC;
    \temp_reg_reg[2]_0\ : in STD_LOGIC;
    \temp_reg_reg[1]_0\ : in STD_LOGIC;
    \temp_reg_reg[0]_0\ : in STD_LOGIC;
    \temp_reg_reg[2]_1\ : in STD_LOGIC;
    \temp_reg_reg[1]_1\ : in STD_LOGIC;
    \temp_reg_reg[27]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end normal_shift_reg;

architecture STRUCTURE of normal_shift_reg is
  signal \temp_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[9]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[35]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[35]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[35]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[36]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[36]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[36]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[40]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[40]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[40]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[43]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[43]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[43]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[44]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[44]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[44]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[49]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[49]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[49]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[51]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[51]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[51]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[52]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[52]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[52]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[56]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[56]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[56]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[57]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[57]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[57]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[59]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[59]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[59]_srl2 ";
  attribute srl_bus_name of \temp_reg_reg[60]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[60]_srl2\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[60]_srl2 ";
begin
\temp_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => KEY_REG_CE,
      O => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[27]_0\,
      Q => \temp_reg_reg_n_0_[0]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[5]_0\,
      Q => \temp_reg_reg_n_0_[10]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[8]_1\,
      Q => \temp_reg_reg_n_0_[13]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[9]_0\,
      Q => \temp_reg_reg_n_0_[14]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[10]_0\,
      Q => \temp_reg_reg_n_0_[15]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[11]_0\,
      Q => \temp_reg_reg_n_0_[16]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[13]_0\,
      Q => \temp_reg_reg_n_0_[18]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[1]_1\,
      Q => \temp_reg_reg_n_0_[1]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[16]_0\,
      Q => \temp_reg_reg_n_0_[21]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[17]_0\,
      Q => \temp_reg_reg_n_0_[22]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[18]_0\,
      Q => \temp_reg_reg_n_0_[23]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[21]_0\,
      Q => \temp_reg_reg_n_0_[26]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[24]_0\,
      Q => \temp_reg_reg_n_0_[29]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[2]_1\,
      Q => \temp_reg_reg_n_0_[2]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[25]_0\,
      Q => \temp_reg_reg_n_0_[30]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]_0\,
      Q => \temp_reg_reg_n_0_[31]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[0]\,
      Q => Q(0),
      R => '0'
    );
\temp_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[1]\,
      Q => Q(1),
      R => '0'
    );
\temp_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[2]\,
      Q => Q(2),
      R => '0'
    );
\temp_reg_reg[35]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[35]\,
      Q => \temp_reg_reg[3]\
    );
\temp_reg_reg[36]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[36]\,
      Q => \temp_reg_reg[4]\
    );
\temp_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[5]\,
      Q => Q(3),
      R => '0'
    );
\temp_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[6]\,
      Q => Q(4),
      R => '0'
    );
\temp_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[7]\,
      Q => Q(5),
      R => '0'
    );
\temp_reg_reg[40]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[3]_0\,
      Q => \temp_reg_reg[8]\
    );
\temp_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[9]\,
      Q => Q(6),
      R => '0'
    );
\temp_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[10]\,
      Q => Q(7),
      R => '0'
    );
\temp_reg_reg[43]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[43]\,
      Q => \temp_reg_reg[11]\
    );
\temp_reg_reg[44]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[44]\,
      Q => \temp_reg_reg[12]\
    );
\temp_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[13]\,
      Q => Q(8),
      R => '0'
    );
\temp_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[14]\,
      Q => Q(9),
      R => '0'
    );
\temp_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[15]\,
      Q => Q(10),
      R => '0'
    );
\temp_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[16]\,
      Q => Q(11),
      R => '0'
    );
\temp_reg_reg[49]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[12]_0\,
      Q => \temp_reg_reg[17]\
    );
\temp_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[18]\,
      Q => Q(12),
      R => '0'
    );
\temp_reg_reg[51]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[51]\,
      Q => \temp_reg_reg[19]\
    );
\temp_reg_reg[52]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[52]\,
      Q => \temp_reg_reg[20]\
    );
\temp_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[21]\,
      Q => Q(13),
      R => '0'
    );
\temp_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[22]\,
      Q => Q(14),
      R => '0'
    );
\temp_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[23]\,
      Q => Q(15),
      R => '0'
    );
\temp_reg_reg[56]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[19]_0\,
      Q => \temp_reg_reg[24]\
    );
\temp_reg_reg[57]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[20]_0\,
      Q => \temp_reg_reg[25]\
    );
\temp_reg_reg[57]_srl2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => \temp_reg_reg[8]_0\
    );
\temp_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[26]\,
      Q => Q(16),
      R => '0'
    );
\temp_reg_reg[59]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[59]\,
      Q => \temp_reg_reg[27]\
    );
\temp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[0]_0\,
      Q => \temp_reg_reg_n_0_[5]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[60]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[60]\,
      Q => \temp_reg_reg[28]\
    );
\temp_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[29]\,
      Q => Q(17),
      R => '0'
    );
\temp_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[30]\,
      Q => Q(18),
      R => '0'
    );
\temp_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[31]\,
      Q => Q(19),
      R => '0'
    );
\temp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[1]_0\,
      Q => \temp_reg_reg_n_0_[6]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[2]_0\,
      Q => \temp_reg_reg_n_0_[7]\,
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[4]_0\,
      Q => \temp_reg_reg_n_0_[9]\,
      R => \temp_reg[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity parallel_tapped_shift_reg is
  port (
    \current_state_reg[1]\ : out STD_LOGIC;
    \current_state_reg[2]\ : out STD_LOGIC;
    \temp_reg_reg[0]_0\ : out STD_LOGIC;
    \temp_reg_reg[30]_0\ : out STD_LOGIC;
    \temp_reg_reg[26]_0\ : out STD_LOGIC;
    \temp_reg_reg[24]_0\ : out STD_LOGIC;
    \temp_reg_reg[19]_0\ : out STD_LOGIC;
    \temp_reg_reg[17]_0\ : out STD_LOGIC;
    \temp_reg_reg[16]_0\ : out STD_LOGIC;
    \temp_reg_reg[8]_0\ : out STD_LOGIC;
    \temp_reg_reg[3]_0\ : out STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_IBUF : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \current_state_reg[1]_0\ : in STD_LOGIC;
    \current_state_reg[1]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \temp_reg_reg[63]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end parallel_tapped_shift_reg;

architecture STRUCTURE of parallel_tapped_shift_reg is
  signal IS_left_reg_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IS_right_reg_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \current_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_17_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_20_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_22_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_23_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 29 downto 2 );
  signal \temp_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[0]_0\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0_1\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0_2\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0_3\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0_4\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0_5\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0_6\ : STD_LOGIC;
  signal \xlnx_opt_current_state[2]_i_3_n_0_7\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[11]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[13]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[14]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[21]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[22]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[29]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[2]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[5]\ : STD_LOGIC;
  signal \xlnx_opt_p_0_in[6]\ : STD_LOGIC;
begin
  \temp_reg_reg[0]_0\ <= \^temp_reg_reg[0]_0\;
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8AAA"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => start_IBUF,
      I4 => \current_state[2]_i_3_n_0\,
      I5 => rst_IBUF,
      O => \current_state_reg[1]\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010111010"
    )
        port map (
      I0 => \current_state_reg[1]_0\,
      I1 => \current_state[2]_i_3_n_0\,
      I2 => \current_state_reg[1]_1\,
      I3 => \current_state[2]_i_5_n_0\,
      I4 => \current_state[2]_i_6_n_0\,
      I5 => rst_IBUF,
      O => \current_state_reg[2]\
    );
\current_state[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => IS_right_reg_out(24),
      I1 => IS_right_reg_out(4),
      O => \current_state[2]_i_12_n_0\
    );
\current_state[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => IS_right_reg_out(12),
      I1 => IS_right_reg_out(25),
      I2 => IS_right_reg_out(14),
      I3 => IS_right_reg_out(9),
      O => \current_state[2]_i_13_n_0\
    );
\current_state[2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => IS_right_reg_out(23),
      I1 => IS_right_reg_out(13),
      I2 => current_state(0),
      I3 => IS_right_reg_out(2),
      I4 => \current_state[2]_i_22_n_0\,
      O => \current_state[2]_i_14_n_0\
    );
\current_state[2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => IS_right_reg_out(18),
      I1 => IS_right_reg_out(17),
      I2 => IS_right_reg_out(6),
      I3 => current_state(1),
      I4 => \current_state[2]_i_23_n_0\,
      O => \current_state[2]_i_15_n_0\
    );
\current_state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => IS_right_reg_out(8),
      I1 => IS_right_reg_out(26),
      I2 => IS_right_reg_out(3),
      I3 => IS_right_reg_out(20),
      O => \current_state[2]_i_16_n_0\
    );
\current_state[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => IS_right_reg_out(19),
      I1 => IS_right_reg_out(16),
      I2 => \out\(1),
      I3 => \out\(0),
      O => \current_state[2]_i_17_n_0\
    );
\current_state[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => IS_right_reg_out(12),
      I1 => IS_right_reg_out(1),
      I2 => IS_right_reg_out(9),
      I3 => IS_right_reg_out(25),
      O => \current_state[2]_i_20_n_0\
    );
\current_state[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => IS_right_reg_out(30),
      I1 => IS_right_reg_out(0),
      I2 => IS_right_reg_out(1),
      I3 => IS_right_reg_out(15),
      O => \current_state[2]_i_22_n_0\
    );
\current_state[2]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => IS_right_reg_out(7),
      I1 => IS_right_reg_out(28),
      I2 => IS_right_reg_out(11),
      I3 => IS_right_reg_out(22),
      O => \current_state[2]_i_23_n_0\
    );
\current_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => IS_right_reg_out(29),
      I1 => IS_right_reg_out(31),
      I2 => \current_state[2]_i_12_n_0\,
      I3 => \current_state[2]_i_13_n_0\,
      I4 => \current_state[2]_i_14_n_0\,
      I5 => \current_state[2]_i_15_n_0\,
      O => \current_state[2]_i_5_n_0\
    );
\current_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \current_state[2]_i_16_n_0\,
      I1 => IS_right_reg_out(21),
      I2 => IS_right_reg_out(27),
      I3 => IS_right_reg_out(5),
      I4 => IS_right_reg_out(10),
      I5 => \current_state[2]_i_17_n_0\,
      O => \current_state[2]_i_6_n_0\
    );
\temp_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1441411441144114"
    )
        port map (
      I0 => \^temp_reg_reg[0]_0\,
      I1 => IS_left_reg_out(31),
      I2 => \temp_reg_reg[63]_0\(0),
      I3 => IS_right_reg_out(0),
      I4 => IS_left_reg_out(0),
      I5 => IS_left_reg_out(27),
      O => \temp_reg[0]_i_1_n_0\
    );
\temp_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1441411441144114"
    )
        port map (
      I0 => \^temp_reg_reg[0]_0\,
      I1 => IS_left_reg_out(9),
      I2 => \temp_reg_reg[63]_0\(10),
      I3 => IS_right_reg_out(10),
      I4 => IS_left_reg_out(5),
      I5 => IS_left_reg_out(10),
      O => \temp_reg[10]_i_1_n_0\
    );
\temp_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(12),
      I1 => IS_left_reg_out(7),
      I2 => IS_right_reg_out(12),
      I3 => \temp_reg_reg[63]_0\(12),
      I4 => IS_left_reg_out(11),
      O => \temp_reg[12]_i_1_n_0\
    );
\temp_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(15),
      I1 => IS_left_reg_out(10),
      I2 => IS_right_reg_out(15),
      I3 => \temp_reg_reg[63]_0\(15),
      I4 => IS_left_reg_out(14),
      O => \temp_reg[15]_i_1_n_0\
    );
\temp_reg[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(16),
      I1 => IS_left_reg_out(11),
      I2 => IS_right_reg_out(16),
      I3 => \temp_reg_reg[63]_0\(16),
      I4 => IS_left_reg_out(15),
      O => \temp_reg_reg[16]_0\
    );
\temp_reg[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(17),
      I1 => IS_left_reg_out(12),
      I2 => IS_right_reg_out(17),
      I3 => \temp_reg_reg[63]_0\(17),
      I4 => IS_left_reg_out(16),
      O => \temp_reg_reg[17]_0\
    );
\temp_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \^temp_reg_reg[0]_0\,
      I1 => Q(1),
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => Q(0),
      I5 => E(0),
      O => \temp_reg[18]_i_1_n_0\
    );
\temp_reg[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1441411441144114"
    )
        port map (
      I0 => \^temp_reg_reg[0]_0\,
      I1 => IS_left_reg_out(17),
      I2 => \temp_reg_reg[63]_0\(18),
      I3 => IS_right_reg_out(18),
      I4 => IS_left_reg_out(13),
      I5 => IS_left_reg_out(18),
      O => \temp_reg[18]_i_2_n_0\
    );
\temp_reg[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(19),
      I1 => IS_left_reg_out(14),
      I2 => IS_right_reg_out(19),
      I3 => \temp_reg_reg[63]_0\(19),
      I4 => IS_left_reg_out(18),
      O => \temp_reg_reg[19]_0\
    );
\temp_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(28),
      I1 => IS_left_reg_out(1),
      I2 => IS_right_reg_out(1),
      I3 => \temp_reg_reg[63]_0\(1),
      I4 => IS_left_reg_out(0),
      O => \temp_reg[1]_i_1_n_0\
    );
\temp_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(20),
      I1 => IS_left_reg_out(15),
      I2 => IS_right_reg_out(20),
      I3 => \temp_reg_reg[63]_0\(20),
      I4 => IS_left_reg_out(19),
      O => \temp_reg[20]_i_1_n_0\
    );
\temp_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(23),
      I1 => IS_left_reg_out(18),
      I2 => IS_right_reg_out(23),
      I3 => \temp_reg_reg[63]_0\(23),
      I4 => IS_left_reg_out(22),
      O => \temp_reg[23]_i_1_n_0\
    );
\temp_reg[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(24),
      I1 => IS_left_reg_out(19),
      I2 => IS_right_reg_out(24),
      I3 => \temp_reg_reg[63]_0\(24),
      I4 => IS_left_reg_out(23),
      O => \temp_reg_reg[24]_0\
    );
\temp_reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(25),
      I1 => IS_left_reg_out(20),
      I2 => IS_right_reg_out(25),
      I3 => \temp_reg_reg[63]_0\(25),
      I4 => IS_left_reg_out(24),
      O => \temp_reg[25]_i_1_n_0\
    );
\temp_reg[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(26),
      I1 => IS_left_reg_out(21),
      I2 => IS_right_reg_out(26),
      I3 => \temp_reg_reg[63]_0\(26),
      I4 => IS_left_reg_out(25),
      O => \temp_reg_reg[26]_0\
    );
\temp_reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(27),
      I1 => IS_left_reg_out(22),
      I2 => IS_right_reg_out(27),
      I3 => \temp_reg_reg[63]_0\(27),
      I4 => IS_left_reg_out(26),
      O => \temp_reg[27]_i_1_n_0\
    );
\temp_reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(28),
      I1 => IS_left_reg_out(23),
      I2 => IS_right_reg_out(28),
      I3 => \temp_reg_reg[63]_0\(28),
      I4 => IS_left_reg_out(27),
      O => \temp_reg[28]_i_1_n_0\
    );
\temp_reg[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => \^temp_reg_reg[0]_0\
    );
\temp_reg[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(30),
      I1 => IS_left_reg_out(25),
      I2 => IS_right_reg_out(30),
      I3 => IS_left_reg_out(29),
      I4 => \temp_reg_reg[63]_0\(30),
      O => \temp_reg_reg[30]_0\
    );
\temp_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => E(0),
      O => \temp_reg[31]_i_1_n_0\
    );
\temp_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(26),
      I1 => IS_left_reg_out(31),
      I2 => IS_right_reg_out(31),
      I3 => \temp_reg_reg[63]_0\(31),
      I4 => IS_left_reg_out(30),
      O => \temp_reg[31]_i_2_n_0\
    );
\temp_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(30),
      I1 => IS_left_reg_out(3),
      I2 => IS_right_reg_out(3),
      I3 => \temp_reg_reg[63]_0\(3),
      I4 => IS_left_reg_out(2),
      O => \temp_reg_reg[3]_0\
    );
\temp_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1441411441144114"
    )
        port map (
      I0 => \^temp_reg_reg[0]_0\,
      I1 => IS_left_reg_out(3),
      I2 => \temp_reg_reg[63]_0\(4),
      I3 => IS_right_reg_out(4),
      I4 => IS_left_reg_out(4),
      I5 => IS_left_reg_out(31),
      O => \temp_reg[4]_i_1_n_0\
    );
\temp_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(7),
      I1 => IS_left_reg_out(2),
      I2 => IS_right_reg_out(7),
      I3 => \temp_reg_reg[63]_0\(7),
      I4 => IS_left_reg_out(6),
      O => \temp_reg[7]_i_1_n_0\
    );
\temp_reg[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => IS_left_reg_out(8),
      I1 => IS_left_reg_out(3),
      I2 => IS_right_reg_out(8),
      I3 => \temp_reg_reg[63]_0\(8),
      I4 => IS_left_reg_out(7),
      O => \temp_reg_reg[8]_0\
    );
\temp_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1441411441144114"
    )
        port map (
      I0 => \^temp_reg_reg[0]_0\,
      I1 => IS_left_reg_out(8),
      I2 => \temp_reg_reg[63]_0\(9),
      I3 => IS_right_reg_out(9),
      I4 => IS_left_reg_out(4),
      I5 => IS_left_reg_out(9),
      O => \temp_reg[9]_i_1_n_0\
    );
\temp_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[0]_i_1_n_0\,
      Q => IS_left_reg_out(0),
      S => \temp_reg[18]_i_1_n_0\
    );
\temp_reg_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[10]_i_1_n_0\,
      Q => IS_left_reg_out(10),
      S => \temp_reg[18]_i_1_n_0\
    );
\temp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(11),
      Q => IS_left_reg_out(11),
      R => '0'
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[12]_i_1_n_0\,
      Q => IS_left_reg_out(12),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(13),
      Q => IS_left_reg_out(13),
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(14),
      Q => IS_left_reg_out(14),
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[15]_i_1_n_0\,
      Q => IS_left_reg_out(15),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => IS_left_reg_out(16),
      R => '0'
    );
\temp_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => IS_left_reg_out(17),
      R => '0'
    );
\temp_reg_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[18]_i_2_n_0\,
      Q => IS_left_reg_out(18),
      S => \temp_reg[18]_i_1_n_0\
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => IS_left_reg_out(19),
      R => '0'
    );
\temp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[1]_i_1_n_0\,
      Q => IS_left_reg_out(1),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[20]_i_1_n_0\,
      Q => IS_left_reg_out(20),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(21),
      Q => IS_left_reg_out(21),
      R => '0'
    );
\temp_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(22),
      Q => IS_left_reg_out(22),
      R => '0'
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[23]_i_1_n_0\,
      Q => IS_left_reg_out(23),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => IS_left_reg_out(24),
      R => '0'
    );
\temp_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[25]_i_1_n_0\,
      Q => IS_left_reg_out(25),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => IS_left_reg_out(26),
      R => '0'
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[27]_i_1_n_0\,
      Q => IS_left_reg_out(27),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[28]_i_1_n_0\,
      Q => IS_left_reg_out(28),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(29),
      Q => IS_left_reg_out(29),
      R => '0'
    );
\temp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(2),
      Q => IS_left_reg_out(2),
      R => '0'
    );
\temp_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(7),
      Q => IS_left_reg_out(30),
      R => '0'
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[31]_i_2_n_0\,
      Q => IS_left_reg_out(31),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(0),
      Q => IS_right_reg_out(0),
      R => '0'
    );
\temp_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(1),
      Q => IS_right_reg_out(1),
      R => '0'
    );
\temp_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(2),
      Q => IS_right_reg_out(2),
      R => '0'
    );
\temp_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(3),
      Q => IS_right_reg_out(3),
      R => '0'
    );
\temp_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(4),
      Q => IS_right_reg_out(4),
      R => '0'
    );
\temp_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(5),
      Q => IS_right_reg_out(5),
      R => '0'
    );
\temp_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(6),
      Q => IS_right_reg_out(6),
      R => '0'
    );
\temp_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(7),
      Q => IS_right_reg_out(7),
      R => '0'
    );
\temp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => IS_left_reg_out(3),
      R => '0'
    );
\temp_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(8),
      Q => IS_right_reg_out(8),
      R => '0'
    );
\temp_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(9),
      Q => IS_right_reg_out(9),
      R => '0'
    );
\temp_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(10),
      Q => IS_right_reg_out(10),
      R => '0'
    );
\temp_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(11),
      Q => IS_right_reg_out(11),
      R => '0'
    );
\temp_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(12),
      Q => IS_right_reg_out(12),
      R => '0'
    );
\temp_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(13),
      Q => IS_right_reg_out(13),
      R => '0'
    );
\temp_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(14),
      Q => IS_right_reg_out(14),
      R => '0'
    );
\temp_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(15),
      Q => IS_right_reg_out(15),
      R => '0'
    );
\temp_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(16),
      Q => IS_right_reg_out(16),
      R => '0'
    );
\temp_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(17),
      Q => IS_right_reg_out(17),
      R => '0'
    );
\temp_reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[4]_i_1_n_0\,
      Q => IS_left_reg_out(4),
      S => \temp_reg[18]_i_1_n_0\
    );
\temp_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(18),
      Q => IS_right_reg_out(18),
      R => '0'
    );
\temp_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(19),
      Q => IS_right_reg_out(19),
      R => '0'
    );
\temp_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(20),
      Q => IS_right_reg_out(20),
      R => '0'
    );
\temp_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(21),
      Q => IS_right_reg_out(21),
      R => '0'
    );
\temp_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(22),
      Q => IS_right_reg_out(22),
      R => '0'
    );
\temp_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(23),
      Q => IS_right_reg_out(23),
      R => '0'
    );
\temp_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(24),
      Q => IS_right_reg_out(24),
      R => '0'
    );
\temp_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(25),
      Q => IS_right_reg_out(25),
      R => '0'
    );
\temp_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(26),
      Q => IS_right_reg_out(26),
      R => '0'
    );
\temp_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(27),
      Q => IS_right_reg_out(27),
      R => '0'
    );
\temp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(5),
      Q => IS_left_reg_out(5),
      R => '0'
    );
\temp_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(28),
      Q => IS_right_reg_out(28),
      R => '0'
    );
\temp_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(29),
      Q => IS_right_reg_out(29),
      R => '0'
    );
\temp_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(30),
      Q => IS_right_reg_out(30),
      R => '0'
    );
\temp_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => IS_left_reg_out(31),
      Q => IS_right_reg_out(31),
      R => '0'
    );
\temp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_0_in(6),
      Q => IS_left_reg_out(6),
      R => '0'
    );
\temp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[7]_i_1_n_0\,
      Q => IS_left_reg_out(7),
      R => \temp_reg[31]_i_1_n_0\
    );
\temp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => IS_left_reg_out(8),
      R => '0'
    );
\temp_reg_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => \temp_reg[9]_i_1_n_0\,
      Q => IS_left_reg_out(9),
      S => \temp_reg[18]_i_1_n_0\
    );
\xlnx_opt_LUT_current_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => IS_right_reg_out(0),
      I1 => IS_right_reg_out(5),
      I2 => IS_right_reg_out(28),
      I3 => IS_right_reg_out(30),
      O => \xlnx_opt_current_state[2]_i_3_n_0_7\
    );
\xlnx_opt_LUT_current_state[2]_i_3_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => IS_right_reg_out(13),
      I1 => IS_right_reg_out(10),
      I2 => IS_right_reg_out(22),
      I3 => IS_right_reg_out(7),
      I4 => \xlnx_opt_current_state[2]_i_3_n_0_7\,
      O => \xlnx_opt_current_state[2]_i_3_n_0_6\
    );
\xlnx_opt_LUT_current_state[2]_i_3_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => IS_right_reg_out(15),
      I1 => IS_right_reg_out(17),
      I2 => IS_right_reg_out(6),
      I3 => IS_right_reg_out(23),
      O => \xlnx_opt_current_state[2]_i_3_n_0_5\
    );
\xlnx_opt_LUT_current_state[2]_i_3_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \out\(0),
      I1 => IS_right_reg_out(2),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => \xlnx_opt_current_state[2]_i_3_n_0_5\,
      O => \xlnx_opt_current_state[2]_i_3_n_0_4\
    );
\xlnx_opt_LUT_current_state[2]_i_3_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFCFFFFFFF"
    )
        port map (
      I0 => current_state(1),
      I1 => IS_right_reg_out(4),
      I2 => IS_right_reg_out(24),
      I3 => IS_right_reg_out(26),
      I4 => IS_right_reg_out(8),
      I5 => current_state(0),
      O => \xlnx_opt_current_state[2]_i_3_n_0_3\
    );
\xlnx_opt_LUT_current_state[2]_i_3_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \current_state[2]_i_17_n_0\,
      I1 => \current_state[2]_i_20_n_0\,
      I2 => IS_right_reg_out(21),
      I3 => IS_right_reg_out(27),
      I4 => IS_right_reg_out(3),
      I5 => IS_right_reg_out(20),
      O => \xlnx_opt_current_state[2]_i_3_n_0_2\
    );
\xlnx_opt_LUT_current_state[2]_i_3_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => IS_right_reg_out(31),
      I1 => IS_right_reg_out(29),
      O => \xlnx_opt_current_state[2]_i_3_n_0_1\
    );
\xlnx_opt_LUT_current_state[2]_i_3_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => IS_right_reg_out(14),
      I3 => IS_right_reg_out(11),
      I4 => IS_right_reg_out(18),
      I5 => \xlnx_opt_current_state[2]_i_3_n_0_1\,
      O => \xlnx_opt_current_state[2]_i_3_n_0\
    );
\xlnx_opt_LUT_current_state[2]_i_3_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \xlnx_opt_current_state[2]_i_3_n_0_6\,
      I1 => \xlnx_opt_current_state[2]_i_3_n_0_4\,
      I2 => \xlnx_opt_current_state[2]_i_3_n_0_3\,
      I3 => \xlnx_opt_current_state[2]_i_3_n_0_2\,
      I4 => \xlnx_opt_current_state[2]_i_3_n_0\,
      O => \current_state[2]_i_3_n_0\
    );
\xlnx_opt_LUT_temp_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(11),
      I1 => IS_left_reg_out(6),
      I2 => IS_right_reg_out(11),
      I3 => \temp_reg_reg[63]_0\(11),
      I4 => IS_left_reg_out(10),
      O => \xlnx_opt_p_0_in[11]\
    );
\xlnx_opt_LUT_temp_reg[11]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[11]\,
      O => p_0_in(11)
    );
\xlnx_opt_LUT_temp_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(13),
      I1 => IS_left_reg_out(8),
      I2 => IS_right_reg_out(13),
      I3 => \temp_reg_reg[63]_0\(13),
      I4 => IS_left_reg_out(12),
      O => \xlnx_opt_p_0_in[13]\
    );
\xlnx_opt_LUT_temp_reg[13]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[13]\,
      O => p_0_in(13)
    );
\xlnx_opt_LUT_temp_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(14),
      I1 => IS_left_reg_out(9),
      I2 => IS_right_reg_out(14),
      I3 => \temp_reg_reg[63]_0\(14),
      I4 => IS_left_reg_out(13),
      O => \xlnx_opt_p_0_in[14]\
    );
\xlnx_opt_LUT_temp_reg[14]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[14]\,
      O => p_0_in(14)
    );
\xlnx_opt_LUT_temp_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(21),
      I1 => IS_left_reg_out(16),
      I2 => IS_right_reg_out(21),
      I3 => \temp_reg_reg[63]_0\(21),
      I4 => IS_left_reg_out(20),
      O => \xlnx_opt_p_0_in[21]\
    );
\xlnx_opt_LUT_temp_reg[21]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[21]\,
      O => p_0_in(21)
    );
\xlnx_opt_LUT_temp_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(22),
      I1 => IS_left_reg_out(17),
      I2 => IS_right_reg_out(22),
      I3 => \temp_reg_reg[63]_0\(22),
      I4 => IS_left_reg_out(21),
      O => \xlnx_opt_p_0_in[22]\
    );
\xlnx_opt_LUT_temp_reg[22]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[22]\,
      O => p_0_in(22)
    );
\xlnx_opt_LUT_temp_reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(29),
      I1 => IS_left_reg_out(24),
      I2 => IS_right_reg_out(29),
      I3 => IS_left_reg_out(28),
      I4 => \temp_reg_reg[63]_0\(29),
      O => \xlnx_opt_p_0_in[29]\
    );
\xlnx_opt_LUT_temp_reg[29]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[29]\,
      O => p_0_in(29)
    );
\xlnx_opt_LUT_temp_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(29),
      I1 => IS_left_reg_out(2),
      I2 => IS_right_reg_out(2),
      I3 => \temp_reg_reg[63]_0\(2),
      I4 => IS_left_reg_out(1),
      O => \xlnx_opt_p_0_in[2]\
    );
\xlnx_opt_LUT_temp_reg[2]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[2]\,
      O => p_0_in(2)
    );
\xlnx_opt_LUT_temp_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(5),
      I1 => IS_left_reg_out(0),
      I2 => IS_right_reg_out(5),
      I3 => \temp_reg_reg[63]_0\(5),
      I4 => IS_left_reg_out(4),
      O => \xlnx_opt_p_0_in[5]\
    );
\xlnx_opt_LUT_temp_reg[5]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[5]\,
      O => p_0_in(5)
    );
\xlnx_opt_LUT_temp_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => IS_left_reg_out(6),
      I1 => IS_left_reg_out(1),
      I2 => IS_right_reg_out(6),
      I3 => \temp_reg_reg[63]_0\(6),
      I4 => IS_left_reg_out(5),
      O => \xlnx_opt_p_0_in[6]\
    );
\xlnx_opt_LUT_temp_reg[6]_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808FF0808"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Q(1),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \xlnx_opt_p_0_in[6]\,
      O => p_0_in(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity parallel_tapped_shift_reg_0 is
  port (
    \temp_reg_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \temp_reg_reg[4]_0\ : out STD_LOGIC;
    \temp_reg_reg[8]_0\ : out STD_LOGIC;
    \temp_reg_reg[11]_0\ : out STD_LOGIC;
    \temp_reg_reg[12]_0\ : out STD_LOGIC;
    \temp_reg_reg[17]_0\ : out STD_LOGIC;
    \temp_reg_reg[19]_0\ : out STD_LOGIC;
    \temp_reg_reg[20]_0\ : out STD_LOGIC;
    \temp_reg_reg[24]_0\ : out STD_LOGIC;
    \temp_reg_reg[25]_0\ : out STD_LOGIC;
    \temp_reg_reg[27]_0\ : out STD_LOGIC;
    \temp_reg_reg[28]_0\ : out STD_LOGIC;
    \temp_reg_reg[31]_0\ : out STD_LOGIC;
    \temp_reg_reg[30]_0\ : out STD_LOGIC;
    \temp_reg_reg[29]_0\ : out STD_LOGIC;
    \temp_reg_reg[26]_0\ : out STD_LOGIC;
    \temp_reg_reg[23]_0\ : out STD_LOGIC;
    \temp_reg_reg[22]_0\ : out STD_LOGIC;
    \temp_reg_reg[21]_0\ : out STD_LOGIC;
    \temp_reg_reg[18]_0\ : out STD_LOGIC;
    \temp_reg_reg[16]_0\ : out STD_LOGIC;
    \temp_reg_reg[15]_0\ : out STD_LOGIC;
    \temp_reg_reg[14]_0\ : out STD_LOGIC;
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    \temp_reg_reg[10]_0\ : out STD_LOGIC;
    \temp_reg_reg[9]_0\ : out STD_LOGIC;
    \temp_reg_reg[7]_0\ : out STD_LOGIC;
    \temp_reg_reg[6]_0\ : out STD_LOGIC;
    \temp_reg_reg[5]_0\ : out STD_LOGIC;
    \temp_reg_reg[2]_0\ : out STD_LOGIC;
    \temp_reg_reg[1]_0\ : out STD_LOGIC;
    \temp_reg_reg[0]_0\ : out STD_LOGIC;
    KEY_REG_CE : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_4\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_5\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_6\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_7\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_8\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_9\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_10\ : in STD_LOGIC;
    \current_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_11\ : in STD_LOGIC;
    \current_state_reg[2]_0\ : in STD_LOGIC;
    \current_state_reg[2]_1\ : in STD_LOGIC;
    \lfsr_internal_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 19 downto 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC;
    pwropt_2 : in STD_LOGIC;
    pwropt_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of parallel_tapped_shift_reg_0 : entity is "parallel_tapped_shift_reg";
end parallel_tapped_shift_reg_0;

architecture STRUCTURE of parallel_tapped_shift_reg_0 is
  signal KEY_REG_b_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_reg_reg[0]_CE_cooolgate_en_sig_2\ : STD_LOGIC;
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \temp_reg_reg[0]\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \temp_reg_reg[0]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[10]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[10]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[11]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[11]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[12]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[12]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[13]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[13]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[14]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[14]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[15]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[15]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[16]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[16]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[17]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[17]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[18]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[18]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[19]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[19]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[1]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[1]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[20]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[20]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[21]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[21]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[22]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[22]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[23]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[23]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[24]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[24]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[25]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[25]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[26]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[26]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[27]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[27]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[28]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[28]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[29]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[29]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[2]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[2]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[30]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[30]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[31]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[31]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[32]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[32]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[33]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[33]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[34]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[34]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[35]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[35]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[36]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[36]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[37]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[37]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[38]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[38]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[39]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[39]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[3]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[3]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[40]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[40]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[41]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[41]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[42]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[42]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[43]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[43]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[44]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[44]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[45]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[45]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[46]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[46]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[47]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[47]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[48]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[48]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[49]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[49]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[4]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[4]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[50]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[50]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[51]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[51]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[52]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[52]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[53]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[53]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[54]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[54]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[55]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[55]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[56]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[56]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[57]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[57]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[58]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[58]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[59]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[59]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[5]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[5]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[60]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[60]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[61]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[61]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[62]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[62]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[63]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[63]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[6]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[6]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[7]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[7]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[8]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[8]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[9]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[9]\ : label is "CE=AUG";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
\temp_reg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => KEY_REG_b_out(27),
      I1 => KEY_REG_b_out(0),
      I2 => KEY_REG_b_out(31),
      I3 => \^q\(0),
      I4 => \lfsr_internal_reg[5]\(0),
      O => \temp_reg_reg[0]_0\
    );
\temp_reg[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(5),
      I1 => KEY_REG_b_out(10),
      I2 => KEY_REG_b_out(9),
      I3 => \^q\(10),
      O => \temp_reg_reg[10]_0\
    );
\temp_reg[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(8),
      I1 => KEY_REG_b_out(13),
      I2 => KEY_REG_b_out(12),
      I3 => \^q\(13),
      O => \temp_reg_reg[13]_0\
    );
\temp_reg[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(9),
      I1 => KEY_REG_b_out(14),
      I2 => KEY_REG_b_out(13),
      I3 => \^q\(14),
      O => \temp_reg_reg[14]_0\
    );
\temp_reg[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(10),
      I1 => KEY_REG_b_out(15),
      I2 => KEY_REG_b_out(14),
      I3 => \^q\(15),
      O => \temp_reg_reg[15]_0\
    );
\temp_reg[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(11),
      I1 => KEY_REG_b_out(16),
      I2 => KEY_REG_b_out(15),
      I3 => \^q\(16),
      O => \temp_reg_reg[16]_0\
    );
\temp_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(13),
      I1 => KEY_REG_b_out(18),
      I2 => KEY_REG_b_out(17),
      I3 => \^q\(18),
      O => \temp_reg_reg[18]_0\
    );
\temp_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => KEY_REG_b_out(1),
      I1 => KEY_REG_b_out(28),
      I2 => KEY_REG_b_out(0),
      I3 => \^q\(1),
      O => \temp_reg_reg[1]_0\
    );
\temp_reg[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(16),
      I1 => KEY_REG_b_out(21),
      I2 => KEY_REG_b_out(20),
      I3 => \^q\(21),
      O => \temp_reg_reg[21]_0\
    );
\temp_reg[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(17),
      I1 => KEY_REG_b_out(22),
      I2 => KEY_REG_b_out(21),
      I3 => \^q\(22),
      O => \temp_reg_reg[22]_0\
    );
\temp_reg[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(18),
      I1 => KEY_REG_b_out(23),
      I2 => KEY_REG_b_out(22),
      I3 => \^q\(23),
      O => \temp_reg_reg[23]_0\
    );
\temp_reg[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(21),
      I1 => KEY_REG_b_out(26),
      I2 => KEY_REG_b_out(25),
      I3 => \^q\(26),
      O => \temp_reg_reg[26]_0\
    );
\temp_reg[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(24),
      I1 => KEY_REG_b_out(29),
      I2 => KEY_REG_b_out(28),
      I3 => \^q\(29),
      O => \temp_reg_reg[29]_0\
    );
\temp_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(2),
      I1 => KEY_REG_b_out(29),
      I2 => KEY_REG_b_out(1),
      I3 => \^q\(2),
      O => \temp_reg_reg[2]_0\
    );
\temp_reg[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(25),
      I1 => KEY_REG_b_out(30),
      I2 => KEY_REG_b_out(29),
      I3 => \^q\(30),
      O => \temp_reg_reg[30]_0\
    );
\temp_reg[31]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(31),
      I1 => KEY_REG_b_out(26),
      I2 => KEY_REG_b_out(30),
      I3 => \^q\(31),
      O => \temp_reg_reg[31]_0\
    );
\temp_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(0),
      I1 => KEY_REG_b_out(5),
      I2 => KEY_REG_b_out(4),
      I3 => \^q\(5),
      O => \temp_reg_reg[5]_0\
    );
\temp_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(1),
      I1 => KEY_REG_b_out(6),
      I2 => KEY_REG_b_out(5),
      I3 => \^q\(6),
      O => \temp_reg_reg[6]_0\
    );
\temp_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(2),
      I1 => KEY_REG_b_out(7),
      I2 => KEY_REG_b_out(6),
      I3 => \^q\(7),
      O => \temp_reg_reg[7]_0\
    );
\temp_reg[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => KEY_REG_b_out(4),
      I1 => KEY_REG_b_out(9),
      I2 => KEY_REG_b_out(8),
      I3 => \^q\(9),
      O => \temp_reg_reg[9]_0\
    );
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(0),
      Q => KEY_REG_b_out(0),
      R => '0'
    );
\temp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(7),
      Q => KEY_REG_b_out(10),
      R => '0'
    );
\temp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_7\,
      Q => KEY_REG_b_out(11),
      R => '0'
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_6\,
      Q => KEY_REG_b_out(12),
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(8),
      Q => KEY_REG_b_out(13),
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(9),
      Q => KEY_REG_b_out(14),
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(10),
      Q => KEY_REG_b_out(15),
      R => '0'
    );
\temp_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(11),
      Q => KEY_REG_b_out(16),
      R => '0'
    );
\temp_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_5\,
      Q => KEY_REG_b_out(17),
      R => '0'
    );
\temp_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(12),
      Q => KEY_REG_b_out(18),
      R => '0'
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_4\,
      Q => KEY_REG_b_out(19),
      R => '0'
    );
\temp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(1),
      Q => KEY_REG_b_out(1),
      R => '0'
    );
\temp_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_3\,
      Q => KEY_REG_b_out(20),
      R => '0'
    );
\temp_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(13),
      Q => KEY_REG_b_out(21),
      R => '0'
    );
\temp_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(14),
      Q => KEY_REG_b_out(22),
      R => '0'
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(15),
      Q => KEY_REG_b_out(23),
      R => '0'
    );
\temp_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_2\,
      Q => KEY_REG_b_out(24),
      R => '0'
    );
\temp_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_1\,
      Q => KEY_REG_b_out(25),
      R => '0'
    );
\temp_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(16),
      Q => KEY_REG_b_out(26),
      R => '0'
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_0\,
      Q => KEY_REG_b_out(27),
      R => '0'
    );
\temp_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]\,
      Q => KEY_REG_b_out(28),
      R => '0'
    );
\temp_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(17),
      Q => KEY_REG_b_out(29),
      R => '0'
    );
\temp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(2),
      Q => KEY_REG_b_out(2),
      R => '0'
    );
\temp_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(18),
      Q => KEY_REG_b_out(30),
      R => '0'
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(19),
      Q => KEY_REG_b_out(31),
      R => '0'
    );
\temp_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(0),
      Q => \^q\(0),
      R => '0'
    );
\temp_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(1),
      Q => \^q\(1),
      R => '0'
    );
\temp_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(2),
      Q => \^q\(2),
      R => '0'
    );
\temp_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(3),
      Q => \^q\(3),
      R => '0'
    );
\temp_reg_reg[35]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(3),
      I3 => KEY_REG_b_out(30),
      I4 => KEY_REG_b_out(3),
      I5 => KEY_REG_b_out(2),
      O => \temp_reg_reg[3]_0\
    );
\temp_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(4),
      Q => \^q\(4),
      R => '0'
    );
\temp_reg_reg[36]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]_0\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(4),
      I3 => KEY_REG_b_out(31),
      I4 => KEY_REG_b_out(4),
      I5 => KEY_REG_b_out(3),
      O => \temp_reg_reg[4]_0\
    );
\temp_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(5),
      Q => \^q\(5),
      R => '0'
    );
\temp_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(6),
      Q => \^q\(6),
      R => '0'
    );
\temp_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(7),
      Q => \^q\(7),
      R => '0'
    );
\temp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_10\,
      Q => KEY_REG_b_out(3),
      R => '0'
    );
\temp_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(8),
      Q => \^q\(8),
      R => '0'
    );
\temp_reg_reg[40]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888B8888BBB"
    )
        port map (
      I0 => \current_state_reg[2]_1\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => KEY_REG_b_out(3),
      I3 => KEY_REG_b_out(8),
      I4 => KEY_REG_b_out(7),
      I5 => \^q\(8),
      O => \temp_reg_reg[8]_0\
    );
\temp_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(9),
      Q => \^q\(9),
      R => '0'
    );
\temp_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(10),
      Q => \^q\(10),
      R => '0'
    );
\temp_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(11),
      Q => \^q\(11),
      R => '0'
    );
\temp_reg_reg[43]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(11),
      I3 => KEY_REG_b_out(11),
      I4 => KEY_REG_b_out(6),
      I5 => KEY_REG_b_out(10),
      O => \temp_reg_reg[11]_0\
    );
\temp_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(12),
      Q => \^q\(12),
      R => '0'
    );
\temp_reg_reg[44]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]_0\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(12),
      I3 => KEY_REG_b_out(12),
      I4 => KEY_REG_b_out(7),
      I5 => KEY_REG_b_out(11),
      O => \temp_reg_reg[12]_0\
    );
\temp_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(13),
      Q => \^q\(13),
      R => '0'
    );
\temp_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(14),
      Q => \^q\(14),
      R => '0'
    );
\temp_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(15),
      Q => \^q\(15),
      R => '0'
    );
\temp_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(16),
      Q => \^q\(16),
      R => '0'
    );
\temp_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(17),
      Q => \^q\(17),
      R => '0'
    );
\temp_reg_reg[49]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888B8888BBB"
    )
        port map (
      I0 => \current_state_reg[2]_1\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => KEY_REG_b_out(12),
      I3 => KEY_REG_b_out(17),
      I4 => KEY_REG_b_out(16),
      I5 => \^q\(17),
      O => \temp_reg_reg[17]_0\
    );
\temp_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_9\,
      Q => KEY_REG_b_out(4),
      R => '0'
    );
\temp_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(18),
      Q => \^q\(18),
      R => '0'
    );
\temp_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(19),
      Q => \^q\(19),
      R => '0'
    );
\temp_reg_reg[51]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(19),
      I3 => KEY_REG_b_out(19),
      I4 => KEY_REG_b_out(14),
      I5 => KEY_REG_b_out(18),
      O => \temp_reg_reg[19]_0\
    );
\temp_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(20),
      Q => \^q\(20),
      R => '0'
    );
\temp_reg_reg[52]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]_0\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(20),
      I3 => KEY_REG_b_out(20),
      I4 => KEY_REG_b_out(15),
      I5 => KEY_REG_b_out(19),
      O => \temp_reg_reg[20]_0\
    );
\temp_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(21),
      Q => \^q\(21),
      R => '0'
    );
\temp_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(22),
      Q => \^q\(22),
      R => '0'
    );
\temp_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(23),
      Q => \^q\(23),
      R => '0'
    );
\temp_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(24),
      Q => \^q\(24),
      R => '0'
    );
\temp_reg_reg[56]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888B8888BBB"
    )
        port map (
      I0 => \current_state_reg[2]_1\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => KEY_REG_b_out(19),
      I3 => KEY_REG_b_out(24),
      I4 => KEY_REG_b_out(23),
      I5 => \^q\(24),
      O => \temp_reg_reg[24]_0\
    );
\temp_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(25),
      Q => \^q\(25),
      R => '0'
    );
\temp_reg_reg[57]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888B8888BBB"
    )
        port map (
      I0 => \current_state_reg[2]_1\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => KEY_REG_b_out(20),
      I3 => KEY_REG_b_out(25),
      I4 => KEY_REG_b_out(24),
      I5 => \^q\(25),
      O => \temp_reg_reg[25]_0\
    );
\temp_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(26),
      Q => \^q\(26),
      R => '0'
    );
\temp_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(27),
      Q => \^q\(27),
      R => '0'
    );
\temp_reg_reg[59]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(27),
      I3 => KEY_REG_b_out(27),
      I4 => KEY_REG_b_out(22),
      I5 => KEY_REG_b_out(26),
      O => \temp_reg_reg[27]_0\
    );
\temp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(3),
      Q => KEY_REG_b_out(5),
      R => '0'
    );
\temp_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(28),
      Q => \^q\(28),
      R => '0'
    );
\temp_reg_reg[60]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B88B8B8B"
    )
        port map (
      I0 => \current_state_reg[2]_0\,
      I1 => \FSM_sequential_current_state_reg[0]_11\,
      I2 => \^q\(28),
      I3 => KEY_REG_b_out(28),
      I4 => KEY_REG_b_out(23),
      I5 => KEY_REG_b_out(27),
      O => \temp_reg_reg[28]_0\
    );
\temp_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(29),
      Q => \^q\(29),
      R => '0'
    );
\temp_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(30),
      Q => \^q\(30),
      R => '0'
    );
\temp_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => KEY_REG_b_out(31),
      Q => \^q\(31),
      R => '0'
    );
\temp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(4),
      Q => KEY_REG_b_out(6),
      R => '0'
    );
\temp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(5),
      Q => KEY_REG_b_out(7),
      R => '0'
    );
\temp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => \FSM_sequential_current_state_reg[0]_8\,
      Q => KEY_REG_b_out(8),
      R => '0'
    );
\temp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\,
      D => D(6),
      Q => KEY_REG_b_out(9),
      R => '0'
    );
\xlnx_opt_LUT_temp_reg_reg[0]_CE_cooolgate_en_gate_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF10000"
    )
        port map (
      I0 => pwropt_3,
      I1 => pwropt_2,
      I2 => pwropt_1,
      I3 => pwropt,
      I4 => KEY_REG_CE,
      O => \temp_reg_reg[0]_CE_cooolgate_en_sig_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Simeck_64_128_parallel is
  port (
    \current_state_reg[1]\ : out STD_LOGIC;
    \current_state_reg[2]\ : out STD_LOGIC;
    \temp_reg_reg[0]\ : out STD_LOGIC;
    \temp_reg_reg[30]\ : out STD_LOGIC;
    \temp_reg_reg[26]\ : out STD_LOGIC;
    \temp_reg_reg[24]\ : out STD_LOGIC;
    \temp_reg_reg[19]\ : out STD_LOGIC;
    \temp_reg_reg[17]\ : out STD_LOGIC;
    \temp_reg_reg[16]\ : out STD_LOGIC;
    \temp_reg_reg[8]\ : out STD_LOGIC;
    \temp_reg_reg[3]\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_IBUF : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \current_state_reg[1]_0\ : in STD_LOGIC;
    \current_state_reg[1]_1\ : in STD_LOGIC;
    \current_state_reg[2]_0\ : in STD_LOGIC;
    \current_state_reg[2]_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end Simeck_64_128_parallel;

architecture STRUCTURE of Simeck_64_128_parallel is
  signal INST_LEFT_KEY_REG_n_0 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_1 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_10 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_11 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_12 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_13 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_14 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_15 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_16 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_17 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_18 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_19 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_2 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_20 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_21 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_22 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_23 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_24 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_25 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_26 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_27 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_28 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_29 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_3 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_30 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_31 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_32 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_4 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_5 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_6 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_7 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_8 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_9 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_0 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_33 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_34 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_35 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_36 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_37 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_38 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_39 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_40 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_41 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_42 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_43 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_44 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_45 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_46 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_47 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_48 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_49 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_50 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_51 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_52 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_53 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_54 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_55 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_56 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_57 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_58 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_59 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_60 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_61 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_62 : STD_LOGIC;
  signal INST_RIGHT_KEY_REG_n_63 : STD_LOGIC;
  signal INST_SHORT_LFSR_n_2 : STD_LOGIC;
  signal INST_SHORT_LFSR_n_3 : STD_LOGIC;
  signal INST_SHORT_LFSR_n_4 : STD_LOGIC;
  signal KEY_REG_CE : STD_LOGIC;
  signal KEY_REG_a_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal current_state_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state_0 : signal is "yes";
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pwropt : STD_LOGIC;
  signal pwropt_1 : STD_LOGIC;
  signal \^temp_reg_reg[0]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "loading:00,processing:10,end_encrypt:11,idle:01";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "loading:00,processing:10,end_encrypt:11,idle:01";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
begin
  \temp_reg_reg[0]\ <= \^temp_reg_reg[0]\;
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_SHORT_LFSR_n_4,
      Q => current_state_0(0),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_SHORT_LFSR_n_3,
      Q => current_state_0(1),
      R => '0'
    );
INST_IS_REG: entity work.parallel_tapped_shift_reg
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => INST_SHORT_LFSR_n_2,
      Q(1 downto 0) => Q(1 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => \current_state_reg[1]\,
      \current_state_reg[1]_0\ => \current_state_reg[1]_0\,
      \current_state_reg[1]_1\ => \current_state_reg[1]_1\,
      \current_state_reg[2]\ => \current_state_reg[2]\,
      \out\(1 downto 0) => current_state_0(1 downto 0),
      rst_IBUF => rst_IBUF,
      start_IBUF => start_IBUF,
      \temp_reg_reg[0]_0\ => \^temp_reg_reg[0]\,
      \temp_reg_reg[16]_0\ => \temp_reg_reg[16]\,
      \temp_reg_reg[17]_0\ => \temp_reg_reg[17]\,
      \temp_reg_reg[19]_0\ => \temp_reg_reg[19]\,
      \temp_reg_reg[24]_0\ => \temp_reg_reg[24]\,
      \temp_reg_reg[26]_0\ => \temp_reg_reg[26]\,
      \temp_reg_reg[30]_0\ => \temp_reg_reg[30]\,
      \temp_reg_reg[3]_0\ => \temp_reg_reg[3]\,
      \temp_reg_reg[63]_0\(31 downto 0) => KEY_REG_a_out(31 downto 0),
      \temp_reg_reg[8]_0\ => \temp_reg_reg[8]\
    );
INST_LEFT_KEY_REG: entity work.normal_shift_reg
     port map (
      KEY_REG_CE => KEY_REG_CE,
      Q(19) => INST_LEFT_KEY_REG_n_13,
      Q(18) => INST_LEFT_KEY_REG_n_14,
      Q(17) => INST_LEFT_KEY_REG_n_15,
      Q(16) => INST_LEFT_KEY_REG_n_16,
      Q(15) => INST_LEFT_KEY_REG_n_17,
      Q(14) => INST_LEFT_KEY_REG_n_18,
      Q(13) => INST_LEFT_KEY_REG_n_19,
      Q(12) => INST_LEFT_KEY_REG_n_20,
      Q(11) => INST_LEFT_KEY_REG_n_21,
      Q(10) => INST_LEFT_KEY_REG_n_22,
      Q(9) => INST_LEFT_KEY_REG_n_23,
      Q(8) => INST_LEFT_KEY_REG_n_24,
      Q(7) => INST_LEFT_KEY_REG_n_25,
      Q(6) => INST_LEFT_KEY_REG_n_26,
      Q(5) => INST_LEFT_KEY_REG_n_27,
      Q(4) => INST_LEFT_KEY_REG_n_28,
      Q(3) => INST_LEFT_KEY_REG_n_29,
      Q(2) => INST_LEFT_KEY_REG_n_30,
      Q(1) => INST_LEFT_KEY_REG_n_31,
      Q(0) => INST_LEFT_KEY_REG_n_32,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      current_state(1) => current_state(2),
      current_state(0) => current_state(0),
      \out\(1 downto 0) => current_state_0(1 downto 0),
      \temp_reg_reg[0]_0\ => INST_RIGHT_KEY_REG_n_60,
      \temp_reg_reg[10]_0\ => INST_RIGHT_KEY_REG_n_53,
      \temp_reg_reg[11]\ => INST_LEFT_KEY_REG_n_8,
      \temp_reg_reg[11]_0\ => INST_RIGHT_KEY_REG_n_52,
      \temp_reg_reg[12]\ => INST_LEFT_KEY_REG_n_7,
      \temp_reg_reg[12]_0\ => INST_RIGHT_KEY_REG_n_37,
      \temp_reg_reg[13]_0\ => INST_RIGHT_KEY_REG_n_51,
      \temp_reg_reg[16]_0\ => INST_RIGHT_KEY_REG_n_50,
      \temp_reg_reg[17]\ => INST_LEFT_KEY_REG_n_6,
      \temp_reg_reg[17]_0\ => INST_RIGHT_KEY_REG_n_49,
      \temp_reg_reg[18]_0\ => INST_RIGHT_KEY_REG_n_48,
      \temp_reg_reg[19]\ => INST_LEFT_KEY_REG_n_5,
      \temp_reg_reg[19]_0\ => INST_RIGHT_KEY_REG_n_40,
      \temp_reg_reg[1]_0\ => INST_RIGHT_KEY_REG_n_59,
      \temp_reg_reg[1]_1\ => INST_RIGHT_KEY_REG_n_62,
      \temp_reg_reg[20]\ => INST_LEFT_KEY_REG_n_4,
      \temp_reg_reg[20]_0\ => INST_RIGHT_KEY_REG_n_41,
      \temp_reg_reg[21]_0\ => INST_RIGHT_KEY_REG_n_47,
      \temp_reg_reg[24]\ => INST_LEFT_KEY_REG_n_3,
      \temp_reg_reg[24]_0\ => INST_RIGHT_KEY_REG_n_46,
      \temp_reg_reg[25]\ => INST_LEFT_KEY_REG_n_2,
      \temp_reg_reg[25]_0\ => INST_RIGHT_KEY_REG_n_45,
      \temp_reg_reg[27]\ => INST_LEFT_KEY_REG_n_1,
      \temp_reg_reg[27]_0\ => INST_RIGHT_KEY_REG_n_63,
      \temp_reg_reg[28]\ => INST_LEFT_KEY_REG_n_0,
      \temp_reg_reg[2]_0\ => INST_RIGHT_KEY_REG_n_58,
      \temp_reg_reg[2]_1\ => INST_RIGHT_KEY_REG_n_61,
      \temp_reg_reg[31]_0\ => INST_RIGHT_KEY_REG_n_44,
      \temp_reg_reg[35]\ => INST_RIGHT_KEY_REG_n_0,
      \temp_reg_reg[36]\ => INST_RIGHT_KEY_REG_n_33,
      \temp_reg_reg[3]\ => INST_LEFT_KEY_REG_n_11,
      \temp_reg_reg[3]_0\ => INST_RIGHT_KEY_REG_n_34,
      \temp_reg_reg[43]\ => INST_RIGHT_KEY_REG_n_35,
      \temp_reg_reg[44]\ => INST_RIGHT_KEY_REG_n_36,
      \temp_reg_reg[4]\ => INST_LEFT_KEY_REG_n_10,
      \temp_reg_reg[4]_0\ => INST_RIGHT_KEY_REG_n_57,
      \temp_reg_reg[51]\ => INST_RIGHT_KEY_REG_n_38,
      \temp_reg_reg[52]\ => INST_RIGHT_KEY_REG_n_39,
      \temp_reg_reg[59]\ => INST_RIGHT_KEY_REG_n_42,
      \temp_reg_reg[5]_0\ => INST_RIGHT_KEY_REG_n_56,
      \temp_reg_reg[60]\ => INST_RIGHT_KEY_REG_n_43,
      \temp_reg_reg[8]\ => INST_LEFT_KEY_REG_n_9,
      \temp_reg_reg[8]_0\ => INST_LEFT_KEY_REG_n_12,
      \temp_reg_reg[8]_1\ => INST_RIGHT_KEY_REG_n_55,
      \temp_reg_reg[9]_0\ => INST_RIGHT_KEY_REG_n_54
    );
INST_RIGHT_KEY_REG: entity work.parallel_tapped_shift_reg_0
     port map (
      D(19) => INST_LEFT_KEY_REG_n_13,
      D(18) => INST_LEFT_KEY_REG_n_14,
      D(17) => INST_LEFT_KEY_REG_n_15,
      D(16) => INST_LEFT_KEY_REG_n_16,
      D(15) => INST_LEFT_KEY_REG_n_17,
      D(14) => INST_LEFT_KEY_REG_n_18,
      D(13) => INST_LEFT_KEY_REG_n_19,
      D(12) => INST_LEFT_KEY_REG_n_20,
      D(11) => INST_LEFT_KEY_REG_n_21,
      D(10) => INST_LEFT_KEY_REG_n_22,
      D(9) => INST_LEFT_KEY_REG_n_23,
      D(8) => INST_LEFT_KEY_REG_n_24,
      D(7) => INST_LEFT_KEY_REG_n_25,
      D(6) => INST_LEFT_KEY_REG_n_26,
      D(5) => INST_LEFT_KEY_REG_n_27,
      D(4) => INST_LEFT_KEY_REG_n_28,
      D(3) => INST_LEFT_KEY_REG_n_29,
      D(2) => INST_LEFT_KEY_REG_n_30,
      D(1) => INST_LEFT_KEY_REG_n_31,
      D(0) => INST_LEFT_KEY_REG_n_32,
      \FSM_sequential_current_state_reg[0]\ => INST_LEFT_KEY_REG_n_0,
      \FSM_sequential_current_state_reg[0]_0\ => INST_LEFT_KEY_REG_n_1,
      \FSM_sequential_current_state_reg[0]_1\ => INST_LEFT_KEY_REG_n_2,
      \FSM_sequential_current_state_reg[0]_10\ => INST_LEFT_KEY_REG_n_11,
      \FSM_sequential_current_state_reg[0]_11\ => \^temp_reg_reg[0]\,
      \FSM_sequential_current_state_reg[0]_2\ => INST_LEFT_KEY_REG_n_3,
      \FSM_sequential_current_state_reg[0]_3\ => INST_LEFT_KEY_REG_n_4,
      \FSM_sequential_current_state_reg[0]_4\ => INST_LEFT_KEY_REG_n_5,
      \FSM_sequential_current_state_reg[0]_5\ => INST_LEFT_KEY_REG_n_6,
      \FSM_sequential_current_state_reg[0]_6\ => INST_LEFT_KEY_REG_n_7,
      \FSM_sequential_current_state_reg[0]_7\ => INST_LEFT_KEY_REG_n_8,
      \FSM_sequential_current_state_reg[0]_8\ => INST_LEFT_KEY_REG_n_9,
      \FSM_sequential_current_state_reg[0]_9\ => INST_LEFT_KEY_REG_n_10,
      KEY_REG_CE => KEY_REG_CE,
      Q(31 downto 0) => KEY_REG_a_out(31 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \current_state_reg[2]\ => \current_state_reg[2]_0\,
      \current_state_reg[2]_0\ => \current_state_reg[2]_1\,
      \current_state_reg[2]_1\ => INST_LEFT_KEY_REG_n_12,
      \lfsr_internal_reg[5]\(0) => lfsr_parallel_out(5),
      pwropt => INST_SHORT_LFSR_n_4,
      pwropt_1 => INST_SHORT_LFSR_n_3,
      pwropt_2 => pwropt,
      pwropt_3 => pwropt_1,
      \temp_reg_reg[0]_0\ => INST_RIGHT_KEY_REG_n_63,
      \temp_reg_reg[10]_0\ => INST_RIGHT_KEY_REG_n_56,
      \temp_reg_reg[11]_0\ => INST_RIGHT_KEY_REG_n_35,
      \temp_reg_reg[12]_0\ => INST_RIGHT_KEY_REG_n_36,
      \temp_reg_reg[13]_0\ => INST_RIGHT_KEY_REG_n_55,
      \temp_reg_reg[14]_0\ => INST_RIGHT_KEY_REG_n_54,
      \temp_reg_reg[15]_0\ => INST_RIGHT_KEY_REG_n_53,
      \temp_reg_reg[16]_0\ => INST_RIGHT_KEY_REG_n_52,
      \temp_reg_reg[17]_0\ => INST_RIGHT_KEY_REG_n_37,
      \temp_reg_reg[18]_0\ => INST_RIGHT_KEY_REG_n_51,
      \temp_reg_reg[19]_0\ => INST_RIGHT_KEY_REG_n_38,
      \temp_reg_reg[1]_0\ => INST_RIGHT_KEY_REG_n_62,
      \temp_reg_reg[20]_0\ => INST_RIGHT_KEY_REG_n_39,
      \temp_reg_reg[21]_0\ => INST_RIGHT_KEY_REG_n_50,
      \temp_reg_reg[22]_0\ => INST_RIGHT_KEY_REG_n_49,
      \temp_reg_reg[23]_0\ => INST_RIGHT_KEY_REG_n_48,
      \temp_reg_reg[24]_0\ => INST_RIGHT_KEY_REG_n_40,
      \temp_reg_reg[25]_0\ => INST_RIGHT_KEY_REG_n_41,
      \temp_reg_reg[26]_0\ => INST_RIGHT_KEY_REG_n_47,
      \temp_reg_reg[27]_0\ => INST_RIGHT_KEY_REG_n_42,
      \temp_reg_reg[28]_0\ => INST_RIGHT_KEY_REG_n_43,
      \temp_reg_reg[29]_0\ => INST_RIGHT_KEY_REG_n_46,
      \temp_reg_reg[2]_0\ => INST_RIGHT_KEY_REG_n_61,
      \temp_reg_reg[30]_0\ => INST_RIGHT_KEY_REG_n_45,
      \temp_reg_reg[31]_0\ => INST_RIGHT_KEY_REG_n_44,
      \temp_reg_reg[3]_0\ => INST_RIGHT_KEY_REG_n_0,
      \temp_reg_reg[4]_0\ => INST_RIGHT_KEY_REG_n_33,
      \temp_reg_reg[5]_0\ => INST_RIGHT_KEY_REG_n_60,
      \temp_reg_reg[6]_0\ => INST_RIGHT_KEY_REG_n_59,
      \temp_reg_reg[7]_0\ => INST_RIGHT_KEY_REG_n_58,
      \temp_reg_reg[8]_0\ => INST_RIGHT_KEY_REG_n_34,
      \temp_reg_reg[9]_0\ => INST_RIGHT_KEY_REG_n_57
    );
INST_SHORT_LFSR: entity work.lfsr
     port map (
      E(0) => INST_SHORT_LFSR_n_2,
      \FSM_sequential_current_state_reg[0]\ => INST_SHORT_LFSR_n_4,
      \FSM_sequential_current_state_reg[1]\ => INST_SHORT_LFSR_n_3,
      KEY_REG_CE => KEY_REG_CE,
      Q(0) => lfsr_parallel_out(5),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      current_state(2 downto 0) => current_state(2 downto 0),
      \out\(1 downto 0) => current_state_0(1 downto 0),
      pwropt => pwropt,
      pwropt_1 => pwropt_1
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
  attribute Datapath of Testing_IP : entity is 32;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Testing_IP : entity is "38a063d9";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of Testing_IP : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of Testing_IP : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of Testing_IP : entity is 0;
end Testing_IP;

architecture STRUCTURE of Testing_IP is
  signal INST_CNT_n_0 : STD_LOGIC;
  signal INST_CNT_n_12 : STD_LOGIC;
  signal INST_CNT_n_13 : STD_LOGIC;
  signal INST_CNT_n_14 : STD_LOGIC;
  signal INST_CNT_n_3 : STD_LOGIC;
  signal Simeck_DUT_n_0 : STD_LOGIC;
  signal Simeck_DUT_n_1 : STD_LOGIC;
  signal Simeck_DUT_n_10 : STD_LOGIC;
  signal Simeck_DUT_n_2 : STD_LOGIC;
  signal Simeck_DUT_n_3 : STD_LOGIC;
  signal Simeck_DUT_n_4 : STD_LOGIC;
  signal Simeck_DUT_n_5 : STD_LOGIC;
  signal Simeck_DUT_n_6 : STD_LOGIC;
  signal Simeck_DUT_n_7 : STD_LOGIC;
  signal Simeck_DUT_n_8 : STD_LOGIC;
  signal Simeck_DUT_n_9 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal cnt_internal_value : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal led_out_OBUF : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 30 downto 3 );
  signal rst_IBUF : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
begin
INST_CNT: entity work.CNT
     port map (
      D(7) => p_0_in(30),
      D(6) => p_0_in(26),
      D(5) => p_0_in(24),
      D(4) => p_0_in(19),
      D(3 downto 2) => p_0_in(17 downto 16),
      D(1) => p_0_in(8),
      D(0) => p_0_in(3),
      \FSM_sequential_current_state_reg[0]\ => Simeck_DUT_n_2,
      Q(1 downto 0) => cnt_internal_value(1 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[0]\ => INST_CNT_n_0,
      \current_state_reg[2]\ => INST_CNT_n_3,
      \current_state_reg[2]_0\ => INST_CNT_n_14,
      rst_IBUF => rst_IBUF,
      \temp_reg_reg[16]\ => Simeck_DUT_n_8,
      \temp_reg_reg[17]\ => Simeck_DUT_n_7,
      \temp_reg_reg[19]\ => Simeck_DUT_n_6,
      \temp_reg_reg[24]\ => Simeck_DUT_n_5,
      \temp_reg_reg[26]\ => Simeck_DUT_n_4,
      \temp_reg_reg[27]\ => INST_CNT_n_13,
      \temp_reg_reg[28]\ => INST_CNT_n_12,
      \temp_reg_reg[30]\ => Simeck_DUT_n_10,
      \temp_reg_reg[30]_0\ => Simeck_DUT_n_3,
      \temp_reg_reg[8]\ => Simeck_DUT_n_9
    );
Simeck_DUT: entity work.Simeck_64_128_parallel
     port map (
      D(7) => p_0_in(30),
      D(6) => p_0_in(26),
      D(5) => p_0_in(24),
      D(4) => p_0_in(19),
      D(3 downto 2) => p_0_in(17 downto 16),
      D(1) => p_0_in(8),
      D(0) => p_0_in(3),
      Q(1 downto 0) => cnt_internal_value(1 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => Simeck_DUT_n_0,
      \current_state_reg[1]_0\ => INST_CNT_n_14,
      \current_state_reg[1]_1\ => INST_CNT_n_3,
      \current_state_reg[2]\ => Simeck_DUT_n_1,
      \current_state_reg[2]_0\ => INST_CNT_n_13,
      \current_state_reg[2]_1\ => INST_CNT_n_12,
      rst_IBUF => rst_IBUF,
      start_IBUF => start_IBUF,
      \temp_reg_reg[0]\ => Simeck_DUT_n_2,
      \temp_reg_reg[16]\ => Simeck_DUT_n_8,
      \temp_reg_reg[17]\ => Simeck_DUT_n_7,
      \temp_reg_reg[19]\ => Simeck_DUT_n_6,
      \temp_reg_reg[24]\ => Simeck_DUT_n_5,
      \temp_reg_reg[26]\ => Simeck_DUT_n_4,
      \temp_reg_reg[30]\ => Simeck_DUT_n_3,
      \temp_reg_reg[3]\ => Simeck_DUT_n_10,
      \temp_reg_reg[8]\ => Simeck_DUT_n_9
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
\current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_CNT_n_0,
      Q => current_state(0),
      R => '0'
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Simeck_DUT_n_0,
      Q => current_state(1),
      R => '0'
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Simeck_DUT_n_1,
      Q => current_state(2),
      R => '0'
    );
led_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => led_out_OBUF,
      O => led_out
    );
led_out_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      O => led_out_OBUF
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
