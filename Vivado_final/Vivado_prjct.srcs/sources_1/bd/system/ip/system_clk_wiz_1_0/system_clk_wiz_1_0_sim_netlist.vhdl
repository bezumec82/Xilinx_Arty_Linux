-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Jun 28 22:08:24 2018
-- Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/constantine/ARTY_A7/Vivado_prjct/Vivado_prjct.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_sim_netlist.vhdl
-- Design      : system_clk_wiz_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_clk_wiz_1_0_system_clk_wiz_1_0_clk_wiz is
  port (
    ddr_sys_clk : out STD_LOGIC;
    ddr_ref_clk : out STD_LOGIC;
    eth_clk_25 : out STD_LOGIC;
    ext_spi_clk : out STD_LOGIC;
    axi_aclk : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_clk_wiz_1_0_system_clk_wiz_1_0_clk_wiz : entity is "system_clk_wiz_1_0_clk_wiz";
end system_clk_wiz_1_0_system_clk_wiz_1_0_clk_wiz;

architecture STRUCTURE of system_clk_wiz_1_0_system_clk_wiz_1_0_clk_wiz is
  signal axi_aclk_system_clk_wiz_1_0 : STD_LOGIC;
  signal axi_aclk_system_clk_wiz_1_0_en_clk : STD_LOGIC;
  signal clk_in1_system_clk_wiz_1_0 : STD_LOGIC;
  signal clkfbout_buf_system_clk_wiz_1_0 : STD_LOGIC;
  signal clkfbout_system_clk_wiz_1_0 : STD_LOGIC;
  signal ddr_ref_clk_system_clk_wiz_1_0 : STD_LOGIC;
  signal ddr_ref_clk_system_clk_wiz_1_0_en_clk : STD_LOGIC;
  signal ddr_sys_clk_system_clk_wiz_1_0 : STD_LOGIC;
  signal ddr_sys_clk_system_clk_wiz_1_0_en_clk : STD_LOGIC;
  signal eth_clk_25_system_clk_wiz_1_0 : STD_LOGIC;
  signal eth_clk_25_system_clk_wiz_1_0_en_clk : STD_LOGIC;
  signal ext_spi_clk_system_clk_wiz_1_0 : STD_LOGIC;
  signal ext_spi_clk_system_clk_wiz_1_0_en_clk : STD_LOGIC;
  signal \^locked\ : STD_LOGIC;
  signal reset_high : STD_LOGIC;
  signal seq_reg1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of seq_reg1 : signal is "true";
  attribute async_reg : string;
  attribute async_reg of seq_reg1 : signal is "true";
  signal seq_reg2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of seq_reg2 : signal is "true";
  attribute async_reg of seq_reg2 : signal is "true";
  signal seq_reg3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of seq_reg3 : signal is "true";
  attribute async_reg of seq_reg3 : signal is "true";
  signal seq_reg4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of seq_reg4 : signal is "true";
  attribute async_reg of seq_reg4 : signal is "true";
  signal seq_reg5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of seq_reg5 : signal is "true";
  attribute async_reg of seq_reg5 : signal is "true";
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
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
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of clkout1_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of clkout1_buf : label is "CE:CE0 I:I0";
  attribute BOX_TYPE of clkout1_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clkout2_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP of clkout2_buf : label is "CE:CE0 I:I0";
  attribute BOX_TYPE of clkout2_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clkout3_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP of clkout3_buf : label is "CE:CE0 I:I0";
  attribute BOX_TYPE of clkout3_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout4_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clkout4_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP of clkout4_buf : label is "CE:CE0 I:I0";
  attribute BOX_TYPE of clkout4_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout5_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clkout5_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP of clkout5_buf : label is "CE:CE0 I:I0";
  attribute BOX_TYPE of clkout5_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[4]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[5]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[6]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[7]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[4]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[5]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[6]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg2_reg[7]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[4]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[5]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[6]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg3_reg[7]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[4]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[5]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[6]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg4_reg[7]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[4]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[5]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[6]\ : label is std.standard.true;
  attribute ASYNC_REG_boolean of \seq_reg5_reg[7]\ : label is std.standard.true;
begin
  locked <= \^locked\;
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_system_clk_wiz_1_0,
      O => clkfbout_buf_system_clk_wiz_1_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_system_clk_wiz_1_0
    );
