;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v6.1.6 *
;* Date/Time created: Mon Nov 24 15:11:41 2008                                *
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
	.dwattr $C$DW$CU, DW_AT_name("PHASEComplex_IQ.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.1.6 Copyright (c) 1996-2008 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\CCStudio_v3.3\c64plus\IQmath_v212\example\FFT_IQbenchmark\bmrksrc")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_ssub")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__ssub")
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

$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("IQdivTable")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_IQdivTable")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("IQatan2HalfPITable")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_IQatan2HalfPITable")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("IQatan2Table")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_IQatan2Table")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
;	C:\Program Files\C6000Code Generation Tools 6.1.6\bin\opt6x.exe C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/PHASEComplex_IQ.if C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/PHASEComplex_IQ.opt 
	.sect	".text"
	.clink
	.global	_FFT_IQ_CalcPhase

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("FFT_IQ_CalcPhase")
	.dwattr $C$DW$18, DW_AT_low_pc(_FFT_IQ_CalcPhase)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_FFT_IQ_CalcPhase")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_TI_begin_file("PHASEComplex_IQ.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x0b)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$18, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$18, DW_AT_TI_skeletal
	.dwpsn	file "PHASEComplex_IQ.c",line 12,column 1,is_stmt,address _FFT_IQ_CalcPhase
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fft")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_fft")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: FFT_IQ_CalcPhase                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,   *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_FFT_IQ_CalcPhase:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12

           LDHU    .D1T1   *+A4(14),A3       ; |28| 
||         ZERO    .L1     A6
||         ZERO    .S1     A8

           LDHU    .D1T2   *+A4(12),B8       ; |22| 
||         SET     .S1     A8,0x15,0x15,A8

           SET     .S1     A6,0x14,0x14,A6
           LDW     .D1T1   *A4,A26           ; |18| 
           LDW     .D1T1   *+A4(8),A20       ; |19| 

           CMPGT   .L1     A3,1,A0           ; |28| 
||         SUB     .S1     A3,1,A3           ; |28| 

   [!A0]   BNOP    .S1     $C$L4,3           ; |28| 
||         SUB     .L1X    B8,1,A4           ; |22| 
|| [ A0]   SUB     .D1     A3,1,A3
|| [ A0]   MV      .L2X    A6,B6

           EXTU    .S1     A4,16,16,A5       ; |22| 
   [ A0]   MV      .L2X    A8,B4
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
;*        $C$C122:
;*   0              MPY32   .M2     B4,B6,B5:B4       ; |2638|  ^ 
;*   1              NOP             3
;*   4              SHRU    .S2     B4,21,B4          ; |2638|  ^ 
;*   5              SHL     .S2     B5,11,B5          ; |2638|  ^ 
;*   6              OR      .L2     B5,B4,B4          ; |2638|  ^ 
;*     ||           SPBR            $C$C122
;*   7              NOP             5
;*  14              ; BRANCHCC OCCURS {$C$C122}       ; |28| 
;*----------------------------------------------------------------------------*
$C$L1:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 8
	.dwpsn	file "PHASEComplex_IQ.c",line 28,column 0,is_stmt

           SPLOOPD 7       ;14               ; (P) 
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP KERNEL
$C$DW$L$_FFT_IQ_CalcPhase$3$B:
	.dwpsn	file "PHASEComplex_IQ.c",line 29,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7
           MPY32   .M2     B4,B6,B5:B4       ; |2638| (P) <0,0>  ^ 
           NOP             3
           SHRU    .S2     B4,21,B4          ; |2638| (P) <0,4>  ^ 
           SHL     .S2     B5,11,B5          ; |2638| (P) <0,5>  ^ 
           OR      .L2     B5,B4,B4          ; |2638| (P) <0,6>  ^ 
           SPKERNEL 0,1
$C$DW$L$_FFT_IQ_CalcPhase$3$E:
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
           NOP             1
           MV      .L1X    B4,A8
;** --------------------------------------------------------------------------*
$C$L4:    
;          EXCLUSIVE CPU CYCLES: 111
           LDW     .D1T1   *A26,A3           ; |33| 
           MVKL    .S2     _IQdivTable,B24
           MVKH    .S2     _IQdivTable,B24
           ZERO    .L1     A16
           SET     .S1     A16,0x1e,0x1e,A16
           MPY32   .M1     A3,A8,A7:A6       ; |33| 
           MVK     .L2     3,B29             ; |844| 
           MVK     .L2     1,B31             ; |814| 
           ZERO    .L1     A31               ; |798| 
           SHRU    .S1     A6,21,A3          ; |33| 
           SHL     .S2X    A7,11,B4          ; |33| 
           OR      .L2X    B4,A3,B9          ; |33| 
           ABS     .L2     B9,B5             ; |705| 
           NORM    .L2     B5,B4             ; |705| 

           SHL     .S2     B5,B4,B0          ; |718| 
||         ZERO    .L2     B5                ; |722| 

           SHRU    .S2     B0,22,B6          ; |726| 
           ADDK    .S2     -254,B6           ; |726| 
   [ B0]   SHRU    .S2     B6,1,B5           ; |726| 
           LDW     .D2T2   *+B24[B5],B5      ; |762| 
           CMPLT   .L1X    B8,2,A2           ; |36| 
           SUB     .L2     B8,1,B1           ; |38| 
           MVK     .S1     32,A17            ; |805| 
           MVK     .S2     64,B30            ; |844| 
           MPY32   .M2     B5,B0,B7:B6       ; |762| 
           MVK     .L2     3,B28             ; |868| 
           MVK     .S1     0x29,A19          ; |802| 
           MV      .L2X    A16,B23           ; |775| 

           SHRU    .S2     B6,31,B6          ; |762| 
||         ADD     .L2     B7,B7,B7          ; |762| 

           OR      .L2     B7,B6,B6          ; |762| 
           MVKL    .S2     _IQatan2Table,B19
           SUB     .L1X    A16,B6,A3         ; |762| 
           MPY32   .M1X    B5,A3,A7:A6       ; |762| 
           MVK     .S1     0x40,A21          ; |868| 
           MVKH    .S2     _IQatan2Table,B19
           MVK     .S2     0xffffff02,B25
           SHRU    .S1     A6,29,A3          ; |762| 
           SHL     .S2X    A7,3,B5           ; |762| 
           CMPLT   .L1X    B9,0,A0           ; |882| 
           OR      .L1X    B5,A3,A3          ; |762| 
           MPY32   .M1X    A3,B0,A7:A6       ; |762| 
           NOP             3

           SHRU    .S1     A6,31,A4          ; |775| 
||         ADD     .L1     A7,A7,A6          ; |775| 

           OR      .L1     A6,A4,A4          ; |775| 
           SUB     .L1     A16,A4,A4         ; |775| 
           MPY32   .M1     A3,A4,A7:A6       ; |775| 
           NOP             4
           SHL     .S2X    A7,3,B5           ; |798| 
           SHRU    .S1     A6,29,A4          ; |798| 
           OR      .L1X    B5,A4,A4          ; |798| 

           MPY32   .M1     A31,A4,A7:A6      ; |798| 
||         MVK     .S1     41,A31            ; |802| 

           SUB     .L1X    A31,B4,A3         ; |802| 
           EXT     .S1     A3,16,16,A30      ; |802| 

           SHL     .S1X    B31,A30,A9        ; |814| 
||         SUB     .L1     A30,A17,A27       ; |805| 

           MV      .L1     A6,A3             ; |798| 
||         SHL     .S1     A7,2,A6           ; |798| 
||         SUB     .D1     A9,1,A28          ; |814| 
||         CMPGTU  .L2X    A30,31,B0         ; |803| 

           SHRU    .S1     A3,30,A29         ; |798| 

           SHL     .S2X    A3,2,B4           ; |814| 
||         OR      .L1     A6,A29,A3         ; |798| 
||         SUB     .S1     A17,A30,A29       ; |814| 

           AND     .L1     A3,A28,A9         ; |814| 
           SHL     .S1     A9,A29,A7         ; |814| 
           SHRU    .S1X    B4,A30,A6         ; |814| 

           OR      .L1     A6,A7,A4          ; |814| 
||         EXT     .S1     A27,16,16,A6      ; |805| 

   [ B0]   SHR     .S1     A3,A6,A4          ; |806| 
           MVK     .L1     0x1,A27           ; |32| 
           MPY32   .M2X    A4,B30,B5:B4      ; |844| 
           MV      .L1     A27,A9            ; |802| 
   [ A2]   ZERO    .L2     B0                ; nullify predicate
   [!A2]   CMPGT   .L2     B1,2,B0
           SHRU    .S2     B4,21,B6          ; |844| 
           SHL     .S1X    B5,11,A3          ; |844| 
           OR      .L1X    A3,B6,A25         ; |868| 
           OR      .L2X    A3,B6,B4          ; |844| 
           EXTU    .S2     B4,16,16,B4       ; |844| 
           MPYLI   .M2     B29,B4,B5:B4      ; |844| 
           EXTU    .S1     A25,16,16,A3      ; |868| 
           MVKL    .S1     _IQatan2HalfPITable+84,A25
           MVKH    .S1     _IQatan2HalfPITable+84,A25
           ADD     .L2     1,B4,B4           ; |844| 
           SHL     .S2     B4,2,B4           ; |844| 
           LDNDW   .D2T2   *+B4(B19),B5:B4   ; |844| 
           MPYLI   .M2X    B28,A3,B7:B6      ; |868| 
           NOP             3
           MPY32   .M2X    A4,B5,B17:B16     ; |868| 
           LDW     .D2T2   *+B19[B6],B6      ; |868| 
           NOP             3
           SHL     .S1X    B17,11,A6         ; |868| 
           SHRU    .S2     B16,21,B5         ; |868| 

           OR      .L2X    A6,B5,B5          ; |868| 
