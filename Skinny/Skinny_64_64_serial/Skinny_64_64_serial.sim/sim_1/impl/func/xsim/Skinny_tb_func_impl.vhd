-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Jun 21 01:23:02 2018
-- Host        : DESKTOP-II8OTGJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {F:/Documenti 2/University/Magistrale/Progettazione di
--               Sistemi Integrati/VHDL
--               projects/Xilinx_contest/Skinny/Skinny_64_64_serial/Skinny_64_64_serial.sim/sim_1/impl/func/xsim/Skinny_tb_func_impl.vhd}
-- Design      : Skinny_64_64
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg is
  port (
    \temp_reg_reg[15]_0\ : out STD_LOGIC;
    \temp_reg_reg[14]_0\ : out STD_LOGIC;
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    \temp_reg_reg[12]_0\ : out STD_LOGIC;
    AddConstant_OUT_BUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[13]_1\ : out STD_LOGIC;
    IS_enable1_buf : in STD_LOGIC;
    IS_serial_in_first_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \lfsr_internal_reg[4]\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    \lfsr_internal_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_internal_value_reg[0]\ : in STD_LOGIC
  );
end IS_shift_reg;

architecture STRUCTURE of IS_shift_reg is
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[12]_0\ : STD_LOGIC;
  signal \^temp_reg_reg[13]_0\ : STD_LOGIC;
  signal \^temp_reg_reg[14]_0\ : STD_LOGIC;
  signal \^temp_reg_reg[15]_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_FIRST_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
begin
  \temp_reg_reg[12]_0\ <= \^temp_reg_reg[12]_0\;
  \temp_reg_reg[13]_0\ <= \^temp_reg_reg[13]_0\;
  \temp_reg_reg[14]_0\ <= \^temp_reg_reg[14]_0\;
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
      CE => IS_enable1_buf,
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(2),
      Q => \temp_reg_reg[10]_srl3_n_0\
    );
\temp_reg_reg[10]_srl3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD02FD02FD0202FD"
    )
        port map (
      I0 => \lfsr_internal_reg[3]\(0),
      I1 => \cnt_internal_value_reg[1]\,
      I2 => \cnt_internal_value_reg[0]\,
      I3 => \^temp_reg_reg[15]_0\,
      I4 => \^temp_reg_reg[14]_0\,
      I5 => \^temp_reg_reg[13]_0\,
      O => AddConstant_OUT_BUF(1)
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(3),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD02FD02FD0202FD"
    )
        port map (
      I0 => \lfsr_internal_reg[3]\(1),
      I1 => \cnt_internal_value_reg[1]\,
      I2 => \cnt_internal_value_reg[0]\,
      I3 => \^temp_reg_reg[12]_0\,
      I4 => \^temp_reg_reg[15]_0\,
      I5 => \^temp_reg_reg[14]_0\,
      O => AddConstant_OUT_BUF(2)
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IS_enable1_buf,
      D => \temp_reg_reg[8]_srl3_n_0\,
      Q => \^temp_reg_reg[12]_0\,
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IS_enable1_buf,
      D => \temp_reg_reg[9]_srl3_n_0\,
      Q => \^temp_reg_reg[13]_0\,
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IS_enable1_buf,
      D => \temp_reg_reg[10]_srl3_n_0\,
      Q => \^temp_reg_reg[14]_0\,
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(0),
      Q => \temp_reg_reg[8]_srl3_n_0\
    );
\temp_reg_reg[8]_srl3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2D22DD2DD22D2"
    )
        port map (
      I0 => \lfsr_internal_reg[4]\,
      I1 => \cnt_internal_value_reg[1]\,
      I2 => \^temp_reg_reg[13]_0\,
      I3 => \^temp_reg_reg[12]_0\,
      I4 => \^temp_reg_reg[15]_0\,
      I5 => \^temp_reg_reg[14]_0\,
      O => AddConstant_OUT_BUF(0)
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_first_row_buf(1),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
\temp_reg_reg[9]_srl3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC06"
    )
        port map (
      I0 => \^temp_reg_reg[15]_0\,
      I1 => \^temp_reg_reg[12]_0\,
      I2 => \^temp_reg_reg[13]_0\,
      I3 => \^temp_reg_reg[14]_0\,
      O => \temp_reg_reg[13]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg_0 is
  port (
    IS_serial_output_fourth_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[12]_0\ : out STD_LOGIC;
    IS_enable4_buf : in STD_LOGIC;
    IS_serial_in_fourth_row_buf : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \cnt_internal_value_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IS_shift_reg_0 : entity is "IS_shift_reg";
end IS_shift_reg_0;

architecture STRUCTURE of IS_shift_reg_0 is
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_FOURTH_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
begin
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_fourth_row_buf(1),
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
      CE => IS_enable4_buf,
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_fourth_row_buf(2),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \temp_reg_reg[12]_0\
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IS_enable4_buf,
      D => \temp_reg_reg[8]_srl3_n_0\,
      Q => IS_serial_output_fourth_row_buf(0),
      R => '0'
    );
\temp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IS_enable4_buf,
      D => \temp_reg_reg[9]_srl3_n_0\,
      Q => IS_serial_output_fourth_row_buf(1),
      R => '0'
    );
\temp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IS_enable4_buf,
      D => \temp_reg_reg[10]_srl3_n_0\,
      Q => IS_serial_output_fourth_row_buf(2),
      R => '0'
    );
\temp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_fourth_row_buf(0),
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
      CE => IS_enable4_buf,
      CLK => CLK_IBUF_BUFG,
      D => \cnt_internal_value_reg[3]\(0),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg_1 is
  port (
    IS_serial_output_second_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_serial_in_third_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_serial_in_first_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_enable2_buf : in STD_LOGIC;
    IS_serial_in_second_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_serial_output_fourth_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_serial_output_third_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[12]_0\ : in STD_LOGIC;
    \temp_reg_reg[13]_0\ : in STD_LOGIC;
    \temp_reg_reg[14]_0\ : in STD_LOGIC;
    \temp_reg_reg[15]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IS_shift_reg_1 : entity is "IS_shift_reg";
end IS_shift_reg_1;

architecture STRUCTURE of IS_shift_reg_1 is
  signal \^is_serial_output_second_row_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_SECOND_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(2),
      Q => \temp_reg_reg[10]_srl3_n_0\
    );
\temp_reg_reg[10]_srl3_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777774448BBB8888"
    )
        port map (
      I0 => \^is_serial_output_second_row_buf\(2),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => IS_serial_output_fourth_row_buf(2),
      I5 => IS_serial_output_third_row_buf(2),
      O => IS_serial_in_third_row_buf(2)
    );
