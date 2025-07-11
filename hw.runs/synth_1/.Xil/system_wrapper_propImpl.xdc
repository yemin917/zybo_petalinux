set_property SRC_FILE_INFO {cfile:d:/Xilinx/Project_NR/again/hw.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/system_MIPI_D_PHY_RX_0_0/system_MIPI_D_PHY_RX_0_0_in_context.xdc rfile:../../../hw.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/system_MIPI_D_PHY_RX_0_0/system_MIPI_D_PHY_RX_0_0_in_context.xdc id:1 order:EARLY scoped_inst:system_i/MIPI_D_PHY_RX_0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/Xilinx/Project_NR/again/hw.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0/system_clk_wiz_0_0_in_context.xdc rfile:../../../hw.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0/system_clk_wiz_0_0_in_context.xdc id:2 order:EARLY scoped_inst:system_i/clk_wiz_0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/Xilinx/Project_NR/again/hw.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0/system_processing_system7_0_0_in_context.xdc rfile:../../../hw.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0/system_processing_system7_0_0_in_context.xdc id:3 order:EARLY scoped_inst:system_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/Xilinx/Project_NR/again/hw.srcs/sources_1/bd/system/ip/system_video_dynclk_0/system_video_dynclk_0/system_video_dynclk_0_in_context.xdc rfile:../../../hw.srcs/sources_1/bd/system/ip/system_video_dynclk_0/system_video_dynclk_0/system_video_dynclk_0_in_context.xdc id:4 order:EARLY scoped_inst:system_i/video_dynclk} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Project_NR/again/hw.srcs/constrs_1/imports/constraints/ZyboZ7_A.xdc rfile:../../../hw.srcs/constrs_1/imports/constraints/ZyboZ7_A.xdc id:5} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Project_NR/again/hw.srcs/constrs_1/imports/constraints/timing.xdc rfile:../../../hw.srcs/constrs_1/imports/constraints/timing.xdc id:6} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Project_NR/again/hw.srcs/constrs_1/imports/constraints/auto.xdc rfile:../../../hw.srcs/constrs_1/imports/constraints/auto.xdc id:7} [current_design]
current_instance system_i/MIPI_D_PHY_RX_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports dphy_clk_hs_p] -edges {1 2 3} -edge_shift {0.000 15.000 30.000} [get_ports {}]
current_instance
current_instance system_i/clk_wiz_0
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -1.667 -3.333} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -2.500 -5.000} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 5.000 10.000} [get_ports {}]
current_instance
current_instance system_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance system_i/video_dynclk
set_property src_info {type:SCOPED_XDC file:4 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -4.327 -8.653} [get_ports {}]
current_instance
set_property src_info {type:XDC file:5 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD TMDS_33} [get_ports hdmi_tx_clk_n]
set_property src_info {type:XDC file:5 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD TMDS_33} [get_ports hdmi_tx_clk_p]
set_property src_info {type:XDC file:5 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_data_n[0]}]
set_property src_info {type:XDC file:5 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_data_p[0]}]
set_property src_info {type:XDC file:5 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_data_n[1]}]
set_property src_info {type:XDC file:5 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_data_p[1]}]
set_property src_info {type:XDC file:5 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_data_n[2]}]
set_property src_info {type:XDC file:5 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_data_p[2]}]
set_property src_info {type:XDC file:5 line:154 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G20 [get_ports {cam_gpio_tri_io[0]}]
set_property src_info {type:XDC file:5 line:158 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports cam_iic_scl_io]
set_property src_info {type:XDC file:5 line:159 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports cam_iic_sda_io]
set_property src_info {type:XDC file:5 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD HSUL_12} [get_ports dphy_clk_lp_n]
set_property src_info {type:XDC file:5 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD HSUL_12} [get_ports dphy_clk_lp_p]
set_property src_info {type:XDC file:5 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD HSUL_12} [get_ports {dphy_data_lp_n[0]}]
set_property src_info {type:XDC file:5 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD HSUL_12} [get_ports {dphy_data_lp_p[0]}]
set_property src_info {type:XDC file:5 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD HSUL_12} [get_ports {dphy_data_lp_n[1]}]
set_property src_info {type:XDC file:5 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD HSUL_12} [get_ports {dphy_data_lp_p[1]}]
set_property src_info {type:XDC file:5 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVDS_25} [get_ports dphy_hs_clock_clk_n]
set_property src_info {type:XDC file:5 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVDS_25} [get_ports dphy_hs_clock_clk_p]
set_property src_info {type:XDC file:5 line:174 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVDS_25} [get_ports {dphy_data_hs_n[0]}]
set_property src_info {type:XDC file:5 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVDS_25} [get_ports {dphy_data_hs_p[0]}]
set_property src_info {type:XDC file:5 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVDS_25} [get_ports {dphy_data_hs_n[1]}]
set_property src_info {type:XDC file:5 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVDS_25} [get_ports {dphy_data_hs_p[1]}]
set_property src_info {type:XDC file:6 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 1.667 -name video_dynclk [get_pins -regexp .*video_dynclk/.*/mmcm_adv_inst/CLKOUT0 -hierarchical]
set_property src_info {type:XDC file:6 line:17 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 6.734 -name pixel_dynclk [get_pins -regexp .*DVIClocking_0/U0/PixelClkBuffer/O -hierarchical]
set_property src_info {type:XDC file:7 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:7 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:7 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:7 line:12 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets system_i/mm_clk_150]
