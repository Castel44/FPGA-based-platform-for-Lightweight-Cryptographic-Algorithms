-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Sat Jun 23 18:31:34 2018
-- Host        : sam-xubuntu running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/sam/Desktop/VIVADO_git_PSI_ciphers/VIVADO-lightweight-crypto-project/Simon/Simon_32_64_parallel/Simon_32_64_parallel.sim/sim_1/impl/func/xsim/Testing_IP_TB_func_impl.vhd
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
    \current_state_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_IBUF : in STD_LOGIC;
    clk_out1 : in STD_LOGIC
  );
end CNT;

architecture STRUCTURE of CNT is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ce : STD_LOGIC;
  signal \cnt_internal_value[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_internal_value[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_internal_value[1]_i_1\ : label is "soft_lutpair1";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\cnt_internal_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\cnt_internal_value[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\cnt_internal_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      O => ce
    );
\cnt_internal_value[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => plusOp(2)
    );
\cnt_internal_value[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      O => \cnt_internal_value[2]_i_3_n_0\
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => ce,
      CLR => \cnt_internal_value[2]_i_3_n_0\,
      D => plusOp(0),
      Q => \^q\(0)
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => ce,
      CLR => \cnt_internal_value[2]_i_3_n_0\,
      D => plusOp(1),
      Q => \^q\(1)
    );
\cnt_internal_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => ce,
      CLR => \cnt_internal_value[2]_i_3_n_0\,
      D => plusOp(2),
      Q => \^q\(2)
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4C44"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \current_state[0]_i_2_n_0\,
      I4 => rst_IBUF,
      O => \current_state_reg[0]\
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \current_state[0]_i_2_n_0\
    );
\current_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5E4E4E4A4E4E4E4"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \current_state_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_wiz_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end clk_wiz_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of clk_wiz_0_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
  locked <= 'Z';
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 15.625000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 8.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 78.125000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 2,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset
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
    \Q_reg[15]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_state_reg[1]\ : in STD_LOGIC;
    clk_out1 : in STD_LOGIC
  );
end lfsr;

architecture STRUCTURE of lfsr is
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lfsr_ce : STD_LOGIC;
  signal lfsr_internal0 : STD_LOGIC;
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal lfsr_rst : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \temp_reg[31]_i_2_n_0\ : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEF0000EEEFAA05"
    )
        port map (
      I0 => \out\(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I3 => \out\(1),
      I4 => \current_state_reg[1]\,
      I5 => current_state(0),
      O => \FSM_sequential_current_state_reg[0]\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => lfsr_parallel_out(1),
      I1 => lfsr_parallel_out(2),
      I2 => \out\(1),
      I3 => lfsr_parallel_out(0),
      I4 => lfsr_parallel_out(3),
      I5 => \^q\(0),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => lfsr_parallel_out(0),
      I1 => lfsr_parallel_out(1),
      I2 => \^q\(0),
      I3 => lfsr_parallel_out(3),
      I4 => lfsr_parallel_out(2),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA00AAAAAAAE"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => current_state(1),
      I4 => current_state(2),
      I5 => current_state(0),
      O => \FSM_sequential_current_state_reg[1]\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFDF0000"
    )
        port map (
      I0 => lfsr_parallel_out(0),
      I1 => lfsr_parallel_out(3),
      I2 => \out\(0),
      I3 => \temp_reg[31]_i_2_n_0\,
      I4 => \out\(1),
      I5 => lfsr_parallel_out(2),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\Q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFEFFF"
    )
        port map (
      I0 => lfsr_parallel_out(0),
      I1 => \temp_reg[31]_i_2_n_0\,
      I2 => lfsr_parallel_out(3),
      I3 => lfsr_parallel_out(2),
      I4 => \out\(1),
      I5 => \out\(0),
      O => KEY_REG_CE
    );
\Q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EFFF"
    )
        port map (
      I0 => lfsr_parallel_out(0),
      I1 => \temp_reg[31]_i_2_n_0\,
      I2 => lfsr_parallel_out(3),
      I3 => lfsr_parallel_out(2),
      I4 => \out\(1),
      I5 => \out\(0),
      O => \Q_reg[15]\
    );
\lfsr_internal[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => lfsr_parallel_out(2),
      O => p_3_out(0)
    );
\lfsr_internal[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      O => lfsr_ce
    );
\lfsr_internal[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => lfsr_parallel_out(3),
      O => lfsr_internal0
    );
\lfsr_internal[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => lfsr_rst
    );
\lfsr_internal_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => lfsr_ce,
      CLR => lfsr_rst,
      D => p_3_out(0),
      Q => lfsr_parallel_out(0)
    );
\lfsr_internal_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => lfsr_ce,
      CLR => lfsr_rst,
      D => lfsr_parallel_out(0),
      Q => lfsr_parallel_out(1)
    );
\lfsr_internal_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => lfsr_ce,
      CLR => lfsr_rst,
      D => lfsr_parallel_out(1),
      Q => lfsr_parallel_out(2)
    );
\lfsr_internal_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => lfsr_ce,
      CLR => lfsr_rst,
      D => lfsr_parallel_out(2),
      Q => lfsr_parallel_out(3)
    );
