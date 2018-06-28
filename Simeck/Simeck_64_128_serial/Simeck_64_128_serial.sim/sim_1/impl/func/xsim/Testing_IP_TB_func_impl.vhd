-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Thu Jun 28 20:05:56 2018
-- Host        : sam-xubuntu running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/sam/Desktop/VIVADO_git_PSI_ciphers/VIVADO-lightweight-crypto-project/Simeck/Simeck_64_128_serial/Simeck_64_128_serial.sim/sim_1/impl/func/xsim/Testing_IP_TB_func_impl.vhd
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
    \temp_reg_reg[31]\ : out STD_LOGIC;
    \temp_reg_reg[31]_0\ : out STD_LOGIC;
    \temp_reg_reg[31]_1\ : out STD_LOGIC;
    lfsr_change_reg : out STD_LOGIC;
    B_KEY_REG_OUT : in STD_LOGIC;
    KEY_REG_an5_out : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    KEY_REG_bn5_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
end CNT;

architecture STRUCTURE of CNT is
  signal \cnt_internal_value[2]_i_1__0_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rnd_const_out : STD_LOGIC;
  signal serial_cnt_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^temp_reg_reg[31]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_internal_value[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_internal_value[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_internal_value[2]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_internal_value[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_internal_value[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of lfsr_change_i_1 : label is "soft_lutpair7";
begin
  \temp_reg_reg[31]_0\ <= \^temp_reg_reg[31]_0\;
\cnt_internal_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_cnt_out(0),
      O => plusOp(0)
    );
\cnt_internal_value[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => serial_cnt_out(0),
      I1 => serial_cnt_out(1),
      O => plusOp(1)
    );
\cnt_internal_value[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => serial_cnt_out(0),
      I1 => serial_cnt_out(1),
      I2 => serial_cnt_out(2),
      O => \cnt_internal_value[2]_i_1__0_n_0\
    );
\cnt_internal_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => serial_cnt_out(1),
      I1 => serial_cnt_out(0),
      I2 => serial_cnt_out(2),
      I3 => serial_cnt_out(3),
      O => plusOp(3)
    );
\cnt_internal_value[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => serial_cnt_out(2),
      I1 => serial_cnt_out(0),
      I2 => serial_cnt_out(1),
      I3 => serial_cnt_out(3),
      I4 => serial_cnt_out(4),
      O => plusOp(4)
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => \out\(0),
      D => plusOp(0),
      Q => serial_cnt_out(0)
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => \out\(0),
      D => plusOp(1),
      Q => serial_cnt_out(1)
    );
\cnt_internal_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => \out\(0),
      D => \cnt_internal_value[2]_i_1__0_n_0\,
      Q => serial_cnt_out(2)
    );
\cnt_internal_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => \out\(0),
      D => plusOp(3),
      Q => serial_cnt_out(3)
    );
\cnt_internal_value_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => \out\(0),
      D => plusOp(4),
      Q => serial_cnt_out(4)
    );
lfsr_change_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => serial_cnt_out(3),
      I1 => serial_cnt_out(1),
      I2 => serial_cnt_out(0),
      I3 => serial_cnt_out(4),
      I4 => serial_cnt_out(2),
      O => lfsr_change_reg
    );
\temp_reg[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010111"
    )
        port map (
      I0 => serial_cnt_out(3),
      I1 => serial_cnt_out(4),
      I2 => serial_cnt_out(2),
      I3 => serial_cnt_out(1),
      I4 => serial_cnt_out(0),
      I5 => \out\(0),
      O => \^temp_reg_reg[31]_0\
    );
\temp_reg[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => serial_cnt_out(2),
      I1 => serial_cnt_out(4),
      I2 => serial_cnt_out(0),
      I3 => serial_cnt_out(1),
      I4 => serial_cnt_out(3),
      I5 => \out\(0),
      O => \temp_reg_reg[31]_1\
    );
\temp_reg_reg[32]_srl32_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666A6A6AAA6A6A6A"
    )
        port map (
      I0 => rnd_const_out,
      I1 => B_KEY_REG_OUT,
      I2 => KEY_REG_an5_out,
      I3 => \out\(1),
      I4 => \^temp_reg_reg[31]_0\,
      I5 => KEY_REG_bn5_out,
      O => \temp_reg_reg[31]\
    );