\temp_reg_reg[10]_srl3_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E44E4EE4"
    )
        port map (
      I0 => \out\(2),
      I1 => \^is_serial_output_second_row_buf\(2),
      I2 => \temp_reg_reg[14]_0\,
      I3 => IS_serial_output_third_row_buf(2),
      I4 => IS_serial_output_fourth_row_buf(2),
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(3),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777774448BBB8888"
    )
        port map (
      I0 => \^is_serial_output_second_row_buf\(3),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => IS_serial_output_fourth_row_buf(3),
      I5 => IS_serial_output_third_row_buf(3),
      O => IS_serial_in_third_row_buf(3)
    );
\temp_reg_reg[11]_srl3_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E44E4EE4"
    )
        port map (
      I0 => \out\(2),
      I1 => \^is_serial_output_second_row_buf\(3),
      I2 => \temp_reg_reg[15]_0\,
      I3 => IS_serial_output_third_row_buf(3),
      I4 => IS_serial_output_fourth_row_buf(3),
      O => IS_serial_in_first_row_buf(3)
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(0),
      Q => \temp_reg_reg[8]_srl3_n_0\
    );
\temp_reg_reg[8]_srl3_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777774448BBB8888"
    )
        port map (
      I0 => \^is_serial_output_second_row_buf\(0),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => IS_serial_output_fourth_row_buf(0),
      I5 => IS_serial_output_third_row_buf(0),
      O => IS_serial_in_third_row_buf(0)
    );
\temp_reg_reg[8]_srl3_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E44E4EE4"
    )
        port map (
      I0 => \out\(2),
      I1 => \^is_serial_output_second_row_buf\(0),
      I2 => \temp_reg_reg[12]_0\,
      I3 => IS_serial_output_third_row_buf(0),
      I4 => IS_serial_output_fourth_row_buf(0),
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_second_row_buf(1),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
\temp_reg_reg[9]_srl3_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777774448BBB8888"
    )
        port map (
      I0 => \^is_serial_output_second_row_buf\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => IS_serial_output_fourth_row_buf(1),
      I5 => IS_serial_output_third_row_buf(1),
      O => IS_serial_in_third_row_buf(1)
    );
\temp_reg_reg[9]_srl3_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E44E4EE4"
    )
        port map (
      I0 => \out\(2),
      I1 => \^is_serial_output_second_row_buf\(1),
      I2 => \temp_reg_reg[13]_0\,
      I3 => IS_serial_output_third_row_buf(1),
      I4 => IS_serial_output_fourth_row_buf(1),
      O => IS_serial_in_first_row_buf(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IS_shift_reg_2 is
  port (
    IS_serial_output_third_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_serial_in_fourth_row_buf : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    IS_serial_in_second_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_enable3_buf : in STD_LOGIC;
    IS_serial_in_third_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TW_REG_parallel_out_buf : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    AddConstant_OUT_BUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PLAINTEXT_IN_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IS_serial_output_fourth_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IS_serial_output_second_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[12]_0\ : in STD_LOGIC;
    \temp_reg_reg[13]_1\ : in STD_LOGIC;
    \temp_reg_reg[14]_0\ : in STD_LOGIC;
    \temp_reg_reg[15]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IS_shift_reg_2 : entity is "IS_shift_reg";
end IS_shift_reg_2;

architecture STRUCTURE of IS_shift_reg_2 is
  signal \^is_serial_output_third_row_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MixColumns_fourth_row_out_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp_reg_reg[10]_srl3_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[10]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[10]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[11]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[11]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[8]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[8]_srl3 ";
  attribute srl_bus_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[9]_srl3\ : label is "\INST_IS/INST_THIRD_ROW_SHIFT_REG/temp_reg_reg[9]_srl3 ";
begin
  IS_serial_output_third_row_buf(3 downto 0) <= \^is_serial_output_third_row_buf\(3 downto 0);
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(2),
      Q => \temp_reg_reg[10]_srl3_n_0\
    );
\temp_reg_reg[10]_srl3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFAAAAABAAAAAA"
    )
        port map (
      I0 => \temp_reg_reg[10]_srl3_i_2_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => TW_REG_parallel_out_buf(1),
      I4 => \FSM_sequential_current_state_reg[1]\,
      I5 => AddConstant_OUT_BUF(1),
      O => IS_serial_in_fourth_row_buf(1)
    );
\temp_reg_reg[10]_srl3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8700000F870"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \^is_serial_output_third_row_buf\(2),
      I3 => IS_serial_output_second_row_buf(2),
      I4 => \out\(2),
      I5 => \temp_reg_reg[14]_0\,
      O => IS_serial_in_second_row_buf(2)
    );
\temp_reg_reg[10]_srl3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCF0CC00AA"
    )
        port map (
      I0 => PLAINTEXT_IN_IBUF(2),
      I1 => MixColumns_fourth_row_out_buf(2),
      I2 => IS_serial_output_fourth_row_buf(2),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \temp_reg_reg[10]_srl3_i_2_n_0\
    );
\temp_reg_reg[10]_srl3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^is_serial_output_third_row_buf\(2),
      I1 => \temp_reg_reg[14]_0\,
      O => MixColumns_fourth_row_out_buf(2)
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(3),
      Q => \temp_reg_reg[11]_srl3_n_0\
    );
\temp_reg_reg[11]_srl3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFAAAAABAAAAAA"
    )
        port map (
      I0 => \temp_reg_reg[11]_srl3_i_5_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => TW_REG_parallel_out_buf(2),
      I4 => \FSM_sequential_current_state_reg[1]\,
      I5 => AddConstant_OUT_BUF(2),
      O => IS_serial_in_fourth_row_buf(2)
    );
\temp_reg_reg[11]_srl3_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8700000F870"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \^is_serial_output_third_row_buf\(3),
      I3 => IS_serial_output_second_row_buf(3),
      I4 => \out\(2),
      I5 => \temp_reg_reg[15]_0\,
      O => IS_serial_in_second_row_buf(3)
    );
\temp_reg_reg[11]_srl3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCF0CC00AA"
    )
        port map (
      I0 => PLAINTEXT_IN_IBUF(3),
      I1 => MixColumns_fourth_row_out_buf(3),
      I2 => IS_serial_output_fourth_row_buf(3),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \temp_reg_reg[11]_srl3_i_5_n_0\
    );
\temp_reg_reg[11]_srl3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^is_serial_output_third_row_buf\(3),
      I1 => \temp_reg_reg[15]_0\,
      O => MixColumns_fourth_row_out_buf(3)
    );
\temp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(0),
      Q => \temp_reg_reg[8]_srl3_n_0\
    );
\temp_reg_reg[8]_srl3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFAAAAABAAAAAA"
    )
        port map (
      I0 => \temp_reg_reg[8]_srl3_i_2_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => TW_REG_parallel_out_buf(0),
      I4 => \FSM_sequential_current_state_reg[1]\,
      I5 => AddConstant_OUT_BUF(0),
      O => IS_serial_in_fourth_row_buf(0)
    );
