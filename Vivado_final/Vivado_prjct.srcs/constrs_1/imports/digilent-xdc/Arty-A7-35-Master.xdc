# Analog Pin Discriptions
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports Vaux0_v_n]
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports Vaux0_v_p]

set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports Vaux1_v_n]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports Vaux1_v_p]

set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports Vaux2_v_n]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports Vaux2_v_p]

set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports Vaux4_v_n]
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports Vaux4_v_p]

set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports Vaux5_v_n]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports Vaux5_v_p]

set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports Vaux6_v_n]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports Vaux6_v_p]

set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVCMOS33} [get_ports Vaux7_v_n]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports Vaux7_v_p]

set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports Vaux9_v_n]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports Vaux9_v_p]

set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports Vaux10_v_n]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports Vaux10_v_p]

set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports Vaux12_v_n]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports Vaux12_v_p]

set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports Vaux13_v_n]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports Vaux13_v_p]

set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports Vaux14_v_n]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports Vaux14_v_p]

set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports Vaux15_v_n]
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS33} [get_ports Vaux15_v_p]

## SMSC Ethernet PHY
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports eth_ref_clk]

## Inputs
#set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports eth_mii_col]
#set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports eth_mii_crs]

#set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports eth_mii_rx_clk]

#set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports eth_mii_rx_dv]

#set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {eth_mii_rxd[0]}]
#set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports {eth_mii_rxd[1]}]
#set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {eth_mii_rxd[2]}]
#set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {eth_mii_rxd[3]}]

#set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports eth_mii_rx_er]
#set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports eth_mii_tx_clk]
## Outputs
#set_property -dict {PACKAGE_PIN C16 IOSTANDARD LVCMOS33} [get_ports eth_mii_rst_n]
#set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports eth_mii_tx_en]

#set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports {eth_mii_txd[0]}]
#set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {eth_mii_txd[1]}]
#set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports {eth_mii_txd[2]}]
#set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {eth_mii_txd[3]}]

#set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports eth_mdio_mdc_mdc]
## Bidirection
#set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports eth_mdio_mdc_mdio_io]

# USB-UART Interface
#set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports uart_to_usb_rxd]
#set_property -dict {PACKAGE_PIN A9  IOSTANDARD LVCMOS33} [get_ports uart_to_usb_txd]

## Pmod Header JA
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_0_15               Sch=ja[1]
#set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_L4P_T0_15          Sch=ja[2]
#set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L4N_T0_15          Sch=ja[3]
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L6P_T0_15          Sch=ja[4]
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L6N_T0_VREF_15     Sch=ja[7]
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L10P_T1_AD11P_15   Sch=ja[8]
#set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports uart_to_com_rxd]
#set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports uart_to_com_txd]

set_false_path -through [get_nets -of_objects [get_ports {reset}]]
set_false_path -through [get_nets -of_objects [get_ports {sys_clock}]]

set_false_path -through [get_nets -of_objects [get_pins system_i/clk_wiz_0/locked]]
set_false_path -through [get_nets -of_objects [get_pins system_i/clk_wiz_1/locked]]

set_false_path -through [get_nets system_i/mig_mmcm_locked]
set_false_path -through [get_nets {system_i/xadc_wiz_0_temp_out[*]}]

set_false_path -through [get_nets system_i/ddr_intrnl_aresetn]
set_false_path -through [get_nets system_i/peripheral_aresetn]
set_false_path -through [get_nets system_i/interconnect_aresetn]

set_false_path -through [get_nets system_i/MB_reset]
set_false_path -through [get_nets system_i/MB_cc_aresetn]
set_false_path -through [get_nets system_i/MB_debug_rst]

set_false_path -through [get_nets {system_i/microblaze_0_intr[*]}]

set_false_path -through [get_nets system_i/axi_ethernetlite_irpt]
set_false_path -through [get_nets system_i/axi_timer_irpt]
set_false_path -through [get_nets system_i/xadc_irpt]
set_false_path -through [get_nets system_i/axi_uartlite_0_irpt]
set_false_path -through [get_nets system_i/axi_quad_spi_flash_irpt]