\lfsr_internal_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => lfsr_ce,
      D => lfsr_internal0,
      PRE => lfsr_rst,
      Q => \^q\(0)
    );
\temp_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFFFFF9D"
    )
        port map (
      I0 => lfsr_parallel_out(0),
      I1 => lfsr_parallel_out(3),
      I2 => lfsr_parallel_out(2),
      I3 => \out\(1),
      I4 => \temp_reg[31]_i_2_n_0\,
      I5 => \out\(0),
      O => E(0)
    );
\temp_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => lfsr_parallel_out(1),
      I1 => \^q\(0),
      O => \temp_reg[31]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity normal_shift_reg is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \Q_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    key_schedule_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \Q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    KEY_REG_CE : in STD_LOGIC;
    clk_out1 : in STD_LOGIC;
    \lfsr_internal_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end normal_shift_reg;

architecture STRUCTURE of normal_shift_reg is
  signal \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\ : STD_LOGIC_VECTOR ( 13 downto 4 );
  signal \^q_reg[15]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \temp_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[9]\ : STD_LOGIC;
begin
  \Q_reg[15]\(15 downto 0) <= \^q_reg[15]\(15 downto 0);
\Q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q_reg[15]\(0),
      I1 => \Q_reg[15]_0\(3),
      I2 => Q(0),
      I3 => \^q_reg[15]\(1),
      I4 => \Q_reg[15]_0\(4),
      I5 => \lfsr_internal_reg[4]\(0),
      O => key_schedule_out(0)
    );
\Q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(10),
      I1 => \^q_reg[15]\(11),
      I2 => \Q_reg[15]_0\(14),
      I3 => \^q_reg[15]\(10),
      I4 => \Q_reg[15]_0\(13),
      O => key_schedule_out(7)
    );
\Q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF41141441"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]\,
      I1 => Q(11),
      I2 => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(12),
      I3 => \^q_reg[15]\(11),
      I4 => \Q_reg[15]_0\(14),
      I5 => \FSM_sequential_current_state_reg[0]_0\,
      O => D(3)
    );
\Q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[15]\(12),
      I1 => \Q_reg[15]_0\(15),
      O => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(12)
    );
\Q[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF41141441"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]\,
      I1 => Q(12),
      I2 => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(13),
      I3 => \^q_reg[15]\(12),
      I4 => \Q_reg[15]_0\(15),
      I5 => \FSM_sequential_current_state_reg[0]_1\,
      O => D(4)
    );
\Q[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[15]\(13),
      I1 => \Q_reg[15]_0\(0),
      O => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(13)
    );
\Q[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(13),
      I1 => \^q_reg[15]\(14),
      I2 => \Q_reg[15]_0\(1),
      I3 => \^q_reg[15]\(13),
      I4 => \Q_reg[15]_0\(0),
      O => key_schedule_out(8)
    );
\Q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(14),
      I1 => \^q_reg[15]\(15),
      I2 => \Q_reg[15]_0\(2),
      I3 => \^q_reg[15]\(14),
      I4 => \Q_reg[15]_0\(1),
      O => key_schedule_out(9)
    );
\Q[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(15),
      I1 => \^q_reg[15]\(0),
      I2 => \Q_reg[15]_0\(3),
      I3 => \^q_reg[15]\(15),
      I4 => \Q_reg[15]_0\(2),
      O => key_schedule_out(10)
    );
\Q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(1),
      I1 => \^q_reg[15]\(2),
      I2 => \Q_reg[15]_0\(5),
      I3 => \^q_reg[15]\(1),
      I4 => \Q_reg[15]_0\(4),
      O => key_schedule_out(1)
    );
\Q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(2),
      I1 => \^q_reg[15]\(3),
      I2 => \Q_reg[15]_0\(6),
      I3 => \^q_reg[15]\(2),
      I4 => \Q_reg[15]_0\(5),
      O => key_schedule_out(2)
    );
\Q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF41141441"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]\,
      I1 => Q(3),
      I2 => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(4),
      I3 => \^q_reg[15]\(3),
      I4 => \Q_reg[15]_0\(6),
      I5 => \FSM_sequential_current_state_reg[0]_0\,
      O => D(0)
    );
\Q[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[15]\(4),
      I1 => \Q_reg[15]_0\(7),
      O => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(4)
    );
\Q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF41141441"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]\,
      I1 => Q(4),
      I2 => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(5),
      I3 => \^q_reg[15]\(4),
      I4 => \Q_reg[15]_0\(7),
      I5 => \FSM_sequential_current_state_reg[0]_1\,
      O => D(1)
    );
\Q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[15]\(5),
      I1 => \Q_reg[15]_0\(8),
      O => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(5)
    );
\Q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(5),
      I1 => \^q_reg[15]\(6),
      I2 => \Q_reg[15]_0\(9),
      I3 => \^q_reg[15]\(5),
      I4 => \Q_reg[15]_0\(8),
      O => key_schedule_out(3)
    );
