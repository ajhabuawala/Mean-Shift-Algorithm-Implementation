/*
 *  Copyright 2008 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 */
/*
 *  ======== fft_IQ.cmd ========
 *
 */

-stack 0x2000
-heap  0x50000

MEMORY{
  UDRAM       : o = 0x11f04000, l = 0x00010000     /* Unitialialized Data RAM */
  IRAM        : o = 0x00800000, l = 0x00100000
  ERAM        : o = 0xE1000000, l = 0x00100000
  TESTRAM     : o = 0xE1100000, l = 0x00100000
  UERAM       : o = 0xE1200000, l = 0x05D00000
}

SECTIONS{
   /********************/
   /* Generic sections */
   /********************/
  .text        : > IRAM
  .data        : > IRAM
  .data:IQmathTables : > ERAM
  .data:IQmath       : > ERAM
  .cinit       : > IRAM
  .pinit       : > IRAM
  .const       : > IRAM
  .switch      : > IRAM
  .args        : > IRAM 
  .tables      : > IRAM
  .stack       : fill=0xc0ffee > IRAM
  .reset       : > IRAM
  .csl_vect    : > IRAM

  .cio           : > IRAM
  .bss           : > IRAM
  .sysmem        : > IRAM
  .far           : > IRAM
  

   rts_sect: {
     -lrts64plus.lib (.text)
   } > ERAM

}