\temp_reg_reg[8]_srl3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8700000F870"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \^is_serial_output_third_row_buf\(0),
      I3 => IS_serial_output_second_row_buf(0),
      I4 => \out\(2),
      I5 => \temp_reg_reg[12]_0\,
      O => IS_serial_in_second_row_buf(0)
    );
\temp_reg_reg[8]_srl3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCF0CC00AA"
    )
        port map (
      I0 => PLAINTEXT_IN_IBUF(0),
      I1 => MixColumns_fourth_row_out_buf(0),
      I2 => IS_serial_output_fourth_row_buf(0),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \temp_reg_reg[8]_srl3_i_2_n_0\
    );
\temp_reg_reg[8]_srl3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^is_serial_output_third_row_buf\(0),
      I1 => \temp_reg_reg[12]_0\,
      O => MixColumns_fourth_row_out_buf(0)
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
      CLK => CLK_IBUF_BUFG,
      D => IS_serial_in_third_row_buf(1),
      Q => \temp_reg_reg[9]_srl3_n_0\
    );
\temp_reg_reg[9]_srl3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8700000F870"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \^is_serial_output_third_row_buf\(1),
      I3 => IS_serial_output_second_row_buf(1),
      I4 => \out\(2),
      I5 => \temp_reg_reg[13]_1\,
      O => IS_serial_in_second_row_buf(1)
    );
\temp_reg_reg[9]_srl3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCF0CC00AA"
    )
        port map (
      I0 => PLAINTEXT_IN_IBUF(1),
      I1 => MixColumns_fourth_row_out_buf(1),
      I2 => IS_serial_output_fourth_row_buf(1),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \temp_reg_reg[13]_0\
    );
\temp_reg_reg[9]_srl3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^is_serial_output_third_row_buf\(1),
      I1 => \temp_reg_reg[13]_1\,
      O => MixColumns_fourth_row_out_buf(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SKINNY_CNT is
  port (
    \FSM_sequential_current_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : out STD_LOGIC;
    IS_enable2_buf : out STD_LOGIC;
    \temp_reg_reg[12]\ : out STD_LOGIC;
    IS_enable3_buf : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_current_state_reg[0]_0\ : out STD_LOGIC;
    \temp_reg_reg[13]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    \temp_reg_reg[12]_0\ : out STD_LOGIC;
    \temp_reg_reg[15]\ : out STD_LOGIC;
    IS_enable4_buf : out STD_LOGIC;
    start_IBUF : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_ready_IBUF : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC;
    \lfsr_internal_reg[0]\ : in STD_LOGIC;
    \temp_reg_reg[13]_1\ : in STD_LOGIC;
    TW_REG_parallel_out_buf : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]_1\ : in STD_LOGIC;
    \lfsr_internal_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[15]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    BUSY_OBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end SKINNY_CNT;

architecture STRUCTURE of SKINNY_CNT is
  signal AddConstant_OUT_BUF : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[1]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cnt_out_buf : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst_CNT_buf : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_i_3__0_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[11]_srl3_i_3__1_n_0\ : STD_LOGIC;
  signal \^temp_reg_reg[12]\ : STD_LOGIC;
  signal \^temp_reg_reg[13]_0\ : STD_LOGIC;
  signal \temp_reg_reg[9]_srl3_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_internal_value[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_internal_value[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_internal_value[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_internal_value[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_internal_value[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_reg_reg[11]_srl3_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp_reg_reg[11]_srl3_i_3__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp_reg_reg[11]_srl3_i_3__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp_reg_reg[11]_srl3_i_4__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_reg_reg[11]_srl3_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp_reg_reg[8]_srl3_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp_reg_reg[9]_srl3_i_5\ : label is "soft_lutpair8";
begin
  \FSM_sequential_current_state_reg[0]_0\ <= \^fsm_sequential_current_state_reg[0]_0\;
  \FSM_sequential_current_state_reg[1]_0\ <= \^fsm_sequential_current_state_reg[1]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  \temp_reg_reg[12]\ <= \^temp_reg_reg[12]\;
  \temp_reg_reg[13]_0\ <= \^temp_reg_reg[13]_0\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABBAAAF"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\,
      I2 => start_IBUF,
      I3 => \FSM_sequential_current_state_reg[2]\,
      I4 => \out\(1),
      I5 => data_ready_IBUF,
      O => \FSM_sequential_current_state_reg[0]\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000204"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^fsm_sequential_current_state_reg[0]_0\,
      I3 => \out\(2),
      I4 => \out\(0),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C3E0F3E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \^fsm_sequential_current_state_reg[1]_0\,
      I5 => data_ready_IBUF,
      O => \FSM_sequential_current_state_reg[1]\
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => cnt_out_buf(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => cnt_out_buf(1),
      I4 => cnt_out_buf(0),
      O => \^fsm_sequential_current_state_reg[1]_0\
    );
\FSM_sequential_current_state[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt_out_buf(1),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(2),
      O => \^fsm_sequential_current_state_reg[0]_0\
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
      INIT => X"78"
    )
        port map (
      I0 => cnt_out_buf(1),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(2),
      O => plusOp(2)
    );
\cnt_internal_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_out_buf(2),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(1),
      I3 => \^q\(0),
      O => plusOp(3)
    );
\cnt_internal_value[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => rst_CNT_buf
    );
\cnt_internal_value[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => cnt_out_buf(1),
      I3 => cnt_out_buf(0),
      I4 => cnt_out_buf(2),
      O => plusOp(4)
    );
\cnt_internal_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => BUSY_OBUF,
      D => plusOp(0),
      Q => cnt_out_buf(0),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => BUSY_OBUF,
      D => plusOp(1),
      Q => cnt_out_buf(1),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => BUSY_OBUF,
      D => plusOp(2),
      Q => cnt_out_buf(2),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => BUSY_OBUF,
      D => plusOp(3),
      Q => \^q\(0),
      R => rst_CNT_buf
    );
\cnt_internal_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => BUSY_OBUF,
      D => plusOp(4),
      Q => \^q\(1),
      R => rst_CNT_buf
    );
\temp_reg_reg[11]_srl3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF02CF"
    )
        port map (
      I0 => \^temp_reg_reg[12]\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \lfsr_internal_reg[0]\,
      O => IS_enable2_buf
    );
\temp_reg_reg[11]_srl3_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_out_buf(0),
      I1 => cnt_out_buf(2),
      I2 => cnt_out_buf(1),
      O => \^temp_reg_reg[13]_0\
    );
\temp_reg_reg[11]_srl3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB008830FF30FF"
    )
        port map (
      I0 => \temp_reg_reg[11]_srl3_i_3__1_n_0\,
      I1 => \out\(1),
      I2 => \^temp_reg_reg[12]\,
      I3 => \out\(2),
      I4 => \lfsr_internal_reg[0]\,
      I5 => \out\(0),
      O => IS_enable3_buf
    );
