#include <asm-generic/vmlinux.lds.h>
.section .dtb.init.rodata,"a"
.balign STRUCT_ALIGNMENT
.global __dtb_overlay_bad_symbol_begin
__dtb_overlay_bad_symbol_begin:
.incbin "drivers/of/unittest-data/overlay_bad_symbol.dtb" 
__dtb_overlay_bad_symbol_end:
.global __dtb_overlay_bad_symbol_end
.balign STRUCT_ALIGNMENT
