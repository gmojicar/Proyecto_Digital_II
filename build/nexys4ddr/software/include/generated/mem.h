//--------------------------------------------------------------------------------
// Auto-generated by Migen (--------) & LiteX (e9aa747d) on 2022-02-08 15:42:32
//--------------------------------------------------------------------------------
#ifndef __GENERATED_MEM_H
#define __GENERATED_MEM_H

#ifndef ROM_BASE
#define ROM_BASE 0x00000000L
#define ROM_SIZE 0x00008000
#endif

#ifndef SRAM_BASE
#define SRAM_BASE 0x01000000L
#define SRAM_SIZE 0x00002000
#endif

#ifndef MAIN_RAM_BASE
#define MAIN_RAM_BASE 0x40000000L
#define MAIN_RAM_SIZE 0x00003400
#endif

#ifndef CSR_BASE
#define CSR_BASE 0x82000000L
#define CSR_SIZE 0x00010000
#endif

#ifndef MEM_REGIONS
#define MEM_REGIONS "ROM       0x00000000 0x8000 \nSRAM      0x01000000 0x2000 \nMAIN_RAM  0x40000000 0x3400 \nCSR       0x82000000 0x10000 "
#endif
#endif