clkout1_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false
    )
        port map (
      CE0 => seq_reg1(7),
      CE1 => '0',
      I0 => ddr_sys_clk_system_clk_wiz_1_0,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => ddr_sys_clk,
      S0 => '1',
      S1 => '0'
    );
clkout1_buf_en: unisim.vcomponents.BUFH
     port map (
      I => ddr_sys_clk_system_clk_wiz_1_0,
      O => ddr_sys_clk_system_clk_wiz_1_0_en_clk
    );
clkout2_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false
    )
        port map (
      CE0 => seq_reg2(7),
      CE1 => '0',
      I0 => ddr_ref_clk_system_clk_wiz_1_0,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => ddr_ref_clk,
      S0 => '1',
      S1 => '0'
    );
clkout2_buf_en: unisim.vcomponents.BUFH
     port map (
      I => ddr_ref_clk_system_clk_wiz_1_0,
      O => ddr_ref_clk_system_clk_wiz_1_0_en_clk
    );
clkout3_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false
    )
        port map (
      CE0 => seq_reg3(7),
      CE1 => '0',
      I0 => eth_clk_25_system_clk_wiz_1_0,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => eth_clk_25,
      S0 => '1',
      S1 => '0'
    );
clkout3_buf_en: unisim.vcomponents.BUFH
     port map (
      I => eth_clk_25_system_clk_wiz_1_0,
      O => eth_clk_25_system_clk_wiz_1_0_en_clk
    );
clkout4_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false
    )
        port map (
      CE0 => seq_reg4(7),
      CE1 => '0',
      I0 => ext_spi_clk_system_clk_wiz_1_0,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => ext_spi_clk,
      S0 => '1',
      S1 => '0'
    );
clkout4_buf_en: unisim.vcomponents.BUFH
     port map (
      I => ext_spi_clk_system_clk_wiz_1_0,
      O => ext_spi_clk_system_clk_wiz_1_0_en_clk
    );
clkout5_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false
    )
        port map (
      CE0 => seq_reg5(7),
      CE1 => '0',
      I0 => axi_aclk_system_clk_wiz_1_0,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => axi_aclk,
      S0 => '1',
      S1 => '0'
    );
clkout5_buf_en: unisim.vcomponents.BUFH
     port map (
      I => axi_aclk_system_clk_wiz_1_0,
      O => axi_aclk_system_clk_wiz_1_0_en_clk
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 6.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 5,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 40,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 45.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 10,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 270.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 10,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 90.000000,
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
      DIVCLK_DIVIDE => 1,
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
      CLKFBIN => clkfbout_buf_system_clk_wiz_1_0,
      CLKFBOUT => clkfbout_system_clk_wiz_1_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_system_clk_wiz_1_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => ddr_sys_clk_system_clk_wiz_1_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => ddr_ref_clk_system_clk_wiz_1_0,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => eth_clk_25_system_clk_wiz_1_0,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => ext_spi_clk_system_clk_wiz_1_0,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => axi_aclk_system_clk_wiz_1_0,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => \^locked\,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset_high
    );
mmcm_adv_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset_high
    );
\seq_reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => \^locked\,
      Q => seq_reg1(0),
      R => '0'
    );
\seq_reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg1(0),
      Q => seq_reg1(1),
      R => '0'
    );
\seq_reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg1(1),
      Q => seq_reg1(2),
      R => '0'
    );
\seq_reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg1(2),
      Q => seq_reg1(3),
      R => '0'
    );
\seq_reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg1(3),
      Q => seq_reg1(4),
      R => '0'
    );
\seq_reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg1(4),
      Q => seq_reg1(5),
      R => '0'
    );
\seq_reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg1(5),
      Q => seq_reg1(6),
      R => '0'
    );
\seq_reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_sys_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg1(6),
      Q => seq_reg1(7),
      R => '0'
    );