\temp_reg_reg[32]_srl32_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFFFE"
    )
        port map (
      I0 => serial_cnt_out(3),
      I1 => serial_cnt_out(4),
      I2 => serial_cnt_out(2),
      I3 => serial_cnt_out(1),
      I4 => serial_cnt_out(0),
      I5 => Q(0),
      O => rnd_const_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \CNT__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg_reg[31]\ : out STD_LOGIC;
    \temp_reg_reg[31]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[3]\ : out STD_LOGIC;
    R : out STD_LOGIC;
    \FSM_onehot_current_state_reg[5]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \CNT__parameterized0\ : entity is "CNT";
end \CNT__parameterized0\;

architecture STRUCTURE of \CNT__parameterized0\ is
  signal \FSM_onehot_current_state[6]_i_5_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[3]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_ce_W : STD_LOGIC;
  signal \cnt_internal_value[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[6]_i_4_n_0\ : STD_LOGIC;
  signal cnt_out_W : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cnt_rst_W : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \temp_reg_reg[32]_srl32_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[32]_srl32_i_7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_internal_value[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_internal_value[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_internal_value[3]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_internal_value[4]_i_1__0\ : label is "soft_lutpair0";
begin
  \FSM_onehot_current_state_reg[3]\ <= \^fsm_onehot_current_state_reg[3]\;
  Q(0) <= \^q\(0);
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(0),
      I1 => eqOp,
      I2 => \out\(1),
      O => D(0)
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => eqOp,
      I1 => \out\(1),
      I2 => \^fsm_onehot_current_state_reg[3]\,
      I3 => \out\(2),
      O => D(1)
    );
\FSM_onehot_current_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_out_W(4),
      I1 => \^q\(0),
      I2 => cnt_out_W(5),
      I3 => \cnt_internal_value[6]_i_4_n_0\,
      I4 => cnt_out_W(2),
      I5 => cnt_out_W(3),
      O => eqOp
    );
\FSM_onehot_current_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => cnt_out_W(5),
      I1 => cnt_out_W(4),
      I2 => \^q\(0),
      I3 => cnt_out_W(2),
      I4 => cnt_out_W(3),
      I5 => \cnt_internal_value[6]_i_4_n_0\,
      O => \^fsm_onehot_current_state_reg[3]\
    );
\FSM_onehot_current_state[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(0),
      I1 => cnt_out_W(5),
      I2 => cnt_out_W(0),
      I3 => \FSM_onehot_current_state[6]_i_5_n_0\,
      O => \FSM_onehot_current_state_reg[5]\
    );
\FSM_onehot_current_state[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F435620971EF5FB6"
    )
        port map (
      I0 => cnt_out_W(3),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(0),
      I3 => cnt_out_W(2),
      I4 => cnt_out_W(4),
      I5 => cnt_out_W(5),
      O => R
    );
\FSM_onehot_current_state[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_out_W(2),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(4),
      I3 => cnt_out_W(3),
      O => \FSM_onehot_current_state[6]_i_5_n_0\
    );
\cnt_internal_value[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_out_W(0),
      O => \cnt_internal_value[0]_i_1__0_n_0\
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
\cnt_internal_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_out_W(0),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(2),
      O => \cnt_internal_value[2]_i_1_n_0\
    );
\cnt_internal_value[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_out_W(1),
      I1 => cnt_out_W(0),
      I2 => cnt_out_W(2),
      I3 => cnt_out_W(3),
      O => \cnt_internal_value[3]_i_1__0_n_0\
    );
\cnt_internal_value[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_out_W(2),
      I1 => cnt_out_W(0),
      I2 => cnt_out_W(1),
      I3 => cnt_out_W(3),
      I4 => cnt_out_W(4),
      O => \cnt_internal_value[4]_i_1__0_n_0\
    );
\cnt_internal_value[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_out_W(3),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(0),
      I3 => cnt_out_W(2),
      I4 => cnt_out_W(4),
      I5 => cnt_out_W(5),
      O => \cnt_internal_value[5]_i_1_n_0\
    );
\cnt_internal_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(1),
      I2 => \out\(4),
      O => cnt_ce_W
    );
\cnt_internal_value[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_out_W(4),
      I1 => cnt_out_W(2),
      I2 => \cnt_internal_value[6]_i_4_n_0\,
      I3 => cnt_out_W(3),
      I4 => cnt_out_W(5),
      I5 => \^q\(0),
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
      INIT => X"8"
    )
        port map (
      I0 => cnt_out_W(1),
      I1 => cnt_out_W(0),
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
      D => \cnt_internal_value[0]_i_1__0_n_0\,
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
      D => \cnt_internal_value[2]_i_1_n_0\,
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
      Q => \^q\(0)
    );
