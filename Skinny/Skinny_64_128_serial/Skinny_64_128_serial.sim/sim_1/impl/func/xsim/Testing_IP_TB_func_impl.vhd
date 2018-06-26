-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jun 21 14:52:32 2018
-- Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {F:/Documenti 2/University/Magistrale/Progettazione di
--               Sistemi Integrati/VHDL
--               projects/Xilinx_contest/Skinny/Skinny_64_128_serial/Skinny_64_128_serial.sim/sim_1/impl/func/xsim/Testing_IP_TB_func_impl.vhd}
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
    \current_state_reg[2]\ : out STD_LOGIC;
    \current_state_reg[0]\ : out STD_LOGIC;
    \temp_reg_reg[14]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[13]\ : out STD_LOGIC;
    \temp_reg_reg[12]\ : out STD_LOGIC;
    \temp_reg_reg[28]\ : out STD_LOGIC;
    \current_state_reg[2]_0\ : out STD_LOGIC;
    \current_state_reg[2]_1\ : out STD_LOGIC;
    \temp_reg_reg[30]\ : out STD_LOGIC;
    \temp_reg_reg[29]\ : out STD_LOGIC;
    \temp_reg_reg[31]\ : out STD_LOGIC;
    \temp_reg_reg[15]\ : out STD_LOGIC;
    \temp_reg_reg[12]_0\ : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_IBUF : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    \temp_reg_reg[13]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC;
    \temp_reg_reg[14]_0\ : in STD_LOGIC;
    \current_state_reg[2]_2\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC
  );
end CNT;

architecture STRUCTURE of CNT is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ce : STD_LOGIC;
  signal \cnt_internal_value[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_internal_value[4]_i_3__0_n_0\ : STD_LOGIC;
  signal cnt_out_W : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_internal_value[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_internal_value[3]_i_1__0\ : label is "soft_lutpair5";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  lopt <= cnt_out_W(2);
  lopt_1 <= cnt_out_W(1);
  \temp_reg_reg[13]\ <= 'Z';
\cnt_internal_value[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cnt_internal_value[0]_i_1__0_n_0\
    );
\cnt_internal_value[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => cnt_out_W(1),
      O => \plusOp__0\(1)
    );
\cnt_internal_value[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt_out_W(2),
      I1 => cnt_out_W(1),
      I2 => \^q\(0),
      O => \cnt_internal_value[2]_i_1__0_n_0\
    );
\cnt_internal_value[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(2),
      I3 => \^q\(0),
      O => \cnt_internal_value[3]_i_1__0_n_0\
    );
\cnt_internal_value[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      O => ce
    );
\cnt_internal_value[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => cnt_out_W(1),
      I3 => \^q\(1),
      I4 => cnt_out_W(2),
      O => \plusOp__0\(4)
    );
\cnt_internal_value[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      O => \cnt_internal_value[4]_i_3__0_n_0\
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ce,
      CLR => \cnt_internal_value[4]_i_3__0_n_0\,
      D => \cnt_internal_value[0]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ce,
      CLR => \cnt_internal_value[4]_i_3__0_n_0\,
      D => \plusOp__0\(1),
      Q => cnt_out_W(1)
    );
\cnt_internal_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ce,
      CLR => \cnt_internal_value[4]_i_3__0_n_0\,
      D => \cnt_internal_value[2]_i_1__0_n_0\,
      Q => cnt_out_W(2)
    );
\cnt_internal_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ce,
      CLR => \cnt_internal_value[4]_i_3__0_n_0\,
      D => \cnt_internal_value[3]_i_1__0_n_0\,
      Q => \^q\(1)
    );
\cnt_internal_value_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ce,
      CLR => \cnt_internal_value[4]_i_3__0_n_0\,
      D => \plusOp__0\(4),
      Q => \^q\(2)
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF04CC"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => rst_IBUF,
      O => \current_state_reg[0]\
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => cnt_out_W(1),
      I3 => cnt_out_W(2),
      I4 => \^q\(0),
      O => \current_state[0]_i_2_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010111111"
    )
        port map (
      I0 => \current_state[2]_i_2_n_0\,
      I1 => \temp_reg_reg[12]_0\,
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => \current_state[2]_i_4_n_0\,
      I5 => rst_IBUF,
      O => \current_state_reg[2]\
    );
\current_state[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFAAFAB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => cnt_out_W(2),
      I3 => \^q\(0),
      I4 => cnt_out_W(1),
      O => \current_state[2]_i_12_n_0\
    );
\current_state[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => current_state(0),
      I3 => cnt_out_W(2),
      I4 => \^q\(2),
      I5 => cnt_out_W(1),
      O => \current_state[2]_i_13_n_0\
    );
\current_state[2]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7EBEEEBA"
    )
        port map (
      I0 => \^q\(2),
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \current_state_reg[2]_0\
    );
\current_state[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6BBBEBBB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => cnt_out_W(2),
      I3 => \^q\(1),
      I4 => cnt_out_W(1),
      O => \current_state_reg[2]_1\
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => \current_state[2]_i_2_n_0\
    );
\current_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF6FFFFFFFF"
    )
        port map (
      I0 => \current_state[2]_i_9_n_0\,
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => \FSM_sequential_current_state_reg[2]_0\,
      I3 => \current_state[2]_i_12_n_0\,
      I4 => \current_state[2]_i_13_n_0\,
      I5 => \temp_reg_reg[14]_0\,
      O => \current_state[2]_i_4_n_0\
    );
\current_state[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAABABA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => cnt_out_W(2),
      I3 => cnt_out_W(1),
      I4 => \^q\(0),
      O => \current_state[2]_i_9_n_0\
    );
\temp_reg_reg[10]_srl3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08280AAA"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]\,
      I1 => \^q\(0),
      I2 => cnt_out_W(2),
      I3 => \^q\(1),
      I4 => cnt_out_W(1),
      O => \temp_reg_reg[14]\
    );
\temp_reg_reg[11]_srl3_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_out_W(1),
      I1 => cnt_out_W(2),
      O => \temp_reg_reg[15]\
    );
\temp_reg_reg[24]_srl7_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5000054144514055"
    )
        port map (
      I0 => \current_state_reg[2]_2\,
      I1 => \^q\(2),
      I2 => cnt_out_W(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => cnt_out_W(1),
      O => \temp_reg_reg[28]\
    );
\temp_reg_reg[25]_srl7_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003EE005F6"
    )
        port map (
      I0 => cnt_out_W(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => cnt_out_W(2),
      I4 => \^q\(1),
      I5 => \current_state_reg[2]_2\,
      O => \temp_reg_reg[29]\
    );
\temp_reg_reg[26]_srl7_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000545151110140"
    )
        port map (
      I0 => \current_state_reg[2]_2\,
      I1 => cnt_out_W(1),
      I2 => cnt_out_W(2),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \temp_reg_reg[30]\
    );
\temp_reg_reg[27]_srl7_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440114455154511"
    )
        port map (
      I0 => \current_state_reg[2]_2\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => cnt_out_W(1),
      I5 => cnt_out_W(2),
      O => \temp_reg_reg[31]\
    );
\temp_reg_reg[8]_srl3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"220A0A20"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]\,
      I1 => cnt_out_W(2),
      I2 => cnt_out_W(1),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \temp_reg_reg[12]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg is
  port (
    \temp_reg_reg[15]_0\ : out STD_LOGIC;
    IS_serial_output_first_row_buf : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \current_state_reg[1]\ : out STD_LOGIC;
    \current_state_reg[1]_0\ : out STD_LOGIC;
    \current_state_reg[1]_1\ : out STD_LOGIC;
    IS_serial_in_fourth_row_buf : out STD_LOGIC_VECTOR ( 0 to 0 );
    IS_serial_in_second_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_state_reg[2]\ : out STD_LOGIC;
    \temp_reg_reg[12]_0\ : out STD_LOGIC;
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    \temp_reg_reg[15]_1\ : out STD_LOGIC;
    \temp_reg_reg[14]_0\ : out STD_LOGIC;
    \temp_reg_reg[14]_1\ : out STD_LOGIC;
    IS_enable1_buf : in STD_LOGIC;
    IS_serial_in_first_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_IBUF : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    IS_serial_output_third_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \cnt_internal_value_reg[0]\ : in STD_LOGIC;
    IS_serial_output_fourth_row_buf : in STD_LOGIC_VECTOR ( 0 to 0 );
    IS_serial_output_second_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cnt_internal_value_reg[4]\ : in STD_LOGIC;
    \lfsr_internal_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_0\ : in STD_LOGIC;
    \lfsr_internal_reg[2]\ : in STD_LOGIC;
    \temp_reg_reg[15]_2\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    \lfsr_internal_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : in STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC
  );
end IS_shift_reg;

architecture STRUCTURE of IS_shift_reg is
  signal \^is_serial_output_first_row_buf\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \^current_state_reg[1]\ : STD_LOGIC;
  signal \^current_state_reg[1]_1\ : STD_LOGIC;
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[15]_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[0]\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
begin
  IS_serial_output_first_row_buf(1 downto 0) <= \^is_serial_output_first_row_buf\(1 downto 0);
  \current_state_reg[1]\ <= \^current_state_reg[1]\;
  \current_state_reg[1]_1\ <= \^current_state_reg[1]_1\;
  \temp_reg_reg[15]_0\ <= \^temp_reg_reg[15]_0\;
  \temp_reg_reg[15]_1\ <= 'Z';
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA2AA"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => start_IBUF,
      I4 => \^current_state_reg[1]_1\,
      I5 => rst_IBUF,
      O => \current_state_reg[1]_0\
    );
\current_state[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6AAA600060000"
    )
        port map (
      I0 => \cnt_internal_value_reg[4]\,
      I1 => \^is_serial_output_first_row_buf\(1),
      I2 => \lfsr_internal_reg[0]\,
      I3 => \FSM_sequential_current_state_reg[2]\,
      I4 => \^is_serial_output_first_row_buf\(0),
      I5 => \cnt_internal_value_reg[4]_0\,
      O => \current_state_reg[2]\
    );
\current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0D00000"
    )
        port map (
      I0 => \^current_state_reg[1]\,
      I1 => \lfsr_internal_reg[2]\,
      I2 => \current_state[2]_i_6_n_0\,
      I3 => \temp_reg_reg[15]_2\,
      I4 => \^is_serial_output_first_row_buf\(1),
      I5 => \FSM_sequential_current_state_reg[1]\,
      O => \^current_state_reg[1]_1\
    );
\current_state[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^is_serial_output_first_row_buf\(0),
      I1 => \lfsr_internal_reg[0]_0\(0),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(0),
      O => \current_state[2]_i_6_n_0\
    );
\temp_reg_reg[10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable1_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(2),
      Q => \temp_reg_reg[10]_srl3_n_0\
    );
\temp_reg_reg[10]_srl3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333B3008033B0008"
    )
        port map (
      I0 => \^is_serial_output_first_row_buf\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => IS_serial_output_third_row_buf(2),
      I5 => IS_serial_output_second_row_buf(2),
      O => IS_serial_in_second_row_buf(2)
    );
\temp_reg_reg[10]_srl3_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(1),
      I2 => \out\(0),
      O => \temp_reg_reg[14]_0\
    );
\temp_reg_reg[10]_srl3_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \temp_reg_reg[14]_1\
    );
\temp_reg_reg[11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable1_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(3),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303333BB30000088"
    )
        port map (
      I0 => \^temp_reg_reg[15]_0\,
      I1 => \out\(2),
      I2 => IS_serial_output_second_row_buf(3),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => IS_serial_output_third_row_buf(3),
      O => IS_serial_in_second_row_buf(3)
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable1_buf,
      D => \temp_reg_reg[8]_srl3_n_0\,
      Q => \^current_state_reg[1]\,
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable1_buf,
      D => \temp_reg_reg[9]_srl3_n_0\,
      Q => \^is_serial_output_first_row_buf\(0),
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable1_buf,
      D => \temp_reg_reg[10]_srl3_n_0\,
      Q => \^is_serial_output_first_row_buf\(1),
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable1_buf,
      D => \temp_reg_reg[11]_srl3_n_0\,
      Q => \^temp_reg_reg[15]_0\,
      R => '0'
    );
\temp_reg_reg[8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable1_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(0),
      Q => \temp_reg_reg[8]_srl3_n_0\
    );
\temp_reg_reg[8]_srl3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333B3008033B0008"
    )
        port map (
      I0 => \^current_state_reg[1]\,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => IS_serial_output_third_row_buf(0),
      I5 => IS_serial_output_second_row_buf(0),
      O => IS_serial_in_second_row_buf(0)
    );
\temp_reg_reg[8]_srl3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEFFFEEFEFEEF"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \^is_serial_output_first_row_buf\(1),
      I3 => \^is_serial_output_first_row_buf\(0),
      I4 => \^temp_reg_reg[15]_0\,
      I5 => \^current_state_reg[1]\,
      O => \temp_reg_reg[12]_0\
    );