||         LDW     .D1T1   *A25,A6           ; |879| 

           ADD     .L2     B5,B4,B4          ; |868| 
           MPY32   .M2X    A4,B4,B5:B4       ; |868| 
           NOP             3
           MV      .L1     A6,A4             ; |880| 
           SHL     .S1X    B5,11,A3          ; |868| 
           SHRU    .S2     B4,21,B4          ; |868| 

           OR      .L2X    A3,B4,B4          ; |868| 
||         SSUB    .L1     0,A4,A3           ; |880| 

   [!A0]   ADD     .L1     A3,A6,A6          ; |887| 
||         ADD     .L2     B4,B6,B4          ; |868| 

           SHR     .S2     B4,9,B5           ; |868| 
|| [ A2]   B       .S1     $C$L10            ; |36| 

   [ B0]   B       .S1     $C$L6
||         NEG     .L2     B5,B4             ; |896| 

   [!A0]   MV      .L2     B5,B4             ; |884| 
   [ A0]   SUB     .L1     A4,A3,A6          ; |899| 
           ADD     .L1X    B4,A6,A6          ; |36| 
           STW     .D1T1   A6,*A20           ; |914| 
           ; BRANCHCC OCCURS {$C$L10}        ; |36| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
   [!B0]   LDW     .D1T1   *+A26[A27],A16    ; |40| 
           ; BRANCHCC OCCURS {$C$L6} {0} 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 4
           LDW     .D1T2   *+A26[A5],B4      ; |2638| 
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 36,column 0,is_stmt
           NOP             3
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L5
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_FFT_IQ_CalcPhase$9$B:
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 37,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 108
           MPY32   .M1     A16,A8,A17:A16    ; |40| 
           MPY32   .M1X    B4,A8,A7:A6       ; |2638| 
           MVK     .S1     32,A1             ; |814| 
           MVK     .L1     1,A29             ; |814| 
           SHRU    .S1     A16,21,A16        ; |40| 

           SHRU    .S1     A6,21,A6          ; |2638| 
||         SHL     .S2X    A17,11,B4         ; |40| 

           SHL     .S1     A7,11,A7          ; |2638| 
||         OR      .L2X    B4,A16,B18        ; |40| 

           OR      .L1     A7,A6,A31         ; |2638| 
||         ABS     .L2     B18,B17           ; |697| 

           ABS     .L1     A31,A17           ; |698| 
           MV      .L2     B17,B4            ; |702| 
           CMPLT   .L2X    B17,A17,B2        ; |705| 
   [ B2]   MV      .L2X    A17,B4            ; |708| 
           NORM    .L2     B4,B6             ; |760| 
           SHL     .S2     B4,B6,B0          ; |760| 
           SHRU    .S2     B0,22,B4          ; |760| 
           ADD     .L2     B25,B4,B4         ; |760| 

   [ B0]   SHRU    .S2     B4,1,B4           ; |760| 
|| [!B0]   ZERO    .L2     B4                ; |760| 

           LDW     .D2T2   *+B24[B4],B7      ; |760| 
           SUB     .L2     B1,1,B1           ; |36| 
           SUB     .L1X    A19,B6,A30        ; |802| 
           EXT     .S1     A30,16,16,A24     ; |802| 
           SUBAW   .D1     A24,8,A25         ; |805| 
           MPY32   .M2     B7,B0,B5:B4       ; |760| 
           SUB     .L1     A1,A24,A0         ; |814| 
           SHL     .S1     A29,A24,A28       ; |814| 
           SUB     .L1     A28,1,A2          ; |814| 

           SHRU    .S2     B4,31,B4          ; |760| 
||         ADD     .L2     B5,B5,B5          ; |760| 

           OR      .L2     B5,B4,B4          ; |760| 
           SUB     .L2     B23,B4,B4         ; |760| 
           MPY32   .M2     B7,B4,B5:B4       ; |760| 
           SUB     .L1     A5,1,A5           ; |2638| 
           MVK     .L2     3,B31             ; |825| 
           EXTU    .S1     A5,16,16,A5       ; |2638| 
           SHRU    .S2     B4,29,B4          ; |760| 
           SHL     .S1X    B5,3,A6           ; |760| 
           OR      .L1X    A6,B4,A18         ; |760| 
           MPY32   .M1X    A18,B0,A7:A6      ; |798| 
           CMPGTU  .L2X    A24,31,B0         ; |803| 
           ADD     .L1     1,A27,A16         ; |38| 
           EXTU    .S1     A16,16,16,A27     ; |38| 

           SHRU    .S1     A6,31,A6          ; |798| 
||         ADD     .L1     A7,A7,A7          ; |798| 

           OR      .L1     A7,A6,A6          ; |798| 
           SUB     .L1X    B23,A6,A6         ; |798| 
           MPY32   .M1     A18,A6,A23:A22    ; |798| 
           MV      .L1     A17,A6            ; |701| 
   [ B2]   MV      .L1X    B17,A6            ; |702| 
   [ B1]   LDW     .D1T1   *+A26[A27],A16    ; |40| 
           SHRU    .S1     A22,29,A7         ; |798| 
           SHL     .S2X    A23,3,B4          ; |798| 
           CMPLT   .L2X    A31,0,B2          ; |911| 
           OR      .L1X    B4,A7,A7          ; |798| 
           MPY32   .M1     A6,A7,A7:A6       ; |798| 
           ADD     .L1     1,A9,A23          ; |914| 
           NOP             2
           SHRU    .S1     A6,30,A18         ; |798| 

           SHL     .S2X    A7,2,B4           ; |798| 
||         SHL     .S1     A6,2,A6           ; |814| 

           OR      .L2X    B4,A18,B5         ; |798| 
||         EXT     .S1     A25,16,16,A18     ; |805| 

           AND     .L2X    B5,A2,B4          ; |814| 
||         SHRU    .S1     A6,A24,A6         ; |814| 

   [ B0]   SHR     .S1X    B5,A18,A18        ; |805| 
           SHL     .S1X    B4,A0,A7          ; |814| 
   [!B0]   OR      .L1     A6,A7,A18         ; |814| 
           MPY32   .M1     A18,A21,A7:A6     ; |825| 
           CMPLT   .L1X    B18,0,A2          ; |882| 
   [ A2]   ZERO    .L1     A0                ; |884| 
   [!A2]   ZERO    .L2     B0                ; |896| 
           SHRU    .S1     A6,21,A6          ; |825| 
           SHL     .S2X    A7,11,B4          ; |825| 
           OR      .L2X    B4,A6,B4          ; |825| 
           EXTU    .S2     B4,16,16,B5       ; |825| 
           MPYLI   .M2     B31,B5,B7:B6      ; |825| 
   [ A2]   CMPLT   .L2X    B17,A17,B0        ; |896| 
   [!A2]   CMPLT   .L1X    B17,A17,A0        ; |884| 
           MV      .L1X    B0,A1             ; |884| 
           ADD     .L2     1,B6,B4           ; |825| 
           SHL     .S2     B4,2,B4           ; |825| 
           LDNDW   .D2T2   *+B4(B19),B9:B8   ; |825| 
   [!A2]   MVK     .L1     0x1,A1            ; |903| 
           LDW     .D2T2   *+B19[B6],B30     ; |868| 
           NOP             2
           MPY32   .M2X    A18,B9,B5:B4      ; |868| 
           NOP             4
           SHL     .S1X    B5,11,A6          ; |868| 
           SHRU    .S2     B4,21,B4          ; |868| 
           OR      .L2X    A6,B4,B4          ; |868| 
           ADD     .L2     B4,B8,B4          ; |868| 
           MPY32   .M2X    A18,B4,B5:B4      ; |868| 
           MV      .L1     A4,A6             ; |879| 
   [!A1]   SUB     .L1     A4,A3,A6          ; |899| 
           NOP             2
           SHL     .S1X    B5,11,A7          ; |868| 
           SHRU    .S2     B4,21,B4          ; |868| 
           OR      .L2X    A7,B4,B4          ; |868| 
           ADD     .L2     B4,B30,B4         ; |868| 
           SHR     .S2     B4,9,B4           ; |868| 
   [ B0]   MV      .L2     B4,B16            ; |903| 
   [!A1]   NEG     .L2     B4,B16            ; |898| 

   [ A0]   NEG     .L2     B4,B16            ; |891| 
|| [ A2]   MVK     .L1     0x1,A0            ; |891| 
|| [ B1]   B       .S1     $C$L5             ; |36| 

