/* This file is automatically generated based on your hardware design. */
#include "memory_config.h"

struct memory_range_s memory_ranges[] = {
	/* microblaze_0_local_memory_dlmb_bram_if_cntlr_Mem memory will not be tested since application resides in the same memory */
	{
		"mig_7_for_ddr_memaddr",
		"mig_7_for_ddr",
		0x80000000,
		268435456,
	},
};

int n_memory_ranges = 1;