\temp_reg_reg[11]_srl3_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \temp_reg_reg[11]_srl3_i_3__0_n_0\,
      I3 => \^fsm_sequential_current_state_reg[1]_0\,
      I4 => \FSM_sequential_current_state_reg[0]_1\,
      O => IS_enable4_buf
    );
\temp_reg_reg[11]_srl3_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => cnt_out_buf(0),
      I1 => cnt_out_buf(1),
      I2 => cnt_out_buf(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \temp_reg_reg[11]_srl3_i_3__0_n_0\
    );
\temp_reg_reg[11]_srl3_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => cnt_out_buf(0),
      I1 => cnt_out_buf(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => cnt_out_buf(2),
      O => \temp_reg_reg[11]_srl3_i_3__1_n_0\
    );
\temp_reg_reg[11]_srl3_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => cnt_out_buf(2),
      I3 => cnt_out_buf(0),
      I4 => cnt_out_buf(1),
      O => \^temp_reg_reg[12]\
    );
\temp_reg_reg[11]_srl3_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_out_buf(1),
      I1 => \^q\(0),
      I2 => cnt_out_buf(0),
      I3 => \^q\(1),
      O => \temp_reg_reg[15]\
    );
\temp_reg_reg[8]_srl3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \lfsr_internal_reg[5]\(2),
      I1 => cnt_out_buf(0),
      I2 => cnt_out_buf(2),
      I3 => cnt_out_buf(1),
      I4 => \lfsr_internal_reg[5]\(0),
      O => \temp_reg_reg[12]_0\
    );
\temp_reg_reg[9]_srl3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFAAAAABAAAAAA"
    )
        port map (
      I0 => \temp_reg_reg[13]_1\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => TW_REG_parallel_out_buf(0),
      I4 => \FSM_sequential_current_state_reg[1]_1\,
      I5 => AddConstant_OUT_BUF(1),
      O => \temp_reg_reg[13]\(0)
    );
\temp_reg_reg[9]_srl3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000DD0322FC"
    )
        port map (
      I0 => \lfsr_internal_reg[5]\(3),
      I1 => \temp_reg_reg[9]_srl3_i_5_n_0\,
      I2 => \lfsr_internal_reg[5]\(1),
      I3 => \^temp_reg_reg[13]_0\,
      I4 => \temp_reg_reg[15]_0\,
      I5 => \^q\(1),
      O => AddConstant_OUT_BUF(1)
    );
\temp_reg_reg[9]_srl3_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_out_buf(0),
      I1 => \^q\(0),
      I2 => cnt_out_buf(1),
      O => \temp_reg_reg[9]_srl3_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr is
  port (
    \FSM_sequential_current_state_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \temp_reg_reg[12]\ : out STD_LOGIC;
    \temp_reg_reg[12]_0\ : out STD_LOGIC;
    IS_enable1_buf : out STD_LOGIC;
    CIPHERTEXT_OUT_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_internal_value_reg[2]\ : in STD_LOGIC;
    data_ready_IBUF : in STD_LOGIC;
    \cnt_internal_value_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    \cnt_internal_value_reg[4]_0\ : in STD_LOGIC;
    IS_serial_output_first_row_buf : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end lfsr;

architecture STRUCTURE of lfsr is
  signal \CIPHERTEXT_OUT_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \CIPHERTEXT_OUT_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal enable_TW_permutation_buf : STD_LOGIC;
  signal lfsr_rst_buf : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^temp_reg_reg[12]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CIPHERTEXT_OUT_OBUF[3]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lfsr_internal[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_reg_reg[11]_srl3_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp_reg_reg[11]_srl3_i_4\ : label is "soft_lutpair0";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \temp_reg_reg[12]_0\ <= \^temp_reg_reg[12]_0\;
\CIPHERTEXT_OUT_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_2_n_0\,
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_3_n_0\,
      I5 => IS_serial_output_first_row_buf(0),
      O => CIPHERTEXT_OUT_OBUF(0)
    );
\CIPHERTEXT_OUT_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_2_n_0\,
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_3_n_0\,
      I5 => IS_serial_output_first_row_buf(1),
      O => CIPHERTEXT_OUT_OBUF(1)
    );
\CIPHERTEXT_OUT_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_2_n_0\,
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_3_n_0\,
      I5 => IS_serial_output_first_row_buf(2),
      O => CIPHERTEXT_OUT_OBUF(2)
    );
\CIPHERTEXT_OUT_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_2_n_0\,
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_3_n_0\,
      I5 => IS_serial_output_first_row_buf(3),
      O => CIPHERTEXT_OUT_OBUF(3)
    );
\CIPHERTEXT_OUT_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => \CIPHERTEXT_OUT_OBUF[3]_inst_i_2_n_0\
    );
\CIPHERTEXT_OUT_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D5000000D5D5"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \CIPHERTEXT_OUT_OBUF[3]_inst_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000062404040"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I3 => \cnt_internal_value_reg[2]\,
      I4 => \out\(1),
      I5 => data_ready_IBUF,
      O => \FSM_sequential_current_state_reg[2]\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \CIPHERTEXT_OUT_OBUF[3]_inst_i_2_n_0\,
      I2 => \^q\(3),
      I3 => \cnt_internal_value_reg[4]\(1),
      I4 => \cnt_internal_value_reg[4]\(0),
      I5 => \cnt_internal_value_reg[1]\,
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\lfsr_internal[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => p_3_out(0)
    );
\lfsr_internal[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      O => lfsr_rst_buf
    );
\lfsr_internal[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      O => enable_TW_permutation_buf
    );
\lfsr_internal_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => enable_TW_permutation_buf,
      D => p_3_out(0),
      Q => \^q\(0),
      S => lfsr_rst_buf
    );
\lfsr_internal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => enable_TW_permutation_buf,
      D => \^q\(0),
      Q => \^q\(1),
      R => lfsr_rst_buf
    );
\lfsr_internal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => enable_TW_permutation_buf,
      D => \^q\(1),
      Q => \^q\(2),
      R => lfsr_rst_buf
    );
\lfsr_internal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => enable_TW_permutation_buf,
      D => \^q\(2),
      Q => \^q\(3),
      R => lfsr_rst_buf
    );
\lfsr_internal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => enable_TW_permutation_buf,
      D => \^q\(3),
      Q => \^q\(4),
      R => lfsr_rst_buf
    );