$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

   [!B1]   RETNOP  .S2     B3,1              ; |45| 
|| [!A0]   MV      .L2     B4,B16            ; |886| 
|| [ B1]   LDW     .D1T2   *+A26[A5],B4      ; |2638| 
|| [!A0]   ADD     .L1     A3,A6,A6          ; |887| 

           ADD     .L1X    B16,A6,A6         ; |36| 
   [ B2]   SSUB    .L1     0,A6,A6           ; |911| 
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 42,column 0,is_stmt

           STW     .D1T1   A6,*+A20[A9]      ; |911| 
||         EXTU    .S1     A23,16,16,A9      ; |914| 

           ; BRANCHCC OCCURS {$C$L5}         ; |36| 
$C$DW$L$_FFT_IQ_CalcPhase$9$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
           ; BRANCH OCCURS {B3}              ; |45| 
;** --------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D1T2   *+A26[A27],B4     ; |40| (P) <0,1> 
           LDW     .D1T1   *+A26[A5],A6      ; |2638| (P) <0,0> 
           MV      .L2X    A8,B22
           NOP             2
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 36
;*      Loop opening brace source line   : 37
;*      Loop closing brace source line   : 42
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65534                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 35
;*      Unpartitioned Resource Bound     : 22
;*      Partitioned Resource Bound(*)    : 25
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     5        5     
;*      .S units                    19       18     
;*      .D units                     5        1     
;*      .M units                    10        1     
;*      .X cross paths              23       16     
;*      .T address paths             4        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        1     (.L or .S unit)
;*      Addition ops (.LSD)         45       29     (.L or .S or .D unit)
;*      Bound(.L .S .LS)            13       12     
;*      Bound(.L .S .D .LS .LSD)    25*      18     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 35 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 23/26
;*                   Max Cond Regs Live :  3/6 
;*         ii = 35 Did not find schedule
;*         ii = 36 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 24/26
;*                   Max Cond Regs Live :  3/5 
;*         ii = 36 Did not find schedule
;*         ii = 37 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 22/27
;*                   Max Cond Regs Live :  3/6 
;*         ii = 37 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 24/30
;*                   Max Cond Regs Live :  3/7 
;*         ii = 37 Did not find schedule
;*         ii = 38 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 21/25
;*                   Max Cond Regs Live :  2/6 
;*         ii = 38 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 25/32
;*                   Max Cond Regs Live :  3/7 
;*         ii = 38 Did not find schedule
;*         ii = 39 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 22/26
;*                   Max Cond Regs Live :  3/6 
;*         ii = 39 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 26/31
;*                   Max Cond Regs Live :  3/7 
;*         ii = 39 Did not find schedule
;*         ii = 41 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 21/26
;*                   Max Cond Regs Live :  2/6 
;*         ii = 41 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 23/20
;*                   Max Cond Regs Live :  2/5 
;*         ii = 41 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 26/28
;*                   Max Cond Regs Live :  3/7 
;*         ii = 41 Did not find schedule
;*         ii = 43 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 21/26
;*                   Max Cond Regs Live :  2/7 
;*         ii = 43 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 24/20
;*                   Max Cond Regs Live :  2/5 
;*         ii = 43 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 26/28
;*                   Max Cond Regs Live :  3/7 
;*         ii = 43 Did not find schedule
;*         ii = 46 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 21/26
;*                   Max Cond Regs Live :  3/7 
;*         ii = 46 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 23/21
;*                   Max Cond Regs Live :  2/5 
;*         ii = 46 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 26/27
;*                   Max Cond Regs Live :  3/7 
;*         ii = 46 Did not find schedule
;*         ii = 49 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/25
;*                   Max Cond Regs Live :  2/7 
;*         ii = 49 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 22/21
;*                   Max Cond Regs Live :  2/6 
;*         ii = 49 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 23/27
;*                   Max Cond Regs Live :  3/7 
;*         ii = 49 Did not find schedule
;*         ii = 53 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/24
;*                   Max Cond Regs Live :  2/5 
;*         ii = 53 Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: | ******         ****  ******    | *     **       ********* *     |
;*       1: | ******         ****  ******    | *     **       ********* *     |
;*       2: | ******         ****  ******    | *     **       ********* *     |
;*       3: | ******         ****  ******    | *     **       ********* *     |
;*       4: | *******        ****  ******    | *     **       ********* *     |
;*       5: | *******        ****  ******    | *     **       ********* *     |
;*       6: | ******         ****  ******    | *  *  **       ********* *     |
;*       7: | ******         ****  ******    | *  *  **       ********* *     |
;*       8: | ****** *       ****  ******    | *     **       ********* *     |
;*       9: | ********       ****  ******    | *     **       ********* *     |
;*      10: | *****  *       ****  ******    | *     **       ********* *     |
;*      11: | *****  *       ****  ******    | *     **       ********* *     |
;*      12: | ********       ****  ******    | *     **       ********* *     |
;*      13: | ********       ***** ******    | *     **       ********* *     |
;*      14: | ********       ***** ******    | *     **       ********* *     |
;*      15: | ********       ***** ******    | *     **       ********* *     |
;*      16: | *****          ***** ******    | *     **       ********* *     |
;*      17: | *****          ***** ******    | *     **       ********* *     |
;*      18: | *****          ***** ******    | *     **       ********* *     |
;*      19: | *****  **      ***** ******    | *     **       ********* *     |
;*      20: | *********      ***** ******    | *     **       ********* *     |
;*      21: | ****** *       ***** ******    | *   * **       ********* *     |
;*      22: | **** **        ***** ******    | *  ** **       ********* *     |
;*      23: | **** **        ***** *****     | *  ** **       ********* *     |
;*      24: | **** ****      ***** *****     |    ** **       ********* *     |
;*      25: | *********      ***** *****     |     * **       ********* *     |
;*      26: | ********       ***** ******    |    *  **       ********* *     |
;*      27: | *********      ************    |    *  **       ********* *     |
;*      28: | *********      ************    |       **       ********* *     |
;*      29: | ********       ***** ******    |       **       ********* *     |
;*      30: | ********       ***** ******    |       **       ********* *     |
;*      31: | ******         ***** ******    |    *  **       ********* *     |
;*      32: | *****          ***** ******    |       **       ********* *     |
;*      33: | *******        ****  ******    |    *  **        ******** *     |
;*      34: | ***** ***      ***** ******    |    *  **        ******** *     |
;*      35: |* ********      ***** *******   |    *  **        ***********    |
;*      36: |* ********      * ***********   |*   * ***        ******* ***    |
;*      37: |* ********      * ** *******    |*   ******       ******* ***    |
;*      38: |* ******        * ** *******    |*   ******       ******* ***    |
;*      39: |* **** *        * * ********    |*   ******      ********   *    |
;*      40: |* *****         * * *********   |* *  ****       ********   *    |
;*      41: |  ****           ************   |* *   ***       *********  *    |
;*      42: |  *******       *************   |* * *****       *********  *    |
;*      43: | *********      ***** *******   |*** * ****      *********       |
;*      44: | *** *****      *************   |*** ******      *********       |
;*      45: | *** *****      *************   |*** ******      *********       |
;*      46: | *** *****      *************   |*** ******      *********       |
;*      47: | *** *****      ***** *******   |**  ******      *********       |
;*      48: | ***** * *      ***** *******   |**  * ****      ********* *     |
;*      49: |******   *      ****  ******    |**  ** **       ********* *     |
;*      50: |*** ***  *      ****  ******    |**  ** **       ********* *     |
;*      51: | ** ***         ****  ******    | *  *  **       ********* *     |
;*      52: | ** ***         ****  ******    | *  ** **       ***** *** *     |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Redundant loop generated
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 3
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 81 + trip_cnt * 53        
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C86:
;*   0              LDW     .D1T1   *+A26[A5],A6      ; |2638| 
;*   1              LDW     .D1T2   *+A26[A27],B4     ; |40| 
;*   2              NOP             4
;*   6              MPY32   .M1X    A6,B22,A7:A6      ; |2638| 
;*     ||           MPY32   .M2     B4,B22,B25:B24    ; |40| 
;*   7              NOP             3
;*  10              SHRU    .S2     B24,21,B6         ; |40| 
;*  11              SHRU    .S2X    A6,21,B9          ; |2638| 
;*  12              SHL     .S2X    A7,11,B5          ; |2638| 
;*  13              SHL     .S2     B25,11,B23        ; |40| 
;*  14              MV      .L1X    B9,A6             ; |2638| Define a twin register
;*     ||           OR      .D2     B23,B6,B23        ; |40| 
;*  15              OR      .D1X    B5,A6,A19         ; |2638| 
;*     ||           ABS     .L2     B23,B24           ; |697| 
;*  16              ABS     .L1     A19,A16           ; |698| 
;*  17              CMPLT   .L1X    B24,A16,A1        ; |705| 
;*  18              MV      .D1X    B24,A7            ; |702| Define a twin register
;*  19              NOP             1
;*  20      [ A1]   MV      .D1     A16,A7            ; |708| 
;*  21              NOP             1
;*  22              NORM    .L2X    A7,B26            ; |760| 
;*  23              SHL     .S2X    A7,B26,B1         ; |760| 
;*  24              NOP             2
;*  26              SHRU    .S1X    B1,22,A6          ; |760| 
;*  27              NOP             2
;*  29              ADD     .L1     A24,A6,A6         ; |760| 
;*  30      [ B1]   SHRU    .S1     A6,1,A6           ; |760| 
;*     ||   [!B1]   ZERO    .L1     A6                ; |760| Define a twin register
;*  31              LDW     .D1T1   *+A23[A6],A8      ; |760| 
;*  32              NOP             4
;*  36              MPY32   .M1X    A8,B1,A7:A6       ; |760| 
;*  37              NOP             3
;*  40              SHRU    .S1     A6,31,A6          ; |760| 
;*     ||           ADD     .L1     A7,A7,A7          ; |760| 
;*  41              OR      .L1     A7,A6,A6          ; |760| 
;*  42              SUB     .L1     A22,A6,A6         ; |760| 
;*  43              MPY32   .M1     A8,A6,A9:A8       ; |760| 
;*  44              NOP             4
;*  48              SHL     .S2X    A9,3,B5           ; |760| 
;*  49              SHRU    .S1     A8,29,A7          ; |760| 
;*     ||           SUB     .L2X    A5,1,B4           ; |2638| 
;*  50              OR      .L1X    B5,A7,A7          ; |760| 
;*     ||           EXTU    .S2     B4,16,16,B4       ; |2638| 
;*     ||           ADD     .L2X    1,A27,B5          ; |38| 
;*  51              MPY32   .M1X    A7,B1,A9:A8       ; |798| 
;*     ||           EXTU    .S2     B5,16,16,B5       ; |38| 
;*  52              MV      .L1X    B4,A5             ; |2638| Define a twin register
;*  53              MV      .L1X    B5,A27            ; |38| Define a twin register
;*  54              NOP             1
;*  55              SHRU    .S1     A8,31,A8          ; |798| 
;*     ||           ADD     .L1     A9,A9,A9          ; |798| 
;*  56              OR      .L1     A9,A8,A6          ; |798| 
;*  57              SUB     .L1     A22,A6,A8         ; |798| 
;*  58              MPY32   .M1     A7,A8,A9:A8       ; |798| 
;*  59              NOP             3
;*  62              MV      .D2     B24,B8            ; |697| Split a long life
;*     ||           MV      .L1     A1,A0             ; |705| Split a long life
;*  63              MV      .D2X    A16,B4            ; |701| 
;*     ||           SHRU    .S1     A8,29,A8          ; |798| 
;*  64      [ A0]   MV      .L2     B8,B4             ; |702| 
;*     ||           SHL     .S1     A9,3,A6           ; |798| 
;*  65              OR      .S1     A6,A8,A6          ; |798| 
;*  66              MV      .S1     A19,A18           ; |2638| Split a long life
;*     ||           MV      .L2     B23,B16           ; |40| Split a long life
;*     ||           MPY32   .M1X    B4,A6,A7:A6       ; |798| 
;*     ||           SUB     .D2     B19,B26,B4        ; |802| 
;*  67              EXT     .S2     B4,16,16,B6       ; |802| 
;*  68              MV      .L1     A16,A17           ; |698| Split a long life
;*  69              MV      .D1X    B6,A8             ; |802| Define a twin register
;*     ||           MVK     .S2     32,B4             ; |814| 
;*     ||           MVK     .L2     1,B5              ; |814| 
;*  70              SHRU    .S1     A6,30,A9          ; |798| 
;*     ||           SUB     .D2     B4,B6,B9          ; |814| 
;*     ||           SHL     .S2     B5,B6,B4          ; |814| 
;*  71              SHL     .S1     A7,2,A21          ; |798| 
;*     ||           SUB     .L2     B4,1,B4           ; |814| 
;*  72              OR      .D1     A21,A9,A9         ; |798| 
;*     ||           MV      .L1X    B9,A21            ; |814| Define a twin register
;*     ||           SHL     .S1     A6,2,A6           ; |814| 
;*     ||           MVK     .S2     32,B9             ; |805| 
;*  73              AND     .L1X    A9,B4,A8          ; |814| 
;*     ||           SHRU    .S1     A6,A8,A6          ; |814| 
;*  74              CMPGTU  .L2     B6,31,B0          ; |803| 
;*     ||           SHL     .S1     A8,A21,A8         ; |814| 
;*  75      [!B0]   OR      .L1     A6,A8,A3          ; |814|  ^ 
;*  76              SUB     .L2     B6,B9,B5          ; |805| 
;*  77              MV      .L2X    A3,B4             ; |814|  ^ Define a twin register
;*     ||           EXT     .S2     B5,16,16,B5       ; |805| 
;*  78      [ B0]   SHR     .S2X    A9,B5,B4          ; |805|  ^ 
;*  79              NOP             1
;*  80              MV      .L1X    B4,A3             ; |805|  ^ Define a twin register
;*  81              MPY32   .M1X    A3,B7,A7:A6       ; |825|  ^ 
;*  82              NOP             4
;*  86              SHL     .S2X    A7,11,B4          ; |825|  ^ 
;*  87              SHRU    .S1     A6,21,A6          ; |825| 
;*  88              OR      .L1X    B4,A6,A6          ; |825|  ^ 
;*  89              EXTU    .S1     A6,16,16,A6       ; |825|  ^ 
;*     ||           MVK     .L1     3,A7              ; |825| Define a twin register
;*  90              MPYLI   .M1     A7,A6,A21:A20     ; |825|  ^ 
;*  91              NOP             3
;*  94              ADD     .S1     1,A20,A7          ; |825|  ^ 
;*  95              SHL     .S1     A7,2,A7           ; |825|  ^ 
;*  96              LDNDW   .D1T1   *+A7(A25),A7:A6   ; |825|  ^ 
;*  97              NOP             4
;*  101              MPY32   .M1     A3,A7,A9:A8       ; |868|  ^ 
;*  102              NOP             4
;*  106              SHL     .S2X    A9,11,B4          ; |868|  ^ 
;*  107              SHRU    .S1     A8,21,A21         ; |868| 
;*  108              OR      .D1X    B4,A21,A21        ; |868|  ^ 
;*  109              ADD     .S1     A21,A6,A8         ; |868|  ^ 
;*  110              MPY32   .M1     A3,A8,A7:A6       ; |868|  ^ 
;*  111              NOP             2
;*  113              MV      .L2     B16,B4            ; |40| Split a long life
;*     ||           LDW     .D1T2   *+A25[A20],B5     ; |868| 
;*  114              SHRU    .S1     A6,21,A20         ; |868| 
;*     ||           CMPLT   .L2     B4,0,B4           ; |882| 
;*  115              MV      .L2     B8,B27            ; |697| Split a long life
;*     ||           SHL     .S1     A7,11,A28         ; |868| 
;*  116              MV      .L1     A17,A21           ; |698| Split a long life
;*     ||           MV      .L2     B4,B0             ; |882| Split a long life
;*  117              OR      .D1     A28,A20,A9        ; |868| 
;*     ||   [ B0]   CMPLT   .L1X    B27,A21,A0        ; |896| 
;*  118              ADD     .D1X    A9,B5,A7          ; |868| 
;*     ||   [!B0]   ZERO    .L1     A0                ; |896| Define a twin register
;*  119              MV      .L1     A18,A20           ; |2638| Split a long life
;*  120              SHR     .S1     A7,9,A28          ; |868| 
;*     ||           MV      .L2X    A0,B2             ; |903| 
;*  121      [ A0]   MV      .S1     A28,A4            ; |903| 
;*     ||   [!B0]   MVK     .S2     0x1,B2            ; |903| 
;*  122      [!B2]   NEG     .S1     A28,A4            ; |898| 
;*  123      [!B0]   CMPLT   .L2X    B27,A21,B1        ; |884| 
;*  124              MV      .D2X    A4,B5             ; |898| Define a twin register
;*     ||   [ B0]   ZERO    .S2     B1                ; |884| 
;*  125      [ B1]   NEG     .L2X    A28,B5            ; |891| 
;*  126              MV      .L2     B18,B4            ; |879| 
;*  127      [!B2]   SUB     .D2     B18,B17,B4        ; |899| 
;*     ||   [ B0]   MVK     .S2     0x1,B1            ; |891| 
;*     ||           CMPLT   .L1     A20,0,A20         ; |911| 
;*     ||   [ A2]   SUB     .D1     A2,1,A2           ; |36| 
;*  128              MV      .D1X    B5,A4             ; |891| Define a twin register
;*     ||   [!B1]   ADD     .D2     B17,B4,B4         ; |887| 
;*     ||   [ A2]   B       .S2     $C$C86            ; |36| 
;*  129      [!B1]   MV      .S1     A28,A4            ; |886| 
;*     ||           MV      .L1     A20,A0            ; |911| Split a long life
;*  130              ADD     .S1X    A4,B4,A6          ; |36| 
;*  131      [ A0]   SSUB    .L1     0,A6,A6           ; |911| 
;*  132              STW     .D2T1   A6,*+B20[B21]     ; |911| 
;*     ||           ADD     .L2     1,B21,B5          ; |914| 
;*  133              EXTU    .S2     B5,16,16,B21      ; |914| 
;*  134              ; BRANCHCC OCCURS {$C$C86}        ; |36| 
;*----------------------------------------------------------------------------*
$C$L7:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 70
           MPY32   .M2     B4,B22,B25:B24    ; |40| (P) <0,6> 
           MPY32   .M1X    A6,B22,A7:A6      ; |2638| (P) <0,6> 
           MV      .L1X    B24,A23
           MV      .L1X    B25,A24
           SHRU    .S2     B24,21,B6         ; |40| (P) <0,10> 
           SHL     .S2     B25,11,B4         ; |40| (P) <0,13> 
           SHRU    .S2X    A6,21,B5          ; |2638| (P) <0,11> 

           OR      .L2     B4,B6,B6          ; |40| (P) <0,14> 