\temp_reg[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF3A18BF0197A9"
    )
        port map (
      I0 => cnt_out_W(5),
      I1 => cnt_out_W(4),
      I2 => cnt_out_W(3),
      I3 => cnt_out_W(1),
      I4 => cnt_out_W(2),
      I5 => cnt_out_W(0),
      O => \temp_reg_reg[31]\
    );
\temp_reg_reg[32]_srl32_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp_reg_reg[32]_srl32_i_6_n_0\,
      I1 => \temp_reg_reg[32]_srl32_i_7_n_0\,
      O => \temp_reg_reg[31]_0\,
      S => \^q\(0)
    );
\temp_reg_reg[32]_srl32_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000CC00F0"
    )
        port map (
      I0 => cnt_out_W(5),
      I1 => cnt_out_W(4),
      I2 => cnt_out_W(3),
      I3 => cnt_out_W(2),
      I4 => cnt_out_W(0),
      I5 => cnt_out_W(1),
      O => \temp_reg_reg[32]_srl32_i_6_n_0\
    );
\temp_reg_reg[32]_srl32_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00CC0000FFF0"
    )
        port map (
      I0 => cnt_out_W(5),
      I1 => cnt_out_W(4),
      I2 => cnt_out_W(3),
      I3 => cnt_out_W(2),
      I4 => cnt_out_W(1),
      I5 => cnt_out_W(0),
      O => \temp_reg_reg[32]_srl32_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    IS_ce : out STD_LOGIC;
    KEY_REG_CE : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end lfsr;

architecture STRUCTURE of lfsr is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \temp_reg[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \temp_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[31]_i_4_n_0\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCB8FFB8"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \out\(1),
      I2 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I3 => \out\(0),
      I4 => \FSM_onehot_current_state_reg[3]\(0),
      O => D(0)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => lfsr_parallel_out(2),
      I2 => lfsr_parallel_out(1),
      I3 => lfsr_parallel_out(0),
      I4 => lfsr_parallel_out(4),
      I5 => lfsr_parallel_out(3),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => lfsr_parallel_out(0),
      I1 => lfsr_parallel_out(1),
      I2 => lfsr_parallel_out(4),
      I3 => \^q\(0),
      I4 => lfsr_parallel_out(3),
      I5 => lfsr_parallel_out(2),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\long_lfsr.lfsr_internal[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => lfsr_parallel_out(4),
      O => p_3_out(0)
    );
\long_lfsr.lfsr_internal[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      O => \^e\(0)
    );
\long_lfsr.lfsr_internal_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => p_3_out(0),
      PRE => \out\(0),
      Q => lfsr_parallel_out(0)
    );
\long_lfsr.lfsr_internal_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => lfsr_parallel_out(0),
      PRE => \out\(0),
      Q => lfsr_parallel_out(1)
    );
\long_lfsr.lfsr_internal_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => lfsr_parallel_out(1),
      PRE => \out\(0),
      Q => lfsr_parallel_out(2)
    );
\long_lfsr.lfsr_internal_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => lfsr_parallel_out(2),
      PRE => \out\(0),
      Q => lfsr_parallel_out(3)
    );
\long_lfsr.lfsr_internal_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => lfsr_parallel_out(3),
      PRE => \out\(0),
      Q => lfsr_parallel_out(4)
    );
\long_lfsr.lfsr_internal_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => lfsr_parallel_out(4),
      PRE => \out\(0),
      Q => \^q\(0)
    );
\temp_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCB8"
    )
        port map (
      I0 => \temp_reg[31]_i_3_n_0\,
      I1 => \out\(1),
      I2 => \temp_reg[31]_i_4_n_0\,
      I3 => \out\(0),
      O => IS_ce
    );
\temp_reg[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \out\(0),
      I1 => \temp_reg[31]_i_2__0_n_0\,
      I2 => \out\(1),
      O => KEY_REG_CE
    );
\temp_reg[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => lfsr_parallel_out(3),
      I1 => lfsr_parallel_out(4),
      I2 => \^q\(0),
      I3 => lfsr_parallel_out(2),
      I4 => lfsr_parallel_out(1),
      I5 => lfsr_parallel_out(0),
      O => \temp_reg[31]_i_2__0_n_0\
    );