\Q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(6),
      I1 => \^q_reg[15]\(7),
      I2 => \Q_reg[15]_0\(10),
      I3 => \^q_reg[15]\(6),
      I4 => \Q_reg[15]_0\(9),
      O => key_schedule_out(4)
    );
\Q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(7),
      I1 => \^q_reg[15]\(8),
      I2 => \Q_reg[15]_0\(11),
      I3 => \^q_reg[15]\(7),
      I4 => \Q_reg[15]_0\(10),
      O => key_schedule_out(5)
    );
\Q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF41141441"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]\,
      I1 => Q(8),
      I2 => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(9),
      I3 => \^q_reg[15]\(8),
      I4 => \Q_reg[15]_0\(11),
      I5 => \cnt_internal_value_reg[2]\,
      O => D(2)
    );
\Q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[15]\(9),
      I1 => \Q_reg[15]_0\(12),
      O => \INST_KEY_SCHEDULE_FUNCTION/p_0_in1_in\(9)
    );
\Q[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Q(9),
      I1 => \^q_reg[15]\(10),
      I2 => \Q_reg[15]_0\(13),
      I3 => \^q_reg[15]\(9),
      I4 => \Q_reg[15]_0\(12),
      O => key_schedule_out(6)
    );
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(0),
      Q => \temp_reg_reg_n_0_[0]\,
      R => '0'
    );
\temp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(10),
      Q => \temp_reg_reg_n_0_[10]\,
      R => '0'
    );
\temp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(11),
      Q => \temp_reg_reg_n_0_[11]\,
      R => '0'
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(12),
      Q => \temp_reg_reg_n_0_[12]\,
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(13),
      Q => \temp_reg_reg_n_0_[13]\,
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(14),
      Q => \temp_reg_reg_n_0_[14]\,
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(15),
      Q => \temp_reg_reg_n_0_[15]\,
      R => '0'
    );
\temp_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[0]\,
      Q => \^q_reg[15]\(0),
      R => '0'
    );
\temp_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[1]\,
      Q => \^q_reg[15]\(1),
      R => '0'
    );
\temp_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[2]\,
      Q => \^q_reg[15]\(2),
      R => '0'
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[3]\,
      Q => \^q_reg[15]\(3),
      R => '0'
    );
\temp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(1),
      Q => \temp_reg_reg_n_0_[1]\,
      R => '0'
    );
\temp_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[4]\,
      Q => \^q_reg[15]\(4),
      R => '0'
    );
\temp_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[5]\,
      Q => \^q_reg[15]\(5),
      R => '0'
    );
\temp_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[6]\,
      Q => \^q_reg[15]\(6),
      R => '0'
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[7]\,
      Q => \^q_reg[15]\(7),
      R => '0'
    );
\temp_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[8]\,
      Q => \^q_reg[15]\(8),
      R => '0'
    );
\temp_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[9]\,
      Q => \^q_reg[15]\(9),
      R => '0'
    );
\temp_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[10]\,
      Q => \^q_reg[15]\(10),
      R => '0'
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[11]\,
      Q => \^q_reg[15]\(11),
      R => '0'
    );
\temp_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[12]\,
      Q => \^q_reg[15]\(12),
      R => '0'
    );
\temp_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[13]\,
      Q => \^q_reg[15]\(13),
      R => '0'
    );
\temp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(2),
      Q => \temp_reg_reg_n_0_[2]\,
      R => '0'
    );
\temp_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[14]\,
      Q => \^q_reg[15]\(14),
      R => '0'
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg_n_0_[15]\,
      Q => \^q_reg[15]\(15),
      R => '0'
    );
\temp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(3),
      Q => \temp_reg_reg_n_0_[3]\,
      R => '0'
    );
\temp_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(4),
      Q => \temp_reg_reg_n_0_[4]\,
      R => '0'
    );
\temp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(5),
      Q => \temp_reg_reg_n_0_[5]\,
      R => '0'
    );
\temp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(6),
      Q => \temp_reg_reg_n_0_[6]\,
      R => '0'
    );
\temp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(7),
      Q => \temp_reg_reg_n_0_[7]\,
      R => '0'
    );
\temp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(8),
      Q => \temp_reg_reg_n_0_[8]\,
      R => '0'
    );
\temp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \Q_reg[15]_0\(9),
      Q => \temp_reg_reg_n_0_[9]\,
      R => '0'
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
    \temp_reg_reg[8]_0\ : out STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_IBUF : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \current_state_reg[2]_0\ : in STD_LOGIC;
    \current_state_reg[1]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_out1 : in STD_LOGIC
  );
end parallel_tapped_shift_reg;

architecture STRUCTURE of parallel_tapped_shift_reg is
  signal IS_left_reg_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IS_right_reg_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \temp_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[8]_0\ : STD_LOGIC;
