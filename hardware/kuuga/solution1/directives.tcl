############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_inline "subleq"
set_directive_unroll "bit_serial_and/and_loop"
set_directive_inline "bit_serial_and"
set_directive_resource -core RAM_1P_BRAM "kuuga" memory
set_directive_loop_tripcount -min 1 -max 30 -avg 15 "kuuga/main_loop"
set_directive_pipeline "kuuga"
set_directive_pipeline "bit_serial_add/add_loop"