\temp_reg_reg[9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable1_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(1),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
\temp_reg_reg[9]_srl3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333B3008033B0008"
    )
        port map (
      I0 => \^is_serial_output_first_row_buf\(0),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => IS_serial_output_third_row_buf(1),
      I5 => IS_serial_output_second_row_buf(1),
      O => IS_serial_in_second_row_buf(1)
    );
\temp_reg_reg[9]_srl3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100110011010010"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \^temp_reg_reg[15]_0\,
      I3 => \^is_serial_output_first_row_buf\(1),
      I4 => \^current_state_reg[1]\,
      I5 => \^is_serial_output_first_row_buf\(0),
      O => \temp_reg_reg[13]_0\
    );
\xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEEF"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \^is_serial_output_first_row_buf\(1),
      I3 => \^is_serial_output_first_row_buf\(0),
      I4 => \^temp_reg_reg[15]_0\,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2\
    );
\xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFF10FF10FFEFFF"
    )
        port map (
      I0 => lopt,
      I1 => lopt_1,
      I2 => lopt_2,
      I3 => lopt_3,
      I4 => lopt_4,
      I5 => lopt_5,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1\
    );
\xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDCCECCCECCCFDCC"
    )
        port map (
      I0 => \out\(0),
      I1 => \cnt_internal_value_reg[0]\,
      I2 => IS_serial_output_fourth_row_buf(0),
      I3 => \out\(1),
      I4 => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2\,
      I5 => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1\,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[0]\
    );
\xlnx_opt_LUT_temp_reg_reg[10]_srl3_i_1_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3337337300040040"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \^is_serial_output_first_row_buf\(1),
      I3 => \out\(1),
      I4 => IS_serial_output_third_row_buf(2),
      I5 => \xlnx_opt_IS_serial_in_fourth_row_buf[0]\,
      O => IS_serial_in_fourth_row_buf(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg_1 is
  port (
    \temp_reg_reg[14]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[15]_0\ : out STD_LOGIC;
    IS_serial_in_first_row_buf : out STD_LOGIC_VECTOR ( 0 to 0 );
    IS_serial_in_third_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    \temp_reg_reg[13]_1\ : out STD_LOGIC;
    IS_enable4_buf : in STD_LOGIC;
    \temp_reg_reg[14]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[63]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_internal_value_reg[4]\ : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : in STD_LOGIC;
    IS_serial_output_second_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_serial_output_third_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    current_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
    lopt_12 : in STD_LOGIC;
    lopt_13 : in STD_LOGIC;
    lopt_14 : in STD_LOGIC;
    lopt_15 : in STD_LOGIC;
    lopt_16 : in STD_LOGIC;
    lopt_17 : in STD_LOGIC;
    lopt_18 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IS_shift_reg_1 : entity is "IS_shift_reg";
end IS_shift_reg_1;

architecture STRUCTURE of IS_shift_reg_1 is
  signal IS_serial_in_fourth_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_output_fourth_row_buf : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[14]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^temp_reg_reg[15]_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[0]\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[0]_3\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[3]\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[3]_1\ : STD_LOGIC;
  signal \xlnx_opt_IS_serial_in_fourth_row_buf[3]_2\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
begin
  \temp_reg_reg[14]_0\(2 downto 0) <= \^temp_reg_reg[14]_0\(2 downto 0);
  \temp_reg_reg[15]_0\ <= \^temp_reg_reg[15]_0\;
\temp_reg_reg[10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable4_buf,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[14]_1\(0),
      Q => \temp_reg_reg[10]_srl3_n_0\
    );
\temp_reg_reg[10]_srl3_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003CCCAAAAAA"
    )
        port map (
      I0 => \^temp_reg_reg[14]_0\(2),
      I1 => IS_serial_output_third_row_buf(2),
      I2 => IS_serial_output_second_row_buf(2),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => IS_serial_in_third_row_buf(2)
    );
\temp_reg_reg[11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable4_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_fourth_row_buf(3),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => Q(2),
      O => \^temp_reg_reg[15]_0\
    );
\temp_reg_reg[11]_srl3_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCFCCCFCC6F6C"
    )
        port map (
      I0 => IS_serial_output_fourth_row_buf(3),
      I1 => \FSM_sequential_current_state_reg[2]_0\,
      I2 => \out\(2),
      I3 => IS_serial_output_second_row_buf(3),
      I4 => \out\(0),
      I5 => \out\(1),
      O => IS_serial_in_first_row_buf(0)
    );
\temp_reg_reg[11]_srl3_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003CCCAAAAAA"
    )
        port map (
      I0 => IS_serial_output_fourth_row_buf(3),
      I1 => IS_serial_output_third_row_buf(3),
      I2 => IS_serial_output_second_row_buf(3),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => IS_serial_in_third_row_buf(3)
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable4_buf,
      D => \temp_reg_reg[8]_srl3_n_0\,
      Q => \^temp_reg_reg[14]_0\(0),
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable4_buf,
      D => \temp_reg_reg[9]_srl3_n_0\,
      Q => \^temp_reg_reg[14]_0\(1),
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable4_buf,
      D => \temp_reg_reg[10]_srl3_n_0\,
      Q => \^temp_reg_reg[14]_0\(2),
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable4_buf,
      D => \temp_reg_reg[11]_srl3_n_0\,
      Q => IS_serial_output_fourth_row_buf(3),
      R => '0'
    );
\temp_reg_reg[8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable4_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_fourth_row_buf(0),
      Q => \temp_reg_reg[8]_srl3_n_0\
    );
\temp_reg_reg[8]_srl3_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003CCCAAAAAA"
    )
        port map (
      I0 => \^temp_reg_reg[14]_0\(0),
      I1 => IS_serial_output_third_row_buf(0),
      I2 => IS_serial_output_second_row_buf(0),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => IS_serial_in_third_row_buf(0)
    );
\temp_reg_reg[8]_srl3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => \temp_reg_reg[8]_srl3_i_4_n_0\
    );
\temp_reg_reg[9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable4_buf,
      CLK => clk_IBUF_BUFG,
      D => \FSM_sequential_current_state_reg[2]\(0),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
\temp_reg_reg[9]_srl3_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003CCCAAAAAA"
    )
        port map (
      I0 => \^temp_reg_reg[14]_0\(1),
      I1 => IS_serial_output_third_row_buf(1),
      I2 => IS_serial_output_second_row_buf(1),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => IS_serial_in_third_row_buf(1)
    );
\temp_reg_reg[9]_srl3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      O => \temp_reg_reg[13]_0\
    );
\temp_reg_reg[9]_srl3_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^temp_reg_reg[14]_0\(1),
      I1 => \out\(1),
      I2 => \out\(0),
      O => \temp_reg_reg[13]_1\
    );
\xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEEF"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => lopt,
      I3 => lopt_1,
      I4 => lopt_2,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[3]_2\
    );
\xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F6F9F60609060"
    )
        port map (
      I0 => lopt_3,
      I1 => lopt_4,
      I2 => lopt_5,
      I3 => lopt_6,
      I4 => lopt_7,
      I5 => \xlnx_opt_IS_serial_in_fourth_row_buf[3]_2\,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[3]_1\
    );
\xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F8F8F88888888"
    )
        port map (
      I0 => \temp_reg_reg[8]_srl3_i_4_n_0\,
      I1 => IS_serial_output_fourth_row_buf(3),
      I2 => \cnt_internal_value_reg[1]\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^temp_reg_reg[15]_0\,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[3]\
    );
\xlnx_opt_LUT_temp_reg_reg[11]_srl3_i_2_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FF33FF10FF00"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \FSM_sequential_current_state_reg[2]_0\,
      I4 => \xlnx_opt_IS_serial_in_fourth_row_buf[3]_1\,
      I5 => \xlnx_opt_IS_serial_in_fourth_row_buf[3]\,
      O => IS_serial_in_fourth_row_buf(3)
    );
\xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF3C5A"
    )
        port map (
      I0 => lopt_8,
      I1 => lopt_9,
      I2 => lopt_10,
      I3 => lopt_11,
      I4 => lopt_12,
      I5 => lopt_13,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_3\
    );
\xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => lopt_13,
      I1 => lopt_14,
      I2 => lopt_15,
      I3 => lopt_16,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2\
    );
\xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05003700FA00C800"
    )
        port map (
      I0 => lopt_10,
      I1 => lopt_14,
      I2 => lopt_17,
      I3 => lopt_18,
      I4 => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_3\,
      I5 => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_2\,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1\
    );
\xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFDFF"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => IS_serial_output_third_row_buf(0),
      I4 => lopt_2,
      O => \xlnx_opt_IS_serial_in_fourth_row_buf[0]\
    );
