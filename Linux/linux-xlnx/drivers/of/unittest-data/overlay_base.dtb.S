#include <asm-generic/vmlinux.lds.h>
.section .dtb.init.rodata,"a"
.balign STRUCT_ALIGNMENT
.global __dtb_overlay_base_begin
__dtb_overlay_base_begin:
.incbin "drivers/of/unittest-data/overlay_base.dtb" 
__dtb_overlay_base_end:
.global __dtb_overlay_base_end
.balign STRUCT_ALIGNMENT