\lfsr_internal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => enable_TW_permutation_buf,
      D => \^q\(4),
      Q => \^q\(5),
      R => lfsr_rst_buf
    );
\temp_reg_reg[11]_srl3_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"032F0323"
    )
        port map (
      I0 => \^temp_reg_reg[12]_0\,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \cnt_internal_value_reg[4]_0\,
      O => IS_enable1_buf
    );
\temp_reg_reg[11]_srl3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \^temp_reg_reg[12]_0\
    );
\temp_reg_reg[11]_srl3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05055D0D"
    )
        port map (
      I0 => \out\(0),
      I1 => \^temp_reg_reg[12]_0\,
      I2 => \out\(2),
      I3 => \cnt_internal_value_reg[4]_0\,
      I4 => \out\(1),
      O => \temp_reg_reg[12]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_reg is
  port (
    TW_REG_parallel_out_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BUSY_OBUF : out STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TWEAKEY_IN_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end shift_reg;

architecture STRUCTURE of shift_reg is
  signal \^busy_obuf\ : STD_LOGIC;
  signal TWEAKEY_permutation_IN : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \^tw_reg_parallel_out_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TW_REG_serial_in_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 59 downto 32 );
  signal state : STD_LOGIC;
  signal \temp_reg_reg[24]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[25]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[26]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg[27]_srl7_n_0\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \temp_reg_reg_n_0_[31]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg_reg[24]_srl7\ : label is "\INST_TW_REG/temp_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg_reg[24]_srl7\ : label is "\INST_TW_REG/temp_reg_reg[24]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[25]_srl7\ : label is "\INST_TW_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[25]_srl7\ : label is "\INST_TW_REG/temp_reg_reg[25]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[26]_srl7\ : label is "\INST_TW_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[26]_srl7\ : label is "\INST_TW_REG/temp_reg_reg[26]_srl7 ";
  attribute srl_bus_name of \temp_reg_reg[27]_srl7\ : label is "\INST_TW_REG/temp_reg_reg ";
  attribute srl_name of \temp_reg_reg[27]_srl7\ : label is "\INST_TW_REG/temp_reg_reg[27]_srl7 ";
begin
  BUSY_OBUF <= \^busy_obuf\;
  TW_REG_parallel_out_buf(3 downto 0) <= \^tw_reg_parallel_out_buf\(3 downto 0);
BUSY_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3D"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      O => \^busy_obuf\
    );
\temp_reg[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(0),
      I1 => TWEAKEY_permutation_IN(16),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => \temp_reg_reg_n_0_[28]\,
      O => p_1_in(32)
    );
\temp_reg[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(1),
      I1 => TWEAKEY_permutation_IN(17),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => \temp_reg_reg_n_0_[29]\,
      O => p_1_in(33)
    );
\temp_reg[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(2),
      I1 => TWEAKEY_permutation_IN(18),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => \temp_reg_reg_n_0_[30]\,
      O => p_1_in(34)
    );
\temp_reg[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(3),
      I1 => TWEAKEY_permutation_IN(19),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => \temp_reg_reg_n_0_[31]\,
      O => p_1_in(35)
    );
\temp_reg[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(4),
      I1 => TWEAKEY_permutation_IN(12),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(0),
      O => p_1_in(36)
    );
\temp_reg[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(5),
      I1 => TWEAKEY_permutation_IN(13),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(1),
      O => p_1_in(37)
    );
\temp_reg[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(6),
      I1 => TWEAKEY_permutation_IN(14),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(2),
      O => p_1_in(38)
    );
\temp_reg[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(7),
      I1 => TWEAKEY_permutation_IN(15),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(3),
      O => p_1_in(39)
    );
\temp_reg[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(12),
      I1 => TWEAKEY_permutation_IN(20),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(8),
      O => p_1_in(44)
    );
\temp_reg[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(13),
      I1 => TWEAKEY_permutation_IN(21),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(9),
      O => p_1_in(45)
    );
\temp_reg[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(14),
      I1 => TWEAKEY_permutation_IN(22),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(10),
      O => p_1_in(46)
    );
\temp_reg[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(15),
      I1 => TWEAKEY_permutation_IN(23),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(11),
      O => p_1_in(47)
    );
\temp_reg[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(16),
      I1 => TWEAKEY_permutation_IN(8),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(12),
      O => p_1_in(48)
    );
\temp_reg[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(17),
      I1 => TWEAKEY_permutation_IN(9),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(13),
      O => p_1_in(49)
    );
\temp_reg[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(18),
      I1 => TWEAKEY_permutation_IN(10),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(14),
      O => p_1_in(50)
    );
\temp_reg[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(19),
      I1 => TWEAKEY_permutation_IN(11),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(15),
      O => p_1_in(51)
    );
\temp_reg[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(20),
      I1 => \^tw_reg_parallel_out_buf\(0),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(16),
      O => p_1_in(52)
    );
\temp_reg[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(21),
      I1 => \^tw_reg_parallel_out_buf\(1),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(17),
      O => p_1_in(53)
    );
\temp_reg[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(22),
      I1 => \^tw_reg_parallel_out_buf\(2),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(18),
      O => p_1_in(54)
    );
\temp_reg[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(23),
      I1 => \^tw_reg_parallel_out_buf\(3),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(19),
      O => p_1_in(55)
    );
\temp_reg[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(24),
      I1 => TWEAKEY_permutation_IN(0),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(20),
      O => p_1_in(56)
    );
\temp_reg[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(25),
      I1 => TWEAKEY_permutation_IN(1),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(21),
      O => p_1_in(57)
    );
\temp_reg[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(26),
      I1 => TWEAKEY_permutation_IN(2),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(22),
      O => p_1_in(58)
    );
\temp_reg[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFAAFFFAC0AA000"
    )
        port map (
      I0 => TWEAKEY_permutation_IN(27),
      I1 => TWEAKEY_permutation_IN(3),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => TWEAKEY_permutation_IN(23),
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
      CLK => CLK_IBUF_BUFG,
      D => TW_REG_serial_in_buf(0),
      Q => \temp_reg_reg[24]_srl7_n_0\
    );
\temp_reg_reg[24]_srl7_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \^tw_reg_parallel_out_buf\(0),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => TWEAKEY_IN_IBUF(0),
      O => TW_REG_serial_in_buf(0)
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
      CLK => CLK_IBUF_BUFG,
      D => TW_REG_serial_in_buf(1),
      Q => \temp_reg_reg[25]_srl7_n_0\
    );
\temp_reg_reg[25]_srl7_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \^tw_reg_parallel_out_buf\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => TWEAKEY_IN_IBUF(1),
      O => TW_REG_serial_in_buf(1)
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
      CLK => CLK_IBUF_BUFG,
      D => TW_REG_serial_in_buf(2),
      Q => \temp_reg_reg[26]_srl7_n_0\
    );