\xlnx_opt_LUT_temp_reg_reg[8]_srl3_i_1_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555444FFFFFFFF"
    )
        port map (
      I0 => \out\(2),
      I1 => \cnt_internal_value_reg[2]\,
      I2 => \^temp_reg_reg[14]_0\(0),
      I3 => \temp_reg_reg[8]_srl3_i_4_n_0\,
      I4 => \xlnx_opt_IS_serial_in_fourth_row_buf[0]_1\,
      I5 => \xlnx_opt_IS_serial_in_fourth_row_buf[0]\,
      O => IS_serial_in_fourth_row_buf(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg_2 is
  port (
    IS_serial_output_second_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_serial_in_first_row_buf : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_enable2_buf : in STD_LOGIC;
    IS_serial_in_second_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC;
    \temp_reg_reg[14]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    IS_serial_output_third_row_buf : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_serial_output_first_row_buf : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \temp_reg_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IS_shift_reg_2 : entity is "IS_shift_reg";
end IS_shift_reg_2;

architecture STRUCTURE of IS_shift_reg_2 is
  signal \^is_serial_output_second_row_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
begin
  IS_serial_output_second_row_buf(3 downto 0) <= \^is_serial_output_second_row_buf\(3 downto 0);
\temp_reg_reg[10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable2_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(2),
      Q => \temp_reg_reg[10]_srl3_n_0\
    );
\temp_reg_reg[10]_srl3_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4444F444F44F444"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[2]\,
      I1 => \^is_serial_output_second_row_buf\(2),
      I2 => \temp_reg_reg[14]_0\(2),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => IS_serial_output_third_row_buf(2),
      I5 => IS_serial_output_first_row_buf(1),
      O => IS_serial_in_first_row_buf(2)
    );
\temp_reg_reg[11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable2_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(3),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable2_buf,
      D => \temp_reg_reg[8]_srl3_n_0\,
      Q => \^is_serial_output_second_row_buf\(0),
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable2_buf,
      D => \temp_reg_reg[9]_srl3_n_0\,
      Q => \^is_serial_output_second_row_buf\(1),
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable2_buf,
      D => \temp_reg_reg[10]_srl3_n_0\,
      Q => \^is_serial_output_second_row_buf\(2),
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable2_buf,
      D => \temp_reg_reg[11]_srl3_n_0\,
      Q => \^is_serial_output_second_row_buf\(3),
      R => '0'
    );
\temp_reg_reg[8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable2_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(0),
      Q => \temp_reg_reg[8]_srl3_n_0\
    );
\temp_reg_reg[8]_srl3_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4444F444F44F444"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[2]\,
      I1 => \^is_serial_output_second_row_buf\(0),
      I2 => \temp_reg_reg[14]_0\(0),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => IS_serial_output_third_row_buf(0),
      I5 => \temp_reg_reg[12]_0\(0),
      O => IS_serial_in_first_row_buf(0)
    );
\temp_reg_reg[9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable2_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(1),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
\temp_reg_reg[9]_srl3_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4444F444F44F444"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[2]\,
      I1 => \^is_serial_output_second_row_buf\(1),
      I2 => \temp_reg_reg[14]_0\(1),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => IS_serial_output_third_row_buf(1),
      I5 => IS_serial_output_first_row_buf(0),
      O => IS_serial_in_first_row_buf(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg_3 is
  port (
    IS_serial_output_third_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[15]_0\ : out STD_LOGIC;
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    \temp_reg_reg[12]_0\ : out STD_LOGIC;
    IS_enable3_buf : in STD_LOGIC;
    IS_serial_in_third_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[15]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IS_serial_output_first_row_buf : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IS_shift_reg_3 : entity is "IS_shift_reg";
end IS_shift_reg_3;

architecture STRUCTURE of IS_shift_reg_3 is
  signal \^is_serial_output_third_row_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\Skinny_DUT/INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
begin
  IS_serial_output_third_row_buf(3 downto 0) <= \^is_serial_output_third_row_buf\(3 downto 0);
  \temp_reg_reg[12]_0\ <= 'Z';
  \temp_reg_reg[13]_0\ <= 'Z';
\temp_reg_reg[10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable3_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(2),
      Q => \temp_reg_reg[10]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable3_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(3),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020200"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^is_serial_output_third_row_buf\(3),
      I4 => \temp_reg_reg[15]_1\(1),
      O => \temp_reg_reg[15]_0\
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable3_buf,
      D => \temp_reg_reg[8]_srl3_n_0\,
      Q => \^is_serial_output_third_row_buf\(0),
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable3_buf,
      D => \temp_reg_reg[9]_srl3_n_0\,
      Q => \^is_serial_output_third_row_buf\(1),
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable3_buf,
      D => \temp_reg_reg[10]_srl3_n_0\,
      Q => \^is_serial_output_third_row_buf\(2),
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => IS_enable3_buf,
      D => \temp_reg_reg[11]_srl3_n_0\,
      Q => \^is_serial_output_third_row_buf\(3),
      R => '0'
    );
\temp_reg_reg[8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable3_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(0),
      Q => \temp_reg_reg[8]_srl3_n_0\
    );
\temp_reg_reg[9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => IS_enable3_buf,
      CLK => clk_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(1),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SKINNY_CNT is
  port (
    state : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg_reg[32]\ : out STD_LOGIC;
    \temp_reg_reg[13]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    IS_enable1_buf : out STD_LOGIC;
    IS_enable4_buf : out STD_LOGIC;
    IS_enable2_buf : out STD_LOGIC;
    IS_enable3_buf : out STD_LOGIC;
    TK2_REG_serial_in_buf : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[31]\ : out STD_LOGIC;
    \temp_reg_reg[28]\ : out STD_LOGIC;
    state_0 : out STD_LOGIC;
    \temp_reg_reg[32]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg_reg[15]\ : out STD_LOGIC;
    \temp_reg_reg[14]\ : out STD_LOGIC;
    \temp_reg_reg[40]\ : out STD_LOGIC;
    \temp_reg_reg[40]_0\ : out STD_LOGIC;
    \temp_reg_reg[12]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[1]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[3]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC;
    \lfsr_internal_reg[0]\ : in STD_LOGIC;
    TK2_REG_parallel_out_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cnt_internal_value_reg[4]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]_1\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_1\ : in STD_LOGIC;
    \current_state_reg[2]\ : in STD_LOGIC;
    \lfsr_internal_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    TK1_REG_parallel_out_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[0]_2\ : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_state_reg[2]_0\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    pwropt : out STD_LOGIC;
    pwropt_1 : out STD_LOGIC;
    pwropt_2 : out STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : in STD_LOGIC;
    lopt_7 : in STD_LOGIC;
    lopt_8 : in STD_LOGIC;
    lopt_9 : in STD_LOGIC;
    lopt_10 : in STD_LOGIC;
    lopt_11 : in STD_LOGIC;
    lopt_12 : out STD_LOGIC;
    lopt_13 : out STD_LOGIC
  );
end SKINNY_CNT;

architecture STRUCTURE of SKINNY_CNT is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[0]\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[1]\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[2]\ : STD_LOGIC;
  signal \^is_enable2_buf\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4\ : STD_LOGIC;
  signal cnt_out_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^lopt\ : STD_LOGIC;
  signal \^lopt_1\ : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal \^lopt_4\ : STD_LOGIC;
  signal \^lopt_5\ : STD_LOGIC;
  signal \^lopt_6\ : STD_LOGIC;
  signal \^lopt_7\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst_CNT_buf : STD_LOGIC;
  signal \temp_reg_reg[10]_srl3_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_i_3__0_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_i_7_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[31]\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_i_8_n_0\ : STD_LOGIC;
  signal \xlnx_opt_FSM_sequential_current_state_reg[2]\ : STD_LOGIC;
  signal \xlnx_opt_TK2_REG_serial_in_buf[0]\ : STD_LOGIC;
  signal \xlnx_opt_TK2_REG_serial_in_buf[1]\ : STD_LOGIC;
  signal \xlnx_opt_TK2_REG_serial_in_buf[2]\ : STD_LOGIC;
  signal \xlnx_opt_temp_reg_reg[13][0]\ : STD_LOGIC;
  signal \xlnx_opt_temp_reg_reg[13][0]_1\ : STD_LOGIC;
  signal \xlnx_opt_temp_reg_reg[13][0]_2\ : STD_LOGIC;
  signal \xlnx_opt_temp_reg_reg[13][0]_3\ : STD_LOGIC;
  signal \xlnx_opt_temp_reg_reg[13][0]_4\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_internal_value[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_internal_value[1]_i_1\ : label is "soft_lutpair23";
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \cnt_internal_value_reg[0]\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \cnt_internal_value_reg[0]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \cnt_internal_value_reg[1]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cnt_internal_value_reg[1]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \cnt_internal_value_reg[2]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cnt_internal_value_reg[2]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \cnt_internal_value_reg[3]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cnt_internal_value_reg[3]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \cnt_internal_value_reg[4]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \cnt_internal_value_reg[4]\ : label is "CE=AUG";
begin
  E(0) <= \^e\(0);
  \FSM_sequential_current_state_reg[0]\ <= \^fsm_sequential_current_state_reg[0]\;
  \FSM_sequential_current_state_reg[1]\ <= \^fsm_sequential_current_state_reg[1]\;
  \FSM_sequential_current_state_reg[2]\ <= \^fsm_sequential_current_state_reg[2]\;
  IS_enable2_buf <= \^is_enable2_buf\;
  Q(0) <= \^q\(0);
  \^lopt\ <= lopt_4;
  \^lopt_1\ <= lopt_5;
  \^lopt_2\ <= lopt_6;
  \^lopt_3\ <= lopt_7;
  \^lopt_4\ <= lopt_8;
  \^lopt_5\ <= lopt_9;
  \^lopt_6\ <= lopt_10;
  \^lopt_7\ <= lopt_11;
  lopt <= \temp_reg_reg[11]_srl3_i_6_n_0\;
  lopt_1 <= \temp_reg_reg[11]_srl3_i_7_n_0\;
  lopt_12 <= cnt_out_buf(3);
  lopt_13 <= \temp_reg_reg[8]_srl3_i_8_n_0\;
  lopt_2 <= \temp_reg_reg[10]_srl3_i_6_n_0\;
  lopt_3 <= cnt_out_buf(2);
  pwropt <= rst_CNT_buf;
  pwropt_1 <= \FSM_sequential_current_state[1]_i_2_n_0\;
  pwropt_2 <= \temp_reg_reg[11]_srl3_i_3_n_0\;
  \temp_reg_reg[31]\ <= \^temp_reg_reg[31]\;
  \temp_reg_reg[12]\ <= 'Z';
  \temp_reg_reg[14]\ <= 'Z';
  \temp_reg_reg[15]\ <= 'Z';
  \temp_reg_reg[28]\ <= 'Z';
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2E2E200E2E2"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \out\(2),
      I2 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I3 => current_state(1),
      I4 => current_state(0),
      I5 => current_state(2),
      O => \^fsm_sequential_current_state_reg[0]\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"434F404C505C404C"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \current_state_reg[2]\,
      I4 => \FSM_sequential_current_state[0]_i_4_n_0\,
      I5 => \^q\(0),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00102000"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \FSM_sequential_current_state[0]_i_5_n_0\,
      I3 => cnt_out_buf(3),
      I4 => \^q\(0),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt_out_buf(3),
      I1 => cnt_out_buf(1),
      I2 => cnt_out_buf(0),
      I3 => cnt_out_buf(2),
      O => \FSM_sequential_current_state[0]_i_4_n_0\
    );
\FSM_sequential_current_state[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cnt_out_buf(2),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(1),
      O => \FSM_sequential_current_state[0]_i_5_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4EEE0EA"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I4 => \current_state_reg[2]\,
      I5 => \current_state_reg[2]_0\,
      O => \^fsm_sequential_current_state_reg[1]\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => cnt_out_buf(2),
      I1 => \out\(0),
      I2 => cnt_out_buf(3),
      I3 => \^q\(0),
      I4 => cnt_out_buf(1),
      I5 => cnt_out_buf(0),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\cnt_internal_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_out_buf(0),
      O => plusOp(0)
    );
\cnt_internal_value[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_out_buf(1),
      I1 => cnt_out_buf(0),
      O => plusOp(1)
    );
\cnt_internal_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt_out_buf(2),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(1),
      O => plusOp(2)
    );
\cnt_internal_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cnt_out_buf(3),
      I1 => cnt_out_buf(1),
      I2 => cnt_out_buf(0),
      I3 => cnt_out_buf(2),
      O => plusOp(3)
    );
\cnt_internal_value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      O => rst_CNT_buf
    );
\cnt_internal_value[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      O => \^e\(0)
    );
\cnt_internal_value[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => cnt_out_buf(2),
      I2 => cnt_out_buf(0),
      I3 => cnt_out_buf(1),
      I4 => cnt_out_buf(3),
      O => plusOp(4)
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4\,
      D => plusOp(0),
      Q => cnt_out_buf(0),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4\,
      D => plusOp(1),
      Q => cnt_out_buf(1),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4\,
      D => plusOp(2),
      Q => cnt_out_buf(2),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4\,
      D => plusOp(3),
      Q => cnt_out_buf(3),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4\,
      D => plusOp(4),
      Q => \^q\(0),
      R => rst_CNT_buf
    );
\temp_reg[59]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \^q\(0),
      I3 => \out\(0),
      O => \temp_reg_reg[32]_0\
    );
\temp_reg[59]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCF2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      O => \temp_reg_reg[32]\
    );
\temp_reg[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A5B"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \^q\(0),
      O => \temp_reg_reg[40]\
    );
\temp_reg[63]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FF4"
    )
        port map (
      I0 => \out\(0),
      I1 => \^q\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \temp_reg_reg[40]_0\
    );
\temp_reg_reg[10]_srl3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_out_buf(1),
      I1 => cnt_out_buf(0),
      O => \temp_reg_reg[10]_srl3_i_6_n_0\
    );
\temp_reg_reg[11]_srl3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000503F0000503FF"
    )
        port map (
      I0 => \temp_reg_reg[11]_srl3_i_3_n_0\,
      I1 => \lfsr_internal_reg[0]\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \^q\(0),
      O => IS_enable1_buf
    );
\temp_reg_reg[11]_srl3_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A22AAAAA"
    )
        port map (
      I0 => \^is_enable2_buf\,
      I1 => \out\(1),
      I2 => cnt_out_buf(0),
      I3 => cnt_out_buf(1),
      I4 => \temp_reg_reg[11]_srl3_i_3__0_n_0\,
      O => IS_enable4_buf
    );
\temp_reg_reg[11]_srl3_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^is_enable2_buf\,
      I1 => \out\(1),
      I2 => \FSM_sequential_current_state[1]_i_2_n_0\,
      O => IS_enable3_buf
    );
\temp_reg_reg[11]_srl3_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333004733333347"
    )
        port map (
      I0 => \temp_reg_reg[11]_srl3_i_3_n_0\,
      I1 => \out\(2),
      I2 => \^q\(0),
      I3 => \out\(0),
      I4 => \out\(1),
      I5 => \lfsr_internal_reg[0]\,
      O => \^is_enable2_buf\
    );
\temp_reg_reg[11]_srl3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => cnt_out_buf(1),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(2),
      I3 => \^q\(0),
      I4 => cnt_out_buf(3),
      O => \temp_reg_reg[11]_srl3_i_3_n_0\
    );
\temp_reg_reg[11]_srl3_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^q\(0),
      I1 => cnt_out_buf(3),
      I2 => \out\(0),
      I3 => cnt_out_buf(2),
      O => \temp_reg_reg[11]_srl3_i_3__0_n_0\
    );
\temp_reg_reg[11]_srl3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => cnt_out_buf(3),
      O => \temp_reg_reg[11]_srl3_i_6_n_0\
    );
\temp_reg_reg[11]_srl3_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_out_buf(2),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(1),
      O => \temp_reg_reg[11]_srl3_i_7_n_0\
    );
\temp_reg_reg[27]_srl7_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1A1B"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \^q\(0),
      O => state
    );
\temp_reg_reg[27]_srl7_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F54"
    )
        port map (
      I0 => \out\(0),
      I1 => \^q\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => state_0
    );
\temp_reg_reg[27]_srl7_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => cnt_out_buf(3),
      I3 => \^q\(0),
      O => \^temp_reg_reg[31]\
    );
\temp_reg_reg[8]_srl3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => cnt_out_buf(3),
      I1 => \^q\(0),
      I2 => cnt_out_buf(0),
      I3 => cnt_out_buf(1),
      O => \temp_reg_reg[8]_srl3_i_8_n_0\
    );