begin
  \temp_reg_reg[8]_0\ <= \^temp_reg_reg[8]_0\;
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDFF0404"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => \current_state[1]_i_2_n_0\,
      I3 => start_IBUF,
      I4 => current_state(1),
      I5 => rst_IBUF,
      O => \current_state_reg[1]\
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \current_state[2]_i_3_n_0\,
      I1 => \current_state[2]_i_8_n_0\,
      I2 => \current_state[1]_i_3_n_0\,
      I3 => \FSM_sequential_current_state_reg[0]\,
      I4 => IS_right_reg_out(14),
      I5 => IS_right_reg_out(15),
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => IS_right_reg_out(4),
      I1 => IS_right_reg_out(6),
      I2 => IS_right_reg_out(7),
      I3 => IS_right_reg_out(12),
      O => \current_state[1]_i_3_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFAFA8"
    )
        port map (
      I0 => \current_state_reg[2]_0\,
      I1 => \current_state[2]_i_3_n_0\,
      I2 => \current_state[2]_i_4_n_0\,
      I3 => \current_state[2]_i_5_n_0\,
      I4 => \current_state_reg[1]_0\,
      I5 => rst_IBUF,
      O => \current_state_reg[2]\
    );
\current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => IS_right_reg_out(11),
      I1 => IS_right_reg_out(13),
      I2 => IS_right_reg_out(9),
      I3 => IS_right_reg_out(10),
      I4 => IS_right_reg_out(8),
      I5 => IS_right_reg_out(5),
      O => \current_state[2]_i_3_n_0\
    );
\current_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \current_state[2]_i_7_n_0\,
      I1 => IS_right_reg_out(4),
      I2 => IS_right_reg_out(6),
      I3 => IS_right_reg_out(7),
      I4 => IS_right_reg_out(12),
      I5 => \current_state[2]_i_8_n_0\,
      O => \current_state[2]_i_4_n_0\
    );
\current_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => IS_right_reg_out(8),
      I1 => IS_right_reg_out(5),
      I2 => \current_state[2]_i_9_n_0\,
      O => \current_state[2]_i_5_n_0\
    );
\current_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => IS_right_reg_out(15),
      I1 => IS_right_reg_out(14),
      I2 => \out\(1),
      I3 => \out\(0),
      O => \current_state[2]_i_7_n_0\
    );
\current_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => IS_right_reg_out(1),
      I1 => IS_right_reg_out(0),
      I2 => IS_right_reg_out(3),
      I3 => IS_right_reg_out(2),
      O => \current_state[2]_i_8_n_0\
    );
\current_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => IS_right_reg_out(11),
      I1 => IS_right_reg_out(13),
      I2 => IS_right_reg_out(9),
      I3 => IS_right_reg_out(10),
      I4 => current_state(0),
      I5 => current_state(1),
      O => \current_state[2]_i_9_n_0\
    );
\temp_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEBBEAAAA"
    )
        port map (
      I0 => \temp_reg[14]_i_2_n_0\,
      I1 => \temp_reg[0]_i_2_n_0\,
      I2 => IS_right_reg_out(0),
      I3 => IS_left_reg_out(14),
      I4 => \out\(1),
      I5 => \out\(0),
      O => p_0_in(0)
    );
\temp_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => IS_left_reg_out(15),
      I1 => IS_left_reg_out(8),
      I2 => \Q_reg[15]\(0),
      O => \temp_reg[0]_i_2_n_0\
    );
\temp_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F8F888F88888F"
    )
        port map (
      I0 => Q(0),
      I1 => \temp_reg[14]_i_2_n_0\,
      I2 => \^temp_reg_reg[8]_0\,
      I3 => IS_left_reg_out(8),
      I4 => IS_right_reg_out(10),
      I5 => \temp_reg[10]_i_2_n_0\,
      O => p_0_in(10)
    );
\temp_reg[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => IS_left_reg_out(9),
      I1 => IS_left_reg_out(2),
      I2 => \Q_reg[15]\(10),
      O => \temp_reg[10]_i_2_n_0\
    );
\temp_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F4F444F44444F"
    )
        port map (
      I0 => Q(0),
      I1 => \temp_reg[14]_i_2_n_0\,
      I2 => \^temp_reg_reg[8]_0\,
      I3 => IS_left_reg_out(9),
      I4 => IS_right_reg_out(11),
      I5 => \temp_reg[11]_i_2_n_0\,
      O => p_0_in(11)
    );
\temp_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => IS_left_reg_out(10),
      I1 => IS_left_reg_out(3),
      I2 => \Q_reg[15]\(11),
      O => \temp_reg[11]_i_2_n_0\
    );
\temp_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000078878778"
    )
        port map (
      I0 => IS_left_reg_out(11),
      I1 => IS_left_reg_out(4),
      I2 => \Q_reg[15]\(12),
      I3 => IS_right_reg_out(12),
      I4 => IS_left_reg_out(10),
      I5 => \^temp_reg_reg[8]_0\,
      O => p_0_in(12)
    );
\temp_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEBBEAAAA"
    )
        port map (
      I0 => \temp_reg[14]_i_2_n_0\,
      I1 => \temp_reg[13]_i_2_n_0\,
      I2 => IS_right_reg_out(13),
      I3 => IS_left_reg_out(11),
      I4 => \out\(1),
      I5 => \out\(0),
      O => p_0_in(13)
    );
\temp_reg[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => IS_left_reg_out(12),
      I1 => IS_left_reg_out(5),
      I2 => \Q_reg[15]\(13),
      O => \temp_reg[13]_i_2_n_0\
    );