||         SHL     .S2X    A7,11,B4          ; |2638| (P) <0,12> 

           ABS     .L2     B6,B24            ; |697| (P) <0,15> 
||         MV      .L1X    B5,A6             ; |2638| (P) <0,14> Define a twin register

           OR      .L1X    B4,A6,A17         ; |2638| (P) <0,15> 

           MV      .S1X    B24,A7            ; |702| (P) <0,18> Define a twin register
||         ABS     .L1     A17,A16           ; |698| (P) <0,16> 

           CMPLT   .L1X    B24,A16,A1        ; |705| (P) <0,17> 
   [ A1]   MV      .L1     A16,A7            ; |708| (P) <0,20> 
           NOP             1
           NORM    .L2X    A7,B5             ; |760| (P) <0,22> 

           SUB     .L1X    B1,2,A2
||         SHL     .S2X    A7,B5,B1          ; |760| (P) <0,23> 

           NOP             1
           SHRU    .S1X    B1,22,A6          ; |760| (P) <0,26> 
           ADD     .L1     A24,A6,A6         ; |760| (P) <0,29> 

   [!B1]   ZERO    .L1     A6                ; |760| (P) <0,30> Define a twin register
|| [ B1]   SHRU    .S1     A6,1,A6           ; |760| (P) <0,30> 

           LDW     .D1T1   *+A23[A6],A8      ; |760| (P) <0,31> 
           NOP             4
           MPY32   .M1X    A8,B1,A7:A6       ; |760| (P) <0,36> 
           NOP             3

           ADD     .L1     A7,A7,A7          ; |760| (P) <0,40> 
