-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_fft_power_calculator_0_0/sim/rfsoc_radiotelescopio_fft_power_calculator_0_0.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_7 -sv \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_7 -sv \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_zynq_ultra_ps_e_0_0/sim/rfsoc_radiotelescopio_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_10 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_6 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_reg_fd_v12_0_6 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_6 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_addsub_v3_0_6 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_addsub_v12_0_14 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_mux_bit_v12_0_6 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_shift_ram_v12_0_14 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_6 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_16 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/cmpy_v6_0_18 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/231d/hdl/cmpy_v6_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_0_17 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/096f/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xfft_v9_1_4 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2a49/hdl/xfft_v9_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_xfft_0_0/sim/rfsoc_radiotelescopio_xfft_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_block.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_por_fsm_top.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_bgt_fsm.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_device_rom.sv" \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_por_fsm.sv" \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_tile_config.sv" \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_usp_rf_data_converter_0_0/synth/rfsoc_radiotelescopio_usp_rf_data_converter_0_0_constants_config.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_14 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_23 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/af86/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_13 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_22 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/0fb1/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_axi_dma_0_0/sim/rfsoc_radiotelescopio_axi_dma_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_21 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_20 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_22 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_xbar_0/sim/rfsoc_radiotelescopio_xbar_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_rst_ps8_0_100M_0/sim/rfsoc_radiotelescopio_rst_ps8_0_100M_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_xlconstant_0_0/sim/rfsoc_radiotelescopio_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_21 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_20 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/7589/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/axi_dwidth_converter_v2_1_21 \
  "../../../../rfsoc_21cm_backend.srcs/sources_1/bd/rfsoc_radiotelescopio/ipshared/07be/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_ds_0/sim/rfsoc_radiotelescopio_auto_ds_0.v" \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_pc_0/sim/rfsoc_radiotelescopio_auto_pc_0.v" \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_ds_1/sim/rfsoc_radiotelescopio_auto_ds_1.v" \
  "../../../bd/rfsoc_radiotelescopio/ip/rfsoc_radiotelescopio_auto_pc_1/sim/rfsoc_radiotelescopio_auto_pc_1.v" \
  "../../../bd/rfsoc_radiotelescopio/sim/rfsoc_radiotelescopio.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

