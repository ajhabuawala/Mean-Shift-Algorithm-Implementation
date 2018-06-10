;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v6.1.6 *
;* Date/Time created: Mon Nov 24 14:19:13 2008                                *
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
	.dwattr $C$DW$CU, DW_AT_name("FFTComplex_IQ.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.1.6 Copyright (c) 1996-2008 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\CCStudio_v3.3\c64plus\IQmath_v212\example\FFT_IQbenchmark\bmrksrc")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_hill")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__hill")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("_loll")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("__loll")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("_mpy32ll")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("__mpy32ll")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$5

;	C:\Program Files\C6000Code Generation Tools 6.1.6\bin\opt6x.exe C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/FFTComplex_IQ.if C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/FFTComplex_IQ.opt 
	.sect	".text"
	.clink
	.global	_FFTComplex_IQ

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("FFTComplex_IQ")
	.dwattr $C$DW$8, DW_AT_low_pc(_FFTComplex_IQ)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_FFTComplex_IQ")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_TI_begin_file("FFTComplex_IQ.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x1a)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$8, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$8, DW_AT_TI_skeletal
	.dwpsn	file "FFTComplex_IQ.c",line 27,column 1,is_stmt,address _FFTComplex_IQ
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_f")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: FFTComplex_IQ                                               *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B4,B5,B6,B7,B8,B9,A16, *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B31                                              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B3,B4,B5,B6,B7,B8,B9,  *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_FFTComplex_IQ:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D1T1   *+A4(8),A3        ; |39| 
           LDW     .D1T1   *A4,A5            ; |34| 
           MVK     .L2     0x1,B24           ; |42| 
           LDW     .D1T1   *+A4(4),A24       ; |36| 
           NOP             1

           EXT     .S1     A3,16,16,A22      ; |41| 
||         ADD     .L1     A3,A3,A6          ; |39| 

           CMPLT   .L1     A22,2,A0          ; |43| 
||         MV      .S1     A22,A25           ; |43| 
||         MV      .L2X    A5,B25            ; |34| 

   [ A0]   BNOP    .S2     $C$L8,2           ; |43| 
|| [!A0]   CMPGT   .L2     B24,0,B0          ; |47| 
||         SUB     .D2X    A6,1,B4           ; |39| 
|| [!A0]   EXT     .S1     A22,15,16,A22     ; |45| 

           MV      .L2X    A5,B26            ; |35| 
           EXT     .S2     B4,16,16,B27      ; |39| 
   [!A0]   MV      .L2     B0,B1             ; guard predicate rewrite
           ; BRANCHCC OCCURS {$C$L8}         ; |43| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "FFTComplex_IQ.c",line 43,column 0,is_stmt

   [ B1]   CMPGT   .L1     A22,0,A0          ; |51| 
||         MV      .S1     A24,A23
|| [!B0]   B       .S2     $C$L7             ; |47| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_FFTComplex_IQ$3$B:
	.dwpsn	file "FFTComplex_IQ.c",line 44,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 5
   [ B1]   LDNDW   .D1T1   *A23,A5:A4        ; |49| 
           NOP             4
           ; BRANCHCC OCCURS {$C$L7}         ; |47| 
$C$DW$L$_FFTComplex_IQ$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_FFTComplex_IQ$4$B:
;          EXCLUSIVE CPU CYCLES: 5

   [!A0]   BNOP    .S2     $C$L6,1           ; |51| 
|| [ A0]   NEG     .L1     A22,A3
||         ZERO    .S1     A26               ; |46| 
||         MV      .D1     A5,A16            ; |50| 
||         MV      .L2     B24,B0            ; |49| 
||         SUB     .D2X    A22,1,B31

           MV      .L2X    A4,B7             ; |49| 
   [ A0]   MV      .L1X    B25,A4
	.dwpsn	file "FFTComplex_IQ.c",line 47,column 0,is_stmt
   [ A0]   SUB     .L1     A3,A26,A5
$C$DW$L$_FFTComplex_IQ$4$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L2
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_FFTComplex_IQ$5$B:
	.dwpsn	file "FFTComplex_IQ.c",line 48,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
   [ A0]   ADD     .L1     A26,A22,A31
           ; BRANCHCC OCCURS {$C$L6}         ; |51| 