||         SHRU    .S1     A6,31,A6          ; |760| (P) <0,40> 

           MV      .L1X    B23,A22
||         OR      .S1     A7,A6,A6          ; |760| (P) <0,41> 

           SUB     .L1     A22,A6,A6         ; |760| (P) <0,42> 
           MPY32   .M1     A8,A6,A9:A8       ; |760| (P) <0,43> 
           NOP             2
           MV      .L2X    A9,B21
           NOP             1
           SHL     .S2X    A9,3,B4           ; |760| (P) <0,48> 

           SUB     .L2X    A5,1,B31          ; |2638| (P) <0,49> 
||         SHRU    .S1     A8,29,A7          ; |760| (P) <0,49> 

           ADD     .L2X    1,A27,B30         ; |38| (P) <0,50> 
||         EXTU    .S2     B31,16,16,B4      ; |2638| (P) <0,50> 
||         OR      .L1X    B4,A7,A7          ; |760| (P) <0,50> 

           EXTU    .S2     B30,16,16,B7      ; |38| (P) <0,51> 
||         MPY32   .M1X    A7,B1,A9:A8       ; |798| (P) <0,51> 

           MV      .L1X    B4,A5             ; |2638| (P) <0,52> Define a twin register

           MV      .L1X    B7,A27            ; |38| (P) <0,53> Define a twin register
||         LDW     .D1T1   *+A26[A5],A6      ; |2638| (P) <1,0> 

           LDW     .D1T2   *+A26[A27],B4     ; |40| (P) <1,1> 

           ADD     .L1     A9,A9,A9          ; |798| (P) <0,55> 
||         SHRU    .S1     A8,31,A8          ; |798| (P) <0,55> 

           OR      .L1     A9,A8,A6          ; |798| (P) <0,56> 
           SUB     .L1     A22,A6,A8         ; |798| (P) <0,57> 
           MPY32   .M1     A7,A8,A9:A8       ; |798| (P) <0,58> 

           MPY32   .M1X    A6,B22,A7:A6      ; |2638| (P) <1,6> 
||         MPY32   .M2     B4,B22,B25:B24    ; |40| (P) <1,6> 

           NOP             2

           MV      .L1X    B19,A25
||         MV      .L2X    A19,B19
||         MV      .S2     B24,B8            ; |697| (P) <0,62> Split a long life
||         MV      .S1     A1,A18            ; |705| (P) <0,62> Split a long life

           MV      .L2X    A16,B4            ; |701| (P) <0,63> 
||         MV      .L1     A18,A0            ; |705| (P) <0,63> Split a long life
||         SHRU    .S1     A8,29,A8          ; |798| (P) <0,63> 
||         SHRU    .S2     B24,21,B9         ; |40| (P) <1,10> 

   [ A0]   MV      .L2     B8,B4             ; |702| (P) <0,64> 
||         SHL     .S1     A9,3,A6           ; |798| (P) <0,64> 
||         SHRU    .S2X    A6,21,B7          ; |2638| (P) <1,11> 

           OR      .L1     A6,A8,A6          ; |798| (P) <0,65> 
||         SHL     .S2X    A7,11,B17         ; |2638| (P) <1,12> 

           MV      .L2     B6,B16            ; |40| (P) <0,66> Split a long life
||         SUB     .D2     B19,B5,B5         ; |802| (P) <0,66> 
||         MV      .L1     A17,A18           ; |2638| (P) <0,66> Split a long life
||         MPY32   .M1X    B4,A6,A7:A6       ; |798| (P) <0,66> 
||         SHL     .S2     B25,11,B4         ; |40| (P) <1,13> 

           EXT     .S2     B5,16,16,B5       ; |802| (P) <0,67> 
||         OR      .L2     B4,B9,B23         ; |40| (P) <1,14> 
||         MV      .L1X    B7,A6             ; |2638| (P) <1,14> Define a twin register

           MV      .L1     A16,A17           ; |698| (P) <0,68> Split a long life
||         ABS     .L2     B23,B24           ; |697| (P) <1,15> 
||         OR      .S1X    B17,A6,A19        ; |2638| (P) <1,15> 

           MVK     .L2     1,B4              ; |814| (P) <0,69> 
||         MVK     .S2     32,B6             ; |814| (P) <0,69> 
||         MV      .S1X    B5,A8             ; |802| (P) <0,69> Define a twin register
||         ABS     .L1     A19,A16           ; |698| (P) <1,16> 

           SHL     .S2     B4,B5,B6          ; |814| (P) <0,70> 
||         SHRU    .S1     A6,30,A9          ; |798| (P) <0,70> 
||         SUB     .L2     B6,B5,B4          ; |814| (P) <0,70> 
||         CMPLT   .L1X    B24,A16,A1        ; |705| (P) <1,17> 

           SUB     .L2     B6,1,B6           ; |814| (P) <0,71> 
||         SHL     .S1     A7,2,A28          ; |798| (P) <0,71> 
||         MV      .L1X    B24,A7            ; |702| (P) <1,18> Define a twin register

           MVK     .S2     32,B4             ; |805| (P) <0,72> 
||         MV      .L1X    B4,A28            ; |814| (P) <0,72> Define a twin register
||         OR      .D1     A28,A9,A9         ; |798| (P) <0,72> 
||         SHL     .S1     A6,2,A6           ; |814| (P) <0,72> 

           MV      .L2X    A4,B18
||         SHRU    .S1     A6,A8,A6          ; |814| (P) <0,73> 
||         AND     .L1X    A9,B6,A8          ; |814| (P) <0,73> 
|| [ A1]   MV      .D1     A16,A7            ; |708| (P) <1,20> 

           MV      .S2X    A3,B17
||         CMPGTU  .L2     B5,31,B0          ; |803| (P) <0,74> 
||         SHL     .S1     A8,A28,A8         ; |814| (P) <0,74> 

   [!B0]   OR      .L1     A6,A8,A3          ; |814| (P) <0,75>  ^ 
||         NORM    .L2X    A7,B26            ; |760| (P) <1,22> 

           SUB     .L2     B5,B4,B4          ; |805| (P) <0,76> 
||         SHL     .S2X    A7,B26,B1         ; |760| (P) <1,23> 

           EXT     .S2     B4,16,16,B5       ; |805| (P) <0,77> 
||         MV      .L2X    A3,B4             ; |814| (P) <0,77>  ^ Define a twin register

   [ B0]   SHR     .S2X    A9,B5,B4          ; |805| (P) <0,78>  ^ 

           MV      .L2X    A21,B7
||         SHRU    .S1X    B1,22,A6          ; |760| (P) <1,26> 

	.dwpsn	file "../../../include/IQmath_inline_all.h",line 36,column 0,is_stmt

           MV      .L2X    A20,B20