\xlnx_opt_LUT_FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C077C377C077C077"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \lfsr_internal_reg[0]\,
      I5 => \temp_reg_reg[11]_srl3_i_3_n_0\,
      O => \xlnx_opt_FSM_sequential_current_state_reg[2]\
    );
\xlnx_opt_LUT_FSM_sequential_current_state[2]_i_1_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => \xlnx_opt_FSM_sequential_current_state_reg[2]\,
      O => \^fsm_sequential_current_state_reg[2]\
    );
\xlnx_opt_LUT_cnt_internal_value_reg[0]_CE_cooolgate_en_gate_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000000"
    )
        port map (
      I0 => plusOp(3),
      I1 => \^fsm_sequential_current_state_reg[2]\,
      I2 => \^fsm_sequential_current_state_reg[0]\,
      I3 => rst_CNT_buf,
      I4 => \^fsm_sequential_current_state_reg[1]\,
      I5 => \^e\(0),
      O => \cnt_internal_value_reg[0]_CE_cooolgate_en_sig_4\
    );
\xlnx_opt_LUT_temp_reg_reg[25]_srl7_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F088"
    )
        port map (
      I0 => \cnt_internal_value_reg[1]_1\,
      I1 => \^q\(0),
      I2 => TK2_REG_parallel_out_buf(1),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \xlnx_opt_TK2_REG_serial_in_buf[0]\
    );
\xlnx_opt_LUT_temp_reg_reg[25]_srl7_i_1_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3B0000"
    )
        port map (
      I0 => TK2_REG_parallel_out_buf(1),
      I1 => \out\(2),
      I2 => \^temp_reg_reg[31]\,
      I3 => TK2_REG_parallel_out_buf(0),
      I4 => \xlnx_opt_TK2_REG_serial_in_buf[0]\,
      O => TK2_REG_serial_in_buf(0)
    );
\xlnx_opt_LUT_temp_reg_reg[26]_srl7_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F088"
    )
        port map (
      I0 => \cnt_internal_value_reg[1]_0\,
      I1 => \^q\(0),
      I2 => TK2_REG_parallel_out_buf(2),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \xlnx_opt_TK2_REG_serial_in_buf[1]\
    );
\xlnx_opt_LUT_temp_reg_reg[26]_srl7_i_1_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3B0000"
    )
        port map (
      I0 => TK2_REG_parallel_out_buf(2),
      I1 => \out\(2),
      I2 => \^temp_reg_reg[31]\,
      I3 => TK2_REG_parallel_out_buf(1),
      I4 => \xlnx_opt_TK2_REG_serial_in_buf[1]\,
      O => TK2_REG_serial_in_buf(1)
    );
\xlnx_opt_LUT_temp_reg_reg[27]_srl7_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F088"
    )
        port map (
      I0 => \cnt_internal_value_reg[4]_0\,
      I1 => \^q\(0),
      I2 => TK2_REG_parallel_out_buf(3),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \xlnx_opt_TK2_REG_serial_in_buf[2]\
    );
\xlnx_opt_LUT_temp_reg_reg[27]_srl7_i_2_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB3B0000"
    )
        port map (
      I0 => TK2_REG_parallel_out_buf(3),
      I1 => \out\(2),
      I2 => \^temp_reg_reg[31]\,
      I3 => TK2_REG_parallel_out_buf(2),
      I4 => \xlnx_opt_TK2_REG_serial_in_buf[2]\,
      O => TK2_REG_serial_in_buf(2)
    );
\xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => cnt_out_buf(3),
      I1 => \^q\(0),
      I2 => TK1_REG_parallel_out_buf(1),
      I3 => TK2_REG_parallel_out_buf(1),
      O => \xlnx_opt_temp_reg_reg[13][0]_4\
    );
\xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFF00004000A"
    )
        port map (
      I0 => cnt_out_buf(3),
      I1 => \lfsr_internal_reg[5]\(5),
      I2 => cnt_out_buf(1),
      I3 => cnt_out_buf(0),
      I4 => cnt_out_buf(2),
      I5 => \FSM_sequential_current_state_reg[0]_1\,
      O => \xlnx_opt_temp_reg_reg[13][0]_3\
    );
\xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F3C0C1C0D0"
    )
        port map (
      I0 => cnt_out_buf(3),
      I1 => \^q\(0),
      I2 => \FSM_sequential_current_state_reg[0]_1\,
      I3 => \temp_reg_reg[11]_srl3_i_7_n_0\,
      I4 => \lfsr_internal_reg[5]\(1),
      I5 => \xlnx_opt_temp_reg_reg[13][0]_3\,
      O => \xlnx_opt_temp_reg_reg[13][0]_2\
    );
\xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEEEAAAEAAAEEA"
    )
        port map (
      I0 => \^lopt\,
      I1 => \^lopt_1\,
      I2 => \^lopt_2\,
      I3 => \^lopt_3\,
      I4 => \^lopt_4\,
      I5 => \^lopt_5\,
      O => \xlnx_opt_temp_reg_reg[13][0]_1\
    );
\xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFDFF"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^lopt_6\,
      I4 => \^lopt_7\,
      O => \xlnx_opt_temp_reg_reg[13][0]\
    );
\xlnx_opt_LUT_temp_reg_reg[9]_srl3_i_1_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55554004FFFFFFFF"
    )
        port map (
      I0 => \out\(2),
      I1 => \FSM_sequential_current_state_reg[1]_0\,
      I2 => \xlnx_opt_temp_reg_reg[13][0]_4\,
      I3 => \xlnx_opt_temp_reg_reg[13][0]_2\,
      I4 => \xlnx_opt_temp_reg_reg[13][0]_1\,
      I5 => \xlnx_opt_temp_reg_reg[13][0]\,
      O => \temp_reg_reg[13]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr is
  port (
    \current_state_reg[1]\ : out STD_LOGIC;
    \temp_reg_reg[12]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \current_state_reg[2]\ : out STD_LOGIC;
    \current_state_reg[1]_0\ : out STD_LOGIC;
    \current_state_reg[2]_0\ : out STD_LOGIC;
    \current_state_reg[1]_1\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
end lfsr;

architecture STRUCTURE of lfsr is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \current_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \lfsr_internal[0]_i_1_n_0\ : STD_LOGIC;
  signal \lfsr_internal[5]_i_1_n_0\ : STD_LOGIC;
  signal \lfsr_internal[5]_i_2_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[12]\ : STD_LOGIC;
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \temp_reg_reg[12]\ <= \^temp_reg_reg[12]\;
\current_state[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^temp_reg_reg[12]\,
      I4 => \temp_reg_reg[15]\(1),
      O => \current_state_reg[2]_0\
    );
\current_state[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \current_state[2]_i_15_n_0\,
      I1 => \out\(2),
      I2 => E(0),
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => \current_state_reg[2]\
    );
\current_state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \temp_reg_reg[15]\(0),
      O => \current_state[2]_i_15_n_0\
    );
\current_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \current_state_reg[1]_1\
    );
\current_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \temp_reg_reg[15]\(1),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \current_state_reg[1]_0\
    );
\current_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^temp_reg_reg[12]\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      O => \current_state_reg[1]\
    );
\lfsr_internal[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => \lfsr_internal[0]_i_1_n_0\
    );
\lfsr_internal[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \lfsr_internal[5]_i_1_n_0\
    );
\lfsr_internal[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \lfsr_internal[5]_i_2_n_0\
    );
\lfsr_internal_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal[5]_i_2_n_0\,
      D => \lfsr_internal[0]_i_1_n_0\,
      Q => \^q\(0),
      S => \lfsr_internal[5]_i_1_n_0\
    );
\lfsr_internal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal[5]_i_2_n_0\,
      D => \^q\(0),
      Q => \^q\(1),
      R => \lfsr_internal[5]_i_1_n_0\
    );
\lfsr_internal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal[5]_i_2_n_0\,
      D => \^q\(1),
      Q => \^q\(2),
      R => \lfsr_internal[5]_i_1_n_0\
    );
\lfsr_internal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal[5]_i_2_n_0\,
      D => \^q\(2),
      Q => \^q\(3),
      R => \lfsr_internal[5]_i_1_n_0\
    );
\lfsr_internal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal[5]_i_2_n_0\,
      D => \^q\(3),
      Q => \^q\(4),
      R => \lfsr_internal[5]_i_1_n_0\
    );
\lfsr_internal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \lfsr_internal[5]_i_2_n_0\,
      D => \^q\(4),
      Q => \^q\(5),
      R => \lfsr_internal[5]_i_1_n_0\
    );
\temp_reg_reg[11]_srl3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \^temp_reg_reg[12]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_reg is
  port (
    TK1_REG_parallel_out_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[28]_0\ : out STD_LOGIC;
    state : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_internal_value_reg[4]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_1\ : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC;
    pwropt_2 : in STD_LOGIC;
    pwropt_3 : in STD_LOGIC
  );
end shift_reg;

architecture STRUCTURE of shift_reg is
  signal \^tk1_reg_parallel_out_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TK1_REG_serial_in_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TWEAKEY_permutation_IN : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 59 downto 32 );
  signal \temp_reg_reg[24]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[25]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[26]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[27]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[32]_CE_cooolgate_en_sig_1\ : STD_LOGIC;
  signal \temp_reg_reg[60]_CE_cooolgate_en_sig_6\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[31]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[24]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[24]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[24]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[25]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[25]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[25]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[26]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[26]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[26]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[27]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[27]_srl7\ : label is "\Skinny_DUT/INST_TK1_REG/temp_reg_reg[27]_srl7 ";
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \temp_reg_reg[32]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY : boolean;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[32]\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \temp_reg_reg[32]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[33]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[33]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[33]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[34]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[34]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[34]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[35]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[35]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[35]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[36]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[36]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[36]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[37]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[37]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[37]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[38]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[38]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[38]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[39]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[39]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[39]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[44]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[44]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[45]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[45]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[46]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[46]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[47]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[47]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[48]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[48]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[49]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[49]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[50]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[50]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[51]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[51]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[52]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[52]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[53]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[53]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[54]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[54]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[55]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[55]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[56]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[56]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[57]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[57]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[58]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[58]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[59]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[59]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[60]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[60]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[61]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[61]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[62]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[62]\ : label is "CE=AUG";
  attribute IS_CLOCK_GATED of \temp_reg_reg[63]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[63]\ : label is "CE=AUG";
begin
  TK1_REG_parallel_out_buf(3 downto 0) <= \^tk1_reg_parallel_out_buf\(3 downto 0);
\temp_reg[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(16),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(0),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => \temp_reg_reg_n_0_[28]\,
      O => p_1_in(32)
    );
\temp_reg[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(17),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(1),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => \temp_reg_reg_n_0_[29]\,
      O => p_1_in(33)
    );
\temp_reg[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(18),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(2),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => \temp_reg_reg_n_0_[30]\,
      O => p_1_in(34)
    );
\temp_reg[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(19),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(3),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => \temp_reg_reg_n_0_[31]\,
      O => p_1_in(35)
    );
\temp_reg[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(12),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(4),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(0),
      O => p_1_in(36)
    );
\temp_reg[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(13),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(5),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(1),
      O => p_1_in(37)
    );
\temp_reg[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(14),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(6),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(2),
      O => p_1_in(38)
    );
\temp_reg[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(15),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(7),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(3),
      O => p_1_in(39)
    );
\temp_reg[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(20),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(12),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(8),
      O => p_1_in(44)
    );
\temp_reg[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(21),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(13),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(9),
      O => p_1_in(45)
    );
\temp_reg[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(22),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(14),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(10),
      O => p_1_in(46)
    );
\temp_reg[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(23),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(15),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(11),
      O => p_1_in(47)
    );
\temp_reg[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(8),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(16),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(12),
      O => p_1_in(48)
    );
\temp_reg[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(9),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(17),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(13),
      O => p_1_in(49)
    );
\temp_reg[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(10),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(18),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(14),
      O => p_1_in(50)
    );
\temp_reg[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(11),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(19),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(15),
      O => p_1_in(51)
    );
\temp_reg[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(0),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(20),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(16),
      O => p_1_in(52)
    );
\temp_reg[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(1),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(21),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(17),
      O => p_1_in(53)
    );
\temp_reg[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(2),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(22),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(18),
      O => p_1_in(54)
    );
\temp_reg[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(3),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(23),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(19),
      O => p_1_in(55)
    );
\temp_reg[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(0),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(24),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(20),
      O => p_1_in(56)
    );
\temp_reg[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(1),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(25),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(21),
      O => p_1_in(57)
    );
\temp_reg[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(2),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(26),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(22),
      O => p_1_in(58)
    );
\temp_reg[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(3),
      I1 => \FSM_sequential_current_state_reg[2]\,
      I2 => TWEAKEY_permutation_IN(27),
      I3 => \cnt_internal_value_reg[4]\,
      I4 => TWEAKEY_permutation_IN(23),
      O => p_1_in(59)
    );