# XADC
set_false_path -through [get_nets [list \
[get_nets Vaux0_v_p] [get_nets Vaux0_v_n] \
[get_nets Vaux1_v_p] [get_nets Vaux1_v_n] \
[get_nets Vaux2_v_p] [get_nets Vaux2_v_n] \
[get_nets Vaux5_v_p] [get_nets Vaux5_v_n] \
[get_nets Vaux6_v_p] [get_nets Vaux6_v_n] \
[get_nets Vaux7_v_p] [get_nets Vaux7_v_n] \
[get_nets Vaux9_v_p] [get_nets Vaux9_v_n] \
[get_nets Vaux10_v_p] [get_nets Vaux10_v_n] \
[get_nets Vaux12_v_p] [get_nets Vaux12_v_n] \
[get_nets Vaux13_v_p] [get_nets Vaux13_v_n] \
[get_nets Vaux14_v_p] [get_nets Vaux14_v_n] \
[get_nets Vaux15_v_p] [get_nets Vaux15_v_n] \
]]

set_false_path -through [get_nets [get_nets -filter {NAME =~ Vaux* }]]

set_clock_groups -name ddr_sys_clk -asynchronous -group [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_0/ddr_sys_clk]]]
set_clock_groups -name ddr_ref_clk -asynchronous -group [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_0/ddr_ref_clk]]]

set_clock_groups -name periph_clk     -asynchronous -group [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_0/eth_clk_25]]]
set_clock_groups -name ext_spi_clk -asynchronous -group [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_0/ext_spi_clk]]]
set_clock_groups -name axi_aclk    -asynchronous -group [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_0/axi_aclk]]]

set_clock_groups -name periph_clk  -asynchronous -group [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_1/periph_clk]]]
set_clock_groups -name mb_clk      -asynchronous -group [get_clocks [get_clocks -of_objects [get_pins system_i/clk_wiz_1/MB_clk]]]

#set_property DOA_REG {0} [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ BMEM.bram.* }]
#set_property DOB_REG {0} [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ BMEM.bram.* }]

#get_property DOA_REG [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ BMEM.bram.* }]
#get_property DOB_REG [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ BMEM.bram.* }]

create_pblock pblock_1
add_cells_to_pblock [get_pblocks pblock_1] [get_cells -quiet [list system_i/microblaze_0 system_i/microblaze_0_local_memory]]
resize_pblock [get_pblocks pblock_1] -add {CLOCKREGION_X1Y0:CLOCKREGION_X1Y2}

# Clock signal
# set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_in -period 10.00 -waveform {0 5} [get_ports { sys_clock }]
set_output_delay -clock [get_clocks sys_clk_in] -max 5.00 \
[get_ports { \
{rgb_led_tri_io[0]} \ 
{rgb_led_tri_io[1]} \ 
{rgb_led_tri_io[2]} \ 
{rgb_led_tri_io[3]} \ 
{rgb_led_tri_io[4]} \ 
{rgb_led_tri_io[5]} \ 
{rgb_led_tri_io[6]} \ 
{rgb_led_tri_io[7]} \ 
{rgb_led_tri_io[8]} \ 
{rgb_led_tri_io[9]} \ 
{rgb_led_tri_io[10]} \
{rgb_led_tri_io[11]} \
{led_4bits_tri_io[0]} \
{led_4bits_tri_io[1]} \
{led_4bits_tri_io[2]} \
{led_4bits_tri_io[3]} \
}]
set_output_delay -clock [get_clocks sys_clk_in] -min 1.00 \
[get_ports { \
{rgb_led_tri_io[0]} \ 
{rgb_led_tri_io[1]} \ 
{rgb_led_tri_io[2]} \ 
{rgb_led_tri_io[3]} \ 
{rgb_led_tri_io[4]} \ 
{rgb_led_tri_io[5]} \ 
{rgb_led_tri_io[6]} \ 
{rgb_led_tri_io[7]} \ 
{rgb_led_tri_io[8]} \ 
{rgb_led_tri_io[9]} \ 
{rgb_led_tri_io[10]} \
{rgb_led_tri_io[11]} \
{led_4bits_tri_io[0]} \
{led_4bits_tri_io[1]} \
{led_4bits_tri_io[2]} \
{led_4bits_tri_io[3]} \
}]