\temp_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEBBEAAAA"
    )
        port map (
      I0 => \temp_reg[14]_i_2_n_0\,
      I1 => \temp_reg[14]_i_3_n_0\,
      I2 => IS_right_reg_out(14),
      I3 => IS_left_reg_out(12),
      I4 => \out\(1),
      I5 => \out\(0),
      O => p_0_in(14)
    );
\temp_reg[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000B000"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \temp_reg[14]_i_2_n_0\
    );
\temp_reg[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => IS_left_reg_out(13),
      I1 => IS_left_reg_out(6),
      I2 => \Q_reg[15]\(14),
      O => \temp_reg[14]_i_3_n_0\
    );
\temp_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000078878778"
    )
        port map (
      I0 => IS_left_reg_out(14),
      I1 => IS_left_reg_out(7),
      I2 => \Q_reg[15]\(15),
      I3 => IS_right_reg_out(15),
      I4 => IS_left_reg_out(13),
      I5 => \^temp_reg_reg[8]_0\,
      O => p_0_in(15)
    );
\temp_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => \^temp_reg_reg[8]_0\
    );
\temp_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F4F444F44444F"
    )
        port map (
      I0 => Q(0),
      I1 => \temp_reg[14]_i_2_n_0\,
      I2 => \^temp_reg_reg[8]_0\,
      I3 => IS_left_reg_out(15),
      I4 => IS_right_reg_out(1),
      I5 => \temp_reg[1]_i_2_n_0\,
      O => p_0_in(1)
    );
\temp_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => IS_left_reg_out(9),
      I1 => IS_left_reg_out(0),
      I2 => \Q_reg[15]\(1),
      O => \temp_reg[1]_i_2_n_0\
    );
\temp_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEBBEAAAA"
    )
        port map (
      I0 => \temp_reg[14]_i_2_n_0\,
      I1 => \temp_reg[2]_i_2_n_0\,
      I2 => IS_right_reg_out(2),
      I3 => IS_left_reg_out(0),
      I4 => \out\(1),
      I5 => \out\(0),
      O => p_0_in(2)
    );
\temp_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => IS_left_reg_out(10),
      I1 => IS_left_reg_out(1),
      I2 => \Q_reg[15]\(2),
      O => \temp_reg[2]_i_2_n_0\
    );
\temp_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000078878778"
    )
        port map (
      I0 => IS_left_reg_out(11),
      I1 => IS_left_reg_out(2),
      I2 => \Q_reg[15]\(3),
      I3 => IS_right_reg_out(3),
      I4 => IS_left_reg_out(1),
      I5 => \^temp_reg_reg[8]_0\,
      O => p_0_in(3)
    );
\temp_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F4F444F44444F"
    )
        port map (
      I0 => Q(0),
      I1 => \temp_reg[14]_i_2_n_0\,
      I2 => \^temp_reg_reg[8]_0\,
      I3 => IS_left_reg_out(2),
      I4 => IS_right_reg_out(4),
      I5 => \temp_reg[4]_i_2_n_0\,
      O => p_0_in(4)
    );
\temp_reg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => IS_left_reg_out(12),
      I1 => IS_left_reg_out(3),
      I2 => \Q_reg[15]\(4),
      O => \temp_reg[4]_i_2_n_0\
    );
\temp_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEBBEAAAA"
    )
        port map (
      I0 => \temp_reg[14]_i_2_n_0\,
      I1 => \temp_reg[5]_i_2_n_0\,
      I2 => IS_right_reg_out(5),
      I3 => IS_left_reg_out(3),
      I4 => \out\(1),
      I5 => \out\(0),
      O => p_0_in(5)
    );
\temp_reg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => IS_left_reg_out(13),
      I1 => IS_left_reg_out(4),
      I2 => \Q_reg[15]\(5),
      O => \temp_reg[5]_i_2_n_0\
    );
\temp_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEBBEAAAA"
    )
        port map (
      I0 => \temp_reg[14]_i_2_n_0\,
      I1 => \temp_reg[6]_i_2_n_0\,
      I2 => IS_right_reg_out(6),
      I3 => IS_left_reg_out(4),
      I4 => \out\(1),
      I5 => \out\(0),
      O => p_0_in(6)
    );
\temp_reg[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => IS_left_reg_out(14),
      I1 => IS_left_reg_out(5),
      I2 => \Q_reg[15]\(6),
      O => \temp_reg[6]_i_2_n_0\
    );
\temp_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000078878778"
    )
        port map (
      I0 => IS_left_reg_out(15),
      I1 => IS_left_reg_out(6),
      I2 => \Q_reg[15]\(7),
      I3 => IS_right_reg_out(7),
      I4 => IS_left_reg_out(5),
      I5 => \^temp_reg_reg[8]_0\,
      O => p_0_in(7)
    );
\temp_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F8F888F88888F"
    )
        port map (
      I0 => Q(0),
      I1 => \temp_reg[14]_i_2_n_0\,
      I2 => \^temp_reg_reg[8]_0\,
      I3 => IS_left_reg_out(6),
      I4 => IS_right_reg_out(8),
      I5 => \temp_reg[8]_i_2_n_0\,
      O => p_0_in(8)
    );