\temp_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => lfsr_parallel_out(1),
      I1 => lfsr_parallel_out(4),
      I2 => \^q\(0),
      I3 => lfsr_parallel_out(2),
      I4 => lfsr_parallel_out(3),
      I5 => lfsr_parallel_out(0),
      O => \temp_reg[31]_i_3_n_0\
    );
\temp_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7F3F"
    )
        port map (
      I0 => lfsr_parallel_out(3),
      I1 => lfsr_parallel_out(4),
      I2 => \^q\(0),
      I3 => lfsr_parallel_out(2),
      I4 => lfsr_parallel_out(1),
      I5 => lfsr_parallel_out(0),
      O => \temp_reg[31]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity normal_shift_reg is
  port (
    \temp_reg_reg[31]\ : out STD_LOGIC;
    KEY_REG_CE : in STD_LOGIC;
    KEY_INPUT_MUX_OUT : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end normal_shift_reg;

architecture STRUCTURE of normal_shift_reg is
  signal \temp_reg_reg[32]_srl32_n_1\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[32]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[0]_srl32\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[0]_srl32\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[0]_srl32 ";
  attribute srl_bus_name of \temp_reg_reg[32]_srl32\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[32]_srl32\ : label is "\Simeck_DUT/INST_LEFT_KEY_REG/temp_reg_reg[32]_srl32 ";
begin
\temp_reg_reg[0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[32]_srl32_n_1\,
      Q => \temp_reg_reg[31]\,
      Q31 => \NLW_temp_reg_reg[0]_srl32_Q31_UNCONNECTED\
    );
\temp_reg_reg[32]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => KEY_INPUT_MUX_OUT,
      Q => \NLW_temp_reg_reg[32]_srl32_Q_UNCONNECTED\,
      Q31 => \temp_reg_reg[32]_srl32_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tapped_shift_reg is
  port (
    KEY_REG_an5_out : out STD_LOGIC;
    A_KEY_REG_OUT : out STD_LOGIC;
    KEY_INPUT_MUX_OUT : out STD_LOGIC;
    KEY_REG_CE : in STD_LOGIC;
    B_KEY_REG_OUT : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    KEY_REG_bn1_out : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_current_state_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_internal_value_reg[6]\ : in STD_LOGIC
  );
end tapped_shift_reg;

architecture STRUCTURE of tapped_shift_reg is
  signal \^a_key_reg_out\ : STD_LOGIC;
  signal KEY_REG_an1_out : STD_LOGIC;
  signal \^key_reg_an5_out\ : STD_LOGIC;
  signal \temp_reg_reg[1]_srl26_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[28]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[32]_srl32_i_2_n_0\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[1]_srl26 ";
  attribute srl_bus_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_A_KEY_REG/temp_reg_reg[28]_srl3 ";
begin
  A_KEY_REG_OUT <= \^a_key_reg_out\;
  KEY_REG_an5_out <= \^key_reg_an5_out\;
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[1]_srl26_n_0\,
      Q => \^a_key_reg_out\,
      R => '0'
    );
\temp_reg_reg[1]_srl26\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11001",
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \^key_reg_an5_out\,
      Q => \temp_reg_reg[1]_srl26_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[28]_srl3_n_0\,
      Q => \^key_reg_an5_out\,
      R => '0'
    );
\temp_reg_reg[28]_srl3\: unisim.vcomponents.SRL16E
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
      D => KEY_REG_an1_out,
      Q => \temp_reg_reg[28]_srl3_n_0\
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => B_KEY_REG_OUT,
      Q => KEY_REG_an1_out,
      R => '0'
    );
\temp_reg_reg[32]_srl32_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F606060"
    )
        port map (
      I0 => \temp_reg_reg[32]_srl32_i_2_n_0\,
      I1 => \temp_reg_reg[0]_0\,
      I2 => \out\(0),
      I3 => \FSM_onehot_current_state_reg[2]\(0),
      I4 => \cnt_internal_value_reg[6]\,
      O => KEY_INPUT_MUX_OUT
    );
\temp_reg_reg[32]_srl32_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65556AAA"
    )
        port map (
      I0 => \^a_key_reg_out\,
      I1 => KEY_REG_bn1_out,
      I2 => \cnt_internal_value_reg[2]\,
      I3 => \out\(0),
      I4 => KEY_REG_an1_out,
      O => \temp_reg_reg[32]_srl32_i_2_n_0\
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
  signal \temp_reg_reg[1]_srl26_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[28]_srl3_n_0\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[1]_srl26 ";
  attribute srl_bus_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_B_KEY_REG/temp_reg_reg[28]_srl3 ";
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
      D => \temp_reg_reg[1]_srl26_n_0\,
      Q => B_KEY_REG_OUT,
      R => '0'
    );