\temp_reg_reg[24]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => TK1_REG_serial_in_buf(0),
      Q => \temp_reg_reg[24]_srl7_n_0\
    );
\temp_reg_reg[24]_srl7_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(0),
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => Q(0),
      I4 => \out\(2),
      I5 => \cnt_internal_value_reg[4]_0\,
      O => TK1_REG_serial_in_buf(0)
    );
\temp_reg_reg[25]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => TK1_REG_serial_in_buf(1),
      Q => \temp_reg_reg[25]_srl7_n_0\
    );
\temp_reg_reg[25]_srl7_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(1),
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => Q(0),
      I4 => \out\(2),
      I5 => \cnt_internal_value_reg[1]\,
      O => TK1_REG_serial_in_buf(1)
    );
\temp_reg_reg[26]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => TK1_REG_serial_in_buf(2),
      Q => \temp_reg_reg[26]_srl7_n_0\
    );
\temp_reg_reg[26]_srl7_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(2),
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => Q(0),
      I4 => \out\(2),
      I5 => \cnt_internal_value_reg[1]_0\,
      O => TK1_REG_serial_in_buf(2)
    );
\temp_reg_reg[27]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => TK1_REG_serial_in_buf(3),
      Q => \temp_reg_reg[27]_srl7_n_0\
    );
\temp_reg_reg[27]_srl7_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \^tk1_reg_parallel_out_buf\(3),
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => Q(0),
      I4 => \out\(2),
      I5 => \cnt_internal_value_reg[4]_1\,
      O => TK1_REG_serial_in_buf(3)
    );
\temp_reg_reg[27]_srl7_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => \temp_reg_reg[28]_0\
    );
\temp_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[24]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[28]\,
      R => '0'
    );
\temp_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[25]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[29]\,
      R => '0'
    );
\temp_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[26]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[30]\,
      R => '0'
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[27]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[31]\,
      R => '0'
    );
\temp_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(32),
      Q => TWEAKEY_permutation_IN(0),
      R => '0'
    );
\temp_reg_reg[32]_CE_cooolgate_en_gate_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"d"
    )
        port map (
      I0 => \cnt_internal_value_reg[4]\,
      I1 => \FSM_sequential_current_state_reg[2]\,
      O => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\
    );
\temp_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(33),
      Q => TWEAKEY_permutation_IN(1),
      R => '0'
    );
\temp_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(34),
      Q => TWEAKEY_permutation_IN(2),
      R => '0'
    );
\temp_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(35),
      Q => TWEAKEY_permutation_IN(3),
      R => '0'
    );
\temp_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(36),
      Q => TWEAKEY_permutation_IN(4),
      R => '0'
    );
\temp_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(37),
      Q => TWEAKEY_permutation_IN(5),
      R => '0'
    );
\temp_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(38),
      Q => TWEAKEY_permutation_IN(6),
      R => '0'
    );
\temp_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(39),
      Q => TWEAKEY_permutation_IN(7),
      R => '0'
    );
\temp_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[1]\,
      D => TWEAKEY_permutation_IN(4),
      Q => TWEAKEY_permutation_IN(8),
      R => '0'
    );
\temp_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[1]\,
      D => TWEAKEY_permutation_IN(5),
      Q => TWEAKEY_permutation_IN(9),
      R => '0'
    );
\temp_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[1]\,
      D => TWEAKEY_permutation_IN(6),
      Q => TWEAKEY_permutation_IN(10),
      R => '0'
    );
\temp_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[1]\,
      D => TWEAKEY_permutation_IN(7),
      Q => TWEAKEY_permutation_IN(11),
      R => '0'
    );
\temp_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(44),
      Q => TWEAKEY_permutation_IN(12),
      R => '0'
    );
\temp_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(45),
      Q => TWEAKEY_permutation_IN(13),
      R => '0'
    );
\temp_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(46),
      Q => TWEAKEY_permutation_IN(14),
      R => '0'
    );
\temp_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(47),
      Q => TWEAKEY_permutation_IN(15),
      R => '0'
    );
\temp_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(48),
      Q => TWEAKEY_permutation_IN(16),
      R => '0'
    );
\temp_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(49),
      Q => TWEAKEY_permutation_IN(17),
      R => '0'
    );
\temp_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(50),
      Q => TWEAKEY_permutation_IN(18),
      R => '0'
    );
\temp_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(51),
      Q => TWEAKEY_permutation_IN(19),
      R => '0'
    );
\temp_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(52),
      Q => TWEAKEY_permutation_IN(20),
      R => '0'
    );
\temp_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(53),
      Q => TWEAKEY_permutation_IN(21),
      R => '0'
    );
\temp_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(54),
      Q => TWEAKEY_permutation_IN(22),
      R => '0'
    );
\temp_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(55),
      Q => TWEAKEY_permutation_IN(23),
      R => '0'
    );
\temp_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(56),
      Q => TWEAKEY_permutation_IN(24),
      R => '0'
    );
\temp_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(57),
      Q => TWEAKEY_permutation_IN(25),
      R => '0'
    );
\temp_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(58),
      Q => TWEAKEY_permutation_IN(26),
      R => '0'
    );
\temp_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_1\,
      D => p_1_in(59),
      Q => TWEAKEY_permutation_IN(27),
      R => '0'
    );
\temp_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[60]_CE_cooolgate_en_sig_6\,
      D => TWEAKEY_permutation_IN(24),
      Q => \^tk1_reg_parallel_out_buf\(0),
      R => '0'
    );
\temp_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[60]_CE_cooolgate_en_sig_6\,
      D => TWEAKEY_permutation_IN(25),
      Q => \^tk1_reg_parallel_out_buf\(1),
      R => '0'
    );
\temp_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[60]_CE_cooolgate_en_sig_6\,
      D => TWEAKEY_permutation_IN(26),
      Q => \^tk1_reg_parallel_out_buf\(2),
      R => '0'
    );
\temp_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[60]_CE_cooolgate_en_sig_6\,
      D => TWEAKEY_permutation_IN(27),
      Q => \^tk1_reg_parallel_out_buf\(3),
      R => '0'
    );
\xlnx_opt_LUT_temp_reg_reg[60]_CE_cooolgate_en_gate_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => pwropt_3,
      I1 => pwropt_2,
      I2 => pwropt_1,
      I3 => pwropt,
      I4 => \FSM_sequential_current_state_reg[1]\,
      O => \temp_reg_reg[60]_CE_cooolgate_en_sig_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_reg_0 is
  port (
    TK2_REG_parallel_out_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[32]_0\ : out STD_LOGIC;
    state : in STD_LOGIC;
    \temp_reg_reg[63]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_internal_value_reg[4]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shift_reg_0 : entity is "shift_reg";
end shift_reg_0;

architecture STRUCTURE of shift_reg_0 is
  signal \^tk2_reg_parallel_out_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TK2_REG_serial_in_buf : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \TWEAKEY_permutation_IN__0\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \temp_reg[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[37]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[38]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[39]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[44]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[45]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[46]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[47]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[48]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[49]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[50]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[51]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[52]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[53]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[54]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[55]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[56]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[57]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[58]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg[59]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[24]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[25]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[26]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[27]_srl7_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[32]_0\ : STD_LOGIC;
  signal \temp_reg_reg[32]_CE_cooolgate_en_sig_2\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \xlnx_opt_TK2_REG_serial_in_buf[0]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[24]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[24]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[24]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[25]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[25]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[25]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[26]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[26]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[26]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[27]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[27]_srl7\ : label is "\Skinny_DUT/INST_TK2_REG/temp_reg_reg[27]_srl7 ";
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \temp_reg_reg[32]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY : boolean;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[32]\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \temp_reg_reg[32]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[33]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[33]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[33]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[34]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[34]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[34]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[35]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[35]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[35]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[36]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[36]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[36]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[37]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[37]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[37]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[38]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[38]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[38]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[39]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \temp_reg_reg[39]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[39]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[44]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[44]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[45]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[45]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[46]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[46]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[47]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[47]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[48]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[48]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[49]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[49]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[50]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[50]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[51]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[51]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[52]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[52]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[53]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[53]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[54]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[54]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[55]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[55]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[56]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[56]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[57]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[57]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[58]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[58]\ : label is "CE=NEW";
  attribute IS_CLOCK_GATED of \temp_reg_reg[59]\ : label is std.standard.true;
  attribute POWER_OPTED_CE of \temp_reg_reg[59]\ : label is "CE=NEW";
begin
  TK2_REG_parallel_out_buf(3 downto 0) <= \^tk2_reg_parallel_out_buf\(3 downto 0);
  \temp_reg_reg[32]_0\ <= \^temp_reg_reg[32]_0\;
\temp_reg[32]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(16),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(0),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \temp_reg_reg_n_0_[28]\,
      O => \temp_reg[32]_i_1__0_n_0\
    );
\temp_reg[33]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(17),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(1),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \temp_reg_reg_n_0_[29]\,
      O => \temp_reg[33]_i_1__0_n_0\
    );
\temp_reg[34]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(18),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(2),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \temp_reg_reg_n_0_[30]\,
      O => \temp_reg[34]_i_1__0_n_0\
    );
\temp_reg[35]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(19),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(3),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \temp_reg_reg_n_0_[31]\,
      O => \temp_reg[35]_i_1__0_n_0\
    );
\temp_reg[36]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(12),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(4),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(0),
      O => \temp_reg[36]_i_1__0_n_0\
    );
\temp_reg[37]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(13),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(5),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(1),
      O => \temp_reg[37]_i_1__0_n_0\
    );
\temp_reg[38]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(14),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(6),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(2),
      O => \temp_reg[38]_i_1__0_n_0\
    );
\temp_reg[39]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(15),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(7),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(3),
      O => \temp_reg[39]_i_1__0_n_0\
    );
\temp_reg[44]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(20),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(12),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(8),
      O => \temp_reg[44]_i_1__0_n_0\
    );
\temp_reg[45]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(21),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(13),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(9),
      O => \temp_reg[45]_i_1__0_n_0\
    );
\temp_reg[46]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(22),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(14),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(10),
      O => \temp_reg[46]_i_1__0_n_0\
    );
\temp_reg[47]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(23),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(15),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(11),
      O => \temp_reg[47]_i_1__0_n_0\
    );
\temp_reg[48]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(8),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(16),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(12),
      O => \temp_reg[48]_i_1__0_n_0\
    );
\temp_reg[49]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(9),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(17),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(13),
      O => \temp_reg[49]_i_1__0_n_0\
    );
\temp_reg[50]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(10),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(18),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(14),
      O => \temp_reg[50]_i_1__0_n_0\
    );
\temp_reg[51]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(11),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(19),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(15),
      O => \temp_reg[51]_i_1__0_n_0\
    );
\temp_reg[52]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk2_reg_parallel_out_buf\(0),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(20),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(16),
      O => \temp_reg[52]_i_1__0_n_0\
    );
\temp_reg[53]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk2_reg_parallel_out_buf\(1),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(21),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(17),
      O => \temp_reg[53]_i_1__0_n_0\
    );
\temp_reg[54]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk2_reg_parallel_out_buf\(2),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(22),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(18),
      O => \temp_reg[54]_i_1__0_n_0\
    );
\temp_reg[55]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^tk2_reg_parallel_out_buf\(3),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(23),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(19),
      O => \temp_reg[55]_i_1__0_n_0\
    );
\temp_reg[56]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(0),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(24),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(20),
      O => \temp_reg[56]_i_1__0_n_0\
    );
\temp_reg[57]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(1),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(25),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(21),
      O => \temp_reg[57]_i_1__0_n_0\
    );
\temp_reg[58]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(2),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(26),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(22),
      O => \temp_reg[58]_i_1__0_n_0\
    );
\temp_reg[59]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \TWEAKEY_permutation_IN__0\(3),
      I1 => \^temp_reg_reg[32]_0\,
      I2 => \TWEAKEY_permutation_IN__0\(27),
      I3 => \FSM_sequential_current_state_reg[1]\,
      I4 => \TWEAKEY_permutation_IN__0\(23),
      O => \temp_reg[59]_i_1__0_n_0\
    );
\temp_reg[59]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      O => \^temp_reg_reg[32]_0\
    );
\temp_reg_reg[24]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => TK2_REG_serial_in_buf(0),
      Q => \temp_reg_reg[24]_srl7_n_0\
    );
\temp_reg_reg[25]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[63]_0\(0),
      Q => \temp_reg_reg[25]_srl7_n_0\
    );
\temp_reg_reg[26]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[63]_0\(1),
      Q => \temp_reg_reg[26]_srl7_n_0\
    );
\temp_reg_reg[27]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => state,
      CLK => clk_IBUF_BUFG,
      D => \temp_reg_reg[63]_0\(2),
      Q => \temp_reg_reg[27]_srl7_n_0\
    );