\temp_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => IS_left_reg_out(7),
      I1 => IS_left_reg_out(0),
      I2 => \Q_reg[15]\(8),
      O => \temp_reg[8]_i_2_n_0\
    );
\temp_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000078878778"
    )
        port map (
      I0 => IS_left_reg_out(8),
      I1 => IS_left_reg_out(1),
      I2 => \Q_reg[15]\(9),
      I3 => IS_right_reg_out(9),
      I4 => IS_left_reg_out(7),
      I5 => \^temp_reg_reg[8]_0\,
      O => p_0_in(9)
    );
\temp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(0),
      Q => IS_left_reg_out(0),
      R => '0'
    );
\temp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(10),
      Q => IS_left_reg_out(10),
      R => '0'
    );
\temp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
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
      C => clk_out1,
      CE => E(0),
      D => p_0_in(12),
      Q => IS_left_reg_out(12),
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
      CE => E(0),
      D => p_0_in(15),
      Q => IS_left_reg_out(15),
      R => '0'
    );
\temp_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(0),
      Q => IS_right_reg_out(0),
      R => '0'
    );
\temp_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(1),
      Q => IS_right_reg_out(1),
      R => '0'
    );
\temp_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(2),
      Q => IS_right_reg_out(2),
      R => '0'
    );
\temp_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(3),
      Q => IS_right_reg_out(3),
      R => '0'
    );
\temp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(1),
      Q => IS_left_reg_out(1),
      R => '0'
    );
\temp_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(4),
      Q => IS_right_reg_out(4),
      R => '0'
    );
\temp_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(5),
      Q => IS_right_reg_out(5),
      R => '0'
    );
\temp_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(6),
      Q => IS_right_reg_out(6),
      R => '0'
    );
\temp_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(7),
      Q => IS_right_reg_out(7),
      R => '0'
    );
\temp_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(8),
      Q => IS_right_reg_out(8),
      R => '0'
    );
\temp_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(9),
      Q => IS_right_reg_out(9),
      R => '0'
    );
\temp_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(10),
      Q => IS_right_reg_out(10),
      R => '0'
    );
\temp_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(11),
      Q => IS_right_reg_out(11),
      R => '0'
    );
\temp_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(12),
      Q => IS_right_reg_out(12),
      R => '0'
    );
\temp_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(13),
      Q => IS_right_reg_out(13),
      R => '0'
    );
\temp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
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
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(14),
      Q => IS_right_reg_out(14),
      R => '0'
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => IS_left_reg_out(15),
      Q => IS_right_reg_out(15),
      R => '0'
    );
\temp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(3),
      Q => IS_left_reg_out(3),
      R => '0'
    );
\temp_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(4),
      Q => IS_left_reg_out(4),
      R => '0'
    );
\temp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(5),
      Q => IS_left_reg_out(5),
      R => '0'
    );
\temp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
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
      C => clk_out1,
      CE => E(0),
      D => p_0_in(7),
      Q => IS_left_reg_out(7),
      R => '0'
    );
\temp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(8),
      Q => IS_left_reg_out(8),
      R => '0'
    );
\temp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => E(0),
      D => p_0_in(9),
      Q => IS_left_reg_out(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    KEY_REG_CE : in STD_LOGIC;
    \temp_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_out1 : in STD_LOGIC
  );
end reg;

architecture STRUCTURE of reg is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(0),
      Q => Q(0),
      R => '0'
    );
\Q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(10),
      Q => Q(10),
      R => '0'
    );
\Q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(11),
      Q => Q(11),
      R => '0'
    );
\Q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(12),
      Q => Q(12),
      R => '0'
    );
\Q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(13),
      Q => Q(13),
      R => '0'
    );
\Q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(14),
      Q => Q(14),
      R => '0'
    );
\Q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(15),
      Q => Q(15),
      R => '0'
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(1),
      Q => Q(1),
      R => '0'
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(2),
      Q => Q(2),
      R => '0'
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(3),
      Q => Q(3),
      R => '0'
    );
\Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(4),
      Q => Q(4),
      R => '0'
    );
\Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(5),
      Q => Q(5),
      R => '0'
    );
\Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(6),
      Q => Q(6),
      R => '0'
    );
\Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(7),
      Q => Q(7),
      R => '0'
    );
\Q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(8),
      Q => Q(8),
      R => '0'
    );
