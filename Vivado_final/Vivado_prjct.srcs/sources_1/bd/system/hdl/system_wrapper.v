//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Tue Jul  3 12:24:24 2018
//Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    Vaux0_v_n,
    Vaux0_v_p,
    Vaux10_v_n,
    Vaux10_v_p,
    Vaux12_v_n,
    Vaux12_v_p,
    Vaux13_v_n,
    Vaux13_v_p,
    Vaux14_v_n,
    Vaux14_v_p,
    Vaux15_v_n,
    Vaux15_v_p,
    Vaux1_v_n,
    Vaux1_v_p,
    Vaux2_v_n,
    Vaux2_v_p,
    Vaux4_v_n,
    Vaux4_v_p,
    Vaux5_v_n,
    Vaux5_v_p,
    Vaux6_v_n,
    Vaux6_v_p,
    Vaux7_v_n,
    Vaux7_v_p,
    Vaux9_v_n,
    Vaux9_v_p,
    Vp_Vn_v_n,
    Vp_Vn_v_p,
    eth_mdio_mdc_mdc,
    eth_mdio_mdc_mdio_io,
    eth_mii_col,
    eth_mii_crs,
    eth_mii_rst_n,
    eth_mii_rx_clk,
    eth_mii_rx_dv,
    eth_mii_rx_er,
    eth_mii_rxd,
    eth_mii_tx_clk,
    eth_mii_tx_en,
    eth_mii_txd,
    eth_ref_clk,
    led_4bits_tri_io,
    qspi_flash_io0_io,
    qspi_flash_io1_io,
    qspi_flash_io2_io,
    qspi_flash_io3_io,
    qspi_flash_sck_io,
    qspi_flash_ss_io,
    reset,
    rgb_led_tri_io,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [13:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [0:0]DDR3_cs_n;
  output [1:0]DDR3_dm;
  inout [15:0]DDR3_dq;
  inout [1:0]DDR3_dqs_n;
  inout [1:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  input Vaux0_v_n;
  input Vaux0_v_p;
  input Vaux10_v_n;
  input Vaux10_v_p;
  input Vaux12_v_n;
  input Vaux12_v_p;
  input Vaux13_v_n;
  input Vaux13_v_p;
  input Vaux14_v_n;
  input Vaux14_v_p;
  input Vaux15_v_n;
  input Vaux15_v_p;
  input Vaux1_v_n;
  input Vaux1_v_p;
  input Vaux2_v_n;
  input Vaux2_v_p;
  input Vaux4_v_n;
  input Vaux4_v_p;
  input Vaux5_v_n;
  input Vaux5_v_p;
  input Vaux6_v_n;
  input Vaux6_v_p;
  input Vaux7_v_n;
  input Vaux7_v_p;
  input Vaux9_v_n;
  input Vaux9_v_p;
  input Vp_Vn_v_n;
  input Vp_Vn_v_p;
  output eth_mdio_mdc_mdc;
  inout eth_mdio_mdc_mdio_io;
  input eth_mii_col;
  input eth_mii_crs;
  output eth_mii_rst_n;
  input eth_mii_rx_clk;
  input eth_mii_rx_dv;
  input eth_mii_rx_er;
  input [3:0]eth_mii_rxd;
  input eth_mii_tx_clk;
  output eth_mii_tx_en;
  output [3:0]eth_mii_txd;
  output eth_ref_clk;
  inout [3:0]led_4bits_tri_io;
  inout qspi_flash_io0_io;
  inout qspi_flash_io1_io;
  inout qspi_flash_io2_io;
  inout qspi_flash_io3_io;
  inout qspi_flash_sck_io;
  inout qspi_flash_ss_io;
  input reset;
  inout [11:0]rgb_led_tri_io;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [13:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [0:0]DDR3_cs_n;
  wire [1:0]DDR3_dm;
  wire [15:0]DDR3_dq;
  wire [1:0]DDR3_dqs_n;
  wire [1:0]DDR3_dqs_p;
  wire [0:0]DDR3_odt;
  wire DDR3_ras_n;
  wire DDR3_reset_n;
  wire DDR3_we_n;
  wire Vaux0_v_n;
  wire Vaux0_v_p;
  wire Vaux10_v_n;
  wire Vaux10_v_p;
  wire Vaux12_v_n;
  wire Vaux12_v_p;
  wire Vaux13_v_n;
  wire Vaux13_v_p;
  wire Vaux14_v_n;
  wire Vaux14_v_p;
  wire Vaux15_v_n;
  wire Vaux15_v_p;
  wire Vaux1_v_n;
  wire Vaux1_v_p;
  wire Vaux2_v_n;
  wire Vaux2_v_p;
  wire Vaux4_v_n;
  wire Vaux4_v_p;
  wire Vaux5_v_n;
  wire Vaux5_v_p;
  wire Vaux6_v_n;
  wire Vaux6_v_p;
  wire Vaux7_v_n;
  wire Vaux7_v_p;
  wire Vaux9_v_n;
  wire Vaux9_v_p;
  wire Vp_Vn_v_n;
  wire Vp_Vn_v_p;
  wire eth_mdio_mdc_mdc;
  wire eth_mdio_mdc_mdio_i;
  wire eth_mdio_mdc_mdio_io;
  wire eth_mdio_mdc_mdio_o;
  wire eth_mdio_mdc_mdio_t;
  wire eth_mii_col;
  wire eth_mii_crs;
  wire eth_mii_rst_n;
  wire eth_mii_rx_clk;
  wire eth_mii_rx_dv;
  wire eth_mii_rx_er;
  wire [3:0]eth_mii_rxd;
  wire eth_mii_tx_clk;
  wire eth_mii_tx_en;
  wire [3:0]eth_mii_txd;
  wire eth_ref_clk;
  wire [0:0]led_4bits_tri_i_0;
  wire [1:1]led_4bits_tri_i_1;
  wire [2:2]led_4bits_tri_i_2;
  wire [3:3]led_4bits_tri_i_3;
  wire [0:0]led_4bits_tri_io_0;
  wire [1:1]led_4bits_tri_io_1;
  wire [2:2]led_4bits_tri_io_2;
  wire [3:3]led_4bits_tri_io_3;
  wire [0:0]led_4bits_tri_o_0;
  wire [1:1]led_4bits_tri_o_1;
  wire [2:2]led_4bits_tri_o_2;
  wire [3:3]led_4bits_tri_o_3;
  wire [0:0]led_4bits_tri_t_0;
  wire [1:1]led_4bits_tri_t_1;
  wire [2:2]led_4bits_tri_t_2;
  wire [3:3]led_4bits_tri_t_3;
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_io;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_io;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire qspi_flash_io2_i;
  wire qspi_flash_io2_io;
  wire qspi_flash_io2_o;
  wire qspi_flash_io2_t;
  wire qspi_flash_io3_i;
  wire qspi_flash_io3_io;
  wire qspi_flash_io3_o;
  wire qspi_flash_io3_t;
  wire qspi_flash_sck_i;
  wire qspi_flash_sck_io;
  wire qspi_flash_sck_o;
  wire qspi_flash_sck_t;
  wire qspi_flash_ss_i;
  wire qspi_flash_ss_io;
  wire qspi_flash_ss_o;
  wire qspi_flash_ss_t;
  wire reset;
  wire [0:0]rgb_led_tri_i_0;
  wire [1:1]rgb_led_tri_i_1;
  wire [10:10]rgb_led_tri_i_10;
  wire [11:11]rgb_led_tri_i_11;
  wire [2:2]rgb_led_tri_i_2;
  wire [3:3]rgb_led_tri_i_3;
  wire [4:4]rgb_led_tri_i_4;
  wire [5:5]rgb_led_tri_i_5;
  wire [6:6]rgb_led_tri_i_6;
  wire [7:7]rgb_led_tri_i_7;
  wire [8:8]rgb_led_tri_i_8;
  wire [9:9]rgb_led_tri_i_9;
  wire [0:0]rgb_led_tri_io_0;
  wire [1:1]rgb_led_tri_io_1;
  wire [10:10]rgb_led_tri_io_10;
  wire [11:11]rgb_led_tri_io_11;
  wire [2:2]rgb_led_tri_io_2;
  wire [3:3]rgb_led_tri_io_3;
  wire [4:4]rgb_led_tri_io_4;
  wire [5:5]rgb_led_tri_io_5;
  wire [6:6]rgb_led_tri_io_6;
  wire [7:7]rgb_led_tri_io_7;
  wire [8:8]rgb_led_tri_io_8;
  wire [9:9]rgb_led_tri_io_9;
  wire [0:0]rgb_led_tri_o_0;
  wire [1:1]rgb_led_tri_o_1;
  wire [10:10]rgb_led_tri_o_10;
  wire [11:11]rgb_led_tri_o_11;
  wire [2:2]rgb_led_tri_o_2;
  wire [3:3]rgb_led_tri_o_3;
  wire [4:4]rgb_led_tri_o_4;
  wire [5:5]rgb_led_tri_o_5;
  wire [6:6]rgb_led_tri_o_6;
  wire [7:7]rgb_led_tri_o_7;
  wire [8:8]rgb_led_tri_o_8;
  wire [9:9]rgb_led_tri_o_9;
  wire [0:0]rgb_led_tri_t_0;
  wire [1:1]rgb_led_tri_t_1;
  wire [10:10]rgb_led_tri_t_10;
  wire [11:11]rgb_led_tri_t_11;
  wire [2:2]rgb_led_tri_t_2;
  wire [3:3]rgb_led_tri_t_3;
  wire [4:4]rgb_led_tri_t_4;
  wire [5:5]rgb_led_tri_t_5;
  wire [6:6]rgb_led_tri_t_6;
  wire [7:7]rgb_led_tri_t_7;
  wire [8:8]rgb_led_tri_t_8;
  wire [9:9]rgb_led_tri_t_9;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  IOBUF eth_mdio_mdc_mdio_iobuf
       (.I(eth_mdio_mdc_mdio_o),
        .IO(eth_mdio_mdc_mdio_io),
        .O(eth_mdio_mdc_mdio_i),
        .T(eth_mdio_mdc_mdio_t));
  IOBUF led_4bits_tri_iobuf_0
       (.I(led_4bits_tri_o_0),
        .IO(led_4bits_tri_io[0]),
        .O(led_4bits_tri_i_0),
        .T(led_4bits_tri_t_0));
  IOBUF led_4bits_tri_iobuf_1
       (.I(led_4bits_tri_o_1),
        .IO(led_4bits_tri_io[1]),
        .O(led_4bits_tri_i_1),
        .T(led_4bits_tri_t_1));
  IOBUF led_4bits_tri_iobuf_2
       (.I(led_4bits_tri_o_2),
        .IO(led_4bits_tri_io[2]),
        .O(led_4bits_tri_i_2),
        .T(led_4bits_tri_t_2));
  IOBUF led_4bits_tri_iobuf_3
       (.I(led_4bits_tri_o_3),
        .IO(led_4bits_tri_io[3]),
        .O(led_4bits_tri_i_3),
        .T(led_4bits_tri_t_3));
  IOBUF qspi_flash_io0_iobuf
       (.I(qspi_flash_io0_o),
        .IO(qspi_flash_io0_io),
        .O(qspi_flash_io0_i),
        .T(qspi_flash_io0_t));
  IOBUF qspi_flash_io1_iobuf
       (.I(qspi_flash_io1_o),
        .IO(qspi_flash_io1_io),
        .O(qspi_flash_io1_i),
        .T(qspi_flash_io1_t));
  IOBUF qspi_flash_io2_iobuf
       (.I(qspi_flash_io2_o),
        .IO(qspi_flash_io2_io),
        .O(qspi_flash_io2_i),
        .T(qspi_flash_io2_t));
  IOBUF qspi_flash_io3_iobuf
       (.I(qspi_flash_io3_o),
        .IO(qspi_flash_io3_io),
        .O(qspi_flash_io3_i),
        .T(qspi_flash_io3_t));
  IOBUF qspi_flash_sck_iobuf
       (.I(qspi_flash_sck_o),
        .IO(qspi_flash_sck_io),
        .O(qspi_flash_sck_i),
        .T(qspi_flash_sck_t));
  IOBUF qspi_flash_ss_iobuf
       (.I(qspi_flash_ss_o),
        .IO(qspi_flash_ss_io),
        .O(qspi_flash_ss_i),
        .T(qspi_flash_ss_t));
  IOBUF rgb_led_tri_iobuf_0
       (.I(rgb_led_tri_o_0),
        .IO(rgb_led_tri_io[0]),
        .O(rgb_led_tri_i_0),
        .T(rgb_led_tri_t_0));
  IOBUF rgb_led_tri_iobuf_1
       (.I(rgb_led_tri_o_1),
        .IO(rgb_led_tri_io[1]),
        .O(rgb_led_tri_i_1),
        .T(rgb_led_tri_t_1));
  IOBUF rgb_led_tri_iobuf_10
       (.I(rgb_led_tri_o_10),
        .IO(rgb_led_tri_io[10]),
        .O(rgb_led_tri_i_10),
        .T(rgb_led_tri_t_10));
  IOBUF rgb_led_tri_iobuf_11
       (.I(rgb_led_tri_o_11),
        .IO(rgb_led_tri_io[11]),
        .O(rgb_led_tri_i_11),
        .T(rgb_led_tri_t_11));
  IOBUF rgb_led_tri_iobuf_2
       (.I(rgb_led_tri_o_2),
        .IO(rgb_led_tri_io[2]),
        .O(rgb_led_tri_i_2),
        .T(rgb_led_tri_t_2));
  IOBUF rgb_led_tri_iobuf_3
       (.I(rgb_led_tri_o_3),
        .IO(rgb_led_tri_io[3]),
        .O(rgb_led_tri_i_3),
        .T(rgb_led_tri_t_3));
  IOBUF rgb_led_tri_iobuf_4
       (.I(rgb_led_tri_o_4),
        .IO(rgb_led_tri_io[4]),
        .O(rgb_led_tri_i_4),
        .T(rgb_led_tri_t_4));
  IOBUF rgb_led_tri_iobuf_5
       (.I(rgb_led_tri_o_5),
        .IO(rgb_led_tri_io[5]),
        .O(rgb_led_tri_i_5),
        .T(rgb_led_tri_t_5));
  IOBUF rgb_led_tri_iobuf_6
       (.I(rgb_led_tri_o_6),
        .IO(rgb_led_tri_io[6]),
        .O(rgb_led_tri_i_6),
        .T(rgb_led_tri_t_6));
  IOBUF rgb_led_tri_iobuf_7
       (.I(rgb_led_tri_o_7),
        .IO(rgb_led_tri_io[7]),
        .O(rgb_led_tri_i_7),
        .T(rgb_led_tri_t_7));
  IOBUF rgb_led_tri_iobuf_8
       (.I(rgb_led_tri_o_8),
        .IO(rgb_led_tri_io[8]),
        .O(rgb_led_tri_i_8),
        .T(rgb_led_tri_t_8));
  IOBUF rgb_led_tri_iobuf_9
       (.I(rgb_led_tri_o_9),
        .IO(rgb_led_tri_io[9]),
        .O(rgb_led_tri_i_9),
        .T(rgb_led_tri_t_9));
  system system_i
       (.DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_cs_n(DDR3_cs_n),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .Vaux0_v_n(Vaux0_v_n),
        .Vaux0_v_p(Vaux0_v_p),
        .Vaux10_v_n(Vaux10_v_n),
        .Vaux10_v_p(Vaux10_v_p),
        .Vaux12_v_n(Vaux12_v_n),
        .Vaux12_v_p(Vaux12_v_p),
        .Vaux13_v_n(Vaux13_v_n),
        .Vaux13_v_p(Vaux13_v_p),
        .Vaux14_v_n(Vaux14_v_n),
        .Vaux14_v_p(Vaux14_v_p),
        .Vaux15_v_n(Vaux15_v_n),
        .Vaux15_v_p(Vaux15_v_p),
        .Vaux1_v_n(Vaux1_v_n),
        .Vaux1_v_p(Vaux1_v_p),
        .Vaux2_v_n(Vaux2_v_n),
        .Vaux2_v_p(Vaux2_v_p),
        .Vaux4_v_n(Vaux4_v_n),
        .Vaux4_v_p(Vaux4_v_p),
        .Vaux5_v_n(Vaux5_v_n),
        .Vaux5_v_p(Vaux5_v_p),
        .Vaux6_v_n(Vaux6_v_n),
        .Vaux6_v_p(Vaux6_v_p),
        .Vaux7_v_n(Vaux7_v_n),
        .Vaux7_v_p(Vaux7_v_p),
        .Vaux9_v_n(Vaux9_v_n),
        .Vaux9_v_p(Vaux9_v_p),
        .Vp_Vn_v_n(Vp_Vn_v_n),
        .Vp_Vn_v_p(Vp_Vn_v_p),
        .eth_mdio_mdc_mdc(eth_mdio_mdc_mdc),
        .eth_mdio_mdc_mdio_i(eth_mdio_mdc_mdio_i),
        .eth_mdio_mdc_mdio_o(eth_mdio_mdc_mdio_o),
        .eth_mdio_mdc_mdio_t(eth_mdio_mdc_mdio_t),
        .eth_mii_col(eth_mii_col),
        .eth_mii_crs(eth_mii_crs),
        .eth_mii_rst_n(eth_mii_rst_n),
        .eth_mii_rx_clk(eth_mii_rx_clk),
        .eth_mii_rx_dv(eth_mii_rx_dv),
        .eth_mii_rx_er(eth_mii_rx_er),
        .eth_mii_rxd(eth_mii_rxd),
        .eth_mii_tx_clk(eth_mii_tx_clk),
        .eth_mii_tx_en(eth_mii_tx_en),
        .eth_mii_txd(eth_mii_txd),
        .eth_ref_clk(eth_ref_clk),
        .led_4bits_tri_i({led_4bits_tri_i_3,led_4bits_tri_i_2,led_4bits_tri_i_1,led_4bits_tri_i_0}),
        .led_4bits_tri_o({led_4bits_tri_o_3,led_4bits_tri_o_2,led_4bits_tri_o_1,led_4bits_tri_o_0}),
        .led_4bits_tri_t({led_4bits_tri_t_3,led_4bits_tri_t_2,led_4bits_tri_t_1,led_4bits_tri_t_0}),
        .qspi_flash_io0_i(qspi_flash_io0_i),
        .qspi_flash_io0_o(qspi_flash_io0_o),
        .qspi_flash_io0_t(qspi_flash_io0_t),
        .qspi_flash_io1_i(qspi_flash_io1_i),
        .qspi_flash_io1_o(qspi_flash_io1_o),
        .qspi_flash_io1_t(qspi_flash_io1_t),
        .qspi_flash_io2_i(qspi_flash_io2_i),
        .qspi_flash_io2_o(qspi_flash_io2_o),
        .qspi_flash_io2_t(qspi_flash_io2_t),
        .qspi_flash_io3_i(qspi_flash_io3_i),
        .qspi_flash_io3_o(qspi_flash_io3_o),
        .qspi_flash_io3_t(qspi_flash_io3_t),
        .qspi_flash_sck_i(qspi_flash_sck_i),
        .qspi_flash_sck_o(qspi_flash_sck_o),
        .qspi_flash_sck_t(qspi_flash_sck_t),
        .qspi_flash_ss_i(qspi_flash_ss_i),
        .qspi_flash_ss_o(qspi_flash_ss_o),
        .qspi_flash_ss_t(qspi_flash_ss_t),
        .reset(reset),
        .rgb_led_tri_i({rgb_led_tri_i_11,rgb_led_tri_i_10,rgb_led_tri_i_9,rgb_led_tri_i_8,rgb_led_tri_i_7,rgb_led_tri_i_6,rgb_led_tri_i_5,rgb_led_tri_i_4,rgb_led_tri_i_3,rgb_led_tri_i_2,rgb_led_tri_i_1,rgb_led_tri_i_0}),
        .rgb_led_tri_o({rgb_led_tri_o_11,rgb_led_tri_o_10,rgb_led_tri_o_9,rgb_led_tri_o_8,rgb_led_tri_o_7,rgb_led_tri_o_6,rgb_led_tri_o_5,rgb_led_tri_o_4,rgb_led_tri_o_3,rgb_led_tri_o_2,rgb_led_tri_o_1,rgb_led_tri_o_0}),
        .rgb_led_tri_t({rgb_led_tri_t_11,rgb_led_tri_t_10,rgb_led_tri_t_9,rgb_led_tri_t_8,rgb_led_tri_t_7,rgb_led_tri_t_6,rgb_led_tri_t_5,rgb_led_tri_t_4,rgb_led_tri_t_3,rgb_led_tri_t_2,rgb_led_tri_t_1,rgb_led_tri_t_0}),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
