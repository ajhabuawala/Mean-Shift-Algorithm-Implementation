;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v6.1.6 *
;* Date/Time created: Mon Nov 24 15:11:24 2008                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --endian=little --hll_source=on --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --silicon_version=6500 --symdebug:skeletal 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Infinite                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled                                              *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug for Program Analysis w/Optimization      *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("MAGComplex_IQ.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.1.6 Copyright (c) 1996-2008 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\CCStudio_v3.3\c64plus\IQmath_v212\example\FFT_IQbenchmark\bmrksrc")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_sadd")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__sadd")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("_norm")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("__norm")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("_abs")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("__abs")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("_hill")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("__hill")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$8


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("_loll")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("__loll")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$10


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("_mpy32ll")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("__mpy32ll")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$10)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$12

$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("IQisqrtTable")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_IQisqrtTable")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
;	C:\Program Files\C6000Code Generation Tools 6.1.6\bin\opt6x.exe C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/MAGComplex_IQ.if C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/MAGComplex_IQ.opt 
	.sect	".text"
	.clink
	.global	_FFT_IQ_CalcMagnitude

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("FFT_IQ_CalcMagnitude")
	.dwattr $C$DW$16, DW_AT_low_pc(_FFT_IQ_CalcMagnitude)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_FFT_IQ_CalcMagnitude")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_TI_begin_file("MAGComplex_IQ.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x0b)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$16, DW_AT_TI_skeletal
	.dwpsn	file "MAGComplex_IQ.c",line 12,column 1,is_stmt,address _FFT_IQ_CalcMagnitude
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fft")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_fft")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: FFT_IQ_CalcMagnitude                                        *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,B8,B9,  *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B31                                          *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,B8,  *
;*                           B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,  *
;*                           A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22, *
;*                           B23,B24,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_FFT_IQ_CalcMagnitude:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13

           MV      .L2X    A4,B7             ; |12| 
||         ZERO    .S2     B6
||         ZERO    .L1     A29

           SET     .S1     A29,0x15,0x15,A29
||         LDHU    .D2T2   *+B7(14),B4       ; |28| 

           LDHU    .D2T2   *+B7(12),B5       ; |22| 
           SET     .S2     B6,0x14,0x14,B6
           LDW     .D2T1   *B7,A25           ; |18| 
           LDW     .D2T2   *+B7(4),B23       ; |19| 
           CMPGT   .L2     B4,1,B0           ; |28| 

   [!B0]   BNOP    .S1     $C$L4,3           ; |28| 
||         SUB     .L1X    B5,1,A3           ; |22| 
||         SUB     .L2     B4,1,B5           ; |28| 

           EXTU    .S1     A3,16,16,A6       ; |22| 
   [ B0]   SUB     .L2     B5,1,B5
           ; BRANCHCC OCCURS {$C$L4}         ; |28| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 28
;*      Loop opening brace source line   : 29
;*      Loop closing brace source line   : 29
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        2*    
;*      .D units                     0        0     
;*      .M units                     0        1     
;*      .X cross paths               0        0     
;*      .T address paths             0        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     0        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Did not find schedule
;*         ii = 7  Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |                                |    * *                         |
;*       1: |                                |      *                         |
;*       2: |                                |      *                         |
;*       3: |                                |      *                         |
;*       4: |                                |    ***                         |
;*       5: |                                |    ***                         |
;*       6: |                                |    ***                         |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 5
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 7 + trip_cnt * 7        
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C125:
;*   0              MPY32   .M2     B4,B6,B5:B4       ; |2638|  ^ 
;*   1              NOP             3
;*   4              SHRU    .S2     B4,21,B4          ; |2638|  ^ 
;*   5              SHL     .S2     B5,11,B5          ; |2638|  ^ 
;*   6              OR      .L2     B5,B4,B4          ; |2638|  ^ 
;*     ||           SPBR            $C$C125
;*   7              NOP             5
;*  14              ; BRANCHCC OCCURS {$C$C125}       ; |28| 
;*----------------------------------------------------------------------------*
$C$L1:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 8
	.dwpsn	file "MAGComplex_IQ.c",line 28,column 0,is_stmt

           SPLOOPD 7       ;14               ; (P) 
||         MV      .L2X    A29,B4
||         MVC     .S2     B5,ILC

;** --------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP KERNEL
$C$DW$L$_FFT_IQ_CalcMagnitude$3$B:
	.dwpsn	file "MAGComplex_IQ.c",line 29,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7
           MPY32   .M2     B4,B6,B5:B4       ; |2638| (P) <0,0>  ^ 
           NOP             3
           SHRU    .S2     B4,21,B4          ; |2638| (P) <0,4>  ^ 
           SHL     .S2     B5,11,B5          ; |2638| (P) <0,5>  ^ 
           OR      .L2     B5,B4,B4          ; |2638| (P) <0,6>  ^ 
           SPKERNEL 0,1
$C$DW$L$_FFT_IQ_CalcMagnitude$3$E:
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
           NOP             1
           MV      .L1X    B4,A29
;** --------------------------------------------------------------------------*
$C$L4:    
;          EXCLUSIVE CPU CYCLES: 26
           LDW     .D1T1   *A25,A3           ; |142| 
           MVKL    .S1     0x2d413ccd,A23
           ZERO    .L1     A19
           MVK     .L2     0x1,B24           ; |142| 
           ZERO    .L1     A22
           MPY32   .M1     A3,A29,A5:A4      ; |142| 
           MVKL    .S1     _IQisqrtTable-508,A18
           SET     .S1     A19,0x1d,0x1e,A19
           MV      .L1X    B24,A7            ; |142| 
           SHRU    .S1     A4,21,A3          ; |142| 
           SHL     .S2X    A5,11,B4          ; |142| 
           OR      .L2X    B4,A3,B4          ; |142| 
           ABS     .L2     B4,B4             ; |142| 
           STW     .D2T2   B4,*B23           ; |142| 
           LDHU    .D2T2   *+B7(12),B4       ; |36| 
           SET     .S1     A22,0x1e,0x1e,A22
           MVKH    .S1     0x2d413ccd,A23
           MVKH    .S1     _IQisqrtTable-508,A18
           MVK     .S1     0x20,A24

           CMPGT   .L2     B4,1,B0           ; |36| 
||         SUB     .S2     B4,1,B1           ; |36| 

           MV      .S2     B0,B2             ; guard predicate rewrite
|| [!B0]   B       .S1     $C$L10            ; |36| 
|| [ B0]   CMPGT   .L2     B1,6,B0

   [!B2]   ZERO    .L2     B0                ; nullify predicate
   [ B0]   BNOP    .S1     $C$L6,3
           ; BRANCHCC OCCURS {$C$L10}        ; |36| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
   [!B0]   LDW     .D1T1   *+A25[A7],A3      ; |2638| 
   [!B0]   LDW     .D1T2   *+A25[A6],B4      ; |2638| 
           ; BRANCHCC OCCURS {$C$L6} {0} 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 36,column 0,is_stmt
           NOP             2
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L5
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_FFT_IQ_CalcMagnitude$9$B:
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 37,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 2
           NOP             2
$C$DW$L$_FFT_IQ_CalcMagnitude$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_FFT_IQ_CalcMagnitude$10$B:
;          EXCLUSIVE CPU CYCLES: 74

           MPY32   .M1     A3,A29,A5:A4      ; |2638| 
||         MPY32   .M2X    B4,A29,B5:B4      ; |2638| 

           ADD     .L2     1,B24,B31         ; |3665| 
           ADD     .L1     1,A7,A30          ; |38| 
           SUB     .L1     A6,1,A28          ; |2638| 

           SHRU    .S1     A4,21,A3          ; |2638| 