$C$DW$L$_FFTComplex_IQ$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 51
;*      Loop opening brace source line   : 52
;*      Loop closing brace source line   : 61
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65536                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     4        4     
;*      .D units                     4        4     
;*      .M units                     2        2     
;*      .X cross paths               3        4     
;*      .T address paths             4        4     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        6     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        2     
;*      Bound(.L .S .D .LS .LSD)     4        5*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 5  Schedule found with 4 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   ** ****      **  *           |      ****       *******        |
;*       1: |   ** ****      **  **          |    ******      ********        |
;*       2: |   ** ****      ** * *          |    ******      **** * *        |
;*       3: |   *******      ******          |    ******      * **   *        |
;*       4: |   * *****      *****           |    ******        **   *        |
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
;*      Min. prof. trip count  (est.) : 2
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.500, max 4.000 }
;*      Mem bank perf. penalty (est.) : 9.1%
;*
;*      Effective ii                : { min 5.00, est 5.50, max 9.00 }
;*
;*
;*      Total cycles (est.)         : 15 + trip_cnt * 5        
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C23:
;*   0              LDW     .D1T1   *A6++,A17         ; |574| 
;*   1              LDW     .D2T2   *B18--,B16        ; |574| 
;*   2              NOP             4
;*   6              MPY32   .M2     B7,B16,B21:B20    ; |574| 
;*   7              MPY32   .M2X    A16,B16,B5:B4     ; |574| 
;*     ||           MPY32   .M1     A16,A17,A21:A20   ; |574| 
;*   8              NOP             1
;*   9              MPY32   .M1X    B7,A17,A5:A4      ; |574| 
;*  10              SHRU    .S2     B20,21,B23        ; |574| 
;*     ||           LDW     .D2T2   *B8--,B17         ; |57| 
;*  11              SHRU    .S2     B4,21,B19         ; |574| 
;*     ||           SHRU    .S1     A20,21,A19        ; |574| 
;*     ||           LDW     .D1T1   *A7++,A3          ; |56| 
;*  12              SHL     .S2     B5,11,B16         ; |574| 
;*     ||           SHL     .S1X    B21,11,A20        ; |574| 
;*  13              SHRU    .S1     A4,21,A3          ; |574| 
;*     ||           OR      .L2     B16,B19,B19       ; |574| 
;*     ||           SHL     .S2X    A21,11,B5         ; |574| 
;*  14              SHL     .S1     A5,11,A4          ; |574| 
;*     ||           OR      .L2X    B5,A19,B22        ; |574| 
;*  15              OR      .L1     A4,A3,A4          ; |574| 
;*     ||           OR      .L2X    A20,B23,B20       ; |574| 
;*  16              ADD     .L1X    B19,A4,A4         ; |574| 
;*     ||           SUB     .L2     B20,B22,B4        ; |574| 
;*  17              SUB     .D1     A3,A4,A3          ; |56| 
;*     ||           SUB     .D2     B17,B4,B5         ; |57| 
;*     ||           ADD     .L1     A4,A3,A18         ; |58| 
;*     ||           ADD     .L2     B4,B17,B4         ; |59| 
;*  18              STW     .D1T1   A3,*A8++          ; |56|  ^ 
;*     ||           STW     .D2T2   B5,*B9--          ; |57|  ^ 
;*  19              STW     .D1T1   A18,*A9++         ; |58|  ^ 
;*     ||           STW     .D2T2   B4,*B6--          ; |59|  ^ 
;*     ||           SPBR            $C$C23
;*  20              ; BRANCHCC OCCURS {$C$C23}        ; |51| 
;*----------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 16
	.dwpsn	file "FFTComplex_IQ.c",line 51,column 0,is_stmt

           SPLOOPD 5       ;20               ; (P) 
||         MVC     .S2     B31,ILC
||         ADDAW   .D1     A4,A31,A6
||         ADD     .L2X    B27,A5,B4

;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP KERNEL
$C$DW$L$_FFTComplex_IQ$7$B:
	.dwpsn	file "FFTComplex_IQ.c",line 52,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 5

           SPMASK          D2
||         ADDAW   .D2     B25,B4,B18
||         LDW     .D1T1   *A6++,A17         ; |574| (P) <0,0> 

           LDW     .D2T2   *B18--,B16        ; |574| (P) <0,1> 
           NOP             4

           SPMASK          L1
||         MV      .L1X    B26,A3
||         MPY32   .M2     B7,B16,B21:B20    ; |574| (P) <0,6> 

           SPMASK          D1,D2
||         ADDAW   .D1     A3,A31,A8
||         ADDAW   .D2     B26,B4,B9
||         MPY32   .M1     A16,A17,A21:A20   ; |574| (P) <0,7> 
||         MPY32   .M2X    A16,B16,B5:B4     ; |574| (P) <0,7> 

           SPMASK          D1,L2