||         MV      .L1X    B4,A3             ; |805| (P) <0,80>  ^ Define a twin register

;** --------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP KERNEL
$C$DW$L$_FFT_IQ_CalcPhase$13$B:
	.dwpsn	file "../../../include/IQmath_inline_all.h",line 37,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 53
           MPY32   .M1X    A3,B7,A7:A6       ; |825| <0,81>  ^ 
           ADD     .L1     A24,A6,A6         ; |760| <1,29> 

   [!B1]   ZERO    .L1     A6                ; |760| <1,30> Define a twin register
|| [ B1]   SHRU    .S1     A6,1,A6           ; |760| <1,30> 

           LDW     .D1T1   *+A23[A6],A8      ; |760| <1,31> 
           NOP             1
           SHL     .S2X    A7,11,B4          ; |825| <0,86>  ^ 
           SHRU    .S1     A6,21,A6          ; |825| <0,87> 
           OR      .L1X    B4,A6,A6          ; |825| <0,88>  ^ 

           MVK     .L1     3,A7              ; |825| <0,89> Define a twin register
||         EXTU    .S1     A6,16,16,A6       ; |825| <0,89>  ^ 
||         MPY32   .M1X    A8,B1,A7:A6       ; |760| <1,36> 

           MPYLI   .M1     A7,A6,A21:A20     ; |825| <0,90>  ^ 
           NOP             2

           ADD     .L1     A7,A7,A7          ; |760| <1,40> 
||         SHRU    .S1     A6,31,A6          ; |760| <1,40> 

           ADD     .S1     1,A20,A7          ; |825| <0,94>  ^ 
||         OR      .L1     A7,A6,A6          ; |760| <1,41> 

           SHL     .S1     A7,2,A7           ; |825| <0,95>  ^ 
||         SUB     .L1     A22,A6,A6         ; |760| <1,42> 

           LDNDW   .D1T1   *+A7(A25),A7:A6   ; |825| <0,96>  ^ 
||         MPY32   .M1     A8,A6,A9:A8       ; |760| <1,43> 

           NOP             4

           MPY32   .M1     A3,A7,A9:A8       ; |868| <0,101>  ^ 
||         SHL     .S2X    A9,3,B5           ; |760| <1,48> 

           SUB     .L2X    A5,1,B4           ; |2638| <1,49> 
||         SHRU    .S1     A8,29,A7          ; |760| <1,49> 

           ADD     .L2X    1,A27,B5          ; |38| <1,50> 
||         EXTU    .S2     B4,16,16,B4       ; |2638| <1,50> 
||         OR      .L1X    B5,A7,A7          ; |760| <1,50> 

           EXTU    .S2     B5,16,16,B5       ; |38| <1,51> 
||         MPY32   .M1X    A7,B1,A9:A8       ; |798| <1,51> 

           MV      .L1X    B4,A5             ; |2638| <1,52> Define a twin register

           SHL     .S2X    A9,11,B4          ; |868| <0,106>  ^ 
||         MV      .L1X    B5,A27            ; |38| <1,53> Define a twin register
||         LDW     .D1T1   *+A26[A5],A6      ; |2638| <2,0> 

           SHRU    .S1     A8,21,A21         ; |868| <0,107> 
||         LDW     .D1T2   *+A26[A27],B4     ; |40| <2,1> 

           OR      .D1X    B4,A21,A21        ; |868| <0,108>  ^ 
||         ADD     .L1     A9,A9,A9          ; |798| <1,55> 
||         SHRU    .S1     A8,31,A8          ; |798| <1,55> 

           ADD     .S1     A21,A6,A8         ; |868| <0,109>  ^ 
||         OR      .L1     A9,A8,A6          ; |798| <1,56> 

           MPY32   .M1     A3,A8,A7:A6       ; |868| <0,110>  ^ 
||         SUB     .L1     A22,A6,A8         ; |798| <1,57> 

           MPY32   .M1     A7,A8,A9:A8       ; |798| <1,58> 

           MPY32   .M1X    A6,B22,A7:A6      ; |2638| <2,6> 
||         MPY32   .M2     B4,B22,B25:B24    ; |40| <2,6> 

           MV      .L2     B16,B4            ; |40| <0,113> Split a long life
||         LDW     .D1T2   *+A25[A20],B5     ; |868| <0,113> 

           SHRU    .S1     A6,21,A20         ; |868| <0,114> 
||         CMPLT   .L2     B4,0,B4           ; |882| <0,114> 

           MV      .L2     B8,B27            ; |697| <0,115> Split a long life
||         SHL     .S1     A7,11,A28         ; |868| <0,115> 
||         MV      .D2     B24,B8            ; |697| <1,62> Split a long life
||         MV      .L1     A1,A0             ; |705| <1,62> Split a long life

           MV      .L2     B4,B0             ; |882| <0,116> Split a long life
||         MV      .L1     A17,A21           ; |698| <0,116> Split a long life
||         MV      .D2X    A16,B4            ; |701| <1,63> 
||         SHRU    .S1     A8,29,A8          ; |798| <1,63> 
||         SHRU    .S2     B24,21,B6         ; |40| <2,10> 

   [ B0]   CMPLT   .L1X    B27,A21,A0        ; |896| <0,117> 
||         OR      .D1     A28,A20,A9        ; |868| <0,117> 
|| [ A0]   MV      .L2     B8,B4             ; |702| <1,64> 
||         SHL     .S1     A9,3,A6           ; |798| <1,64> 
||         SHRU    .S2X    A6,21,B9          ; |2638| <2,11> 

   [!B0]   ZERO    .L1     A0                ; |896| <0,118> Define a twin register
||         ADD     .D1X    A9,B5,A7          ; |868| <0,118> 
||         OR      .S1     A6,A8,A6          ; |798| <1,65> 
||         SHL     .S2X    A7,11,B5          ; |2638| <2,12> 

           MV      .L1     A18,A20           ; |2638| <0,119> Split a long life
||         MV      .L2     B23,B16           ; |40| <1,66> Split a long life
||         SUB     .D2     B19,B26,B4        ; |802| <1,66> 
||         MV      .S1     A19,A18           ; |2638| <1,66> Split a long life
||         MPY32   .M1X    B4,A6,A7:A6       ; |798| <1,66> 
||         SHL     .S2     B25,11,B23        ; |40| <2,13> 

           MV      .L2X    A0,B2             ; |903| <0,120> 
||         SHR     .S1     A7,9,A28          ; |868| <0,120> 
||         EXT     .S2     B4,16,16,B6       ; |802| <1,67> 
||         OR      .D2     B23,B6,B23        ; |40| <2,14> 
||         MV      .L1X    B9,A6             ; |2638| <2,14> Define a twin register

   [ A0]   MV      .S1     A28,A4            ; |903| <0,121> 
|| [!B0]   MVK     .S2     0x1,B2            ; |903| <0,121> 
||         MV      .L1     A16,A17           ; |698| <1,68> Split a long life
||         ABS     .L2     B23,B24           ; |697| <2,15> 
||         OR      .D1X    B5,A6,A19         ; |2638| <2,15> 

   [!B2]   NEG     .S1     A28,A4            ; |898| <0,122> 
||         MVK     .L2     1,B5              ; |814| <1,69> 
||         MVK     .S2     32,B4             ; |814| <1,69> 
||         MV      .D1X    B6,A8             ; |802| <1,69> Define a twin register
||         ABS     .L1     A19,A16           ; |698| <2,16> 

   [!B0]   CMPLT   .L2X    B27,A21,B1        ; |884| <0,123> 
||         SHL     .S2     B5,B6,B4          ; |814| <1,70> 
||         SHRU    .S1     A6,30,A9          ; |798| <1,70> 
||         SUB     .D2     B4,B6,B9          ; |814| <1,70> 
||         CMPLT   .L1X    B24,A16,A1        ; |705| <2,17> 

   [ B0]   ZERO    .S2     B1                ; |884| <0,124> 
||         MV      .D2X    A4,B5             ; |898| <0,124> Define a twin register
||         SUB     .L2     B4,1,B4           ; |814| <1,71> 
||         SHL     .S1     A7,2,A21          ; |798| <1,71> 
||         MV      .D1X    B24,A7            ; |702| <2,18> Define a twin register

   [ B1]   NEG     .L2X    A28,B5            ; |891| <0,125> 
||         MVK     .S2     32,B9             ; |805| <1,72> 
||         MV      .L1X    B9,A21            ; |814| <1,72> Define a twin register
||         OR      .D1     A21,A9,A9         ; |798| <1,72> 
||         SHL     .S1     A6,2,A6           ; |814| <1,72> 

           MV      .L2     B18,B4            ; |879| <0,126> 
||         SHRU    .S1     A6,A8,A6          ; |814| <1,73> 
||         AND     .L1X    A9,B4,A8          ; |814| <1,73> 
|| [ A1]   MV      .D1     A16,A7            ; |708| <2,20> 

   [ A2]   SUB     .D1     A2,1,A2           ; |36| <0,127> 