||         SHRU    .S2     B4,21,B4          ; |2638| 

           SHL     .S1X    B5,11,A4          ; |2638| 
||         SHL     .S2X    A5,11,B5          ; |2638| 

           OR      .L1X    A4,B4,A3          ; |2638| 
||         OR      .L2X    B5,A3,B4          ; |2638| 

           MPY32   .M1     A3,A3,A5:A4       ; |2638| 
||         MPY32   .M2     B4,B4,B5:B4       ; |2638| 

           SUB     .L2     B1,1,B1           ; |36| 
           EXTU    .S1     A30,16,16,A7      ; |38| 
           EXTU    .S1     A28,16,16,A6      ; |2638| 

           SHRU    .S2     B4,21,B4          ; |2638| 
||         SHRU    .S1     A4,21,A4          ; |2638| 

           SHL     .S1X    B5,11,A3          ; |2638| 
||         SHL     .S2X    A5,11,B5          ; |2638| 

           OR      .L1X    A3,B4,A3          ; |2638| 
           OR      .L1X    B5,A4,A4          ; |2638| 
           ADD     .L1     A4,A3,A3          ; |2638| 
           NORM    .L1     A3,A9             ; |3586| 
           SHL     .S1     A3,A9,A4          ; |3586| 
           SHL     .S1     A3,A9,A8          ; |3586| 

           SHRU    .S1     A4,23,A3          ; |3586| 