\temp_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[24]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[28]\,
      R => '0'
    );
\temp_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[25]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[29]\,
      R => '0'
    );
\temp_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[26]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[30]\,
      R => '0'
    );
\temp_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \temp_reg_reg[27]_srl7_n_0\,
      Q => \temp_reg_reg_n_0_[31]\,
      R => '0'
    );
\temp_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[32]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(0),
      R => '0'
    );
\temp_reg_reg[32]_CE_cooolgate_en_gate_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"d"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[1]\,
      I1 => \^temp_reg_reg[32]_0\,
      O => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\
    );
\temp_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[33]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(1),
      R => '0'
    );
\temp_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[34]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(2),
      R => '0'
    );
\temp_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[35]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(3),
      R => '0'
    );
\temp_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[36]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(4),
      R => '0'
    );
\temp_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[37]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(5),
      R => '0'
    );
\temp_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[38]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(6),
      R => '0'
    );
\temp_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[39]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(7),
      R => '0'
    );
\temp_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(4),
      Q => \TWEAKEY_permutation_IN__0\(8),
      R => '0'
    );
\temp_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(5),
      Q => \TWEAKEY_permutation_IN__0\(9),
      R => '0'
    );
\temp_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(6),
      Q => \TWEAKEY_permutation_IN__0\(10),
      R => '0'
    );
\temp_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(7),
      Q => \TWEAKEY_permutation_IN__0\(11),
      R => '0'
    );
\temp_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[44]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(12),
      R => '0'
    );
\temp_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[45]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(13),
      R => '0'
    );
\temp_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[46]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(14),
      R => '0'
    );
\temp_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[47]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(15),
      R => '0'
    );
\temp_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[48]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(16),
      R => '0'
    );
\temp_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[49]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(17),
      R => '0'
    );
\temp_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[50]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(18),
      R => '0'
    );
\temp_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[51]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(19),
      R => '0'
    );
\temp_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[52]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(20),
      R => '0'
    );
\temp_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[53]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(21),
      R => '0'
    );
\temp_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[54]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(22),
      R => '0'
    );
\temp_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[55]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(23),
      R => '0'
    );
\temp_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[56]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(24),
      R => '0'
    );
\temp_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[57]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(25),
      R => '0'
    );
\temp_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[58]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(26),
      R => '0'
    );
\temp_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp_reg_reg[32]_CE_cooolgate_en_sig_2\,
      D => \temp_reg[59]_i_1__0_n_0\,
      Q => \TWEAKEY_permutation_IN__0\(27),
      R => '0'
    );
\temp_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(24),
      Q => \^tk2_reg_parallel_out_buf\(0),
      R => '0'
    );
\temp_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(25),
      Q => \^tk2_reg_parallel_out_buf\(1),
      R => '0'
    );
\temp_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(26),
      Q => \^tk2_reg_parallel_out_buf\(2),
      R => '0'
    );
\temp_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[0]_0\,
      D => \TWEAKEY_permutation_IN__0\(27),
      Q => \^tk2_reg_parallel_out_buf\(3),
      R => '0'
    );
\xlnx_opt_LUT_temp_reg_reg[24]_srl7_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F088"
    )
        port map (
      I0 => lopt,
      I1 => lopt_1,
      I2 => lopt_2,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \xlnx_opt_TK2_REG_serial_in_buf[0]\
    );