\temp_reg_reg[26]_srl7_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \^tw_reg_parallel_out_buf\(2),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => TWEAKEY_IN_IBUF(2),
      O => TW_REG_serial_in_buf(2)
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
      CLK => CLK_IBUF_BUFG,
      D => TW_REG_serial_in_buf(3),
      Q => \temp_reg_reg[27]_srl7_n_0\
    );
\temp_reg_reg[27]_srl7_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      O => state
    );
\temp_reg_reg[27]_srl7_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \^tw_reg_parallel_out_buf\(3),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => TWEAKEY_IN_IBUF(3),
      O => TW_REG_serial_in_buf(3)
    );
\temp_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
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
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(32),
      Q => TWEAKEY_permutation_IN(0),
      R => '0'
    );
\temp_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(33),
      Q => TWEAKEY_permutation_IN(1),
      R => '0'
    );
\temp_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(34),
      Q => TWEAKEY_permutation_IN(2),
      R => '0'
    );
\temp_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(35),
      Q => TWEAKEY_permutation_IN(3),
      R => '0'
    );
\temp_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(36),
      Q => TWEAKEY_permutation_IN(4),
      R => '0'
    );
\temp_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(37),
      Q => TWEAKEY_permutation_IN(5),
      R => '0'
    );
\temp_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(38),
      Q => TWEAKEY_permutation_IN(6),
      R => '0'
    );
\temp_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(39),
      Q => TWEAKEY_permutation_IN(7),
      R => '0'
    );
\temp_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(4),
      Q => TWEAKEY_permutation_IN(8),
      R => '0'
    );
\temp_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(5),
      Q => TWEAKEY_permutation_IN(9),
      R => '0'
    );
\temp_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(6),
      Q => TWEAKEY_permutation_IN(10),
      R => '0'
    );
\temp_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(7),
      Q => TWEAKEY_permutation_IN(11),
      R => '0'
    );
\temp_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(44),
      Q => TWEAKEY_permutation_IN(12),
      R => '0'
    );
\temp_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(45),
      Q => TWEAKEY_permutation_IN(13),
      R => '0'
    );
\temp_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(46),
      Q => TWEAKEY_permutation_IN(14),
      R => '0'
    );
\temp_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(47),
      Q => TWEAKEY_permutation_IN(15),
      R => '0'
    );
\temp_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(48),
      Q => TWEAKEY_permutation_IN(16),
      R => '0'
    );
\temp_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(49),
      Q => TWEAKEY_permutation_IN(17),
      R => '0'
    );
\temp_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(50),
      Q => TWEAKEY_permutation_IN(18),
      R => '0'
    );
\temp_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(51),
      Q => TWEAKEY_permutation_IN(19),
      R => '0'
    );
\temp_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(52),
      Q => TWEAKEY_permutation_IN(20),
      R => '0'
    );
\temp_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(53),
      Q => TWEAKEY_permutation_IN(21),
      R => '0'
    );
\temp_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(54),
      Q => TWEAKEY_permutation_IN(22),
      R => '0'
    );
\temp_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(55),
      Q => TWEAKEY_permutation_IN(23),
      R => '0'
    );
\temp_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(56),
      Q => TWEAKEY_permutation_IN(24),
      R => '0'
    );
\temp_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(57),
      Q => TWEAKEY_permutation_IN(25),
      R => '0'
    );
\temp_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(58),
      Q => TWEAKEY_permutation_IN(26),
      R => '0'
    );
\temp_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_1_in(59),
      Q => TWEAKEY_permutation_IN(27),
      R => '0'
    );
\temp_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(24),
      Q => \^tw_reg_parallel_out_buf\(0),
      R => '0'
    );
\temp_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(25),
      Q => \^tw_reg_parallel_out_buf\(1),
      R => '0'
    );
\temp_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(26),
      Q => \^tw_reg_parallel_out_buf\(2),
      R => '0'
    );
\temp_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \^busy_obuf\,
      D => TWEAKEY_permutation_IN(27),
      Q => \^tw_reg_parallel_out_buf\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skinny_shift_reg_64 is
  port (
    IS_serial_output_first_row_buf : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg_reg[12]\ : out STD_LOGIC;
    \temp_reg_reg[13]\ : out STD_LOGIC;
    \temp_reg_reg[13]_0\ : out STD_LOGIC;
    IS_enable1_buf : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC;
    IS_enable2_buf : in STD_LOGIC;
    IS_enable3_buf : in STD_LOGIC;
    IS_enable4_buf : in STD_LOGIC;
    \cnt_internal_value_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TW_REG_parallel_out_buf : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PLAINTEXT_IN_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \lfsr_internal_reg[4]\ : in STD_LOGIC;
    \cnt_internal_value_reg[1]\ : in STD_LOGIC;
    \lfsr_internal_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_internal_value_reg[0]\ : in STD_LOGIC
  );
end skinny_shift_reg_64;

architecture STRUCTURE of skinny_shift_reg_64 is
  signal AddConstant_OUT_BUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_in_first_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_in_fourth_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_in_second_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_in_third_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^is_serial_output_first_row_buf\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_output_fourth_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_output_second_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IS_serial_output_third_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^temp_reg_reg[12]\ : STD_LOGIC;
begin
  IS_serial_output_first_row_buf(3 downto 0) <= \^is_serial_output_first_row_buf\(3 downto 0);
  \temp_reg_reg[12]\ <= \^temp_reg_reg[12]\;
INST_FIRST_ROW_SHIFT_REG: entity work.IS_shift_reg
     port map (
      AddConstant_OUT_BUF(2 downto 1) => AddConstant_OUT_BUF(3 downto 2),
      AddConstant_OUT_BUF(0) => AddConstant_OUT_BUF(0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      IS_enable1_buf => IS_enable1_buf,
      IS_serial_in_first_row_buf(3 downto 0) => IS_serial_in_first_row_buf(3 downto 0),
      \cnt_internal_value_reg[0]\ => \cnt_internal_value_reg[0]\,
      \cnt_internal_value_reg[1]\ => \cnt_internal_value_reg[1]\,
      \lfsr_internal_reg[3]\(1 downto 0) => \lfsr_internal_reg[3]\(1 downto 0),
      \lfsr_internal_reg[4]\ => \lfsr_internal_reg[4]\,
      \temp_reg_reg[12]_0\ => \^is_serial_output_first_row_buf\(0),
      \temp_reg_reg[13]_0\ => \^is_serial_output_first_row_buf\(1),
      \temp_reg_reg[13]_1\ => \temp_reg_reg[13]_0\,
      \temp_reg_reg[14]_0\ => \^is_serial_output_first_row_buf\(2),
      \temp_reg_reg[15]_0\ => \^is_serial_output_first_row_buf\(3)
    );
INST_FOURTH_ROW_SHIFT_REG: entity work.IS_shift_reg_0
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      IS_enable4_buf => IS_enable4_buf,
      IS_serial_in_fourth_row_buf(2 downto 1) => IS_serial_in_fourth_row_buf(3 downto 2),
      IS_serial_in_fourth_row_buf(0) => IS_serial_in_fourth_row_buf(0),
      IS_serial_output_fourth_row_buf(3 downto 0) => IS_serial_output_fourth_row_buf(3 downto 0),
      \cnt_internal_value_reg[3]\(0) => \cnt_internal_value_reg[3]\(0),
      \out\(2 downto 0) => \out\(2 downto 0),
      \temp_reg_reg[12]_0\ => \^temp_reg_reg[12]\
    );
