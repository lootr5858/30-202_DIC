############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_test_error
set_top sha256_top
add_files ../hls_error/sha256.c
add_files -tb ../hls_error/out.gold.dat
add_files -tb ../hls_error/sha256_tb.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./hls_test_error/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