\temp_reg_reg[1]_srl26\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11001",
      CE => KEY_REG_CE,
      CLK => clk_IBUF_BUFG,
      D => \^key_reg_bn5_out\,
      Q => \temp_reg_reg[1]_srl26_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[28]_srl3_n_0\,
      Q => \^key_reg_bn5_out\,
      R => '0'
    );
\temp_reg_reg[28]_srl3\: unisim.vcomponents.SRL16E
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
      Q => \temp_reg_reg[28]_srl3_n_0\
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
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
    \temp_reg_reg[31]_0\ : out STD_LOGIC;
    \temp_reg_reg[31]_1\ : out STD_LOGIC;
    IS_ce : in STD_LOGIC;
    IS_INPUT_MUX_OUT : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    A_KEY_REG_OUT : in STD_LOGIC;
    IS_right_reg_an5_out : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_internal_value_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tapped_shift_reg_1 : entity is "tapped_shift_reg";
end tapped_shift_reg_1;

architecture STRUCTURE of tapped_shift_reg_1 is
  signal \^is_left_reg_bn1_out\ : STD_LOGIC;
  signal IS_left_reg_bn5_out : STD_LOGIC;
  signal \^is_left_reg_out\ : STD_LOGIC;
  signal \temp_reg_reg[1]_srl26_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[28]_srl3_n_0\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[1]_srl26 ";
  attribute srl_bus_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_IS_LEFT_REG/temp_reg_reg[28]_srl3 ";
begin
  IS_left_reg_bn1_out <= \^is_left_reg_bn1_out\;
  IS_left_reg_out <= \^is_left_reg_out\;
\temp_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666A6A6AAA6A6A6A"
    )
        port map (
      I0 => A_KEY_REG_OUT,
      I1 => \^is_left_reg_out\,
      I2 => IS_right_reg_an5_out,
      I3 => \out\(1),
      I4 => \cnt_internal_value_reg[3]\,
      I5 => IS_left_reg_bn5_out,
      O => \temp_reg_reg[31]_0\
    );
\temp_reg[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      O => \temp_reg_reg[31]_1\
    );
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[1]_srl26_n_0\,
      Q => \^is_left_reg_out\,
      R => '0'
    );
\temp_reg_reg[1]_srl26\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11001",
      CE => IS_ce,
      CLK => clk_IBUF_BUFG,
      D => IS_left_reg_bn5_out,
      Q => \temp_reg_reg[1]_srl26_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[28]_srl3_n_0\,
      Q => IS_left_reg_bn5_out,
      R => '0'
    );
\temp_reg_reg[28]_srl3\: unisim.vcomponents.SRL16E
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
      Q => \temp_reg_reg[28]_srl3_n_0\
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tapped_shift_reg_2 is
  port (
    IS_right_reg_an5_out : out STD_LOGIC;
    IS_INPUT_MUX_OUT : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_ce : in STD_LOGIC;
    IS_left_reg_out : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \temp_reg_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_internal_value_reg[5]\ : in STD_LOGIC;
    IS_left_reg_bn1_out : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_internal_value_reg[6]\ : in STD_LOGIC;
    start_IBUF : in STD_LOGIC;
    R : in STD_LOGIC;
    \cnt_internal_value_reg[5]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tapped_shift_reg_2 : entity is "tapped_shift_reg";
end tapped_shift_reg_2;

architecture STRUCTURE of tapped_shift_reg_2 is
  signal \FSM_onehot_current_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[6]_i_2_n_0\ : STD_LOGIC;
  signal IS_right_reg_an1_out : STD_LOGIC;
  signal \^is_right_reg_an5_out\ : STD_LOGIC;
  signal IS_right_reg_out : STD_LOGIC;
  signal \temp_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[1]_srl26_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[28]_srl3_n_0\ : STD_LOGIC;
  signal \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[1]_srl26\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[1]_srl26 ";
  attribute srl_bus_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[28]_srl3\ : label is "\Simeck_DUT/INST_IS_RIGHT_REG/temp_reg_reg[28]_srl3 ";
begin
  IS_right_reg_an5_out <= \^is_right_reg_an5_out\;
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => start_IBUF,
      I1 => \out\(0),
      I2 => \FSM_onehot_current_state[6]_i_2_n_0\,
      I3 => \out\(4),
      O => D(0)
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF88888888"
    )
        port map (
      I0 => \cnt_internal_value_reg[5]_0\,
      I1 => \out\(2),
      I2 => IS_right_reg_out,
      I3 => \FSM_sequential_current_state_reg[1]_0\(0),
      I4 => \FSM_sequential_current_state_reg[1]_0\(1),
      I5 => \out\(3),
      O => D(1)
    );
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => \FSM_onehot_current_state[5]_i_2_n_0\,
      I1 => \out\(3),
      I2 => \FSM_onehot_current_state[6]_i_2_n_0\,
      I3 => \cnt_internal_value_reg[6]\,
      I4 => \out\(4),
      O => D(2)
    );