INST_SECOND_ROW_SHIFT_REG: entity work.IS_shift_reg_1
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      IS_enable2_buf => IS_enable2_buf,
      IS_serial_in_first_row_buf(3 downto 0) => IS_serial_in_first_row_buf(3 downto 0),
      IS_serial_in_second_row_buf(3 downto 0) => IS_serial_in_second_row_buf(3 downto 0),
      IS_serial_in_third_row_buf(3 downto 0) => IS_serial_in_third_row_buf(3 downto 0),
      IS_serial_output_fourth_row_buf(3 downto 0) => IS_serial_output_fourth_row_buf(3 downto 0),
      IS_serial_output_second_row_buf(3 downto 0) => IS_serial_output_second_row_buf(3 downto 0),
      IS_serial_output_third_row_buf(3 downto 0) => IS_serial_output_third_row_buf(3 downto 0),
      \out\(2 downto 0) => \out\(2 downto 0),
      \temp_reg_reg[12]_0\ => \^is_serial_output_first_row_buf\(0),
      \temp_reg_reg[13]_0\ => \^is_serial_output_first_row_buf\(1),
      \temp_reg_reg[14]_0\ => \^is_serial_output_first_row_buf\(2),
      \temp_reg_reg[15]_0\ => \^is_serial_output_first_row_buf\(3)
    );
INST_THIRD_ROW_SHIFT_REG: entity work.IS_shift_reg_2
     port map (
      AddConstant_OUT_BUF(2 downto 1) => AddConstant_OUT_BUF(3 downto 2),
      AddConstant_OUT_BUF(0) => AddConstant_OUT_BUF(0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      \FSM_sequential_current_state_reg[1]\ => \^temp_reg_reg[12]\,
      IS_enable3_buf => IS_enable3_buf,
      IS_serial_in_fourth_row_buf(2 downto 1) => IS_serial_in_fourth_row_buf(3 downto 2),
      IS_serial_in_fourth_row_buf(0) => IS_serial_in_fourth_row_buf(0),
      IS_serial_in_second_row_buf(3 downto 0) => IS_serial_in_second_row_buf(3 downto 0),
      IS_serial_in_third_row_buf(3 downto 0) => IS_serial_in_third_row_buf(3 downto 0),
      IS_serial_output_fourth_row_buf(3 downto 0) => IS_serial_output_fourth_row_buf(3 downto 0),
      IS_serial_output_second_row_buf(3 downto 0) => IS_serial_output_second_row_buf(3 downto 0),
      IS_serial_output_third_row_buf(3 downto 0) => IS_serial_output_third_row_buf(3 downto 0),
      PLAINTEXT_IN_IBUF(3 downto 0) => PLAINTEXT_IN_IBUF(3 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      TW_REG_parallel_out_buf(2 downto 0) => TW_REG_parallel_out_buf(2 downto 0),
      \out\(2 downto 0) => \out\(2 downto 0),
      \temp_reg_reg[12]_0\ => \^is_serial_output_first_row_buf\(0),
      \temp_reg_reg[13]_0\ => \temp_reg_reg[13]\,
      \temp_reg_reg[13]_1\ => \^is_serial_output_first_row_buf\(1),
      \temp_reg_reg[14]_0\ => \^is_serial_output_first_row_buf\(2),
      \temp_reg_reg[15]_0\ => \^is_serial_output_first_row_buf\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Skinny_64_64 is
  port (
    CLK : in STD_LOGIC;
    PLAINTEXT_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TWEAKEY_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_ready : in STD_LOGIC;
    start : in STD_LOGIC;
    BUSY : out STD_LOGIC;
    CIPHERTEXT_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Skinny_64_64 : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Skinny_64_64 : entity is "910abe70";
end Skinny_64_64;

architecture STRUCTURE of Skinny_64_64 is
  signal BUSY_OBUF : STD_LOGIC;
  signal CIPHERTEXT_OUT_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal INST_IS_n_4 : STD_LOGIC;
  signal INST_IS_n_5 : STD_LOGIC;
  signal INST_IS_n_6 : STD_LOGIC;
  signal INST_LFSR_n_0 : STD_LOGIC;
  signal INST_LFSR_n_7 : STD_LOGIC;
  signal INST_LFSR_n_8 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_0 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_1 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_10 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_11 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_12 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_2 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_4 : STD_LOGIC;
  signal INST_SKINNY_CNT_n_8 : STD_LOGIC;
  signal IS_enable1_buf : STD_LOGIC;
  signal IS_enable2_buf : STD_LOGIC;
  signal IS_enable3_buf : STD_LOGIC;
  signal IS_enable4_buf : STD_LOGIC;
  signal IS_serial_in_fourth_row_buf : STD_LOGIC_VECTOR ( 1 to 1 );
  signal IS_serial_output_first_row_buf : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PLAINTEXT_IN_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TWEAKEY_IN_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TW_REG_parallel_out_buf : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal cnt_out_buf : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal data_ready_IBUF : STD_LOGIC;
  signal lfsr_out_buf : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal start_IBUF : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "loading:000,processing:010,shiftr:011,mixcol:100,rnd_end:101,idle:001";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
begin
BUSY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => BUSY_OBUF,
      O => BUSY
    );
\CIPHERTEXT_OUT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CIPHERTEXT_OUT_OBUF(0),
      O => CIPHERTEXT_OUT(0)
    );
\CIPHERTEXT_OUT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CIPHERTEXT_OUT_OBUF(1),
      O => CIPHERTEXT_OUT(1)
    );
\CIPHERTEXT_OUT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CIPHERTEXT_OUT_OBUF(2),
      O => CIPHERTEXT_OUT(2)
    );
\CIPHERTEXT_OUT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CIPHERTEXT_OUT_OBUF(3),
      O => CIPHERTEXT_OUT(3)
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => INST_SKINNY_CNT_n_2,
      Q => current_state(0),
      R => '0'
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => INST_SKINNY_CNT_n_0,
      Q => current_state(1),
      R => '0'
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => INST_LFSR_n_0,
      Q => current_state(2),
      R => '0'
    );
