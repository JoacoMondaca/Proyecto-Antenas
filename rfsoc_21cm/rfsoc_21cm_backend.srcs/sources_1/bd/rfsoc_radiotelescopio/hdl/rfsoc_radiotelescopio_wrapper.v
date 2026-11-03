//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Nov  3 00:44:42 2026
//Host        : Vicente running 64-bit major release  (build 9200)
//Command     : generate_target rfsoc_radiotelescopio_wrapper.bd
//Design      : rfsoc_radiotelescopio_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module rfsoc_radiotelescopio_wrapper
   (adc0_clk_clk_n,
    adc0_clk_clk_p,
    sysref_in_diff_n,
    sysref_in_diff_p,
    vin00_v_n,
    vin00_v_p);
  input adc0_clk_clk_n;
  input adc0_clk_clk_p;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  input vin00_v_n;
  input vin00_v_p;

  wire adc0_clk_clk_n;
  wire adc0_clk_clk_p;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire vin00_v_n;
  wire vin00_v_p;

  rfsoc_radiotelescopio rfsoc_radiotelescopio_i
       (.adc0_clk_clk_n(adc0_clk_clk_n),
        .adc0_clk_clk_p(adc0_clk_clk_p),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .vin00_v_n(vin00_v_n),
        .vin00_v_p(vin00_v_p));
endmodule