\FSM_onehot_current_state[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => IS_right_reg_out,
      I1 => \FSM_sequential_current_state_reg[1]_0\(0),
      I2 => \FSM_sequential_current_state_reg[1]_0\(1),
      O => \FSM_onehot_current_state[5]_i_2_n_0\
    );
\FSM_onehot_current_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \out\(5),
      I1 => \FSM_onehot_current_state[6]_i_2_n_0\,
      I2 => \cnt_internal_value_reg[6]\,
      I3 => \out\(4),
      O => D(3)
    );
\FSM_onehot_current_state[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => R,
      I1 => IS_right_reg_out,
      I2 => \FSM_sequential_current_state_reg[1]_0\(0),
      I3 => \FSM_sequential_current_state_reg[1]_0\(1),
      O => \FSM_onehot_current_state[6]_i_2_n_0\
    );
\temp_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60606F6060606060"
    )
        port map (
      I0 => \temp_reg[31]_i_5_n_0\,
      I1 => \temp_reg_reg[0]_0\,
      I2 => \FSM_sequential_current_state_reg[1]\,
      I3 => \out\(1),
      I4 => Q(0),
      I5 => \cnt_internal_value_reg[5]\,
      O => IS_INPUT_MUX_OUT
    );
\temp_reg[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65556AAA"
    )
        port map (
      I0 => IS_right_reg_out,
      I1 => IS_left_reg_bn1_out,
      I2 => \cnt_internal_value_reg[2]\,
      I3 => \FSM_sequential_current_state_reg[1]_0\(1),
      I4 => IS_right_reg_an1_out,
      O => \temp_reg[31]_i_5_n_0\
    );
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[1]_srl26_n_0\,
      Q => IS_right_reg_out,
      R => '0'
    );
\temp_reg_reg[1]_srl26\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11001",
      CE => IS_ce,
      CLK => clk_IBUF_BUFG,
      D => \^is_right_reg_an5_out\,
      Q => \temp_reg_reg[1]_srl26_n_0\,
      Q31 => \NLW_temp_reg_reg[1]_srl26_Q31_UNCONNECTED\
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => \temp_reg_reg[28]_srl3_n_0\,
      Q => \^is_right_reg_an5_out\,
      R => '0'
    );
\temp_reg_reg[28]_srl3\: unisim.vcomponents.SRL16E
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
      D => IS_right_reg_an1_out,
      Q => \temp_reg_reg[28]_srl3_n_0\
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_ce,
      D => IS_left_reg_out,
      Q => IS_right_reg_an1_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Simeck_64_128_bit_serial is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_internal_value_reg[5]\ : in STD_LOGIC;
    \cnt_internal_value_reg[6]\ : in STD_LOGIC;
    start_IBUF : in STD_LOGIC;
    R : in STD_LOGIC;
    \cnt_internal_value_reg[5]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[6]_0\ : in STD_LOGIC
  );
end Simeck_64_128_bit_serial;