\Q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => \temp_reg_reg[31]\(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_0 is
  port (
    \Q_reg[3]_0\ : out STD_LOGIC;
    \Q_reg[4]_0\ : out STD_LOGIC;
    \Q_reg[8]_0\ : out STD_LOGIC;
    \temp_reg_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    current_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    KEY_REG_CE : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_out1 : in STD_LOGIC;
    \lfsr_internal_reg[0]\ : in STD_LOGIC;
    key_schedule_out : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_0 : entity is "reg";
end reg_0;

architecture STRUCTURE of reg_0 is
begin
\Q[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B00000000000"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => Q(2),
      I5 => Q(0),
      O => \Q_reg[3]_0\
    );
\Q[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B00000000000"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \Q_reg[4]_0\
    );
\Q[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40400040"
    )
        port map (
      I0 => Q(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \out\(1),
      I4 => \out\(0),
      O => \Q_reg[8]_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(0),
      Q => \temp_reg_reg[15]\(0),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(7),
      Q => \temp_reg_reg[15]\(10),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => D(3),
      Q => \temp_reg_reg[15]\(11),
      R => '0'
    );
\Q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => D(4),
      Q => \temp_reg_reg[15]\(12),
      R => '0'
    );
\Q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(8),
      Q => \temp_reg_reg[15]\(13),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(9),
      Q => \temp_reg_reg[15]\(14),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(10),
      Q => \temp_reg_reg[15]\(15),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(1),
      Q => \temp_reg_reg[15]\(1),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(2),
      Q => \temp_reg_reg[15]\(2),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => D(0),
      Q => \temp_reg_reg[15]\(3),
      R => '0'
    );
\Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => D(1),
      Q => \temp_reg_reg[15]\(4),
      R => '0'
    );
\Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(3),
      Q => \temp_reg_reg[15]\(5),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(4),
      Q => \temp_reg_reg[15]\(6),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(5),
      Q => \temp_reg_reg[15]\(7),
      R => \lfsr_internal_reg[0]\
    );
\Q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => D(2),
      Q => \temp_reg_reg[15]\(8),
      R => '0'
    );
\Q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => KEY_REG_CE,
      D => key_schedule_out(6),
      Q => \temp_reg_reg[15]\(9),
      R => \lfsr_internal_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Simon_32_64_parallel is
  port (
    \current_state_reg[1]\ : out STD_LOGIC;
    \current_state_reg[2]\ : out STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_IBUF : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \current_state_reg[2]_0\ : in STD_LOGIC;
    \current_state_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_out1 : in STD_LOGIC
  );
end Simon_32_64_parallel;

architecture STRUCTURE of Simon_32_64_parallel is
  signal D : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal \FSM_sequential_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal INST_IS_REG_n_2 : STD_LOGIC;
  signal INST_Ki3_n_0 : STD_LOGIC;
  signal INST_Ki3_n_1 : STD_LOGIC;
  signal INST_Ki3_n_2 : STD_LOGIC;
  signal INST_LFSR_n_3 : STD_LOGIC;
  signal INST_LFSR_n_4 : STD_LOGIC;
  signal INST_LFSR_n_5 : STD_LOGIC;
  signal IS_CE : STD_LOGIC;
  signal KEY_REG_CE : STD_LOGIC;
  signal \current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal current_state_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state_0 : signal is "yes";
  signal key_schedule_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ki0_KEY_REG_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ki2_KEY_REG_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ki3_KEY_REG_OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lfsr_parallel_out : STD_LOGIC_VECTOR ( 4 to 4 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "loading:00,processing:10,end_encrypt:11,idle:01";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "loading:00,processing:10,end_encrypt:11,idle:01";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
begin
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      O => \FSM_sequential_current_state[0]_i_4_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => INST_LFSR_n_5,
      Q => current_state_0(0),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => INST_LFSR_n_4,
      Q => current_state_0(1),
      R => '0'
    );
INST_IS_REG: entity work.parallel_tapped_shift_reg
     port map (
      E(0) => IS_CE,
      \FSM_sequential_current_state_reg[0]\ => \current_state[1]_i_4_n_0\,
      Q(2 downto 0) => Q(2 downto 0),
      \Q_reg[15]\(15 downto 0) => ki0_KEY_REG_OUT(15 downto 0),
      clk_out1 => clk_out1,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => \current_state_reg[1]\,
      \current_state_reg[1]_0\ => \current_state_reg[1]_0\,
      \current_state_reg[2]\ => \current_state_reg[2]\,
      \current_state_reg[2]_0\ => \current_state_reg[2]_0\,
      \out\(1 downto 0) => current_state_0(1 downto 0),
      rst_IBUF => rst_IBUF,
      start_IBUF => start_IBUF,
      \temp_reg_reg[8]_0\ => INST_IS_REG_n_2
    );
INST_Ki0: entity work.reg
     port map (
      KEY_REG_CE => KEY_REG_CE,
      Q(15 downto 0) => ki0_KEY_REG_OUT(15 downto 0),
      clk_out1 => clk_out1,
      \temp_reg_reg[31]\(15 downto 0) => ki2_KEY_REG_OUT(15 downto 0)
    );