||         SUB     .L2X    B27,A26,B6
||         ADDAW   .D1     A3,A26,A9

           SPMASK          L1,D1,D2
||         ADD     .L1     A22,A26,A30       ; |60| 
||         ADDAW   .D2     B25,B6,B8
||         ADDAW   .D1     A4,A26,A7
||         MPY32   .M1X    B7,A17,A5:A4      ; |574| (P) <0,9> 

           SPMASK          S1
||         EXT     .S1     A30,16,16,A26     ; |60| 
||         LDW     .D2T2   *B8--,B17         ; |57| (P) <0,10> 
||         SHRU    .S2     B20,21,B23        ; |574| (P) <0,10> 

           LDW     .D1T1   *A7++,A3          ; |56| (P) <0,11> 
||         SHRU    .S1     A20,21,A19        ; |574| (P) <0,11> 
||         SHRU    .S2     B4,21,B19         ; |574| (P) <0,11> 

           SHL     .S1X    B21,11,A20        ; |574| (P) <0,12> 
||         SHL     .S2     B5,11,B16         ; |574| (P) <0,12> 

           SHRU    .S1     A4,21,A3          ; |574| (P) <0,13> 
||         SHL     .S2X    A21,11,B5         ; |574| (P) <0,13> 
||         OR      .L2     B16,B19,B19       ; |574| (P) <0,13> 

           SPMASK          D2
||         ADDAW   .D2     B26,B6,B6
||         SHL     .S1     A5,11,A4          ; |574| (P) <0,14> 
||         OR      .L2X    B5,A19,B22        ; |574| (P) <0,14> 

           OR      .L1     A4,A3,A4          ; |574| <0,15> 
||         OR      .L2X    A20,B23,B20       ; |574| <0,15> 

           ADD     .L1X    B19,A4,A4         ; |574| <0,16> 
||         SUB     .L2     B20,B22,B4        ; |574| <0,16> 

           ADD     .L1     A4,A3,A18         ; |58| <0,17> 
||         SUB     .D1     A3,A4,A3          ; |56| <0,17> 
||         ADD     .L2     B4,B17,B4         ; |59| <0,17> 
||         SUB     .D2     B17,B4,B5         ; |57| <0,17> 

           STW     .D1T1   A3,*A8++          ; |56| <0,18>  ^ 
||         STW     .D2T2   B5,*B9--          ; |57| <0,18>  ^ 

	.dwpsn	file "FFTComplex_IQ.c",line 61,column 0,is_stmt

           SPKERNEL 3,0
||         STW     .D1T1   A18,*A9++         ; |58| <0,19>  ^ 
||         STW     .D2T2   B4,*B6--          ; |59| <0,19>  ^ 

$C$DW$L$_FFTComplex_IQ$7$E:
;** --------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 15
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_FFTComplex_IQ$9$B:
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L1     8,A23,A23         ; |47| 
||         SUB     .L2     B0,1,B0           ; |47| 
||         ADD     .S1     A22,A26,A3        ; |47| 

   [!B0]   MVK     .L1     0x1,A0            ; nullify predicate
|| [ B0]   LDNDW   .D1T1   *A23,A5:A4        ; |49| 
|| [ B0]   B       .S2     $C$L2             ; |47| 
||         EXT     .S1     A3,16,16,A26      ; |47| 

   [!A0]   BNOP    .S1     $C$L6,3           ; |51| 
|| [ A0]   NEG     .L1     A22,A3

	.dwpsn	file "FFTComplex_IQ.c",line 63,column 0,is_stmt

   [ B0]   MV      .L2X    A4,B7             ; |49| 
|| [ B0]   MV      .L1     A5,A16            ; |50| 
|| [ A0]   MV      .S1X    B25,A4
|| [ A0]   SUB     .D1     A3,A26,A5

           ; BRANCHCC OCCURS {$C$L2}         ; |47| 
$C$DW$L$_FFTComplex_IQ$9$E:
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_FFTComplex_IQ$10$B:
;          EXCLUSIVE CPU CYCLES: 8

           EXT     .S1     A25,15,16,A25     ; |43| 
||         EXT     .S2     B24,17,16,B24     ; |43| 

           CMPLT   .L1     A25,2,A0          ; |43| 
||         CMPGT   .L2     B24,0,B0          ; |47| 

   [!A0]   BNOP    .S2     $C$L1,2           ; |43| 