||         CMPGT   .L1     A8,0,A0           ; |3586| 

   [ A0]   LDW     .D1T1   *+A18[A3],A3      ; |3586| 
   [!A0]   ZERO    .L1     A3                ; |3586| 
           SHL     .S2X    A9,31,B0          ; |3665| 
           SHRU    .S2X    A9,1,B4           ; |3665| 
           NOP             1
           MPY32   .M1     A3,A3,A5:A4       ; |3586| 
           SUB     .L1X    A24,B4,A31        ; |3665| 
           NOP             2
           SHL     .S1     A5,2,A4           ; |3586| 
           MPY32   .M1     A8,A4,A5:A4       ; |3586| 
           NOP             3
           SUB     .L1     A19,A5,A4         ; |3586| 
           MPY32   .M1     A3,A4,A5:A4       ; |3586| 
           NOP             3
           SHL     .S1     A5,2,A16          ; |3586| 
           MPY32   .M1     A16,A16,A5:A4     ; |3586| 
           NOP             3
           SHL     .S1     A5,2,A3           ; |3586| 
           MPY32   .M1     A8,A3,A5:A4       ; |3586| 
           NOP             3
           SUB     .L1     A19,A5,A3         ; |3586| 
           MPY32   .M1     A16,A3,A5:A4      ; |3586| 
           NOP             3
           SHL     .S1     A5,2,A3           ; |3586| 
           MPY32   .M1     A8,A3,A5:A4       ; |3586| 
           NOP             3
   [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| 
   [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| 
           NOP             3
           SHL     .S1     A5,31,A8          ; |3665| 

           SHRU    .S1     A5,1,A3           ; |3665| 
||         SHRU    .S2X    A4,1,B5           ; |3665| 

           OR      .L2X    B5,A8,B5          ; |3665| 

           SHRU    .S2X    A3,B4,B6          ; |3665| 
||         SHL     .S1     A3,A31,A3         ; |3665| 

           SHRU    .S2     B5,B4,B4          ; |3665| 
|| [ B1]   B       .S1     $C$L5             ; |36| 

           OR      .L2X    B4,A3,B4          ; |3665| 
|| [ B1]   LDW     .D1T1   *+A25[A7],A3      ; |2638| 

           SHRU    .S2     B4,31,B4          ; |3665| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

   [!B1]   RET     .S2     B3                ; |43| 
||         SADD    .L2     B6,B4,B5          ; |3665| 
|| [ B1]   LDW     .D1T2   *+A25[A6],B4      ; |2638| 

           STW     .D2T2   B5,*+B23[B24]     ; |3665| 
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 42,column 0,is_stmt
           EXTU    .S2     B31,16,16,B24     ; |3665| 
           ; BRANCHCC OCCURS {$C$L5}         ; |36| 
$C$DW$L$_FFT_IQ_CalcMagnitude$10$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           NOP             3
           ; BRANCH OCCURS {B3}              ; |43| 
;** --------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 2
           SUB     .L2X    A6,1,B4           ; |2638| (P) <0,7> 
           EXTU    .S2     B4,16,16,B4       ; |2638| (P) <0,8> 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 36
;*      Loop opening brace source line   : 37
;*      Loop closing brace source line   : 42
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 13
;*      Unpartitioned Resource Bound     : 14
;*      Partitioned Resource Bound(*)    : 14
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        0     
;*      .S units                    14*      14*    
;*      .D units                     3        1     
;*      .M units                    11        2     
;*      .X cross paths               8       11     
;*      .T address paths             2        2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        1     (.L or .S unit)
;*      Addition ops (.LSD)         13       10     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             9        8     
;*      Bound(.L .S .D .LS .LSD)    11        9     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Did not find schedule
;*         ii = 15 Schedule found with 8 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*  * *****      ****************| ** * * **      *  * * **       |
;*       1: |*  *******      **************  | ** * * **         *** **       |
;*       2: |   **** **      ***** ***** **  | ** * * **      *  *** **       |
;*       3: |   **** **      ***** ********  | ** * * **      * ***  **       |
;*       4: |   * ** **      ****  **********| ** *** **      ****** **       |
;*       5: |*  * *  **      **** ***********| ** ******      *********       |
;*       6: |*  * *  **      **** ***********| ** ******      *********       |
;*       7: |*  ***  **      **** ********** | ** ******      *********       |
;*       8: |*  **   **      ***** ********* | ** ******      ****** **       |
;*       9: |*  * *  **       **** **********| ** *** **      *** ** **       |
;*      10: |   * *  **      ***** **********| ** **  **      *** ** **       |
;*      11: |   **   **      ********** *** *| ** *** **      *** ** **       |
;*      12: |   * ** **      **** ***********|*** **  **      * * ** **       |
;*      13: |*  * ** **      ****************|*** **  **      * * ** **       |
;*      14: |*  * *****      *************** | ** * * *       *  *** *        |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Redundant loop generated
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages       : 3
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 7
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 93 + trip_cnt * 15        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B1,1,B1
;*                  MV              A7,B18
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C72:
;*   0              LDW     .D1T2   *+A25[A6],B16     ; |2638| 
;*   1              NOP             5
;*   6              ADD     .L2     1,B18,B21         ; |38| 
;*   7              SUB     .L2X    A6,1,B4           ; |2638| 
;*   8              EXTU    .S2     B4,16,16,B17      ; |2638| 
;*   9              NOP             5
;*  14              MV      .D1X    B17,A6            ; |2638| Define a twin register
;*  15              NOP             3
;*  18              MPY32   .M2X    B16,A29,B5:B4     ; |2638| 
;*  19              LDW     .D1T1   *+A25[A7],A5      ; |2638| 
;*  20              EXTU    .S2     B21,16,16,B18     ; |38| 
;*  21              NOP             1
;*  22              SHRU    .S2     B4,21,B22         ; |2638| 
;*  23              NOP             1
;*  24              SHL     .S1X    B5,11,A4          ; |2638| 
;*  25              OR      .L1X    A4,B22,A20        ; |2638| 
;*     ||           MPY32   .M1     A5,A29,A21:A20    ; |2638| 
;*  26              NOP             1
;*  27              MPY32   .M1     A20,A20,A21:A20   ; |2638| 
;*  28              NOP             1
;*  29              SHRU    .S1     A20,21,A30        ; |2638| 
;*  30              SHL     .S2X    A21,11,B4         ; |2638| 
;*  31              MV      .L1X    B18,A7            ; |38| Define a twin register
;*  32              OR      .D2X    B4,A30,B4         ; |2638| 
;*  33              SHRU    .S1     A20,21,A20        ; |2638| 
;*  34              MPY32   .M2     B4,B4,B7:B6       ; |2638| 
;*     ||           SHL     .S2X    A21,11,B4         ; |2638| 
;*  35              NOP             1
;*  36              OR      .L1X    B4,A20,A30        ; |2638| 
;*  37              NOP             3
;*  40              SHRU    .S2     B6,21,B6          ; |2638| 
;*  41              SHL     .S1X    B7,11,A3          ; |2638| 
;*  42              OR      .D1X    A3,B6,A20         ; |2638| 
;*  43              ADD     .L1     A30,A20,A28       ; |2638| 
;*  44              NORM    .L1     A28,A26           ; |3586| 
;*  45              SHL     .S1     A28,A26,A0        ; |3586| 
;*  46              SHL     .S1     A28,A26,A28       ; |3586| 
;*  47              SHRU    .S1     A0,23,A31         ; |3586| 
;*     ||           CMPGT   .L1     A28,0,A0          ; |3586| 
;*  48      [ A0]   LDW     .D1T1   *+A18[A31],A17    ; |3586| 
;*  49      [!A0]   ZERO    .L1     A17               ; |3586| 
;*  50              NOP             3
;*  53              MPY32   .M1     A17,A17,A5:A4     ; |3586| 
;*  54              NOP             3
;*  57              MV      .L1     A28,A16           ; |3586|  ^ Split a long life
;*     ||           SHL     .S1     A5,2,A3           ; |3586| 
;*  58              MV      .D1     A26,A3            ; |3586| Split a long life
;*     ||           MPY32   .M1     A28,A3,A5:A4      ; |3586| 
;*  59              NOP             3
;*  62              SUB     .D1     A19,A5,A30        ; |3586| 
;*  63              MPY32   .M1     A17,A30,A5:A4     ; |3586| 
;*  64              NOP             4
;*  68              SHL     .S1     A5,2,A27          ; |3586| 
;*  69              MPY32   .M1     A27,A27,A5:A4     ; |3586| 
;*  70              NOP             1
;*  71              MV      .D1     A3,A31            ; |3586| Split a long life
;*     ||           MV      .L1     A16,A9            ; |3586| Split a long life
;*  72              NOP             1
;*  73              SHL     .S1     A5,2,A4           ; |3586| 
;*     ||           SHL     .S2X    A31,31,B6         ; |3665| 
;*  74              MPY32   .M1     A9,A4,A5:A4       ; |3586| 
;*     ||           MV      .D2     B6,B8             ; |3665| Split a long life
;*  75              NOP             1
;*  76              SHRU    .S2X    A31,1,B6          ; |3665| 
;*  77              MV      .L2     B6,B9             ; |3665| Split a long life
;*  78              SUB     .L1     A19,A5,A17        ; |3586| 
;*  79              MPY32   .M1     A27,A17,A21:A20   ; |3586| 
;*  80              NOP             2
;*  82              SUB     .L1X    A24,B6,A8         ; |3665| 
;*  83              NOP             2
;*  85              SHL     .S1     A21,2,A4          ; |3586| 
;*  86              MPY32   .M1     A9,A4,A5:A4       ; |3586| 
;*  87              NOP             2
;*  89              MV      .L2     B8,B0             ; |3665| Split a long life
;*  90      [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| 
;*  91              MV      .L2     B9,B19            ; |3665| Split a long life
;*     ||   [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| 
;*  92              NOP             1
;*  93              ADD     .L2     1,B24,B20         ; |3665| 
;*  94              NOP             1
;*  95              SHL     .S1     A5,31,A27         ; |3665| 
;*  96              SHRU    .S1     A5,1,A31          ; |3665| 
;*     ||           SHRU    .S2X    A4,1,B17          ; |3665| 
;*  97              SHL     .S1     A31,A8,A0         ; |3665| 
;*  98              OR      .L2X    B17,A27,B4        ; |3665| 
;*  99              SHRU    .S2X    A31,B19,B5        ; |3665| 
;*  100              NOP             1
;*  101              SHRU    .S2     B4,B19,B4         ; |3665| 
;*  102              OR      .L2X    B4,A0,B4          ; |3665| 
;*     ||   [ B1]   BDEC    .S2     $C$C72,B1         ; |36| 
;*  103              NOP             1
;*  104              SHRU    .S2     B4,31,B4          ; |3665| 
;*  105              SADD    .L2     B5,B4,B5          ; |3665| 
;*  106              STW     .D2T2   B5,*+B23[B24]     ; |3665| 
;*  107              EXTU    .S2     B20,16,16,B24     ; |3665| 
;*  108              ; BRANCHCC OCCURS {$C$C72}        ; |36| 
;*----------------------------------------------------------------------------*
$C$L7:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 35
           LDW     .D1T2   *+A25[A6],B4      ; |2638| (P) <0,0> 
           MV      .L1X    B4,A3             ; |2638| (P) <0,14> Define a twin register
           LDW     .D1T2   *+A25[A3],B7      ; |2638| (P) <1,0> 
           NOP             2
           MPY32   .M2X    B4,A29,B5:B4      ; |2638| (P) <0,18> 

           ADD     .L2X    1,A7,B4           ; |38| 
||         LDW     .D1T1   *+A25[A7],A3      ; |2638| (P) <0,19> 

           EXTU    .S2     B4,16,16,B9       ; |38| (P) <0,20> 
           ADD     .L2     1,B9,B8           ; |38| (P) <1,6> 

           SHRU    .S2     B4,21,B6          ; |2638| (P) <0,22> 
||         SUB     .L2X    A3,1,B4           ; |2638| (P) <1,7> 

           EXTU    .S2     B4,16,16,B4       ; |2638| (P) <1,8> 
           SHL     .S1X    B5,11,A4          ; |2638| (P) <0,24> 

           OR      .L1X    A4,B6,A20         ; |2638| (P) <0,25> 
||         MPY32   .M1     A3,A29,A21:A20    ; |2638| (P) <0,25> 

           NOP             1
           MPY32   .M1     A20,A20,A21:A20   ; |2638| (P) <0,27> 
           NOP             1

           SHRU    .S1     A20,21,A3         ; |2638| (P) <0,29> 
||         MV      .L1X    B4,A4             ; |2638| (P) <1,14> Define a twin register

           SHL     .S2X    A21,11,B4         ; |2638| (P) <0,30> 
||         LDW     .D1T2   *+A25[A4],B16     ; |2638| (P) <2,0> 

           MV      .L1X    B9,A5             ; |38| (P) <0,31> Define a twin register
           OR      .L2X    B4,A3,B4          ; |2638| (P) <0,32> 

           SHRU    .S1     A20,21,A20        ; |2638| (P) <0,33> 
||         MPY32   .M2X    B7,A29,B5:B4      ; |2638| (P) <1,18> 

           MPY32   .M2     B4,B4,B7:B6       ; |2638| (P) <0,34> 
||         SHL     .S2X    A21,11,B4         ; |2638| (P) <0,34> 
||         LDW     .D1T1   *+A25[A5],A5      ; |2638| (P) <1,19> 

           EXTU    .S2     B8,16,16,B18      ; |38| (P) <1,20> 

           OR      .L1X    B4,A20,A6         ; |2638| (P) <0,36> 
||         ADD     .L2     1,B18,B21         ; |38| (P) <2,6> 

           SHRU    .S2     B4,21,B22         ; |2638| (P) <1,22> 
||         SUB     .L2X    A4,1,B4           ; |2638| (P) <2,7> 

           EXTU    .S2     B4,16,16,B17      ; |2638| (P) <2,8> 
           SHL     .S1X    B5,11,A4          ; |2638| (P) <1,24> 

           SHRU    .S2     B6,21,B6          ; |2638| (P) <0,40> 
||         OR      .L1X    A4,B22,A20        ; |2638| (P) <1,25> 
||         MPY32   .M1     A5,A29,A21:A20    ; |2638| (P) <1,25> 

           SHL     .S1X    B7,11,A3          ; |2638| (P) <0,41> 

           OR      .L1X    A3,B6,A20         ; |2638| (P) <0,42> 
||         MPY32   .M1     A20,A20,A21:A20   ; |2638| (P) <1,27> 

           ADD     .L1     A6,A20,A4         ; |2638| (P) <0,43> 

           NORM    .L1     A4,A26            ; |3586| (P) <0,44> 
||         SHRU    .S1     A20,21,A30        ; |2638| (P) <1,29> 
||         MV      .D1X    B17,A6            ; |2638| (P) <2,14> Define a twin register

           SHL     .S1     A4,A26,A3         ; |3586| (P) <0,45> 
||         SHL     .S2X    A21,11,B4         ; |2638| (P) <1,30> 
||         LDW     .D1T2   *+A25[A6],B16     ; |2638| (P) <3,0> 

           SHL     .S1     A4,A26,A28        ; |3586| (P) <0,46> 
||         MV      .L1X    B18,A7            ; |38| (P) <1,31> Define a twin register

	.dwpsn	file "../../../include/IQmath_inline_all.h",line 36,column 0,is_stmt

           SUB     .L2     B1,5,B1
||         MVK     .S2     0x4000,B2         ; init prolog collapse predicate
||         SHRU    .S1     A3,23,A31         ; |3586| (P) <0,47> 
||         CMPGT   .L1     A28,0,A0          ; |3586| (P) <0,47> 
||         OR      .D2X    B4,A30,B4         ; |2638| (P) <1,32> 

;** --------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP KERNEL
$C$DW$L$_FFT_IQ_CalcMagnitude$14$B:
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 37,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 15

           ADD     .L2     1,B24,B20         ; |3665| <0,93> 
||         SUB     .L1     A19,A5,A17        ; |3586| <1,78> 
||         MPY32   .M1     A17,A30,A5:A4     ; |3586| <2,63> 
|| [ A0]   LDW     .D1T1   *+A18[A31],A17    ; |3586| <3,48> 
||         SHRU    .S1     A20,21,A20        ; |2638| <4,33> 
||         MPY32   .M2X    B16,A29,B5:B4     ; |2638| <5,18> 

           MPY32   .M1     A27,A17,A21:A20   ; |3586| <1,79> 
|| [!A0]   ZERO    .L1     A17               ; |3586| <3,49> 
||         MPY32   .M2     B4,B4,B7:B6       ; |2638| <4,34> 
||         SHL     .S2X    A21,11,B4         ; |2638| <4,34> 
||         LDW     .D1T1   *+A25[A7],A5      ; |2638| <5,19> 

           SHL     .S1     A5,31,A27         ; |3665| <0,95> 
||         EXTU    .S2     B21,16,16,B18     ; |38| <5,20> 

           SHRU    .S2X    A4,1,B17          ; |3665| <0,96> 
||         SHRU    .S1     A5,1,A31          ; |3665| <0,96> 
||         OR      .L1X    B4,A20,A30        ; |2638| <4,36> 
||         ADD     .L2     1,B18,B21         ; |38| <6,6> 

           SHL     .S1     A31,A8,A0         ; |3665| <0,97> 
||         SUB     .L1X    A24,B6,A8         ; |3665| <1,82> 
||         SHRU    .S2     B4,21,B22         ; |2638| <5,22> 
||         SUB     .L2X    A6,1,B4           ; |2638| <6,7> 

           OR      .L2X    B17,A27,B4        ; |3665| <0,98> 
||         SHL     .S1     A5,2,A27          ; |3586| <2,68> 
||         MPY32   .M1     A17,A17,A5:A4     ; |3586| <3,53> 
||         EXTU    .S2     B4,16,16,B17      ; |2638| <6,8> 

           SHRU    .S2X    A31,B19,B5        ; |3665| <0,99> 
||         MPY32   .M1     A27,A27,A5:A4     ; |3586| <2,69> 
||         SHL     .S1X    B5,11,A4          ; |2638| <5,24> 

           SHL     .S1     A21,2,A4          ; |3586| <1,85> 
||         SHRU    .S2     B6,21,B6          ; |2638| <4,40> 
||         OR      .L1X    A4,B22,A20        ; |2638| <5,25> 
||         MPY32   .M1     A5,A29,A21:A20    ; |2638| <5,25> 

           SHRU    .S2     B4,B19,B4         ; |3665| <0,101> 
||         MPY32   .M1     A9,A4,A5:A4       ; |3586| <1,86> 
||         MV      .L1     A16,A9            ; |3586| <2,71> Split a long life
||         MV      .D1     A3,A31            ; |3586| <2,71> Split a long life
||         SHL     .S1X    B7,11,A3          ; |2638| <4,41> 

           OR      .L2X    B4,A0,B4          ; |3665| <0,102> 
|| [ B1]   BDEC    .S2     $C$L8,B1          ; |36| <0,102> 
||         MV      .L1     A28,A16           ; |3586| <3,57>  ^ Split a long life
||         SHL     .S1     A5,2,A3           ; |3586| <3,57> 
||         OR      .D1X    A3,B6,A20         ; |2638| <4,42> 
||         MPY32   .M1     A20,A20,A21:A20   ; |2638| <5,27> 

           SHL     .S1     A5,2,A4           ; |3586| <2,73> 
||         SHL     .S2X    A31,31,B6         ; |3665| <2,73> 
||         MPY32   .M1     A28,A3,A5:A4      ; |3586| <3,58> 
||         MV      .D1     A26,A3            ; |3586| <3,58> Split a long life
||         ADD     .L1     A30,A20,A28       ; |2638| <4,43> 

           SHRU    .S2     B4,31,B4          ; |3665| <0,104> 
||         MV      .L2     B8,B0             ; |3665| <1,89> Split a long life
||         MPY32   .M1     A9,A4,A5:A4       ; |3586| <2,74> 
||         MV      .D2     B6,B8             ; |3665| <2,74> Split a long life
||         NORM    .L1     A28,A26           ; |3586| <4,44> 
||         SHRU    .S1     A20,21,A30        ; |2638| <5,29> 
||         MV      .D1X    B17,A6            ; |2638| <6,14> Define a twin register

           SADD    .L2     B5,B4,B5          ; |3665| <0,105> 
|| [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| <1,90> 
||         SHL     .S1     A28,A26,A0        ; |3586| <4,45> 
||         SHL     .S2X    A21,11,B4         ; |2638| <5,30> 
||         LDW     .D1T2   *+A25[A6],B16     ; |2638| <7,0> 

   [!B2]   STW     .D2T2   B5,*+B23[B24]     ; |3665| <0,106> 
||         MV      .L2     B9,B19            ; |3665| <1,91> Split a long life
|| [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| <1,91> 
||         SHRU    .S2X    A31,1,B6          ; |3665| <2,76> 
||         SHL     .S1     A28,A26,A28       ; |3586| <4,46> 
||         MV      .L1X    B18,A7            ; |38| <5,31> Define a twin register

	.dwpsn	file "../../../include/IQmath_inline_all.h",line 42,column 0,is_stmt

   [ B2]   MPYSU   .M2     2,B2,B2           ; <0,107> 
|| [!B2]   EXTU    .S2     B20,16,16,B24     ; |3665| <0,107> 
||         MV      .L2     B6,B9             ; |3665| <2,77> Split a long life
||         SUB     .D1     A19,A5,A30        ; |3586| <3,62> 
||         SHRU    .S1     A0,23,A31         ; |3586| <4,47> 
||         CMPGT   .L1     A28,0,A0          ; |3586| <4,47> 
||         OR      .D2X    B4,A30,B4         ; |2638| <5,32> 

$C$DW$L$_FFT_IQ_CalcMagnitude$14$E:
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 89

           ADD     .L2     1,B24,B20         ; |3665| (E) <1,93> 
||         SUB     .L1     A19,A5,A17        ; |3586| (E) <2,78> 
||         MPY32   .M1     A17,A30,A5:A4     ; |3586| (E) <3,63> 
|| [ A0]   LDW     .D1T1   *+A18[A31],A17    ; |3586| (E) <4,48> 
||         SHRU    .S1     A20,21,A20        ; |2638| (E) <5,33> 
||         MPY32   .M2X    B16,A29,B5:B4     ; |2638| (E) <6,18> 

           MPY32   .M1     A27,A17,A21:A20   ; |3586| (E) <2,79> 
|| [!A0]   ZERO    .L1     A17               ; |3586| (E) <4,49> 
||         MPY32   .M2     B4,B4,B7:B6       ; |2638| (E) <5,34> 
||         SHL     .S2X    A21,11,B4         ; |2638| (E) <5,34> 
||         LDW     .D1T1   *+A25[A7],A5      ; |2638| (E) <6,19> 

           SHL     .S1     A5,31,A7          ; |3665| (E) <1,95> 
||         EXTU    .S2     B21,16,16,B18     ; |38| (E) <6,20> 

           SHRU    .S2X    A4,1,B22          ; |3665| (E) <1,96> 
||         SHRU    .S1     A5,1,A30          ; |3665| (E) <1,96> 
||         OR      .L1X    B4,A20,A27        ; |2638| (E) <5,36> 
||         ADD     .L2     1,B18,B21         ; |38| (E) <7,6> 

           SHL     .S1     A30,A8,A6         ; |3665| (E) <1,97> 
||         SUB     .L1X    A24,B6,A8         ; |3665| (E) <2,82> 
||         SHRU    .S2     B4,21,B17         ; |2638| (E) <6,22> 
||         SUB     .L2X    A6,1,B4           ; |2638| (E) <7,7> 

           OR      .L2X    B22,A7,B4         ; |3665| (E) <1,98> 
||         SHL     .S1     A5,2,A7           ; |3586| (E) <3,68> 
||         MPY32   .M1     A17,A17,A5:A4     ; |3586| (E) <4,53> 
||         EXTU    .S2     B4,16,16,B22      ; |2638| (E) <7,8> 

           SHRU    .S2X    A30,B19,B5        ; |3665| (E) <1,99> 
||         MPY32   .M1     A7,A7,A5:A4       ; |3586| (E) <3,69> 
||         SHL     .S1X    B5,11,A4          ; |2638| (E) <6,24> 

           SHL     .S1     A21,2,A4          ; |3586| (E) <2,85> 
||         SHRU    .S2     B6,21,B6          ; |2638| (E) <5,40> 
||         OR      .L1X    A4,B17,A20        ; |2638| (E) <6,25> 
||         MPY32   .M1     A5,A29,A21:A20    ; |2638| (E) <6,25> 

           SHRU    .S2     B4,B19,B4         ; |3665| (E) <1,101> 
||         MPY32   .M1     A9,A4,A5:A4       ; |3586| (E) <2,86> 
||         MV      .L1     A16,A9            ; |3586| (E) <3,71> Split a long life
||         MV      .D1     A3,A30            ; |3586| (E) <3,71> Split a long life
||         SHL     .S1X    B7,11,A3          ; |2638| (E) <5,41> 

           OR      .L2X    B4,A6,B4          ; |3665| (E) <1,102> 
||         MV      .L1     A28,A16           ; |3586| (E) <4,57>  ^ Split a long life
||         SHL     .S1     A5,2,A3           ; |3586| (E) <4,57> 
||         OR      .D1X    A3,B6,A20         ; |2638| (E) <5,42> 
||         MPY32   .M1     A20,A20,A21:A20   ; |2638| (E) <6,27> 

           SHL     .S1     A5,2,A4           ; |3586| (E) <3,73> 
||         SHL     .S2X    A30,31,B6         ; |3665| (E) <3,73> 
||         MPY32   .M1     A28,A3,A5:A4      ; |3586| (E) <4,58> 
||         MV      .L1     A26,A28           ; |3586| (E) <4,58> Split a long life
||         ADD     .D1     A27,A20,A27       ; |2638| (E) <5,43> 

           SHRU    .S2     B4,31,B4          ; |3665| (E) <1,104> 
||         MV      .L2     B8,B0             ; |3665| (E) <2,89> Split a long life
||         MPY32   .M1     A9,A4,A5:A4       ; |3586| (E) <3,74> 
||         MV      .D2     B6,B17            ; |3665| (E) <3,74> Split a long life
||         NORM    .L1     A27,A26           ; |3586| (E) <5,44> 
||         SHRU    .S1     A20,21,A31        ; |2638| (E) <6,29> 
||         MV      .D1X    B22,A6            ; |2638| (E) <7,14> Define a twin register

           SADD    .L2     B5,B4,B5          ; |3665| (E) <1,105> 
|| [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| (E) <2,90> 
||         SHL     .S1     A27,A26,A3        ; |3586| (E) <5,45> 
||         SHL     .S2X    A21,11,B4         ; |2638| (E) <6,30> 

           STW     .D2T2   B5,*+B23[B24]     ; |3665| (E) <1,106> 
||         MV      .L2     B9,B19            ; |3665| (E) <2,91> Split a long life
|| [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| (E) <2,91> 
||         SHRU    .S2X    A30,1,B6          ; |3665| (E) <3,76> 
||         SHL     .S1     A27,A26,A27       ; |3586| (E) <5,46> 
||         MV      .L1X    B18,A6            ; |38| (E) <6,31> Define a twin register

           EXTU    .S2     B20,16,16,B8      ; |3665| (E) <1,107> 
||         MV      .L2     B6,B9             ; |3665| (E) <3,77> Split a long life
||         SUB     .D1     A19,A5,A3         ; |3586| (E) <4,62> 
||         SHRU    .S1     A3,23,A31         ; |3586| (E) <5,47> 
||         CMPGT   .L1     A27,0,A0          ; |3586| (E) <5,47> 
||         OR      .D2X    B4,A31,B4         ; |2638| (E) <6,32> 

           ADD     .L2     1,B8,B18          ; |3665| (E) <2,93> 
||         SUB     .L1     A19,A5,A17        ; |3586| (E) <3,78> 
||         MPY32   .M1     A17,A3,A5:A4      ; |3586| (E) <4,63> 
|| [ A0]   LDW     .D1T1   *+A18[A31],A17    ; |3586| (E) <5,48> 
||         SHRU    .S1     A20,21,A20        ; |2638| (E) <6,33> 
||         MPY32   .M2X    B16,A29,B5:B4     ; |2638| (E) <7,18> 

           MPY32   .M1     A7,A17,A21:A20    ; |3586| (E) <3,79> 
|| [!A0]   ZERO    .L1     A17               ; |3586| (E) <5,49> 
||         MPY32   .M2     B4,B4,B7:B6       ; |2638| (E) <6,34> 
||         SHL     .S2X    A21,11,B4         ; |2638| (E) <6,34> 
||         LDW     .D1T1   *+A25[A6],A5      ; |2638| (E) <7,19> 

           SHL     .S1     A5,31,A6          ; |3665| (E) <2,95> 
||         EXTU    .S2     B21,16,16,B20     ; |38| (E) <7,20> 

           SHRU    .S2X    A4,1,B21          ; |3665| (E) <2,96> 
||         SHRU    .S1     A5,1,A7           ; |3665| (E) <2,96> 
||         OR      .L1X    B4,A20,A30        ; |2638| (E) <6,36> 

           SHL     .S1     A7,A8,A3          ; |3665| (E) <2,97> 
||         SUB     .L1X    A24,B6,A25        ; |3665| (E) <3,82> 
||         SHRU    .S2     B4,21,B16         ; |2638| (E) <7,22> 

           OR      .L2X    B21,A6,B4         ; |3665| (E) <2,98> 
||         SHL     .S1     A5,2,A8           ; |3586| (E) <4,68> 
||         MPY32   .M1     A17,A17,A5:A4     ; |3586| (E) <5,53> 

           SHRU    .S2X    A7,B19,B5         ; |3665| (E) <2,99> 
||         MPY32   .M1     A8,A8,A5:A4       ; |3586| (E) <4,69> 
||         SHL     .S1X    B5,11,A4          ; |2638| (E) <7,24> 

           SHL     .S1     A21,2,A4          ; |3586| (E) <3,85> 
||         SHRU    .S2     B6,21,B6          ; |2638| (E) <6,40> 
||         OR      .L1X    A4,B16,A20        ; |2638| (E) <7,25> 
||         MPY32   .M1     A5,A29,A21:A20    ; |2638| (E) <7,25> 

           SHRU    .S2     B4,B19,B4         ; |3665| (E) <2,101> 
||         MPY32   .M1     A9,A4,A5:A4       ; |3586| (E) <3,86> 
||         MV      .L1     A16,A9            ; |3586| (E) <4,71> Split a long life
||         MV      .D1     A28,A7            ; |3586| (E) <4,71> Split a long life
||         SHL     .S1X    B7,11,A6          ; |2638| (E) <6,41> 

           OR      .L2X    B4,A3,B4          ; |3665| (E) <2,102> 
||         MV      .L1     A27,A28           ; |3586| (E) <5,57>  ^ Split a long life
||         SHL     .S1     A5,2,A3           ; |3586| (E) <5,57> 
||         OR      .D1X    A6,B6,A20         ; |2638| (E) <6,42> 
||         MPY32   .M1     A20,A20,A21:A20   ; |2638| (E) <7,27> 

           SHL     .S1     A5,2,A4           ; |3586| (E) <4,73> 
||         SHL     .S2X    A7,31,B6          ; |3665| (E) <4,73> 
||         MPY32   .M1     A27,A3,A5:A4      ; |3586| (E) <5,58> 
||         MV      .L1     A26,A27           ; |3586| (E) <5,58> Split a long life
||         ADD     .D1     A30,A20,A16       ; |2638| (E) <6,43> 

           SHRU    .S2     B4,31,B4          ; |3665| (E) <2,104> 
||         MV      .L2     B17,B0            ; |3665| (E) <3,89> Split a long life
||         MPY32   .M1     A9,A4,A5:A4       ; |3586| (E) <4,74> 
||         MV      .D2     B6,B16            ; |3665| (E) <4,74> Split a long life
||         NORM    .L1     A16,A26           ; |3586| (E) <6,44> 
||         SHRU    .S1     A20,21,A6         ; |2638| (E) <7,29> 

           SADD    .L2     B5,B4,B5          ; |3665| (E) <2,105> 
|| [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| (E) <3,90> 
||         SHL     .S1     A16,A26,A3        ; |3586| (E) <6,45> 
||         SHL     .S2X    A21,11,B4         ; |2638| (E) <7,30> 

           STW     .D2T2   B5,*+B23[B8]      ; |3665| (E) <2,106> 
||         MV      .L2     B9,B17            ; |3665| (E) <3,91> Split a long life
|| [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| (E) <3,91> 
||         SHRU    .S2X    A7,1,B6           ; |3665| (E) <4,76> 
||         SHL     .S1     A16,A26,A16       ; |3586| (E) <6,46> 
||         MV      .L1X    B20,A7            ; |38| (E) <7,31> Define a twin register

           EXTU    .S2     B18,16,16,B18     ; |3665| (E) <2,107> 
||         MV      .L2     B6,B9             ; |3665| (E) <4,77> Split a long life
||         SUB     .D1     A19,A5,A3         ; |3586| (E) <5,62> 
||         SHRU    .S1     A3,23,A31         ; |3586| (E) <6,47> 
||         CMPGT   .L1     A16,0,A0          ; |3586| (E) <6,47> 
||         OR      .D2X    B4,A6,B4          ; |2638| (E) <7,32> 

           ADD     .L2     1,B18,B8          ; |3665| (E) <3,93> 
||         SUB     .L1     A19,A5,A17        ; |3586| (E) <4,78> 
||         MPY32   .M1     A17,A3,A5:A4      ; |3586| (E) <5,63> 
|| [ A0]   LDW     .D1T1   *+A18[A31],A17    ; |3586| (E) <6,48> 
||         SHRU    .S1     A20,21,A20        ; |2638| (E) <7,33> 

           MPY32   .M1     A8,A17,A21:A20    ; |3586| (E) <4,79> 
|| [!A0]   ZERO    .L1     A17               ; |3586| (E) <6,49> 
||         MPY32   .M2     B4,B4,B7:B6       ; |2638| (E) <7,34> 
||         SHL     .S2X    A21,11,B4         ; |2638| (E) <7,34> 

           SHL     .S1     A5,31,A6          ; |3665| (E) <3,95> 

           SHRU    .S2X    A4,1,B4           ; |3665| (E) <3,96> 
||         SHRU    .S1     A5,1,A30          ; |3665| (E) <3,96> 
||         OR      .L1X    B4,A20,A29        ; |2638| (E) <7,36> 

           SHL     .S1     A30,A25,A3        ; |3665| (E) <3,97> 
||         SUB     .L1X    A24,B6,A7         ; |3665| (E) <4,82> 

           OR      .L2X    B4,A6,B4          ; |3665| (E) <3,98> 
||         SHL     .S1     A5,2,A8           ; |3586| (E) <5,68> 
||         MPY32   .M1     A17,A17,A5:A4     ; |3586| (E) <6,53> 

           SHRU    .S2X    A30,B17,B5        ; |3665| (E) <3,99> 
||         MPY32   .M1     A8,A8,A5:A4       ; |3586| (E) <5,69> 

           SHL     .S1     A21,2,A4          ; |3586| (E) <4,85> 
||         SHRU    .S2     B6,21,B6          ; |2638| (E) <7,40> 

           SHRU    .S2     B4,B17,B4         ; |3665| (E) <3,101> 
||         MPY32   .M1     A9,A4,A5:A4       ; |3586| (E) <4,86> 
||         MV      .L1     A28,A25           ; |3586| (E) <5,71> Split a long life
||         MV      .D1     A27,A9            ; |3586| (E) <5,71> Split a long life
||         SHL     .S1X    B7,11,A6          ; |2638| (E) <7,41> 

           OR      .L2X    B4,A3,B4          ; |3665| (E) <3,102> 
||         MV      .L1     A16,A27           ; |3586| (E) <6,57>  ^ Split a long life
||         SHL     .S1     A5,2,A3           ; |3586| (E) <6,57> 
||         OR      .D1X    A6,B6,A20         ; |2638| (E) <7,42> 

           SHL     .S1     A5,2,A4           ; |3586| (E) <5,73> 
||         SHL     .S2X    A9,31,B6          ; |3665| (E) <5,73> 
||         MPY32   .M1     A16,A3,A5:A4      ; |3586| (E) <6,58> 
||         MV      .L1     A26,A28           ; |3586| (E) <6,58> Split a long life
||         ADD     .D1     A29,A20,A6        ; |2638| (E) <7,43> 

           SHRU    .S2     B4,31,B4          ; |3665| (E) <3,104> 
||         MV      .L2     B16,B0            ; |3665| (E) <4,89> Split a long life
||         MPY32   .M1     A25,A4,A5:A4      ; |3586| (E) <5,74> 
||         MV      .D2     B6,B16            ; |3665| (E) <5,74> Split a long life
||         NORM    .L1     A6,A16            ; |3586| (E) <7,44> 

           SADD    .L2     B5,B4,B5          ; |3665| (E) <3,105> 
|| [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| (E) <4,90> 
||         SHL     .S1     A6,A16,A3         ; |3586| (E) <7,45> 

           STW     .D2T2   B5,*+B23[B18]     ; |3665| (E) <3,106> 
||         MV      .L2     B9,B17            ; |3665| (E) <4,91> Split a long life
|| [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| (E) <4,91> 
||         SHRU    .S2X    A9,1,B6           ; |3665| (E) <5,76> 
||         SHL     .S1     A6,A16,A26        ; |3586| (E) <7,46> 

           EXTU    .S2     B8,16,16,B9       ; |3665| (E) <3,107> 
||         MV      .L2     B6,B7             ; |3665| (E) <5,77> Split a long life
||         SUB     .D1     A19,A5,A3         ; |3586| (E) <6,62> 
||         SHRU    .S1     A3,23,A31         ; |3586| (E) <7,47> 
||         CMPGT   .L1     A26,0,A0          ; |3586| (E) <7,47> 

           ADD     .L2     1,B9,B8           ; |3665| (E) <4,93> 
||         SUB     .L1     A19,A5,A17        ; |3586| (E) <5,78> 
||         MPY32   .M1     A17,A3,A5:A4      ; |3586| (E) <6,63> 
|| [ A0]   LDW     .D1T1   *+A18[A31],A17    ; |3586| (E) <7,48> 

           MPY32   .M1     A8,A17,A21:A20    ; |3586| (E) <5,79> 
|| [!A0]   ZERO    .L1     A17               ; |3586| (E) <7,49> 

           SHL     .S1     A5,31,A6          ; |3665| (E) <4,95> 

           SHRU    .S2X    A4,1,B4           ; |3665| (E) <4,96> 
||         SHRU    .S1     A5,1,A8           ; |3665| (E) <4,96> 

           SHL     .S1     A8,A7,A3          ; |3665| (E) <4,97> 
||         SUB     .L1X    A24,B6,A18        ; |3665| (E) <5,82> 

           OR      .L2X    B4,A6,B4          ; |3665| (E) <4,98> 
||         SHL     .S1     A5,2,A9           ; |3586| (E) <6,68> 
||         MPY32   .M1     A17,A17,A5:A4     ; |3586| (E) <7,53> 

           SHRU    .S2X    A8,B17,B5         ; |3665| (E) <4,99> 
||         MPY32   .M1     A9,A9,A5:A4       ; |3586| (E) <6,69> 

           SHL     .S1     A21,2,A4          ; |3586| (E) <5,85> 

           SHRU    .S2     B4,B17,B4         ; |3665| (E) <4,101> 
||         MPY32   .M1     A25,A4,A5:A4      ; |3586| (E) <5,86> 
||         MV      .L1     A27,A8            ; |3586| (E) <6,71> Split a long life
||         MV      .S1     A28,A7            ; |3586| (E) <6,71> Split a long life

           OR      .L2X    B4,A3,B4          ; |3665| (E) <4,102> 
||         MV      .L1     A26,A3            ; |3586| (E) <7,57>  ^ Split a long life
||         SHL     .S1     A5,2,A6           ; |3586| (E) <7,57> 

           SHL     .S1     A5,2,A4           ; |3586| (E) <6,73> 
||         SHL     .S2X    A7,31,B6          ; |3665| (E) <6,73> 
||         MPY32   .M1     A26,A6,A5:A4      ; |3586| (E) <7,58> 
||         MV      .L1     A16,A6            ; |3586| (E) <7,58> Split a long life

           SHRU    .S2     B4,31,B4          ; |3665| (E) <4,104> 
||         MV      .L2     B16,B0            ; |3665| (E) <5,89> Split a long life
||         MPY32   .M1     A8,A4,A5:A4       ; |3586| (E) <6,74> 
||         MV      .D2     B6,B16            ; |3665| (E) <6,74> Split a long life

           SADD    .L2     B5,B4,B5          ; |3665| (E) <4,105> 
|| [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| (E) <5,90> 

           STW     .D2T2   B5,*+B23[B9]      ; |3665| (E) <4,106> 
||         MV      .L2     B7,B18            ; |3665| (E) <5,91> Split a long life
|| [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| (E) <5,91> 
||         SHRU    .S2X    A7,1,B6           ; |3665| (E) <6,76> 

           EXTU    .S2     B8,16,16,B17      ; |3665| (E) <4,107> 
||         MV      .L2     B6,B7             ; |3665| (E) <6,77> Split a long life
||         SUB     .L1     A19,A5,A7         ; |3586| (E) <7,62> 

           ADD     .L2     1,B17,B9          ; |3665| (E) <5,93> 
||         SUB     .L1     A19,A5,A7         ; |3586| (E) <6,78> 
||         MPY32   .M1     A17,A7,A5:A4      ; |3586| (E) <7,63> 

           MPY32   .M1     A9,A7,A21:A20     ; |3586| (E) <6,79> 
           SHL     .S1     A5,31,A16         ; |3665| (E) <5,95> 

           SHRU    .S2X    A4,1,B4           ; |3665| (E) <5,96> 
||         SHRU    .S1     A5,1,A17          ; |3665| (E) <5,96> 

           SHL     .S1     A17,A18,A7        ; |3665| (E) <5,97> 
||         SUB     .L1X    A24,B6,A9         ; |3665| (E) <6,82> 

           OR      .L2X    B4,A16,B4         ; |3665| (E) <5,98> 
||         SHL     .S1     A5,2,A16          ; |3586| (E) <7,68> 

           SHRU    .S2X    A17,B18,B5        ; |3665| (E) <5,99> 
||         MPY32   .M1     A16,A16,A5:A4     ; |3586| (E) <7,69> 

           SHL     .S1     A21,2,A4          ; |3586| (E) <6,85> 

           SHRU    .S2     B4,B18,B4         ; |3665| (E) <5,101> 
||         MPY32   .M1     A8,A4,A5:A4       ; |3586| (E) <6,86> 

           OR      .L2X    B4,A7,B4          ; |3665| (E) <5,102> 

           SHL     .S1     A5,2,A4           ; |3586| (E) <7,73> 
||         SHL     .S2X    A6,31,B6          ; |3665| (E) <7,73> 

           SHRU    .S2     B4,31,B4          ; |3665| (E) <5,104> 
||         MV      .L2     B16,B0            ; |3665| (E) <6,89> Split a long life
||         MPY32   .M1     A3,A4,A5:A4       ; |3586| (E) <7,74> 
||         MV      .D2     B6,B8             ; |3665| (E) <7,74> Split a long life

           SADD    .L2     B5,B4,B5          ; |3665| (E) <5,105> 
|| [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| (E) <6,90> 

           STW     .D2T2   B5,*+B23[B17]     ; |3665| (E) <5,106> 
||         MV      .L2     B7,B16            ; |3665| (E) <6,91> Split a long life
|| [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| (E) <6,91> 
||         SHRU    .S2X    A6,1,B6           ; |3665| (E) <7,76> 

           EXTU    .S2     B9,16,16,B9       ; |3665| (E) <5,107> 
||         MV      .L2     B6,B17            ; |3665| (E) <7,77> Split a long life

           ADD     .L2     1,B9,B4           ; |3665| (E) <6,93> 
||         SUB     .L1     A19,A5,A6         ; |3586| (E) <7,78> 

           EXTU    .S2     B4,16,16,B7       ; |3665| (E) <6,107> 
||         MPY32   .M1     A16,A6,A21:A20    ; |3586| (E) <7,79> 

           SHL     .S1     A5,31,A6          ; |3665| (E) <6,95> 

           SHRU    .S2X    A4,1,B4           ; |3665| (E) <6,96> 
||         SHRU    .S1     A5,1,A4           ; |3665| (E) <6,96> 

           SHL     .S1     A4,A9,A5          ; |3665| (E) <6,97> 
||         SUB     .L1X    A24,B6,A7         ; |3665| (E) <7,82> 

           OR      .L2X    B4,A6,B4          ; |3665| (E) <6,98> 
           SHRU    .S2X    A4,B16,B5         ; |3665| (E) <6,99> 
           SHL     .S1     A21,2,A4          ; |3586| (E) <7,85> 

           SHRU    .S2     B4,B16,B4         ; |3665| (E) <6,101> 
||         MPY32   .M1     A3,A4,A5:A4       ; |3586| (E) <7,86> 

           OR      .L2X    B4,A5,B4          ; |3665| (E) <6,102> 
           NOP             1

           SHRU    .S2     B4,31,B4          ; |3665| (E) <6,104> 
||         MV      .L2     B8,B0             ; |3665| (E) <7,89> Split a long life

           SADD    .L2     B5,B4,B5          ; |3665| (E) <6,105> 
|| [ B0]   MPY32   .M1     A5,A23,A5:A4      ; |3665| (E) <7,90> 

           STW     .D2T2   B5,*+B23[B9]      ; |3665| (E) <6,106> 
||         MV      .L2     B17,B5            ; |3665| (E) <7,91> Split a long life
|| [!B0]   MPY32   .M1     A5,A22,A5:A4      ; |3665| (E) <7,91> 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12
           NOP             3
           SHL     .S1     A5,31,A3          ; |3665| (E) <7,95> 
           SHRU    .S2X    A4,1,B4           ; |3665| (E) <7,96> 

           SHRU    .S1     A5,1,A4           ; |3665| (E) <7,96> 
||         OR      .L2X    B4,A3,B4          ; |3665| (E) <7,98> 

           SHL     .S1     A4,A7,A3          ; |3665| (E) <7,97> 
||         SHRU    .S2     B4,B5,B4          ; |3665| (E) <7,101> 

           SHRU    .S2X    A4,B5,B5          ; |3665| (E) <7,99> 
           OR      .L2X    B4,A3,B4          ; |3665| (E) <7,102> 
           SHRU    .S2     B4,31,B4          ; |3665| (E) <7,104> 
           SADD    .L2     B5,B4,B5          ; |3665| (E) <7,105> 
           STW     .D2T2   B5,*+B23[B7]      ; |3665| (E) <7,106> 
;** --------------------------------------------------------------------------*
$C$L10:    
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "MAGComplex_IQ.c",line 43,column 1,is_stmt
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |43| 
           ; BRANCH OCCURS {B3}              ; |43| 

$C$DW$20	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$20, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/MAGComplex_IQ.asm:$C$L8:1:1227561097")
	.dwattr $C$DW$20, DW_AT_TI_begin_file("MAGComplex_IQ.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x24)
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x2a)
$C$DW$21	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$21, DW_AT_low_pc($C$DW$L$_FFT_IQ_CalcMagnitude$14$B)
	.dwattr $C$DW$21, DW_AT_high_pc($C$DW$L$_FFT_IQ_CalcMagnitude$14$E)
	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$22, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/MAGComplex_IQ.asm:$C$L5:1:1227561097")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("MAGComplex_IQ.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x24)
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x2a)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_FFT_IQ_CalcMagnitude$9$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_FFT_IQ_CalcMagnitude$9$E)
$C$DW$24	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$24, DW_AT_low_pc($C$DW$L$_FFT_IQ_CalcMagnitude$10$B)
	.dwattr $C$DW$24, DW_AT_high_pc($C$DW$L$_FFT_IQ_CalcMagnitude$10$E)
	.dwendtag $C$DW$22


$C$DW$25	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$25, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/MAGComplex_IQ.asm:$C$L2:1:1227561097")
	.dwattr $C$DW$25, DW_AT_TI_begin_file("MAGComplex_IQ.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x1d)
$C$DW$26	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$26, DW_AT_low_pc($C$DW$L$_FFT_IQ_CalcMagnitude$3$B)
	.dwattr $C$DW$26, DW_AT_high_pc($C$DW$L$_FFT_IQ_CalcMagnitude$3$E)
	.dwendtag $C$DW$25

	.dwattr $C$DW$16, DW_AT_TI_end_file("MAGComplex_IQ.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$16

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_IQisqrtTable

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("I16_IQ")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("U16_IQ")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("I32_IQ")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("_iq")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
$C$DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$19)

$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$27	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$34

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x10)
$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$28, DW_AT_name("OutBuf")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_OutBuf")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$29, DW_AT_name("MagBuf")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_MagBuf")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$30, DW_AT_name("PhaseBuf")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_PhaseBuf")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$31, DW_AT_name("FFTSize")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_FFTSize")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$32, DW_AT_name("FFTStages")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_FFTStages")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("FFT_MAG_PHASE_IQ")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x20)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg0]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg1]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg2]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg3]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg4]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg5]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg6]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg7]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg8]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg9]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg10]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg11]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg13]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg14]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg15]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg16]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg17]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg18]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg19]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg20]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg21]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg22]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg23]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg24]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg25]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg26]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg27]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg28]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg29]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg30]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg31]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x20]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x21]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x22]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x23]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x24]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x25]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x26]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x27]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x28]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x29]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x30]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x31]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x32]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x33]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x34]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x35]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x36]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x37]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x38]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x39]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x40]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x41]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x42]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x43]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x44]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x45]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x46]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x47]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x48]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x49]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x50]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x51]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x52]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x53]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x54]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x55]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x56]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x57]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x58]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x59]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x60]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x61]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x62]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x63]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x64]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x65]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x66]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x67]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x68]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x69]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x70]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x71]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x72]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x73]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x74]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x75]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x76]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x77]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x78]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x79]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