INST_Ki2_Ki1: entity work.normal_shift_reg
     port map (
      D(4 downto 3) => D(12 downto 11),
      D(2) => D(8),
      D(1 downto 0) => D(4 downto 3),
      \FSM_sequential_current_state_reg[0]\ => INST_IS_REG_n_2,
      \FSM_sequential_current_state_reg[0]_0\ => INST_Ki3_n_0,
      \FSM_sequential_current_state_reg[0]_1\ => INST_Ki3_n_1,
      KEY_REG_CE => KEY_REG_CE,
      Q(15 downto 0) => ki0_KEY_REG_OUT(15 downto 0),
      \Q_reg[15]\(15 downto 0) => ki2_KEY_REG_OUT(15 downto 0),
      \Q_reg[15]_0\(15 downto 0) => ki3_KEY_REG_OUT(15 downto 0),
      clk_out1 => clk_out1,
      \cnt_internal_value_reg[2]\ => INST_Ki3_n_2,
      key_schedule_out(10 downto 8) => key_schedule_out(15 downto 13),
      key_schedule_out(7 downto 6) => key_schedule_out(10 downto 9),
      key_schedule_out(5 downto 3) => key_schedule_out(7 downto 5),
      key_schedule_out(2 downto 0) => key_schedule_out(2 downto 0),
      \lfsr_internal_reg[4]\(0) => lfsr_parallel_out(4)
    );
INST_Ki3: entity work.reg_0
     port map (
      D(4 downto 3) => D(12 downto 11),
      D(2) => D(8),
      D(1 downto 0) => D(4 downto 3),
      KEY_REG_CE => KEY_REG_CE,
      Q(2 downto 0) => Q(2 downto 0),
      \Q_reg[3]_0\ => INST_Ki3_n_0,
      \Q_reg[4]_0\ => INST_Ki3_n_1,
      \Q_reg[8]_0\ => INST_Ki3_n_2,
      clk_out1 => clk_out1,
      current_state(1) => current_state(2),
      current_state(0) => current_state(0),
      key_schedule_out(10 downto 8) => key_schedule_out(15 downto 13),
      key_schedule_out(7 downto 6) => key_schedule_out(10 downto 9),
      key_schedule_out(5 downto 3) => key_schedule_out(7 downto 5),
      key_schedule_out(2 downto 0) => key_schedule_out(2 downto 0),
      \lfsr_internal_reg[0]\ => INST_LFSR_n_3,
      \out\(1 downto 0) => current_state_0(1 downto 0),
      \temp_reg_reg[15]\(15 downto 0) => ki3_KEY_REG_OUT(15 downto 0)
    );
INST_LFSR: entity work.lfsr
     port map (
      E(0) => IS_CE,
      \FSM_sequential_current_state_reg[0]\ => INST_LFSR_n_5,
      \FSM_sequential_current_state_reg[1]\ => INST_LFSR_n_4,
      KEY_REG_CE => KEY_REG_CE,
      Q(0) => lfsr_parallel_out(4),
      \Q_reg[15]\ => INST_LFSR_n_3,
      clk_out1 => clk_out1,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => \FSM_sequential_current_state[0]_i_4_n_0\,
      \out\(1 downto 0) => current_state_0(1 downto 0)
    );
\current_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_state_0(0),
      I1 => current_state_0(1),
      O => \current_state[1]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_wiz_0;

architecture STRUCTURE of clk_wiz_0 is
  signal NLW_inst_locked_UNCONNECTED : STD_LOGIC;
begin
  locked <= 'Z';
inst: entity work.clk_wiz_0_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      locked => NLW_inst_locked_UNCONNECTED,
      reset => reset
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
  attribute Datapath of Testing_IP : entity is 16;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Testing_IP : entity is "17d18623";
end Testing_IP;

architecture STRUCTURE of Testing_IP is
  signal INST_CNT_n_0 : STD_LOGIC;
  signal INST_CNT_n_1 : STD_LOGIC;
  signal Simon_DUT_n_0 : STD_LOGIC;
  signal Simon_DUT_n_1 : STD_LOGIC;
  signal cnt_internal_value : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal div_clk : STD_LOGIC;
  signal led_out_OBUF : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal NLW_clock_div_locked_UNCONNECTED : STD_LOGIC;
  attribute syn_black_box : string;
  attribute syn_black_box of clock_div : label is "TRUE";
begin
INST_CNT: entity work.CNT
     port map (
      Q(2 downto 0) => cnt_internal_value(2 downto 0),
      clk_out1 => div_clk,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[0]\ => INST_CNT_n_0,
      \current_state_reg[2]\ => INST_CNT_n_1,
      rst_IBUF => rst_IBUF
    );
Simon_DUT: entity work.Simon_32_64_parallel
     port map (
      Q(2 downto 0) => cnt_internal_value(2 downto 0),
      clk_out1 => div_clk,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => Simon_DUT_n_0,
      \current_state_reg[1]_0\ => INST_CNT_n_1,
      \current_state_reg[2]\ => Simon_DUT_n_1,
      \current_state_reg[2]_0\ => \current_state[2]_i_2_n_0\,
      rst_IBUF => rst_IBUF,
      start_IBUF => start_IBUF
    );
clock_div: entity work.clk_wiz_0
     port map (
      clk_in1 => clk,
      clk_out1 => div_clk,
      locked => NLW_clock_div_locked_UNCONNECTED,
      reset => '0'
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      O => \current_state[2]_i_2_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => div_clk,
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
      C => div_clk,
      CE => '1',
      D => Simon_DUT_n_0,
      Q => current_state(1),
      R => '0'
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => div_clk,
      CE => '1',
      D => Simon_DUT_n_1,
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
      I0 => current_state(1),
      I1 => current_state(2),
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