architecture STRUCTURE of Simeck_64_128_bit_serial is
  signal A_KEY_REG_OUT : STD_LOGIC;
  signal B_KEY_REG_OUT : STD_LOGIC;
  signal INST_IS_LEFT_REG_n_2 : STD_LOGIC;
  signal INST_IS_LEFT_REG_n_3 : STD_LOGIC;
  signal INST_LEFT_KEY_REG_n_0 : STD_LOGIC;
  signal INST_SERIAL_CNT_n_0 : STD_LOGIC;
  signal INST_SERIAL_CNT_n_1 : STD_LOGIC;
  signal INST_SERIAL_CNT_n_2 : STD_LOGIC;
  signal INST_SERIAL_CNT_n_3 : STD_LOGIC;
  signal IS_INPUT_MUX_OUT : STD_LOGIC;
  signal IS_ce : STD_LOGIC;
  signal IS_left_reg_bn1_out : STD_LOGIC;
  signal IS_left_reg_out : STD_LOGIC;
  signal IS_right_reg_an5_out : STD_LOGIC;
  signal KEY_INPUT_MUX_OUT : STD_LOGIC;
  signal KEY_REG_CE : STD_LOGIC;
  signal KEY_REG_an5_out : STD_LOGIC;
  signal KEY_REG_bn1_out : STD_LOGIC;
  signal KEY_REG_bn5_out : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal lfsr_change : STD_LOGIC;
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 5 to 5 );
  signal lfsr_rst : STD_LOGIC;
  attribute RTL_KEEP of lfsr_rst : signal is "yes";
  signal nx_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "loading:00,idle:01,processing:10,end_encrypt:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "loading:00,idle:01,processing:10,end_encrypt:11";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
begin
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => current_state(1),
      I1 => \out\(3),
      I2 => lfsr_rst,
      O => nx_state(1)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => nx_state(0),
      Q => lfsr_rst,
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
      \FSM_onehot_current_state_reg[2]\(0) => \out\(2),
      KEY_INPUT_MUX_OUT => KEY_INPUT_MUX_OUT,
      KEY_REG_CE => KEY_REG_CE,
      KEY_REG_an5_out => KEY_REG_an5_out,
      KEY_REG_bn1_out => KEY_REG_bn1_out,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[2]\ => INST_SERIAL_CNT_n_2,
      \cnt_internal_value_reg[6]\ => \cnt_internal_value_reg[6]_0\,
      \out\(0) => current_state(1),
      \temp_reg_reg[0]_0\ => INST_SERIAL_CNT_n_0
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
INST_IS_LEFT_REG: entity work.tapped_shift_reg_1
     port map (
      A_KEY_REG_OUT => A_KEY_REG_OUT,
      IS_INPUT_MUX_OUT => IS_INPUT_MUX_OUT,
      IS_ce => IS_ce,
      IS_left_reg_bn1_out => IS_left_reg_bn1_out,
      IS_left_reg_out => IS_left_reg_out,
      IS_right_reg_an5_out => IS_right_reg_an5_out,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[3]\ => INST_SERIAL_CNT_n_1,
      \out\(1) => current_state(1),
      \out\(0) => lfsr_rst,
      \temp_reg_reg[31]_0\ => INST_IS_LEFT_REG_n_2,
      \temp_reg_reg[31]_1\ => INST_IS_LEFT_REG_n_3
    );
INST_IS_RIGHT_REG: entity work.tapped_shift_reg_2
     port map (
      D(3 downto 0) => D(3 downto 0),
      \FSM_sequential_current_state_reg[1]\ => INST_IS_LEFT_REG_n_3,
      \FSM_sequential_current_state_reg[1]_0\(1) => current_state(1),
      \FSM_sequential_current_state_reg[1]_0\(0) => lfsr_rst,
      IS_INPUT_MUX_OUT => IS_INPUT_MUX_OUT,
      IS_ce => IS_ce,
      IS_left_reg_bn1_out => IS_left_reg_bn1_out,
      IS_left_reg_out => IS_left_reg_out,
      IS_right_reg_an5_out => IS_right_reg_an5_out,
      Q(0) => Q(0),
      R => R,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[2]\ => INST_SERIAL_CNT_n_2,
      \cnt_internal_value_reg[5]\ => \cnt_internal_value_reg[5]\,
      \cnt_internal_value_reg[5]_0\ => \cnt_internal_value_reg[5]_0\,
      \cnt_internal_value_reg[6]\ => \cnt_internal_value_reg[6]\,
      \out\(5 downto 1) => \out\(6 downto 2),
      \out\(0) => \out\(0),
      start_IBUF => start_IBUF,
      \temp_reg_reg[0]_0\ => INST_IS_LEFT_REG_n_2
    );
INST_LEFT_KEY_REG: entity work.normal_shift_reg
     port map (
      KEY_INPUT_MUX_OUT => KEY_INPUT_MUX_OUT,
      KEY_REG_CE => KEY_REG_CE,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \temp_reg_reg[31]\ => INST_LEFT_KEY_REG_n_0
    );
