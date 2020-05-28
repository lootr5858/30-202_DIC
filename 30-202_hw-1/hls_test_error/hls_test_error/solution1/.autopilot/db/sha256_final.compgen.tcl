# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name final_hash \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename final_hash \
    op interface \
    ports { final_hash_address0 { O 5 vector } final_hash_ce0 { O 1 bit } final_hash_we0 { O 1 bit } final_hash_d0 { O 8 vector } final_hash_address1 { O 5 vector } final_hash_ce1 { O 1 bit } final_hash_we1 { O 1 bit } final_hash_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'final_hash'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name ctx_in_data \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ctx_in_data \
    op interface \
    ports { ctx_in_data_address0 { O 6 vector } ctx_in_data_ce0 { O 1 bit } ctx_in_data_we0 { O 1 bit } ctx_in_data_d0 { O 8 vector } ctx_in_data_q0 { I 8 vector } ctx_in_data_address1 { O 6 vector } ctx_in_data_ce1 { O 1 bit } ctx_in_data_we1 { O 1 bit } ctx_in_data_d1 { O 8 vector } ctx_in_data_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ctx_in_data'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name ctx_datalen \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_datalen \
    op interface \
    ports { ctx_datalen { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name ctx_state_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_0 \
    op interface \
    ports { ctx_state_0_i { I 32 vector } ctx_state_0_o { O 32 vector } ctx_state_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name ctx_state_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_1 \
    op interface \
    ports { ctx_state_1_i { I 32 vector } ctx_state_1_o { O 32 vector } ctx_state_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name ctx_state_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_2 \
    op interface \
    ports { ctx_state_2_i { I 32 vector } ctx_state_2_o { O 32 vector } ctx_state_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name ctx_state_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_3 \
    op interface \
    ports { ctx_state_3_i { I 32 vector } ctx_state_3_o { O 32 vector } ctx_state_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name ctx_state_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_4 \
    op interface \
    ports { ctx_state_4_i { I 32 vector } ctx_state_4_o { O 32 vector } ctx_state_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name ctx_state_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_5 \
    op interface \
    ports { ctx_state_5_i { I 32 vector } ctx_state_5_o { O 32 vector } ctx_state_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name ctx_state_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_6 \
    op interface \
    ports { ctx_state_6_i { I 32 vector } ctx_state_6_o { O 32 vector } ctx_state_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name ctx_state_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_state_7 \
    op interface \
    ports { ctx_state_7_i { I 32 vector } ctx_state_7_o { O 32 vector } ctx_state_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name ctx_bitlen_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_bitlen_0 \
    op interface \
    ports { ctx_bitlen_0_i { I 32 vector } ctx_bitlen_0_o { O 32 vector } ctx_bitlen_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name ctx_bitlen_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_bitlen_1 \
    op interface \
    ports { ctx_bitlen_1_i { I 32 vector } ctx_bitlen_1_o { O 32 vector } ctx_bitlen_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


