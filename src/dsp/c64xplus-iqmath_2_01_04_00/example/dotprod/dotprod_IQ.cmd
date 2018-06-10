/*
 *  Copyright 2006 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 */
/*
 *  ======== dotprod_IQ.cmd ========
 *
 */

-stack 0x2000
-heap  0x5000

MEMORY{
  UDRAM       : o = 0x11f04000, l = 0x00010000     /* Unitialialized Data RAM */

  ERAM        : o = 0x81000000, l = 0x00100000
  UERAM       : o = 0x81100000, l = 0x05E00000
}

SECTIONS{
   /********************/
   /* Generic sections */
   /********************/
  .text        : > ERAM
  .data        : > ERAM
  .cinit       : > ERAM
  .pinit       : > ERAM
  .const       : > ERAM
  .switch      : > ERAM
  .args        : > ERAM 
  .tables      : > ERAM
  .stack       : fill=0xc0ffee > ERAM
  .reset       : > ERAM
  .csl_vect    : > ERAM

  .cio           : > ERAM
  .bss           : > ERAM
  .sysmem        : > ERAM
  .far           : > ERAM
  

   rts_sect: {
     -lrts64plus.lib (.text)
   } > ERAM

}