set_multicycle_path 2 -from [get_ports reset]
set_multicycle_path 2 -to [get_ports usb_uart_txd]
set_multicycle_path 2 -from [get_ports usb_uart_rxd]

#create_clock -add -name qspi_flash_sck -period 10.00 -waveform {0 5} [get_ports { qspi_flash_sck_io }]
#set_output_delay -clock [get_clocks sys_clk_in] -max 5.0 \
#[get_ports { \
#{qspi_flash_io0_io} \
#{qspi_flash_io1_io} \
#{qspi_flash_io2_io} \
#{qspi_flash_io3_io} \
#{qspi_flash_ss_io} \
#}]
#set_output_delay -clock [get_clocks sys_clk_in] -min 1.00 \
#[get_ports { \
#{qspi_flash_io0_io} \
#{qspi_flash_io1_io} \
#{qspi_flash_io2_io} \
#{qspi_flash_io3_io} \
#{qspi_flash_ss_io} \
#}]
#set_input_delay -clock [get_clocks sys_clk_in] -max 5.0 \
#[get_ports { \
#{qspi_flash_io0_io} \
#{qspi_flash_io1_io} \
#{qspi_flash_io2_io} \
#{qspi_flash_io3_io} \
#}]
#set_input_delay -clock [get_clocks sys_clk_in] -min 1.00 \
#[get_ports { \
#{qspi_flash_io0_io} \
#{qspi_flash_io1_io} \
#{qspi_flash_io2_io} \
#{qspi_flash_io3_io} \
#}]

#create_clock -add -name eth_clk_in -period 40.00 -waveform {0 20} [get_ports { eth_mii_tx_clk }]
#set_input_delay -clock [get_clocks eth_clk_in] -max 5.00 \
#[get_ports {\
#{eth_mii_rxd[0]} \
#{eth_mii_rxd[1]} \
#{eth_mii_rxd[2]} \
#{eth_mii_rxd[3]} \
#{eth_mii_crs} \
#{eth_mii_rx_dv} \
#{eth_mii_rx_er} \
#}]
#set_input_delay -clock [get_clocks eth_clk_in] -min 1.00 \
#[get_ports {\
#{eth_mii_rxd[0]} \
#{eth_mii_rxd[1]} \
#{eth_mii_rxd[2]} \
#{eth_mii_rxd[3]} \
#{eth_mii_crs} \
#{eth_mii_rx_dv} \
#{eth_mii_rx_er} \
#}]
#create_clock -add -name eth_clk_out -period 40.00 -waveform {0 20} [get_ports { eth_ref_clk }]
#set_output_delay -clock [get_clocks eth_clk_out] -max 5.00 \
#[get_ports {\
#{eth_mii_txd[0]} \
#{eth_mii_txd[1]} \
#{eth_mii_txd[2]} \
#{eth_mii_txd[3]} \
#{eth_mii_rst_n} \
#{eth_mii_tx_en} \
#}]
#set_output_delay -clock [get_clocks eth_clk_out] -min 1.00 \
#[get_ports {\
#{eth_mii_txd[0]} \
#{eth_mii_txd[1]} \
#{eth_mii_txd[2]} \
#{eth_mii_txd[3]} \
#{eth_mii_rst_n} \
#{eth_mii_tx_en} \
#}]
#set_clock_groups -asynchronous -group {eth_clk_in} -group {eth_clk_out} 

#create_clock -add -name eth_mdc -period 20.00 -waveform {0 10} [get_ports { eth_mdio_mdc_mdc }];
#set_output_delay -clock [get_clocks eth_mdc] -max 5.00 \
#[get_ports {\
#{eth_mdio_mdc_mdio_io} \
#}]
#set_output_delay -clock [get_clocks eth_mdc] -min 1.00 \
#[get_ports {\
#{eth_mdio_mdc_mdio_io} \
#}]

#set_input_delay -clock [get_clocks eth_mdc] -max 5.00 \
#[get_ports {\
#{eth_mdio_mdc_mdio_io} \
#}]
#set_input_delay -clock [get_clocks eth_mdc] -min 1.00 \
#[get_ports {\
#{eth_mdio_mdc_mdio_io} \
#}]