\seq_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => \^locked\,
      Q => seq_reg2(0),
      R => '0'
    );
\seq_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg2(0),
      Q => seq_reg2(1),
      R => '0'
    );
\seq_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg2(1),
      Q => seq_reg2(2),
      R => '0'
    );
\seq_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg2(2),
      Q => seq_reg2(3),
      R => '0'
    );
\seq_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg2(3),
      Q => seq_reg2(4),
      R => '0'
    );
\seq_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg2(4),
      Q => seq_reg2(5),
      R => '0'
    );
\seq_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg2(5),
      Q => seq_reg2(6),
      R => '0'
    );
\seq_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ddr_ref_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg2(6),
      Q => seq_reg2(7),
      R => '0'
    );
\seq_reg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => \^locked\,
      Q => seq_reg3(0),
      R => '0'
    );
\seq_reg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg3(0),
      Q => seq_reg3(1),
      R => '0'
    );
\seq_reg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg3(1),
      Q => seq_reg3(2),
      R => '0'
    );
\seq_reg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg3(2),
      Q => seq_reg3(3),
      R => '0'
    );
\seq_reg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg3(3),
      Q => seq_reg3(4),
      R => '0'
    );
\seq_reg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg3(4),
      Q => seq_reg3(5),
      R => '0'
    );
\seq_reg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg3(5),
      Q => seq_reg3(6),
      R => '0'
    );
\seq_reg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => eth_clk_25_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg3(6),
      Q => seq_reg3(7),
      R => '0'
    );
\seq_reg4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => \^locked\,
      Q => seq_reg4(0),
      R => '0'
    );
\seq_reg4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg4(0),
      Q => seq_reg4(1),
      R => '0'
    );
\seq_reg4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg4(1),
      Q => seq_reg4(2),
      R => '0'
    );
\seq_reg4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg4(2),
      Q => seq_reg4(3),
      R => '0'
    );
\seq_reg4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg4(3),
      Q => seq_reg4(4),
      R => '0'
    );
\seq_reg4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg4(4),
      Q => seq_reg4(5),
      R => '0'
    );
\seq_reg4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg4(5),
      Q => seq_reg4(6),
      R => '0'
    );
\seq_reg4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg4(6),
      Q => seq_reg4(7),
      R => '0'
    );
\seq_reg5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => \^locked\,
      Q => seq_reg5(0),
      R => '0'
    );
\seq_reg5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg5(0),
      Q => seq_reg5(1),
      R => '0'
    );
\seq_reg5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg5(1),
      Q => seq_reg5(2),
      R => '0'
    );
\seq_reg5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg5(2),
      Q => seq_reg5(3),
      R => '0'
    );
\seq_reg5_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg5(3),
      Q => seq_reg5(4),
      R => '0'
    );
\seq_reg5_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg5(4),
      Q => seq_reg5(5),
      R => '0'
    );
\seq_reg5_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg5(5),
      Q => seq_reg5(6),
      R => '0'
    );
\seq_reg5_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk_system_clk_wiz_1_0_en_clk,
      CE => '1',
      D => seq_reg5(6),
      Q => seq_reg5(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_clk_wiz_1_0 is
  port (
    ddr_sys_clk : out STD_LOGIC;
    ddr_ref_clk : out STD_LOGIC;
    eth_clk_25 : out STD_LOGIC;
    ext_spi_clk : out STD_LOGIC;
    axi_aclk : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_clk_wiz_1_0 : entity is true;
end system_clk_wiz_1_0;

architecture STRUCTURE of system_clk_wiz_1_0 is
begin
inst: entity work.system_clk_wiz_1_0_system_clk_wiz_1_0_clk_wiz
     port map (
      axi_aclk => axi_aclk,
      clk_in1 => clk_in1,
      ddr_ref_clk => ddr_ref_clk,
      ddr_sys_clk => ddr_sys_clk,
      eth_clk_25 => eth_clk_25,
      ext_spi_clk => ext_spi_clk,
      locked => locked,
      resetn => resetn
    );
end STRUCTURE;