|| [ A0]   MVK     .L2     0x1,B0            ; nullify predicate
|| [!A0]   EXT     .S1     A22,15,16,A22     ; |45| 
|| [!A0]   MV      .L1     A24,A23

           MV      .L2     B0,B1             ; guard predicate rewrite
   [ B1]   CMPGT   .L1     A22,0,A0          ; |51| 
	.dwpsn	file "FFTComplex_IQ.c",line 65,column 0,is_stmt
   [!B0]   B       .S1     $C$L7             ; |47| 
           ; BRANCHCC OCCURS {$C$L1}         ; |43| 
$C$DW$L$_FFTComplex_IQ$10$E:
;** --------------------------------------------------------------------------*
$C$L8:    
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "FFTComplex_IQ.c",line 66,column 1,is_stmt
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |66| 
           ; BRANCH OCCURS {B3}              ; |66| 

$C$DW$11	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$11, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/FFTComplex_IQ.asm:$C$L1:1:1227557954")
	.dwattr $C$DW$11, DW_AT_TI_begin_file("FFTComplex_IQ.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x2b)
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x41)
$C$DW$12	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$12, DW_AT_low_pc($C$DW$L$_FFTComplex_IQ$3$B)
	.dwattr $C$DW$12, DW_AT_high_pc($C$DW$L$_FFTComplex_IQ$3$E)
$C$DW$13	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$13, DW_AT_low_pc($C$DW$L$_FFTComplex_IQ$4$B)
	.dwattr $C$DW$13, DW_AT_high_pc($C$DW$L$_FFTComplex_IQ$4$E)
$C$DW$14	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$14, DW_AT_low_pc($C$DW$L$_FFTComplex_IQ$10$B)
	.dwattr $C$DW$14, DW_AT_high_pc($C$DW$L$_FFTComplex_IQ$10$E)

$C$DW$15	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$15, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/FFTComplex_IQ.asm:$C$L2:2:1227557954")
	.dwattr $C$DW$15, DW_AT_TI_begin_file("FFTComplex_IQ.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x3f)
$C$DW$16	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$16, DW_AT_low_pc($C$DW$L$_FFTComplex_IQ$5$B)
	.dwattr $C$DW$16, DW_AT_high_pc($C$DW$L$_FFTComplex_IQ$5$E)
$C$DW$17	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$17, DW_AT_low_pc($C$DW$L$_FFTComplex_IQ$9$B)
	.dwattr $C$DW$17, DW_AT_high_pc($C$DW$L$_FFTComplex_IQ$9$E)

$C$DW$18	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$18, DW_AT_name("C:/CCStudio_v3.3/c64plus/IQmath_v212/example/FFT_IQbenchmark/Inline/FFTComplex_IQ.asm:$C$L4:3:1227557954")
	.dwattr $C$DW$18, DW_AT_TI_begin_file("FFTComplex_IQ.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x3d)
$C$DW$19	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$19, DW_AT_low_pc($C$DW$L$_FFTComplex_IQ$7$B)
	.dwattr $C$DW$19, DW_AT_high_pc($C$DW$L$_FFTComplex_IQ$7$E)
	.dwendtag $C$DW$18

	.dwendtag $C$DW$15

	.dwendtag $C$DW$11

	.dwattr $C$DW$8, DW_AT_TI_end_file("FFTComplex_IQ.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x42)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$8


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
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
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
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
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
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x0c)
$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$20, DW_AT_name("input")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$21, DW_AT_name("twiddle")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_twiddle")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$22, DW_AT_name("n")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("FFT_comp")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x20)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$23	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]
$C$DW$24	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg1]
$C$DW$25	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg2]
$C$DW$26	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg3]
$C$DW$27	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg4]
$C$DW$28	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg5]
$C$DW$29	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg6]
$C$DW$30	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg7]
$C$DW$31	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg8]
$C$DW$32	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg9]
$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg10]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg11]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg12]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg13]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg14]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg15]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg16]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg17]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg18]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg19]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg20]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg21]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg22]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg23]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg24]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg25]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg26]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg27]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg28]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg29]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg30]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg31]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x20]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x21]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x22]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x23]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x24]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x25]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x26]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x27]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x28]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x29]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x30]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x31]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x32]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x33]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x34]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x35]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x36]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x37]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x38]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x39]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x40]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x41]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x42]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x43]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x44]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x45]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x46]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x47]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x48]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x49]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x50]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x51]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x52]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x53]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x54]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x55]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x56]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x57]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x58]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x59]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x60]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x61]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x62]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x63]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x64]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x65]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x66]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x67]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x68]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x69]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x70]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x71]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x72]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x73]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x74]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x75]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x76]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x77]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x78]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x79]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

