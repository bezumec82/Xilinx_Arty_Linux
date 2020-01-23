#include <asm-generic/vmlinux.lds.h>
.section .dtb.init.rodata,"a"
.balign STRUCT_ALIGNMENT
.global __dtb_overlay_begin
__dtb_overlay_begin:
.incbin "drivers/of/unittest-data/overlay.dtb" 
__dtb_overlay_end:
.global __dtb_overlay_end
.balign STRUCT_ALIGNMENT