\xlnx_opt_LUT_temp_reg_reg[24]_srl7_i_1_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FF3BBBB00000000"
    )
        port map (
      I0 => lopt_2,
      I1 => \out\(2),
      I2 => \^tk2_reg_parallel_out_buf\(3),
      I3 => \^tk2_reg_parallel_out_buf\(2),
      I4 => \FSM_sequential_current_state_reg[0]\,
      I5 => \xlnx_opt_TK2_REG_serial_in_buf[0]\,
      O => TK2_REG_serial_in_buf(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skinny_shift_reg_64 is
  port (
    \temp_reg_reg[15]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \current_state_reg[1]\ : out STD_LOGIC;
    \current_state_reg[1]_0\ : out STD_LOGIC;
    \temp_reg_reg[15]_0\ : out STD_LOGIC;
    \temp_reg_reg[13]\ : out STD_LOGIC;
    \current_state_reg[2]\ : out STD_LOGIC;
    \temp_reg_reg[12]\ : out STD_LOGIC;
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    \temp_reg_reg[15]_1\ : out STD_LOGIC;
    \temp_reg_reg[13]_1\ : out STD_LOGIC;
    \temp_reg_reg[13]_2\ : out STD_LOGIC;
    IS_enable1_buf : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    IS_enable2_buf : in STD_LOGIC;
    IS_enable3_buf : in STD_LOGIC;
    IS_enable4_buf : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_IBUF : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[63]\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \cnt_internal_value_reg[0]\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]\ : in STD_LOGIC;
    \cnt_internal_value_reg[2]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_0\ : in STD_LOGIC;
    \lfsr_internal_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_1\ : in STD_LOGIC;
    \lfsr_internal_reg[2]\ : in STD_LOGIC;
    \temp_reg_reg[15]_2\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    \lfsr_internal_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    lopt_10 : out STD_LOGIC;
    lopt_11 : out STD_LOGIC;
    lopt_12 : in STD_LOGIC;
    lopt_13 : in STD_LOGIC;
    lopt_14 : in STD_LOGIC;
    lopt_15 : in STD_LOGIC;
    lopt_16 : in STD_LOGIC;
    lopt_17 : in STD_LOGIC;
    lopt_18 : in STD_LOGIC;
    lopt_19 : in STD_LOGIC
  );
end skinny_shift_reg_64;

architecture STRUCTURE of skinny_shift_reg_64 is
  signal INST_FIRST_ROW_SHIFT_REG_n_15 : STD_LOGIC;
  signal INST_FIRST_ROW_SHIFT_REG_n_16 : STD_LOGIC;
  signal INST_THIRD_ROW_SHIFT_REG_n_4 : STD_LOGIC;
  signal IS_serial_in_first_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_in_fourth_row_buf : STD_LOGIC_VECTOR ( 2 to 2 );
  signal IS_serial_in_second_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_in_third_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_output_first_row_buf : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal IS_serial_output_fourth_row_buf : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal IS_serial_output_second_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_output_third_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^lopt_10\ : STD_LOGIC;
  signal \^lopt_11\ : STD_LOGIC;
  signal \^lopt_12\ : STD_LOGIC;
  signal \^lopt_13\ : STD_LOGIC;
  signal \^lopt_14\ : STD_LOGIC;
  signal \^lopt_15\ : STD_LOGIC;
  signal \^lopt_16\ : STD_LOGIC;
  signal \^lopt_17\ : STD_LOGIC;
  signal \^temp_reg_reg[15]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[2]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[15]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_FOURTH_ROW_SHIFT_REG_FSM_sequential_current_state_reg[2]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_FOURTH_ROW_SHIFT_REG_cnt_internal_value_reg[4]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[63]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[12]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[13]_0_UNCONNECTED\ : STD_LOGIC;
begin
  \^lopt_10\ <= lopt_12;
  \^lopt_11\ <= lopt_13;
  \^lopt_12\ <= lopt_14;
  \^lopt_13\ <= lopt_15;
  \^lopt_14\ <= lopt_16;
  \^lopt_15\ <= lopt_17;
  \^lopt_16\ <= lopt_18;
  \^lopt_17\ <= lopt_19;
  lopt_10 <= IS_serial_output_third_row_buf(1);
  lopt_11 <= IS_serial_output_first_row_buf(1);
  \temp_reg_reg[15]\(1 downto 0) <= \^temp_reg_reg[15]\(1 downto 0);
  \temp_reg_reg[13]\ <= 'Z';
  \temp_reg_reg[15]_1\ <= 'Z';
INST_FIRST_ROW_SHIFT_REG: entity work.IS_shift_reg
     port map (
      \FSM_sequential_current_state_reg[1]\ => \FSM_sequential_current_state_reg[1]\,
      \FSM_sequential_current_state_reg[2]\ => \FSM_sequential_current_state_reg[2]_0\,
      IS_enable1_buf => IS_enable1_buf,
      IS_serial_in_first_row_buf(3 downto 0) => IS_serial_in_first_row_buf(3 downto 0),
      IS_serial_in_fourth_row_buf(0) => IS_serial_in_fourth_row_buf(2),
      IS_serial_in_second_row_buf(3 downto 0) => IS_serial_in_second_row_buf(3 downto 0),
      IS_serial_output_first_row_buf(1 downto 0) => IS_serial_output_first_row_buf(2 downto 1),
      IS_serial_output_fourth_row_buf(0) => IS_serial_output_fourth_row_buf(2),
      IS_serial_output_second_row_buf(3 downto 0) => IS_serial_output_second_row_buf(3 downto 0),
      IS_serial_output_third_row_buf(3 downto 0) => IS_serial_output_third_row_buf(3 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[0]\ => \cnt_internal_value_reg[0]\,
      \cnt_internal_value_reg[2]\ => \NLW_INST_FIRST_ROW_SHIFT_REG_cnt_internal_value_reg[2]_UNCONNECTED\,
      \cnt_internal_value_reg[4]\ => \cnt_internal_value_reg[4]_0\,
      \cnt_internal_value_reg[4]_0\ => \cnt_internal_value_reg[4]_1\,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => \^temp_reg_reg[15]\(0),
      \current_state_reg[1]_0\ => \current_state_reg[1]\,
      \current_state_reg[1]_1\ => \current_state_reg[1]_0\,
      \current_state_reg[2]\ => \current_state_reg[2]\,
      \lfsr_internal_reg[0]\ => \lfsr_internal_reg[0]\,
      \lfsr_internal_reg[0]_0\(0) => \lfsr_internal_reg[0]_0\(0),
      \lfsr_internal_reg[2]\ => \lfsr_internal_reg[2]\,
      lopt => lopt_5,
      lopt_1 => lopt_6,
      lopt_2 => lopt_7,
      lopt_3 => lopt_2,
      lopt_4 => lopt_8,
      lopt_5 => lopt_9,
      \out\(2 downto 0) => \out\(2 downto 0),
      rst_IBUF => rst_IBUF,
      start_IBUF => start_IBUF,
      \temp_reg_reg[12]_0\ => \temp_reg_reg[12]\,
      \temp_reg_reg[13]_0\ => \temp_reg_reg[13]_0\,
      \temp_reg_reg[14]_0\ => INST_FIRST_ROW_SHIFT_REG_n_15,
      \temp_reg_reg[14]_1\ => INST_FIRST_ROW_SHIFT_REG_n_16,
      \temp_reg_reg[15]_0\ => \^temp_reg_reg[15]\(1),
      \temp_reg_reg[15]_1\ => \NLW_INST_FIRST_ROW_SHIFT_REG_temp_reg_reg[15]_1_UNCONNECTED\,
      \temp_reg_reg[15]_2\ => \temp_reg_reg[15]_2\
    );
INST_FOURTH_ROW_SHIFT_REG: entity work.IS_shift_reg_1
     port map (
      \FSM_sequential_current_state_reg[2]\(0) => \FSM_sequential_current_state_reg[2]\(0),
      \FSM_sequential_current_state_reg[2]_0\ => INST_THIRD_ROW_SHIFT_REG_n_4,
      \FSM_sequential_current_state_reg[2]_1\ => \NLW_INST_FOURTH_ROW_SHIFT_REG_FSM_sequential_current_state_reg[2]_1_UNCONNECTED\,
      IS_enable4_buf => IS_enable4_buf,
      IS_serial_in_first_row_buf(0) => IS_serial_in_first_row_buf(3),
      IS_serial_in_third_row_buf(3 downto 0) => IS_serial_in_third_row_buf(3 downto 0),
      IS_serial_output_second_row_buf(3 downto 0) => IS_serial_output_second_row_buf(3 downto 0),
      IS_serial_output_third_row_buf(3 downto 0) => IS_serial_output_third_row_buf(3 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[1]\ => \cnt_internal_value_reg[1]\,
      \cnt_internal_value_reg[2]\ => \cnt_internal_value_reg[2]_0\,
      \cnt_internal_value_reg[4]\ => \NLW_INST_FOURTH_ROW_SHIFT_REG_cnt_internal_value_reg[4]_UNCONNECTED\,
      current_state(1) => current_state(2),
      current_state(0) => current_state(0),
      lopt => \^temp_reg_reg[15]\(1),
      lopt_1 => IS_serial_output_first_row_buf(2),
      lopt_10 => \^lopt_11\,
      lopt_11 => lopt_6,
      lopt_12 => lopt_5,
      lopt_13 => \^lopt_12\,
      lopt_14 => \^lopt_13\,
      lopt_15 => \^lopt_14\,
      lopt_16 => \^lopt_15\,
      lopt_17 => \^lopt_16\,
      lopt_18 => \^lopt_17\,
      lopt_2 => \^temp_reg_reg[15]\(0),
      lopt_3 => lopt,
      lopt_4 => lopt_1,
      lopt_5 => lopt_2,
      lopt_6 => lopt_3,
      lopt_7 => lopt_4,
      lopt_8 => \lfsr_internal_reg[0]_0\(0),
      lopt_9 => \^lopt_10\,
      \out\(2 downto 0) => \out\(2 downto 0),
      \temp_reg_reg[13]_0\ => \temp_reg_reg[13]_1\,
      \temp_reg_reg[13]_1\ => \temp_reg_reg[13]_2\,
      \temp_reg_reg[14]_0\(2 downto 0) => IS_serial_output_fourth_row_buf(2 downto 0),
      \temp_reg_reg[14]_1\(0) => IS_serial_in_fourth_row_buf(2),
      \temp_reg_reg[15]_0\ => \temp_reg_reg[15]_0\,
      \temp_reg_reg[63]\ => \NLW_INST_FOURTH_ROW_SHIFT_REG_temp_reg_reg[63]_UNCONNECTED\
    );
INST_SECOND_ROW_SHIFT_REG: entity work.IS_shift_reg_2
     port map (
      \FSM_sequential_current_state_reg[1]\ => INST_FIRST_ROW_SHIFT_REG_n_16,
      \FSM_sequential_current_state_reg[2]\ => INST_FIRST_ROW_SHIFT_REG_n_15,
      IS_enable2_buf => IS_enable2_buf,
      IS_serial_in_first_row_buf(2 downto 0) => IS_serial_in_first_row_buf(2 downto 0),
      IS_serial_in_second_row_buf(3 downto 0) => IS_serial_in_second_row_buf(3 downto 0),
      IS_serial_output_first_row_buf(1 downto 0) => IS_serial_output_first_row_buf(2 downto 1),
      IS_serial_output_second_row_buf(3 downto 0) => IS_serial_output_second_row_buf(3 downto 0),
      IS_serial_output_third_row_buf(2 downto 0) => IS_serial_output_third_row_buf(2 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \temp_reg_reg[12]_0\(0) => \^temp_reg_reg[15]\(0),
      \temp_reg_reg[14]_0\(2 downto 0) => IS_serial_output_fourth_row_buf(2 downto 0)
    );
INST_THIRD_ROW_SHIFT_REG: entity work.IS_shift_reg_3
     port map (
      IS_enable3_buf => IS_enable3_buf,
      IS_serial_in_third_row_buf(3 downto 0) => IS_serial_in_third_row_buf(3 downto 0),
      IS_serial_output_first_row_buf(0) => IS_serial_output_first_row_buf(1),
      IS_serial_output_third_row_buf(3 downto 0) => IS_serial_output_third_row_buf(3 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \out\(2 downto 0) => \out\(2 downto 0),
      \temp_reg_reg[12]_0\ => \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[12]_0_UNCONNECTED\,
      \temp_reg_reg[13]_0\ => \NLW_INST_THIRD_ROW_SHIFT_REG_temp_reg_reg[13]_0_UNCONNECTED\,
      \temp_reg_reg[15]_0\ => INST_THIRD_ROW_SHIFT_REG_n_4,
      \temp_reg_reg[15]_1\(1 downto 0) => \^temp_reg_reg[15]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Skinny_64_128 is
  port (
    \current_state_reg[1]\ : out STD_LOGIC;
    \current_state_reg[1]_0\ : out STD_LOGIC;
    \temp_reg_reg[15]\ : out STD_LOGIC;
    \current_state_reg[2]\ : out STD_LOGIC;
    \current_state_reg[2]_0\ : out STD_LOGIC;
    \temp_reg_reg[28]\ : out STD_LOGIC;
    \temp_reg_reg[13]\ : out STD_LOGIC;
    \current_state_reg[2]_1\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_IBUF : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_internal_value_reg[0]\ : in STD_LOGIC;
    \cnt_internal_value_reg[3]\ : in STD_LOGIC;
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]_1\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_0\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_1\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_2\ : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : in STD_LOGIC
  );
end Skinny_64_128;

architecture STRUCTURE of Skinny_64_128 is
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_7\ : STD_LOGIC;
  signal \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_8\ : STD_LOGIC;
  signal INST_IS_n_10 : STD_LOGIC;
  signal INST_IS_n_7 : STD_LOGIC;
  signal INST_IS_n_8 : STD_LOGIC;
  signal INST_LFSR_n_0 : STD_LOGIC;
  signal INST_LFSR_n_1 : STD_LOGIC;
  signal INST_LFSR_n_11 : STD_LOGIC;
  signal INST_LFSR_n_9 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_11 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_14 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_18 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_19 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_2 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_21 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_22 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_23 : STD_LOGIC;
  signal INST_TK2_REG_n_4 : STD_LOGIC;
  signal IS_enable1_buf : STD_LOGIC;
  signal IS_enable2_buf : STD_LOGIC;
  signal IS_enable3_buf : STD_LOGIC;
  signal IS_enable4_buf : STD_LOGIC;
  signal IS_serial_in_fourth_row_buf : STD_LOGIC_VECTOR ( 1 to 1 );
  signal IS_serial_output_first_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TK1_REG_parallel_out_buf : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal TK2_REG_parallel_out_buf : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal TK2_REG_serial_in_buf : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal cnt_out_buf : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \current_state[2]_i_17_n_0\ : STD_LOGIC;
  signal current_state_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state_0 : signal is "yes";
  signal enable_CNT_buf : STD_LOGIC;
  signal lfsr_out_buf : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^lopt\ : STD_LOGIC;
  signal \^lopt_1\ : STD_LOGIC;
  signal lopt_10 : STD_LOGIC;
  signal lopt_11 : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal lopt_7 : STD_LOGIC;
  signal lopt_8 : STD_LOGIC;
  signal lopt_9 : STD_LOGIC;
  signal pwropt : STD_LOGIC;
  signal pwropt_1 : STD_LOGIC;
  signal pwropt_2 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_0 : STD_LOGIC;
  signal \NLW_INST_IS_cnt_internal_value_reg[2]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_IS_cnt_internal_value_reg[4]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_IS_temp_reg_reg[13]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_IS_temp_reg_reg[15]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_IS_temp_reg_reg[63]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[0]_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[2]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SKINNY_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SKINNY_CNT_temp_reg_reg[12]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SKINNY_CNT_temp_reg_reg[14]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SKINNY_CNT_temp_reg_reg[15]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_SKINNY_CNT_temp_reg_reg[28]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INST_TK2_REG_cnt_internal_value_reg[4]_UNCONNECTED\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "loading:000,processing:010,shiftr:011,mixcol:100,tw_perm:101,idle:001,tk2_update:110,rnd_end:111";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "loading:000,processing:010,shiftr:011,mixcol:100,tw_perm:101,idle:001,tk2_update:110,rnd_end:111";
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \FSM_sequential_current_state_reg[1]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY : boolean;
  attribute IS_PWROPT_IDT_ONLY of \FSM_sequential_current_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \FSM_sequential_current_state_reg[1]\ : label is "CE=NEW";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "loading:000,processing:010,shiftr:011,mixcol:100,tw_perm:101,idle:001,tk2_update:110,rnd_end:111";
  attribute IS_CLOCK_GATED of \FSM_sequential_current_state_reg[2]\ : label is std.standard.true;
  attribute IS_PWROPT_IDT_ONLY of \FSM_sequential_current_state_reg[2]\ : label is std.standard.true;
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
  attribute POWER_OPTED_CE of \FSM_sequential_current_state_reg[2]\ : label is "CE=NEW";
begin
  lopt_4 <= lopt;
  lopt_5 <= lopt_1;
  lopt_6 <= lopt_2;
  lopt_7 <= lopt_3;
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_4_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => INST_SKINNY_CNT_n_23,
      Q => current_state_0(0),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_7\,
      D => INST_SKINNY_CNT_n_22,
      Q => current_state_0(1),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]_CE_cooolgate_en_gate_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"fff4"
    )
        port map (
      I0 => current_state_0(2),
      I1 => pwropt_1,
      I2 => current_state(0),
      I3 => current_state_0(0),
      O => \FSM_sequential_current_state_reg[1]_CE_cooolgate_en_sig_7\
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_8\,
      D => INST_SKINNY_CNT_n_21,
      Q => current_state_0(2),
      R => '0'
    );
\FSM_sequential_current_state_reg[2]_CE_cooolgate_en_gate_64\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"fff2"
    )
        port map (
      I0 => pwropt_2,
      I1 => INST_LFSR_n_1,
      I2 => current_state(0),
      I3 => current_state_0(1),
      O => \FSM_sequential_current_state_reg[2]_CE_cooolgate_en_sig_8\
    );
INST_IS: entity work.skinny_shift_reg_64
     port map (
      \FSM_sequential_current_state_reg[1]\ => INST_LFSR_n_0,
      \FSM_sequential_current_state_reg[2]\(0) => IS_serial_in_fourth_row_buf(1),
      \FSM_sequential_current_state_reg[2]_0\ => \current_state[2]_i_17_n_0\,
      IS_enable1_buf => IS_enable1_buf,
      IS_enable2_buf => IS_enable2_buf,
      IS_enable3_buf => IS_enable3_buf,
      IS_enable4_buf => IS_enable4_buf,
      Q(2 downto 0) => Q(2 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[0]\ => \cnt_internal_value_reg[0]\,
      \cnt_internal_value_reg[1]\ => \cnt_internal_value_reg[1]\,
      \cnt_internal_value_reg[2]\ => \NLW_INST_IS_cnt_internal_value_reg[2]_UNCONNECTED\,
      \cnt_internal_value_reg[2]_0\ => \cnt_internal_value_reg[2]\,
      \cnt_internal_value_reg[4]\ => \NLW_INST_IS_cnt_internal_value_reg[4]_UNCONNECTED\,
      \cnt_internal_value_reg[4]_0\ => \cnt_internal_value_reg[4]_1\,
      \cnt_internal_value_reg[4]_1\ => \cnt_internal_value_reg[4]_2\,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => \current_state_reg[1]\,
      \current_state_reg[1]_0\ => \current_state_reg[1]_0\,
      \current_state_reg[2]\ => \current_state_reg[2]\,
      \lfsr_internal_reg[0]\ => INST_LFSR_n_1,
      \lfsr_internal_reg[0]_0\(0) => lfsr_out_buf(0),
      \lfsr_internal_reg[2]\ => INST_LFSR_n_11,
      lopt => TK2_REG_parallel_out_buf(31),
      lopt_1 => TK1_REG_parallel_out_buf(31),
      lopt_10 => lopt_8,
      lopt_11 => lopt_9,
      lopt_12 => lfsr_out_buf(4),
      lopt_13 => INST_IS_n_7,
      lopt_14 => lopt_10,
      lopt_15 => cnt_out_buf(4),
      lopt_16 => TK1_REG_parallel_out_buf(28),
      lopt_17 => TK2_REG_parallel_out_buf(28),
      lopt_18 => lopt_11,
      lopt_19 => INST_IS_n_10,
      lopt_2 => \^lopt\,
      lopt_3 => lfsr_out_buf(3),
      lopt_4 => \^lopt_1\,
      lopt_5 => \^lopt_2\,
      lopt_6 => \^lopt_3\,
      lopt_7 => lfsr_out_buf(2),
      lopt_8 => TK1_REG_parallel_out_buf(30),
      lopt_9 => TK2_REG_parallel_out_buf(30),
      \out\(2 downto 0) => current_state_0(2 downto 0),
      rst_IBUF => rst_IBUF,
      start_IBUF => start_IBUF,
      \temp_reg_reg[12]\ => INST_IS_n_7,
      \temp_reg_reg[13]\ => \NLW_INST_IS_temp_reg_reg[13]_UNCONNECTED\,
      \temp_reg_reg[13]_0\ => INST_IS_n_8,
      \temp_reg_reg[13]_1\ => INST_IS_n_10,
      \temp_reg_reg[13]_2\ => \temp_reg_reg[13]\,
      \temp_reg_reg[15]\(1) => IS_serial_output_first_row_buf(3),
      \temp_reg_reg[15]\(0) => IS_serial_output_first_row_buf(0),
      \temp_reg_reg[15]_0\ => \temp_reg_reg[15]\,
      \temp_reg_reg[15]_1\ => \NLW_INST_IS_temp_reg_reg[15]_1_UNCONNECTED\,
      \temp_reg_reg[15]_2\ => INST_LFSR_n_9,
      \temp_reg_reg[63]\ => \NLW_INST_IS_temp_reg_reg[63]_UNCONNECTED\
    );
INST_LFSR: entity work.lfsr
     port map (
      E(0) => enable_CNT_buf,
      Q(5 downto 0) => lfsr_out_buf(5 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \current_state_reg[1]\ => INST_LFSR_n_0,
      \current_state_reg[1]_0\ => INST_LFSR_n_9,
      \current_state_reg[1]_1\ => INST_LFSR_n_11,
      \current_state_reg[2]\ => \current_state_reg[2]_0\,
      \current_state_reg[2]_0\ => \current_state_reg[2]_1\,
      \out\(2 downto 0) => current_state_0(2 downto 0),
      \temp_reg_reg[12]\ => INST_LFSR_n_1,
      \temp_reg_reg[15]\(1) => IS_serial_output_first_row_buf(3),
      \temp_reg_reg[15]\(0) => IS_serial_output_first_row_buf(0)
    );
INST_SKINNY_CNT: entity work.SKINNY_CNT
     port map (
      E(0) => enable_CNT_buf,
      \FSM_sequential_current_state_reg[0]\ => INST_SKINNY_CNT_n_23,
      \FSM_sequential_current_state_reg[0]_0\ => INST_IS_n_7,
      \FSM_sequential_current_state_reg[0]_1\ => INST_IS_n_8,
      \FSM_sequential_current_state_reg[0]_2\ => \NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[0]_2_UNCONNECTED\,
      \FSM_sequential_current_state_reg[1]\ => INST_SKINNY_CNT_n_22,
      \FSM_sequential_current_state_reg[1]_0\ => INST_IS_n_10,
      \FSM_sequential_current_state_reg[2]\ => INST_SKINNY_CNT_n_21,
      \FSM_sequential_current_state_reg[2]_0\ => \NLW_INST_SKINNY_CNT_FSM_sequential_current_state_reg[2]_0_UNCONNECTED\,
      IS_enable1_buf => IS_enable1_buf,
      IS_enable2_buf => IS_enable2_buf,
      IS_enable3_buf => IS_enable3_buf,
      IS_enable4_buf => IS_enable4_buf,
      Q(0) => cnt_out_buf(4),
      TK1_REG_parallel_out_buf(3 downto 0) => TK1_REG_parallel_out_buf(31 downto 28),
      TK2_REG_parallel_out_buf(3 downto 0) => TK2_REG_parallel_out_buf(31 downto 28),
      TK2_REG_serial_in_buf(2 downto 0) => TK2_REG_serial_in_buf(3 downto 1),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[1]_0\ => \cnt_internal_value_reg[1]_0\,
      \cnt_internal_value_reg[1]_1\ => \cnt_internal_value_reg[1]_1\,
      \cnt_internal_value_reg[3]_0\ => \NLW_INST_SKINNY_CNT_cnt_internal_value_reg[3]_0_UNCONNECTED\,
      \cnt_internal_value_reg[4]_0\ => \cnt_internal_value_reg[4]\,
      \cnt_internal_value_reg[4]_1\ => \cnt_internal_value_reg[4]_0\,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[2]\ => \FSM_sequential_current_state[1]_i_3_n_0\,
      \current_state_reg[2]_0\ => \FSM_sequential_current_state[1]_i_4_n_0\,
      \lfsr_internal_reg[0]\ => INST_LFSR_n_1,
      \lfsr_internal_reg[5]\(5 downto 0) => lfsr_out_buf(5 downto 0),
      lopt => \^lopt\,
      lopt_1 => \^lopt_1\,
      lopt_10 => lopt_8,
      lopt_11 => lopt_9,
      lopt_12 => lopt_10,
      lopt_13 => lopt_11,
      lopt_2 => \^lopt_2\,
      lopt_3 => \^lopt_3\,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => Q(1),
      lopt_7 => Q(0),
      lopt_8 => lopt_6,
      lopt_9 => lopt_7,
      \out\(2 downto 0) => current_state_0(2 downto 0),
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      pwropt_2 => pwropt_2,
      state => state_0,
      state_0 => state,
      \temp_reg_reg[12]\ => \NLW_INST_SKINNY_CNT_temp_reg_reg[12]_UNCONNECTED\,
      \temp_reg_reg[13]\(0) => IS_serial_in_fourth_row_buf(1),
      \temp_reg_reg[14]\ => \NLW_INST_SKINNY_CNT_temp_reg_reg[14]_UNCONNECTED\,
      \temp_reg_reg[15]\ => \NLW_INST_SKINNY_CNT_temp_reg_reg[15]_UNCONNECTED\,
      \temp_reg_reg[28]\ => \NLW_INST_SKINNY_CNT_temp_reg_reg[28]_UNCONNECTED\,
      \temp_reg_reg[31]\ => INST_SKINNY_CNT_n_11,
      \temp_reg_reg[32]\ => INST_SKINNY_CNT_n_2,
      \temp_reg_reg[32]_0\ => INST_SKINNY_CNT_n_14,
      \temp_reg_reg[40]\ => INST_SKINNY_CNT_n_18,
      \temp_reg_reg[40]_0\ => INST_SKINNY_CNT_n_19
    );
INST_TK1_REG: entity work.shift_reg
     port map (
      \FSM_sequential_current_state_reg[1]\ => INST_SKINNY_CNT_n_18,
      \FSM_sequential_current_state_reg[2]\ => INST_TK2_REG_n_4,
      Q(0) => cnt_out_buf(4),
      TK1_REG_parallel_out_buf(3 downto 0) => TK1_REG_parallel_out_buf(31 downto 28),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[1]\ => \cnt_internal_value_reg[1]_1\,
      \cnt_internal_value_reg[1]_0\ => \cnt_internal_value_reg[1]_0\,
      \cnt_internal_value_reg[4]\ => INST_SKINNY_CNT_n_2,
      \cnt_internal_value_reg[4]_0\ => \cnt_internal_value_reg[4]_0\,
      \cnt_internal_value_reg[4]_1\ => \cnt_internal_value_reg[4]\,
      current_state(1) => current_state(2),
      current_state(0) => current_state(0),
      \out\(2 downto 0) => current_state_0(2 downto 0),
      pwropt => INST_SKINNY_CNT_n_23,
      pwropt_1 => INST_SKINNY_CNT_n_22,
      pwropt_2 => INST_SKINNY_CNT_n_21,
      pwropt_3 => pwropt,
      state => state_0,
      \temp_reg_reg[28]_0\ => \temp_reg_reg[28]\
    );
INST_TK2_REG: entity work.shift_reg_0
     port map (
      \FSM_sequential_current_state_reg[0]\ => INST_SKINNY_CNT_n_11,
      \FSM_sequential_current_state_reg[0]_0\ => INST_SKINNY_CNT_n_19,
      \FSM_sequential_current_state_reg[1]\ => INST_SKINNY_CNT_n_14,
      TK2_REG_parallel_out_buf(3 downto 0) => TK2_REG_parallel_out_buf(31 downto 28),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[4]\ => \NLW_INST_TK2_REG_cnt_internal_value_reg[4]_UNCONNECTED\,
      lopt => \cnt_internal_value_reg[4]_0\,
      lopt_1 => cnt_out_buf(4),
      lopt_2 => TK2_REG_parallel_out_buf(28),
      \out\(2 downto 0) => current_state_0(2 downto 0),
      state => state,
      \temp_reg_reg[32]_0\ => INST_TK2_REG_n_4,
      \temp_reg_reg[63]_0\(2 downto 0) => TK2_REG_serial_in_buf(3 downto 1)
    );
\current_state[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => current_state_0(2),
      I1 => current_state_0(0),
      I2 => current_state_0(1),
      O => \current_state[2]_i_17_n_0\
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
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Testing_IP : entity is "897ee930";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of Testing_IP : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of Testing_IP : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of Testing_IP : entity is 0;
end Testing_IP;

architecture STRUCTURE of Testing_IP is
  signal INST_CNT_n_0 : STD_LOGIC;
  signal INST_CNT_n_1 : STD_LOGIC;
  signal INST_CNT_n_10 : STD_LOGIC;
  signal INST_CNT_n_11 : STD_LOGIC;
  signal INST_CNT_n_12 : STD_LOGIC;
  signal INST_CNT_n_13 : STD_LOGIC;
  signal INST_CNT_n_14 : STD_LOGIC;
  signal INST_CNT_n_2 : STD_LOGIC;
  signal INST_CNT_n_7 : STD_LOGIC;
  signal INST_CNT_n_8 : STD_LOGIC;
  signal INST_CNT_n_9 : STD_LOGIC;
  signal Skinny_DUT_n_0 : STD_LOGIC;
  signal Skinny_DUT_n_1 : STD_LOGIC;
  signal Skinny_DUT_n_2 : STD_LOGIC;
  signal Skinny_DUT_n_3 : STD_LOGIC;
  signal Skinny_DUT_n_4 : STD_LOGIC;
  signal Skinny_DUT_n_5 : STD_LOGIC;
  signal Skinny_DUT_n_6 : STD_LOGIC;
  signal Skinny_DUT_n_7 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal cnt_out_W : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal led_out_OBUF : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal \NLW_INST_CNT_temp_reg_reg[13]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Skinny_DUT_cnt_internal_value_reg[3]_UNCONNECTED\ : STD_LOGIC;
begin
INST_CNT: entity work.CNT
     port map (
      \FSM_sequential_current_state_reg[1]\ => Skinny_DUT_n_2,
      \FSM_sequential_current_state_reg[2]\ => Skinny_DUT_n_7,
      \FSM_sequential_current_state_reg[2]_0\ => Skinny_DUT_n_4,
      Q(2 downto 1) => cnt_out_W(4 downto 3),
      Q(0) => cnt_out_W(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[0]\ => INST_CNT_n_1,
      \current_state_reg[2]\ => INST_CNT_n_0,
      \current_state_reg[2]_0\ => INST_CNT_n_9,
      \current_state_reg[2]_1\ => INST_CNT_n_10,
      \current_state_reg[2]_2\ => Skinny_DUT_n_5,
      lopt => lopt,
      lopt_1 => lopt_1,
      rst_IBUF => rst_IBUF,
      \temp_reg_reg[12]\ => INST_CNT_n_7,
      \temp_reg_reg[12]_0\ => Skinny_DUT_n_1,
      \temp_reg_reg[13]\ => \NLW_INST_CNT_temp_reg_reg[13]_UNCONNECTED\,
      \temp_reg_reg[13]_0\ => Skinny_DUT_n_6,
      \temp_reg_reg[14]\ => INST_CNT_n_2,
      \temp_reg_reg[14]_0\ => Skinny_DUT_n_3,
      \temp_reg_reg[15]\ => INST_CNT_n_14,
      \temp_reg_reg[28]\ => INST_CNT_n_8,
      \temp_reg_reg[29]\ => INST_CNT_n_12,
      \temp_reg_reg[30]\ => INST_CNT_n_11,
      \temp_reg_reg[31]\ => INST_CNT_n_13
    );
Skinny_DUT: entity work.Skinny_64_128
     port map (
      Q(2 downto 1) => cnt_out_W(4 downto 3),
      Q(0) => cnt_out_W(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_internal_value_reg[0]\ => INST_CNT_n_2,
      \cnt_internal_value_reg[1]\ => INST_CNT_n_14,
      \cnt_internal_value_reg[1]_0\ => INST_CNT_n_11,
      \cnt_internal_value_reg[1]_1\ => INST_CNT_n_12,
      \cnt_internal_value_reg[2]\ => INST_CNT_n_7,
      \cnt_internal_value_reg[3]\ => \NLW_Skinny_DUT_cnt_internal_value_reg[3]_UNCONNECTED\,
      \cnt_internal_value_reg[4]\ => INST_CNT_n_13,
      \cnt_internal_value_reg[4]_0\ => INST_CNT_n_8,
      \cnt_internal_value_reg[4]_1\ => INST_CNT_n_9,
      \cnt_internal_value_reg[4]_2\ => INST_CNT_n_10,
      current_state(2 downto 0) => current_state(2 downto 0),
      \current_state_reg[1]\ => Skinny_DUT_n_0,
      \current_state_reg[1]_0\ => Skinny_DUT_n_1,
      \current_state_reg[2]\ => Skinny_DUT_n_3,
      \current_state_reg[2]_0\ => Skinny_DUT_n_4,
      \current_state_reg[2]_1\ => Skinny_DUT_n_7,
      lopt => Skinny_DUT_n_6,
      lopt_1 => Skinny_DUT_n_2,
      lopt_2 => lopt,
      lopt_3 => lopt_1,
      rst_IBUF => rst_IBUF,
      start_IBUF => start_IBUF,
      \temp_reg_reg[13]\ => Skinny_DUT_n_6,
      \temp_reg_reg[15]\ => Skinny_DUT_n_2,
      \temp_reg_reg[28]\ => Skinny_DUT_n_5
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
      D => INST_CNT_n_1,
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
      D => Skinny_DUT_n_0,
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
      D => INST_CNT_n_0,
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
