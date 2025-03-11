                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _P5_7
                                     87 	.globl _P5_6
                                     88 	.globl _P5_5
                                     89 	.globl _P5_4
                                     90 	.globl _P5_3
                                     91 	.globl _P5_2
                                     92 	.globl _P5_1
                                     93 	.globl _P5_0
                                     94 	.globl _P4_7
                                     95 	.globl _P4_6
                                     96 	.globl _P4_5
                                     97 	.globl _P4_4
                                     98 	.globl _P4_3
                                     99 	.globl _P4_2
                                    100 	.globl _P4_1
                                    101 	.globl _P4_0
                                    102 	.globl _PX0L
                                    103 	.globl _PT0L
                                    104 	.globl _PX1L
                                    105 	.globl _PT1L
                                    106 	.globl _PSL
                                    107 	.globl _PT2L
                                    108 	.globl _PPCL
                                    109 	.globl _EC
                                    110 	.globl _CCF0
                                    111 	.globl _CCF1
                                    112 	.globl _CCF2
                                    113 	.globl _CCF3
                                    114 	.globl _CCF4
                                    115 	.globl _CR
                                    116 	.globl _CF
                                    117 	.globl _TF2
                                    118 	.globl _EXF2
                                    119 	.globl _RCLK
                                    120 	.globl _TCLK
                                    121 	.globl _EXEN2
                                    122 	.globl _TR2
                                    123 	.globl _C_T2
                                    124 	.globl _CP_RL2
                                    125 	.globl _T2CON_7
                                    126 	.globl _T2CON_6
                                    127 	.globl _T2CON_5
                                    128 	.globl _T2CON_4
                                    129 	.globl _T2CON_3
                                    130 	.globl _T2CON_2
                                    131 	.globl _T2CON_1
                                    132 	.globl _T2CON_0
                                    133 	.globl _PT2
                                    134 	.globl _ET2
                                    135 	.globl _B
                                    136 	.globl _ACC
                                    137 	.globl _PSW
                                    138 	.globl _IP
                                    139 	.globl _P3
                                    140 	.globl _IE
                                    141 	.globl _P2
                                    142 	.globl _SBUF
                                    143 	.globl _SCON
                                    144 	.globl _P1
                                    145 	.globl _TH1
                                    146 	.globl _TH0
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TMOD
                                    150 	.globl _TCON
                                    151 	.globl _PCON
                                    152 	.globl _DPH
                                    153 	.globl _DPL
                                    154 	.globl _SP
                                    155 	.globl _P0
                                    156 	.globl _EECON
                                    157 	.globl _KBF
                                    158 	.globl _KBE
                                    159 	.globl _KBLS
                                    160 	.globl _BRL
                                    161 	.globl _BDRCON
                                    162 	.globl _T2MOD
                                    163 	.globl _SPDAT
                                    164 	.globl _SPSTA
                                    165 	.globl _SPCON
                                    166 	.globl _SADEN
                                    167 	.globl _SADDR
                                    168 	.globl _WDTPRG
                                    169 	.globl _WDTRST
                                    170 	.globl _P5
                                    171 	.globl _P4
                                    172 	.globl _IPH1
                                    173 	.globl _IPL1
                                    174 	.globl _IPH0
                                    175 	.globl _IPL0
                                    176 	.globl _IEN1
                                    177 	.globl _IEN0
                                    178 	.globl _CMOD
                                    179 	.globl _CL
                                    180 	.globl _CH
                                    181 	.globl _CCON
                                    182 	.globl _CCAPM4
                                    183 	.globl _CCAPM3
                                    184 	.globl _CCAPM2
                                    185 	.globl _CCAPM1
                                    186 	.globl _CCAPM0
                                    187 	.globl _CCAP4L
                                    188 	.globl _CCAP3L
                                    189 	.globl _CCAP2L
                                    190 	.globl _CCAP1L
                                    191 	.globl _CCAP0L
                                    192 	.globl _CCAP4H
                                    193 	.globl _CCAP3H
                                    194 	.globl _CCAP2H
                                    195 	.globl _CCAP1H
                                    196 	.globl _CCAP0H
                                    197 	.globl _CKCON1
                                    198 	.globl _CKCON0
                                    199 	.globl _CKRL
                                    200 	.globl _AUXR1
                                    201 	.globl _AUXR
                                    202 	.globl _TH2
                                    203 	.globl _TL2
                                    204 	.globl _RCAP2H
                                    205 	.globl _RCAP2L
                                    206 	.globl _T2CON
                                    207 	.globl _putchar
                                    208 	.globl _getchar
                                    209 ;--------------------------------------------------------
                                    210 ; special function registers
                                    211 ;--------------------------------------------------------
                                    212 	.area RSEG    (ABS,DATA)
      000000                        213 	.org 0x0000
                           0000C8   214 _T2CON	=	0x00c8
                           0000CA   215 _RCAP2L	=	0x00ca
                           0000CB   216 _RCAP2H	=	0x00cb
                           0000CC   217 _TL2	=	0x00cc
                           0000CD   218 _TH2	=	0x00cd
                           00008E   219 _AUXR	=	0x008e
                           0000A2   220 _AUXR1	=	0x00a2
                           000097   221 _CKRL	=	0x0097
                           00008F   222 _CKCON0	=	0x008f
                           0000AF   223 _CKCON1	=	0x00af
                           0000FA   224 _CCAP0H	=	0x00fa
                           0000FB   225 _CCAP1H	=	0x00fb
                           0000FC   226 _CCAP2H	=	0x00fc
                           0000FD   227 _CCAP3H	=	0x00fd
                           0000FE   228 _CCAP4H	=	0x00fe
                           0000EA   229 _CCAP0L	=	0x00ea
                           0000EB   230 _CCAP1L	=	0x00eb
                           0000EC   231 _CCAP2L	=	0x00ec
                           0000ED   232 _CCAP3L	=	0x00ed
                           0000EE   233 _CCAP4L	=	0x00ee
                           0000DA   234 _CCAPM0	=	0x00da
                           0000DB   235 _CCAPM1	=	0x00db
                           0000DC   236 _CCAPM2	=	0x00dc
                           0000DD   237 _CCAPM3	=	0x00dd
                           0000DE   238 _CCAPM4	=	0x00de
                           0000D8   239 _CCON	=	0x00d8
                           0000F9   240 _CH	=	0x00f9
                           0000E9   241 _CL	=	0x00e9
                           0000D9   242 _CMOD	=	0x00d9
                           0000A8   243 _IEN0	=	0x00a8
                           0000B1   244 _IEN1	=	0x00b1
                           0000B8   245 _IPL0	=	0x00b8
                           0000B7   246 _IPH0	=	0x00b7
                           0000B2   247 _IPL1	=	0x00b2
                           0000B3   248 _IPH1	=	0x00b3
                           0000C0   249 _P4	=	0x00c0
                           0000E8   250 _P5	=	0x00e8
                           0000A6   251 _WDTRST	=	0x00a6
                           0000A7   252 _WDTPRG	=	0x00a7
                           0000A9   253 _SADDR	=	0x00a9
                           0000B9   254 _SADEN	=	0x00b9
                           0000C3   255 _SPCON	=	0x00c3
                           0000C4   256 _SPSTA	=	0x00c4
                           0000C5   257 _SPDAT	=	0x00c5
                           0000C9   258 _T2MOD	=	0x00c9
                           00009B   259 _BDRCON	=	0x009b
                           00009A   260 _BRL	=	0x009a
                           00009C   261 _KBLS	=	0x009c
                           00009D   262 _KBE	=	0x009d
                           00009E   263 _KBF	=	0x009e
                           0000D2   264 _EECON	=	0x00d2
                           000080   265 _P0	=	0x0080
                           000081   266 _SP	=	0x0081
                           000082   267 _DPL	=	0x0082
                           000083   268 _DPH	=	0x0083
                           000087   269 _PCON	=	0x0087
                           000088   270 _TCON	=	0x0088
                           000089   271 _TMOD	=	0x0089
                           00008A   272 _TL0	=	0x008a
                           00008B   273 _TL1	=	0x008b
                           00008C   274 _TH0	=	0x008c
                           00008D   275 _TH1	=	0x008d
                           000090   276 _P1	=	0x0090
                           000098   277 _SCON	=	0x0098
                           000099   278 _SBUF	=	0x0099
                           0000A0   279 _P2	=	0x00a0
                           0000A8   280 _IE	=	0x00a8
                           0000B0   281 _P3	=	0x00b0
                           0000B8   282 _IP	=	0x00b8
                           0000D0   283 _PSW	=	0x00d0
                           0000E0   284 _ACC	=	0x00e0
                           0000F0   285 _B	=	0x00f0
                                    286 ;--------------------------------------------------------
                                    287 ; special function bits
                                    288 ;--------------------------------------------------------
                                    289 	.area RSEG    (ABS,DATA)
      000000                        290 	.org 0x0000
                           0000AD   291 _ET2	=	0x00ad
                           0000BD   292 _PT2	=	0x00bd
                           0000C8   293 _T2CON_0	=	0x00c8
                           0000C9   294 _T2CON_1	=	0x00c9
                           0000CA   295 _T2CON_2	=	0x00ca
                           0000CB   296 _T2CON_3	=	0x00cb
                           0000CC   297 _T2CON_4	=	0x00cc
                           0000CD   298 _T2CON_5	=	0x00cd
                           0000CE   299 _T2CON_6	=	0x00ce
                           0000CF   300 _T2CON_7	=	0x00cf
                           0000C8   301 _CP_RL2	=	0x00c8
                           0000C9   302 _C_T2	=	0x00c9
                           0000CA   303 _TR2	=	0x00ca
                           0000CB   304 _EXEN2	=	0x00cb
                           0000CC   305 _TCLK	=	0x00cc
                           0000CD   306 _RCLK	=	0x00cd
                           0000CE   307 _EXF2	=	0x00ce
                           0000CF   308 _TF2	=	0x00cf
                           0000DF   309 _CF	=	0x00df
                           0000DE   310 _CR	=	0x00de
                           0000DC   311 _CCF4	=	0x00dc
                           0000DB   312 _CCF3	=	0x00db
                           0000DA   313 _CCF2	=	0x00da
                           0000D9   314 _CCF1	=	0x00d9
                           0000D8   315 _CCF0	=	0x00d8
                           0000AE   316 _EC	=	0x00ae
                           0000BE   317 _PPCL	=	0x00be
                           0000BD   318 _PT2L	=	0x00bd
                           0000BC   319 _PSL	=	0x00bc
                           0000BB   320 _PT1L	=	0x00bb
                           0000BA   321 _PX1L	=	0x00ba
                           0000B9   322 _PT0L	=	0x00b9
                           0000B8   323 _PX0L	=	0x00b8
                           0000C0   324 _P4_0	=	0x00c0
                           0000C1   325 _P4_1	=	0x00c1
                           0000C2   326 _P4_2	=	0x00c2
                           0000C3   327 _P4_3	=	0x00c3
                           0000C4   328 _P4_4	=	0x00c4
                           0000C5   329 _P4_5	=	0x00c5
                           0000C6   330 _P4_6	=	0x00c6
                           0000C7   331 _P4_7	=	0x00c7
                           0000E8   332 _P5_0	=	0x00e8
                           0000E9   333 _P5_1	=	0x00e9
                           0000EA   334 _P5_2	=	0x00ea
                           0000EB   335 _P5_3	=	0x00eb
                           0000EC   336 _P5_4	=	0x00ec
                           0000ED   337 _P5_5	=	0x00ed
                           0000EE   338 _P5_6	=	0x00ee
                           0000EF   339 _P5_7	=	0x00ef
                           000080   340 _P0_0	=	0x0080
                           000081   341 _P0_1	=	0x0081
                           000082   342 _P0_2	=	0x0082
                           000083   343 _P0_3	=	0x0083
                           000084   344 _P0_4	=	0x0084
                           000085   345 _P0_5	=	0x0085
                           000086   346 _P0_6	=	0x0086
                           000087   347 _P0_7	=	0x0087
                           000088   348 _IT0	=	0x0088
                           000089   349 _IE0	=	0x0089
                           00008A   350 _IT1	=	0x008a
                           00008B   351 _IE1	=	0x008b
                           00008C   352 _TR0	=	0x008c
                           00008D   353 _TF0	=	0x008d
                           00008E   354 _TR1	=	0x008e
                           00008F   355 _TF1	=	0x008f
                           000090   356 _P1_0	=	0x0090
                           000091   357 _P1_1	=	0x0091
                           000092   358 _P1_2	=	0x0092
                           000093   359 _P1_3	=	0x0093
                           000094   360 _P1_4	=	0x0094
                           000095   361 _P1_5	=	0x0095
                           000096   362 _P1_6	=	0x0096
                           000097   363 _P1_7	=	0x0097
                           000098   364 _RI	=	0x0098
                           000099   365 _TI	=	0x0099
                           00009A   366 _RB8	=	0x009a
                           00009B   367 _TB8	=	0x009b
                           00009C   368 _REN	=	0x009c
                           00009D   369 _SM2	=	0x009d
                           00009E   370 _SM1	=	0x009e
                           00009F   371 _SM0	=	0x009f
                           0000A0   372 _P2_0	=	0x00a0
                           0000A1   373 _P2_1	=	0x00a1
                           0000A2   374 _P2_2	=	0x00a2
                           0000A3   375 _P2_3	=	0x00a3
                           0000A4   376 _P2_4	=	0x00a4
                           0000A5   377 _P2_5	=	0x00a5
                           0000A6   378 _P2_6	=	0x00a6
                           0000A7   379 _P2_7	=	0x00a7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AF   385 _EA	=	0x00af
                           0000B0   386 _P3_0	=	0x00b0
                           0000B1   387 _P3_1	=	0x00b1
                           0000B2   388 _P3_2	=	0x00b2
                           0000B3   389 _P3_3	=	0x00b3
                           0000B4   390 _P3_4	=	0x00b4
                           0000B5   391 _P3_5	=	0x00b5
                           0000B6   392 _P3_6	=	0x00b6
                           0000B7   393 _P3_7	=	0x00b7
                           0000B0   394 _RXD	=	0x00b0
                           0000B1   395 _TXD	=	0x00b1
                           0000B2   396 _INT0	=	0x00b2
                           0000B3   397 _INT1	=	0x00b3
                           0000B4   398 _T0	=	0x00b4
                           0000B5   399 _T1	=	0x00b5
                           0000B6   400 _WR	=	0x00b6
                           0000B7   401 _RD	=	0x00b7
                           0000B8   402 _PX0	=	0x00b8
                           0000B9   403 _PT0	=	0x00b9
                           0000BA   404 _PX1	=	0x00ba
                           0000BB   405 _PT1	=	0x00bb
                           0000BC   406 _PS	=	0x00bc
                           0000D0   407 _P	=	0x00d0
                           0000D1   408 _F1	=	0x00d1
                           0000D2   409 _OV	=	0x00d2
                           0000D3   410 _RS0	=	0x00d3
                           0000D4   411 _RS1	=	0x00d4
                           0000D5   412 _F0	=	0x00d5
                           0000D6   413 _AC	=	0x00d6
                           0000D7   414 _CY	=	0x00d7
                                    415 ;--------------------------------------------------------
                                    416 ; overlayable register banks
                                    417 ;--------------------------------------------------------
                                    418 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        419 	.ds 8
                                    420 ;--------------------------------------------------------
                                    421 ; internal ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area DSEG    (DATA)
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable items in internal ram 
                                    426 ;--------------------------------------------------------
                                    427 ;--------------------------------------------------------
                                    428 ; indirectly addressable internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area ISEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; absolute internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area IABS    (ABS,DATA)
                                    435 	.area IABS    (ABS,DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; bit data
                                    438 ;--------------------------------------------------------
                                    439 	.area BSEG    (BIT)
                                    440 ;--------------------------------------------------------
                                    441 ; paged external ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area PSEG    (PAG,XDATA)
                                    444 ;--------------------------------------------------------
                                    445 ; external ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area XSEG    (XDATA)
      00041A                        448 _putchar_c_65536_17:
      00041A                        449 	.ds 2
                                    450 ;--------------------------------------------------------
                                    451 ; absolute external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area XABS    (ABS,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; external initialized ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XISEG   (XDATA)
                                    458 	.area HOME    (CODE)
                                    459 	.area GSINIT0 (CODE)
                                    460 	.area GSINIT1 (CODE)
                                    461 	.area GSINIT2 (CODE)
                                    462 	.area GSINIT3 (CODE)
                                    463 	.area GSINIT4 (CODE)
                                    464 	.area GSINIT5 (CODE)
                                    465 	.area GSINIT  (CODE)
                                    466 	.area GSFINAL (CODE)
                                    467 	.area CSEG    (CODE)
                                    468 ;--------------------------------------------------------
                                    469 ; global & static initialisations
                                    470 ;--------------------------------------------------------
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area GSINIT  (CODE)
                                    475 ;--------------------------------------------------------
                                    476 ; Home
                                    477 ;--------------------------------------------------------
                                    478 	.area HOME    (CODE)
                                    479 	.area HOME    (CODE)
                                    480 ;--------------------------------------------------------
                                    481 ; code
                                    482 ;--------------------------------------------------------
                                    483 	.area CSEG    (CODE)
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'putchar'
                                    486 ;------------------------------------------------------------
                                    487 ;c                         Allocated with name '_putchar_c_65536_17'
                                    488 ;------------------------------------------------------------
                                    489 ;	uart.c:20: int putchar(int c)
                                    490 ;	-----------------------------------------
                                    491 ;	 function putchar
                                    492 ;	-----------------------------------------
      002170                        493 _putchar:
                           000007   494 	ar7 = 0x07
                           000006   495 	ar6 = 0x06
                           000005   496 	ar5 = 0x05
                           000004   497 	ar4 = 0x04
                           000003   498 	ar3 = 0x03
                           000002   499 	ar2 = 0x02
                           000001   500 	ar1 = 0x01
                           000000   501 	ar0 = 0x00
      002170 AF 83            [24]  502 	mov	r7,dph
      002172 E5 82            [12]  503 	mov	a,dpl
      002174 90 04 1A         [24]  504 	mov	dptr,#_putchar_c_65536_17
      002177 F0               [24]  505 	movx	@dptr,a
      002178 EF               [12]  506 	mov	a,r7
      002179 A3               [24]  507 	inc	dptr
      00217A F0               [24]  508 	movx	@dptr,a
                                    509 ;	uart.c:23: while (!TI);
      00217B                        510 00101$:
      00217B 30 99 FD         [24]  511 	jnb	_TI,00101$
                                    512 ;	uart.c:26: SBUF = c;
      00217E 90 04 1A         [24]  513 	mov	dptr,#_putchar_c_65536_17
      002181 E0               [24]  514 	movx	a,@dptr
      002182 FE               [12]  515 	mov	r6,a
      002183 A3               [24]  516 	inc	dptr
      002184 E0               [24]  517 	movx	a,@dptr
      002185 FF               [12]  518 	mov	r7,a
      002186 8E 99            [24]  519 	mov	_SBUF,r6
                                    520 ;	uart.c:29: TI = 0;
                                    521 ;	assignBit
      002188 C2 99            [12]  522 	clr	_TI
                                    523 ;	uart.c:32: return c;
      00218A 8E 82            [24]  524 	mov	dpl,r6
      00218C 8F 83            [24]  525 	mov	dph,r7
                                    526 ;	uart.c:33: }
      00218E 22               [24]  527 	ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'getchar'
                                    530 ;------------------------------------------------------------
                                    531 ;	uart.c:42: int getchar(void)
                                    532 ;	-----------------------------------------
                                    533 ;	 function getchar
                                    534 ;	-----------------------------------------
      00218F                        535 _getchar:
                                    536 ;	uart.c:45: while (!RI);
      00218F                        537 00101$:
                                    538 ;	uart.c:48: RI = 0;
                                    539 ;	assignBit
      00218F 10 98 02         [24]  540 	jbc	_RI,00114$
      002192 80 FB            [24]  541 	sjmp	00101$
      002194                        542 00114$:
                                    543 ;	uart.c:51: return SBUF;
      002194 AE 99            [24]  544 	mov	r6,_SBUF
      002196 7F 00            [12]  545 	mov	r7,#0x00
      002198 8E 82            [24]  546 	mov	dpl,r6
      00219A 8F 83            [24]  547 	mov	dph,r7
                                    548 ;	uart.c:52: }
      00219C 22               [24]  549 	ret
                                    550 	.area CSEG    (CODE)
                                    551 	.area CONST   (CODE)
                                    552 	.area XINIT   (CODE)
                                    553 	.area CABS    (ABS,CODE)