||         CMPLT   .L1     A20,0,A20         ; |911| <0,127> 
|| [ B0]   MVK     .S2     0x1,B1            ; |891| <0,127> 
|| [!B2]   SUB     .D2     B18,B17,B4        ; |899| <0,127> 
||         CMPGTU  .L2     B6,31,B0          ; |803| <1,74> 
||         SHL     .S1     A8,A21,A8         ; |814| <1,74> 

   [ A2]   B       .S2     $C$L8             ; |36| <0,128> 
||         MV      .D1X    B5,A4             ; |891| <0,128> Define a twin register
|| [!B1]   ADD     .D2     B17,B4,B4         ; |887| <0,128> 
|| [!B0]   OR      .L1     A6,A8,A3          ; |814| <1,75>  ^ 
||         NORM    .L2X    A7,B26            ; |760| <2,22> 

           MV      .L1     A20,A0            ; |911| <0,129> Split a long life
|| [!B1]   MV      .S1     A28,A4            ; |886| <0,129> 
||         SUB     .L2     B6,B9,B5          ; |805| <1,76> 
||         SHL     .S2X    A7,B26,B1         ; |760| <2,23> 

           ADD     .S1X    A4,B4,A6          ; |36| <0,130> 
||         EXT     .S2     B5,16,16,B5       ; |805| <1,77> 
||         MV      .L2X    A3,B4             ; |814| <1,77>  ^ Define a twin register

   [ A0]   SSUB    .L1     0,A6,A6           ; |911| <0,131> 
|| [ B0]   SHR     .S2X    A9,B5,B4          ; |805| <1,78>  ^ 

           ADD     .L2     1,B21,B5          ; |914| <0,132> 
||         STW     .D2T1   A6,*+B20[B21]     ; |911| <0,132> 
||         SHRU    .S1X    B1,22,A6          ; |760| <2,26> 

	.dwpsn	file "../../../include/IQmath_inline_all.h",line 42,column 0,is_stmt

           EXTU    .S2     B5,16,16,B21      ; |914| <0,133> 
||         MV      .L1X    B4,A3             ; |805| <1,80>  ^ Define a twin register

$C$DW$L$_FFT_IQ_CalcPhase$13$E:
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 40

           ADD     .L2     1,B21,B30         ; |914| (E) <1,132> 
||         MVK     .L1     3,A31             ; |825| (E) <2,89> Define a twin register
||         MVK     .S2     32,B25            ; |814| (E) <2,69> 
||         MVK     .D2     1,B9              ; |814| (E) <2,69> 
||         MPY32   .M1X    A3,B7,A7:A6       ; |825| (E) <1,81>  ^ 

           EXTU    .S2     B30,16,16,B22     ; |914| (E) <1,133> 
||         ADD     .L1     A24,A6,A6         ; |760| (E) <2,29> 

   [!B1]   ZERO    .L1     A6                ; |760| (E) <2,30> Define a twin register
|| [ B1]   SHRU    .S1     A6,1,A6           ; |760| (E) <2,30> 

           LDW     .D1T1   *+A23[A6],A8      ; |760| (E) <2,31> 
           NOP             1
           SHL     .S2X    A7,11,B4          ; |825| (E) <1,86>  ^ 
           SHRU    .S1     A6,21,A6          ; |825| (E) <1,87> 
           OR      .L1X    B4,A6,A6          ; |825| (E) <1,88>  ^ 

           MVK     .L1     3,A7              ; |825| (E) <1,89> Define a twin register
||         EXTU    .S1     A6,16,16,A6       ; |825| (E) <1,89>  ^ 
||         MPY32   .M1X    A8,B1,A7:A6       ; |760| (E) <2,36> 

           MPYLI   .M1     A7,A6,A21:A20     ; |825| (E) <1,90>  ^ 
           NOP             2

           ADD     .L1     A7,A7,A7          ; |760| (E) <2,40> 
||         SHRU    .S1     A6,31,A6          ; |760| (E) <2,40> 

           ADD     .L1     1,A20,A7          ; |825| (E) <1,94>  ^ 
||         OR      .S1     A7,A6,A6          ; |760| (E) <2,41> 

           SHL     .S1     A7,2,A7           ; |825| (E) <1,95>  ^ 
||         SUB     .L1     A22,A6,A6         ; |760| (E) <2,42> 

           LDNDW   .D1T1   *+A7(A25),A7:A6   ; |825| (E) <1,96>  ^ 
||         MPY32   .M1     A8,A6,A9:A8       ; |760| (E) <2,43> 

           NOP             4

           MPY32   .M1     A3,A7,A9:A8       ; |868| (E) <1,101>  ^ 
||         SHL     .S2X    A9,3,B4           ; |760| (E) <2,48> 

           SUB     .L2X    A5,1,B5           ; |2638| (E) <2,49> 
||         SHRU    .S1     A8,29,A7          ; |760| (E) <2,49> 

           ADD     .L2X    1,A27,B4          ; |38| (E) <2,50> 
||         EXTU    .S2     B5,16,16,B5       ; |2638| (E) <2,50> 
||         OR      .L1X    B4,A7,A7          ; |760| (E) <2,50> 

           EXTU    .S2     B4,16,16,B4       ; |38| (E) <2,51> 
||         MPY32   .M1X    A7,B1,A9:A8       ; |798| (E) <2,51> 

           MV      .L1X    B5,A5             ; |2638| (E) <2,52> Define a twin register

           SHL     .S2X    A9,11,B4          ; |868| (E) <1,106>  ^ 
||         MV      .L1X    B4,A27            ; |38| (E) <2,53> Define a twin register

           SHRU    .S1     A8,21,A21         ; |868| (E) <1,107> 

           OR      .L1X    B4,A21,A21        ; |868| (E) <1,108>  ^ 
||         ADD     .D1     A9,A9,A9          ; |798| (E) <2,55> 
||         SHRU    .S1     A8,31,A8          ; |798| (E) <2,55> 

           ADD     .L1     A21,A6,A8         ; |868| (E) <1,109>  ^ 
||         OR      .S1     A9,A8,A6          ; |798| (E) <2,56> 

           MPY32   .M1     A3,A8,A7:A6       ; |868| (E) <1,110>  ^ 
||         SUB     .L1     A22,A6,A8         ; |798| (E) <2,57> 

           MPY32   .M1     A7,A8,A9:A8       ; |798| (E) <2,58> 
           NOP             1

           MV      .L2     B16,B4            ; |40| (E) <1,113> Split a long life
||         LDW     .D1T2   *+A25[A20],B5     ; |868| (E) <1,113> 

           SHRU    .S1     A6,21,A20         ; |868| (E) <1,114> 
||         CMPLT   .L2     B4,0,B4           ; |882| (E) <1,114> 

           MV      .L2     B8,B27            ; |697| (E) <1,115> Split a long life
||         SHL     .S1     A7,11,A5          ; |868| (E) <1,115> 
||         MV      .D2     B24,B8            ; |697| (E) <2,62> Split a long life
||         MV      .L1     A1,A6             ; |705| (E) <2,62> Split a long life

           MV      .L2     B4,B0             ; |882| (E) <1,116> Split a long life
||         MV      .L1     A17,A21           ; |698| (E) <1,116> Split a long life
||         MV      .S2X    A16,B4            ; |701| (E) <2,63> 
||         MV      .D1     A6,A0             ; |705| (E) <2,63> Split a long life
||         SHRU    .S1     A8,29,A8          ; |798| (E) <2,63> 

   [ B0]   ZERO    .L2     B1                ; |884| (E) <1,124> 
|| [ B0]   CMPLT   .L1X    B27,A21,A0        ; |896| (E) <1,117> 
||         OR      .D1     A5,A20,A9         ; |868| (E) <1,117> 
|| [ A0]   MV      .S2     B8,B4             ; |702| (E) <2,64> 
||         SHL     .S1     A9,3,A6           ; |798| (E) <2,64> 

   [!B0]   CMPLT   .L2X    B27,A21,B1        ; |884| (E) <1,123> 
|| [!B0]   ZERO    .L1     A0                ; |896| (E) <1,118> Define a twin register
||         ADD     .S1X    A9,B5,A7          ; |868| (E) <1,118> 
||         OR      .D1     A6,A8,A6          ; |798| (E) <2,65> 

           MV      .L2     B18,B4            ; |879| (E) <1,126> 
||         MV      .L1     A18,A20           ; |2638| (E) <1,119> Split a long life
||         MV      .S2     B23,B16           ; |40| (E) <2,66> Split a long life
||         SUB     .D2     B19,B26,B5        ; |802| (E) <2,66> 
||         MV      .S1     A19,A18           ; |2638| (E) <2,66> Split a long life
||         MPY32   .M1X    B4,A6,A7:A6       ; |798| (E) <2,66> 

           CMPLT   .L1     A18,0,A2          ; |911| 
||         MV      .L2X    A0,B2             ; |903| (E) <1,120> 
||         SHR     .S1     A7,9,A28          ; |868| (E) <1,120> 
||         EXT     .S2     B5,16,16,B6       ; |802| (E) <2,67> 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 62
   [!B0]   MVK     .L2     0x1,B2            ; |903| (E) <1,121> 
   [ A0]   MV      .L1     A28,A4            ; |903| (E) <1,121> 

   [!B2]   NEG     .L1     A28,A4            ; |898| (E) <1,122> 