INST_LFSR: entity work.lfsr
     port map (
      CLK => lfsr_change,
      D(0) => nx_state(0),
      E(0) => busy,
      \FSM_onehot_current_state_reg[3]\(0) => \out\(3),
      IS_ce => IS_ce,
      KEY_REG_CE => KEY_REG_CE,
      Q(0) => lfsr_parallel_out(5),
      \out\(1) => current_state(1),
      \out\(0) => lfsr_rst
    );
INST_SERIAL_CNT: entity work.CNT
     port map (
      B_KEY_REG_OUT => B_KEY_REG_OUT,
      E(0) => busy,
      KEY_REG_an5_out => KEY_REG_an5_out,
      KEY_REG_bn5_out => KEY_REG_bn5_out,
      Q(0) => lfsr_parallel_out(5),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      lfsr_change_reg => INST_SERIAL_CNT_n_3,
      \out\(1) => current_state(1),
      \out\(0) => lfsr_rst,
      \temp_reg_reg[31]\ => INST_SERIAL_CNT_n_0,
      \temp_reg_reg[31]_0\ => INST_SERIAL_CNT_n_1,
      \temp_reg_reg[31]_1\ => INST_SERIAL_CNT_n_2
    );
lfsr_change_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_SERIAL_CNT_n_3,
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
  attribute Datapath of Testing_IP : entity is 32;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Testing_IP : entity is "73ca25ed";
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
  signal INST_CNT_n_1 : STD_LOGIC;
  signal INST_CNT_n_2 : STD_LOGIC;
  signal INST_CNT_n_3 : STD_LOGIC;
  signal INST_CNT_n_4 : STD_LOGIC;
  signal INST_CNT_n_5 : STD_LOGIC;
  signal INST_CNT_n_7 : STD_LOGIC;
  signal R : STD_LOGIC;
  signal Simeck_DUT_n_0 : STD_LOGIC;
  signal Simeck_DUT_n_1 : STD_LOGIC;
  signal Simeck_DUT_n_2 : STD_LOGIC;
  signal Simeck_DUT_n_3 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal cnt_out_W : STD_LOGIC_VECTOR ( 6 to 6 );
  signal data_ready_W : STD_LOGIC;
  attribute RTL_KEEP of data_ready_W : signal is "yes";
  signal rst_IBUF : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal start_W : STD_LOGIC;
  attribute RTL_KEEP of start_W : signal is "yes";
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
      D => Simeck_DUT_n_3,
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
      D => INST_CNT_n_4,
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
      D => INST_CNT_n_3,
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
      D => Simeck_DUT_n_2,
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
      D => Simeck_DUT_n_1,
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
      D => Simeck_DUT_n_0,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\,
      R => rst_IBUF
    );
INST_CNT: entity work.\CNT__parameterized0\
     port map (
      D(1) => INST_CNT_n_3,
      D(0) => INST_CNT_n_4,
      \FSM_onehot_current_state_reg[3]\ => INST_CNT_n_5,
      \FSM_onehot_current_state_reg[5]\ => INST_CNT_n_7,
      Q(0) => cnt_out_W(6),
      R => R,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \out\(5) => \FSM_onehot_current_state_reg_n_0_[6]\,
      \out\(4) => \FSM_onehot_current_state_reg_n_0_[5]\,
      \out\(3) => \FSM_onehot_current_state_reg_n_0_[4]\,
      \out\(2) => start_W,
      \out\(1) => \FSM_onehot_current_state_reg_n_0_[2]\,
      \out\(0) => data_ready_W,
      \temp_reg_reg[31]\ => INST_CNT_n_1,
      \temp_reg_reg[31]_0\ => INST_CNT_n_2
    );
Simeck_DUT: entity work.Simeck_64_128_bit_serial
     port map (
      D(3) => Simeck_DUT_n_0,
      D(2) => Simeck_DUT_n_1,
      D(1) => Simeck_DUT_n_2,
      D(0) => Simeck_DUT_n_3,
      Q(0) => cnt_out_W(6),
      R => R,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[5]\ => INST_CNT_n_1,
      \cnt_internal_value_reg[5]_0\ => INST_CNT_n_5,
      \cnt_internal_value_reg[6]\ => INST_CNT_n_7,
      \cnt_internal_value_reg[6]_0\ => INST_CNT_n_2,
      \out\(6) => \FSM_onehot_current_state_reg_n_0_[6]\,
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
