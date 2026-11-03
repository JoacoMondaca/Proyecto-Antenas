vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_7
vlib riviera/zynq_ultra_ps_e_vip_v1_0_7
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14
vlib riviera/c_mux_bit_v12_0_6
vlib riviera/c_shift_ram_v12_0_14
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_16
vlib riviera/cmpy_v6_0_18
vlib riviera/floating_point_v7_0_17
vlib riviera/xfft_v9_1_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_5
vlib riviera/lib_fifo_v1_0_14
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_23
vlib riviera/axi_sg_v4_1_13
vlib riviera/axi_dma_v7_1_22
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_21
vlib riviera/axi_data_fifo_v2_1_20
vlib riviera/axi_crossbar_v2_1_22
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlconstant_v1_1_7
vlib riviera/axi_protocol_converter_v2_1_21
vlib riviera/axi_clock_converter_v2_1_20
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_dwidth_converter_v2_1_21

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 riviera/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 riviera/zynq_ultra_ps_e_vip_v1_0_7
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14
vmap c_mux_bit_v12_0_6 riviera/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 riviera/c_shift_ram_v12_0_14
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 riviera/mult_gen_v12_0_16
vmap cmpy_v6_0_18 riviera/cmpy_v6_0_18
vmap floating_point_v7_0_17 riviera/floating_point_v7_0_17
vmap xfft_v9_1_4 riviera/xfft_v9_1_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 riviera/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_23 riviera/axi_datamover_v5_1_23
vmap axi_sg_v4_1_13 riviera/axi_sg_v4_1_13
vmap axi_dma_v7_1_22 riviera/axi_dma_v7_1_22
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 riviera/axi_register_slice_v2_1_21
vmap axi_data_fifo_v2_1_20 riviera/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 riviera/axi_crossbar_v2_1_22
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap axi_protocol_converter_v2_1_21 riviera/axi_protocol_converter_v2_1_21
vmap axi_clock_converter_v2_1_20 riviera/axi_clock_converter_v2_1_20
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_21 riviera/axi_dwidth_converter_v2_1_21

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_fft_power_calculator_0_0/sim/rfsoc_radiotelescopio_fft_power_calculator_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7  -sv2k12 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_zynq_ultra_ps_e_0_0/sim/rfsoc_radiotelescopio_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_6 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_18 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/231d/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_17 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/096f/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_4 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2a49/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_xfft_0_0/sim/rfsoc_radiotelescopio_xfft_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_tile_config.sv" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_constants_config.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_drp_arbiter_adc.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_powerup_state_irq.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_23 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/af86/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_22 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/0fb1/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_axi_dma_0_0/sim/rfsoc_radiotelescopio_axi_dma_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_xbar_0/sim/rfsoc_radiotelescopio_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_rst_ps8_0_100M_0/sim/rfsoc_radiotelescopio_rst_ps8_0_100M_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_xlconstant_0_0/sim/rfsoc_radiotelescopio_xlconstant_0_0.v" \

vlog -work axi_protocol_converter_v2_1_21  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_20  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/7589/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_21  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/07be/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl" "+incdir+../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_ds_0/sim/rfsoc_radiotelescopio_auto_ds_0.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_pc_0/sim/rfsoc_radiotelescopio_auto_pc_0.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_ds_1/sim/rfsoc_radiotelescopio_auto_ds_1.v" \
"../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_pc_1/sim/rfsoc_radiotelescopio_auto_pc_1.v" \
"../../../bd/rfsoc_radiotelescopio/sim/rfsoc_radiotelescopio.v" \

vlog -work xil_defaultlib \
"glbl.v"