||         SHL     .S2     B9,B6,B5          ; |814| (E) <2,70> 
||         SHL     .S1     A7,2,A21          ; |798| (E) <2,71> 
||         SUB     .L2     B25,B6,B9         ; |814| (E) <2,70> 

           SHRU    .S1     A6,30,A9          ; |798| (E) <2,70> 
||         SUB     .L2     B5,1,B19          ; |814| (E) <2,71> 
||         MV      .L1X    B6,A8             ; |802| (E) <2,69> Define a twin register

           MV      .L2X    A4,B5             ; |898| (E) <1,124> Define a twin register
||         OR      .L1     A21,A9,A9         ; |798| (E) <2,72> 
||         SHL     .S1     A6,2,A6           ; |814| (E) <2,72> 
||         MV      .D1X    B9,A21            ; |814| (E) <2,72> Define a twin register

   [ B1]   NEG     .L2X    A28,B5            ; |891| (E) <1,125> 
||         SHRU    .S1     A6,A8,A6          ; |814| (E) <2,73> 
||         AND     .L1X    A9,B19,A8         ; |814| (E) <2,73> 

           SHL     .S1     A8,A21,A8         ; |814| (E) <2,74> 
|| [ B0]   MVK     .S2     0x1,B1            ; |891| (E) <1,127> 
||         CMPGTU  .L2     B6,31,B0          ; |803| (E) <2,74> 
|| [!B2]   SUB     .D2     B18,B17,B4        ; |899| (E) <1,127> 

           MV      .L1X    B5,A4             ; |891| (E) <1,128> Define a twin register
|| [!B0]   OR      .S1     A6,A8,A3          ; |814| (E) <2,75>  ^ 
|| [!B1]   ADD     .L2     B17,B4,B4         ; |887| (E) <1,128> 

   [!B1]   MV      .L1     A28,A4            ; |886| (E) <1,129> 
||         SUBAW   .D2     B6,8,B31          ; |805| 

           ADD     .L1X    A4,B4,A6          ; |36| (E) <1,130> 
||         MV      .L2X    A3,B4             ; |814| (E) <2,77>  ^ Define a twin register
||         EXT     .S2     B31,16,16,B5      ; |805| (E) <2,77> 

   [ B0]   SHR     .S2X    A9,B5,B4          ; |805| (E) <2,78>  ^ 
           CMPLT   .L1     A20,0,A0          ; |911| 

           MV      .S1X    B4,A3             ; |805| (E) <2,80>  ^ Define a twin register
|| [ A0]   SSUB    .L1     0,A6,A6           ; |911| (E) <1,131> 

           STW     .D2T1   A6,*+B20[B21]     ; |911| (E) <1,132> 
||         MPY32   .M1X    A3,B7,A7:A6       ; |825| (E) <2,81>  ^ 

           CMPLT   .L2     B16,0,B0          ; |882| 
   [ B0]   CMPLT   .L1X    B8,A16,A0         ; |896| 
   [!B0]   ZERO    .L1     A0                ; |896| (E) <2,118> Define a twin register
           SHRU    .S1     A6,21,A6          ; |825| (E) <2,87> 
           SHL     .S2X    A7,11,B5          ; |825| (E) <2,86>  ^ 
           MV      .L2X    A0,B2             ; |903| (E) <2,120> 
           OR      .L1X    B5,A6,A6          ; |825| (E) <2,88>  ^ 
           EXTU    .S1     A6,16,16,A6       ; |825| (E) <2,89>  ^ 
           MPYLI   .M1     A31,A6,A21:A20    ; |825| (E) <2,90>  ^ 
   [!B0]   MVK     .L2     0x1,B2            ; |903| (E) <2,121> 
   [!B0]   CMPLT   .L2X    B8,A16,B1         ; |884| 
   [ B0]   ZERO    .L2     B1                ; |884| (E) <2,124> 
           ADD     .L1     1,A20,A7          ; |825| (E) <2,94>  ^ 
           SHL     .S1     A7,2,A7           ; |825| (E) <2,95>  ^ 
           LDNDW   .D1T1   *+A7(A25),A7:A6   ; |825| (E) <2,96>  ^ 
           LDW     .D1T2   *+A25[A20],B5     ; |868| (E) <2,113> 
           MV      .L2     B18,B4            ; |879| (E) <2,126> 
   [!B2]   SUB     .L2     B18,B17,B4        ; |899| (E) <2,127> 
           NOP             1
           MPY32   .M1     A3,A7,A9:A8       ; |868| (E) <2,101>  ^ 
           NOP             4
           SHL     .S2X    A9,11,B6          ; |868| (E) <2,106>  ^ 
           SHRU    .S1     A8,21,A21         ; |868| (E) <2,107> 
           OR      .L1X    B6,A21,A21        ; |868| (E) <2,108>  ^ 
           ADD     .L1     A21,A6,A8         ; |868| (E) <2,109>  ^ 
           MPY32   .M1     A3,A8,A7:A6       ; |868| (E) <2,110>  ^ 
           NOP             3
           SHL     .S1     A7,11,A3          ; |868| (E) <2,115> 
           SHRU    .S1     A6,21,A20         ; |868| (E) <2,114> 
           OR      .L1     A3,A20,A9         ; |868| (E) <2,117> 
           ADD     .L1X    A9,B5,A7          ; |868| (E) <2,118> 
           SHR     .S1     A7,9,A28          ; |868| (E) <2,120> 
   [ A0]   MV      .L1     A28,A4            ; |903| (E) <2,121> 
   [!B2]   NEG     .L1     A28,A4            ; |898| (E) <2,122> 
           NOP             1
           MV      .L2X    A4,B5             ; |898| (E) <2,124> Define a twin register
   [ B1]   NEG     .L2X    A28,B5            ; |891| (E) <2,125> 
   [ B0]   MVK     .L2     0x1,B1            ; |891| (E) <2,127> 

           MV      .L1X    B5,A4             ; |891| (E) <2,128> Define a twin register
|| [!B1]   ADD     .L2     B17,B4,B4         ; |887| (E) <2,128> 

   [!B1]   MV      .L1     A28,A4            ; |886| (E) <2,129> 
           ADD     .L1X    A4,B4,A6          ; |36| (E) <2,130> 
   [ A2]   SSUB    .L1     0,A6,A6           ; |911| (E) <2,131> 
           STW     .D2T1   A6,*+B20[B22]     ; |911| (E) <2,132> 
;** --------------------------------------------------------------------------*
$C$L10:    
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "PHASEComplex_IQ.c",line 45,column 1,is_stmt
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |45| 
           ; BRANCH OCCURS {B3}              ; |45| 

$C$DW$22	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$22, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/PHASEComplex_IQ.asm:$C$L8:1:1227561130")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("PHASEComplex_IQ.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x24)
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x2a)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_FFT_IQ_CalcPhase$13$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_FFT_IQ_CalcPhase$13$E)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$24, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/PHASEComplex_IQ.asm:$C$L5:1:1227561130")
	.dwattr $C$DW$24, DW_AT_TI_begin_file("PHASEComplex_IQ.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x24)
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x2a)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$_FFT_IQ_CalcPhase$9$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$_FFT_IQ_CalcPhase$9$E)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/PHASEComplex_IQ.asm:$C$L2:1:1227561130")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("PHASEComplex_IQ.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x1d)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_FFT_IQ_CalcPhase$3$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_FFT_IQ_CalcPhase$3$E)
	.dwendtag $C$DW$26

	.dwattr $C$DW$18, DW_AT_TI_end_file("PHASEComplex_IQ.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$18

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_IQdivTable
	.global	_IQatan2HalfPITable
	.global	_IQatan2Table

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
$C$DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$19)

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$28	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$31

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
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
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
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
$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$29, DW_AT_name("OutBuf")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_OutBuf")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$30, DW_AT_name("MagBuf")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_MagBuf")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_name("PhaseBuf")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_PhaseBuf")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$32, DW_AT_name("FFTSize")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_FFTSize")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$33, DW_AT_name("FFTStages")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_FFTStages")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)
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

$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg0]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg1]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg2]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg3]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg4]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg5]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg6]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg7]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg8]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg9]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg10]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg11]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg12]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg13]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg14]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg15]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg16]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg17]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg18]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg19]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg20]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg21]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg22]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg23]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg24]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg25]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg26]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg27]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg28]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg29]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg30]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg31]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x20]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x21]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x22]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x23]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x24]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x25]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x26]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x27]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x28]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x29]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x30]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x31]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x32]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x33]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x34]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x35]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x36]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x37]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x38]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x39]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x40]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x41]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x42]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x43]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x44]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x45]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x46]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x47]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x48]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x49]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x50]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x51]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x52]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x53]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x54]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x55]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x56]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x57]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x58]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x59]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x60]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x61]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x62]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x63]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x64]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x65]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x66]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x67]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x68]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x69]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x70]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x71]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x72]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x73]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x74]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x75]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x76]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x77]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x78]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x79]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