INST_IS: entity work.skinny_shift_reg_64
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      IS_enable1_buf => IS_enable1_buf,
      IS_enable2_buf => IS_enable2_buf,
      IS_enable3_buf => IS_enable3_buf,
      IS_enable4_buf => IS_enable4_buf,
      IS_serial_output_first_row_buf(3 downto 0) => IS_serial_output_first_row_buf(3 downto 0),
      PLAINTEXT_IN_IBUF(3 downto 0) => PLAINTEXT_IN_IBUF(3 downto 0),
      Q(1 downto 0) => cnt_out_buf(4 downto 3),
      TW_REG_parallel_out_buf(2 downto 1) => TW_REG_parallel_out_buf(31 downto 30),
      TW_REG_parallel_out_buf(0) => TW_REG_parallel_out_buf(28),
      \cnt_internal_value_reg[0]\ => INST_SKINNY_CNT_n_10,
      \cnt_internal_value_reg[1]\ => INST_SKINNY_CNT_n_12,
      \cnt_internal_value_reg[3]\(0) => IS_serial_in_fourth_row_buf(1),
      \lfsr_internal_reg[3]\(1 downto 0) => lfsr_out_buf(3 downto 2),
      \lfsr_internal_reg[4]\ => INST_SKINNY_CNT_n_11,
      \out\(2 downto 0) => current_state(2 downto 0),
      \temp_reg_reg[12]\ => INST_IS_n_4,
      \temp_reg_reg[13]\ => INST_IS_n_5,
      \temp_reg_reg[13]_0\ => INST_IS_n_6
    );
INST_LFSR: entity work.lfsr
     port map (
      CIPHERTEXT_OUT_OBUF(3 downto 0) => CIPHERTEXT_OUT_OBUF(3 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      \FSM_sequential_current_state_reg[2]\ => INST_LFSR_n_0,
      IS_enable1_buf => IS_enable1_buf,
      IS_serial_output_first_row_buf(3 downto 0) => IS_serial_output_first_row_buf(3 downto 0),
      Q(5 downto 0) => lfsr_out_buf(5 downto 0),
      \cnt_internal_value_reg[1]\ => INST_SKINNY_CNT_n_8,
      \cnt_internal_value_reg[2]\ => INST_SKINNY_CNT_n_1,
      \cnt_internal_value_reg[4]\(1 downto 0) => cnt_out_buf(4 downto 3),
      \cnt_internal_value_reg[4]_0\ => INST_SKINNY_CNT_n_4,
      data_ready_IBUF => data_ready_IBUF,
      \out\(2 downto 0) => current_state(2 downto 0),
      \temp_reg_reg[12]\ => INST_LFSR_n_7,
      \temp_reg_reg[12]_0\ => INST_LFSR_n_8
    );
INST_SKINNY_CNT: entity work.SKINNY_CNT
     port map (
      BUSY_OBUF => BUSY_OBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      \FSM_sequential_current_state_reg[0]\ => INST_SKINNY_CNT_n_2,
      \FSM_sequential_current_state_reg[0]_0\ => INST_SKINNY_CNT_n_8,
      \FSM_sequential_current_state_reg[0]_1\ => INST_LFSR_n_7,
      \FSM_sequential_current_state_reg[1]\ => INST_SKINNY_CNT_n_0,
      \FSM_sequential_current_state_reg[1]_0\ => INST_SKINNY_CNT_n_1,
      \FSM_sequential_current_state_reg[1]_1\ => INST_IS_n_4,
      \FSM_sequential_current_state_reg[2]\ => \FSM_sequential_current_state[0]_i_3_n_0\,
      IS_enable2_buf => IS_enable2_buf,
      IS_enable3_buf => IS_enable3_buf,
      IS_enable4_buf => IS_enable4_buf,
      Q(1 downto 0) => cnt_out_buf(4 downto 3),
      TW_REG_parallel_out_buf(0) => TW_REG_parallel_out_buf(29),
      data_ready_IBUF => data_ready_IBUF,
      \lfsr_internal_reg[0]\ => INST_LFSR_n_8,
      \lfsr_internal_reg[5]\(3 downto 2) => lfsr_out_buf(5 downto 4),
      \lfsr_internal_reg[5]\(1 downto 0) => lfsr_out_buf(1 downto 0),
      \out\(2 downto 0) => current_state(2 downto 0),
      start_IBUF => start_IBUF,
      \temp_reg_reg[12]\ => INST_SKINNY_CNT_n_4,
      \temp_reg_reg[12]_0\ => INST_SKINNY_CNT_n_11,
      \temp_reg_reg[13]\(0) => IS_serial_in_fourth_row_buf(1),
      \temp_reg_reg[13]_0\ => INST_SKINNY_CNT_n_10,
      \temp_reg_reg[13]_1\ => INST_IS_n_5,
      \temp_reg_reg[15]\ => INST_SKINNY_CNT_n_12,
      \temp_reg_reg[15]_0\ => INST_IS_n_6
    );
INST_TW_REG: entity work.shift_reg
     port map (
      BUSY_OBUF => BUSY_OBUF,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      TWEAKEY_IN_IBUF(3 downto 0) => TWEAKEY_IN_IBUF(3 downto 0),
      TW_REG_parallel_out_buf(3 downto 0) => TW_REG_parallel_out_buf(31 downto 28),
      \out\(2 downto 0) => current_state(2 downto 0)
    );
\PLAINTEXT_IN_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PLAINTEXT_IN(0),
      O => PLAINTEXT_IN_IBUF(0)
    );
\PLAINTEXT_IN_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PLAINTEXT_IN(1),
      O => PLAINTEXT_IN_IBUF(1)
    );
\PLAINTEXT_IN_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PLAINTEXT_IN(2),
      O => PLAINTEXT_IN_IBUF(2)
    );
\PLAINTEXT_IN_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PLAINTEXT_IN(3),
      O => PLAINTEXT_IN_IBUF(3)
    );
\TWEAKEY_IN_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TWEAKEY_IN(0),
      O => TWEAKEY_IN_IBUF(0)
    );
\TWEAKEY_IN_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TWEAKEY_IN(1),
      O => TWEAKEY_IN_IBUF(1)
    );
\TWEAKEY_IN_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TWEAKEY_IN(2),
      O => TWEAKEY_IN_IBUF(2)
    );
\TWEAKEY_IN_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => TWEAKEY_IN(3),
      O => TWEAKEY_IN_IBUF(3)
    );
data_ready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => data_ready,
      O => data_ready_IBUF
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
end STRUCTURE;
