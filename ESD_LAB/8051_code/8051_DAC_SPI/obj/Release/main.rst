                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _init_spi
                                     13 	.globl _printf_tiny
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _P5_7
                                     90 	.globl _P5_6
                                     91 	.globl _P5_5
                                     92 	.globl _P5_4
                                     93 	.globl _P5_3
                                     94 	.globl _P5_2
                                     95 	.globl _P5_1
                                     96 	.globl _P5_0
                                     97 	.globl _P4_7
                                     98 	.globl _P4_6
                                     99 	.globl _P4_5
                                    100 	.globl _P4_4
                                    101 	.globl _P4_3
                                    102 	.globl _P4_2
                                    103 	.globl _P4_1
                                    104 	.globl _P4_0
                                    105 	.globl _PX0L
                                    106 	.globl _PT0L
                                    107 	.globl _PX1L
                                    108 	.globl _PT1L
                                    109 	.globl _PSL
                                    110 	.globl _PT2L
                                    111 	.globl _PPCL
                                    112 	.globl _EC
                                    113 	.globl _CCF0
                                    114 	.globl _CCF1
                                    115 	.globl _CCF2
                                    116 	.globl _CCF3
                                    117 	.globl _CCF4
                                    118 	.globl _CR
                                    119 	.globl _CF
                                    120 	.globl _TF2
                                    121 	.globl _EXF2
                                    122 	.globl _RCLK
                                    123 	.globl _TCLK
                                    124 	.globl _EXEN2
                                    125 	.globl _TR2
                                    126 	.globl _C_T2
                                    127 	.globl _CP_RL2
                                    128 	.globl _T2CON_7
                                    129 	.globl _T2CON_6
                                    130 	.globl _T2CON_5
                                    131 	.globl _T2CON_4
                                    132 	.globl _T2CON_3
                                    133 	.globl _T2CON_2
                                    134 	.globl _T2CON_1
                                    135 	.globl _T2CON_0
                                    136 	.globl _PT2
                                    137 	.globl _ET2
                                    138 	.globl _B
                                    139 	.globl _ACC
                                    140 	.globl _PSW
                                    141 	.globl _IP
                                    142 	.globl _P3
                                    143 	.globl _IE
                                    144 	.globl _P2
                                    145 	.globl _SBUF
                                    146 	.globl _SCON
                                    147 	.globl _P1
                                    148 	.globl _TH1
                                    149 	.globl _TH0
                                    150 	.globl _TL1
                                    151 	.globl _TL0
                                    152 	.globl _TMOD
                                    153 	.globl _TCON
                                    154 	.globl _PCON
                                    155 	.globl _DPH
                                    156 	.globl _DPL
                                    157 	.globl _SP
                                    158 	.globl _P0
                                    159 	.globl _EECON
                                    160 	.globl _KBF
                                    161 	.globl _KBE
                                    162 	.globl _KBLS
                                    163 	.globl _BRL
                                    164 	.globl _BDRCON
                                    165 	.globl _T2MOD
                                    166 	.globl _SPDAT
                                    167 	.globl _SPSTA
                                    168 	.globl _SPCON
                                    169 	.globl _SADEN
                                    170 	.globl _SADDR
                                    171 	.globl _WDTPRG
                                    172 	.globl _WDTRST
                                    173 	.globl _P5
                                    174 	.globl _P4
                                    175 	.globl _IPH1
                                    176 	.globl _IPL1
                                    177 	.globl _IPH0
                                    178 	.globl _IPL0
                                    179 	.globl _IEN1
                                    180 	.globl _IEN0
                                    181 	.globl _CMOD
                                    182 	.globl _CL
                                    183 	.globl _CH
                                    184 	.globl _CCON
                                    185 	.globl _CCAPM4
                                    186 	.globl _CCAPM3
                                    187 	.globl _CCAPM2
                                    188 	.globl _CCAPM1
                                    189 	.globl _CCAPM0
                                    190 	.globl _CCAP4L
                                    191 	.globl _CCAP3L
                                    192 	.globl _CCAP2L
                                    193 	.globl _CCAP1L
                                    194 	.globl _CCAP0L
                                    195 	.globl _CCAP4H
                                    196 	.globl _CCAP3H
                                    197 	.globl _CCAP2H
                                    198 	.globl _CCAP1H
                                    199 	.globl _CCAP0H
                                    200 	.globl _CKCON1
                                    201 	.globl _CKCON0
                                    202 	.globl _CKRL
                                    203 	.globl _AUXR1
                                    204 	.globl _AUXR
                                    205 	.globl _TH2
                                    206 	.globl _TL2
                                    207 	.globl _RCAP2H
                                    208 	.globl _RCAP2L
                                    209 	.globl _T2CON
                                    210 ;--------------------------------------------------------
                                    211 ; special function registers
                                    212 ;--------------------------------------------------------
                                    213 	.area RSEG    (ABS,DATA)
      000000                        214 	.org 0x0000
                           0000C8   215 _T2CON	=	0x00c8
                           0000CA   216 _RCAP2L	=	0x00ca
                           0000CB   217 _RCAP2H	=	0x00cb
                           0000CC   218 _TL2	=	0x00cc
                           0000CD   219 _TH2	=	0x00cd
                           00008E   220 _AUXR	=	0x008e
                           0000A2   221 _AUXR1	=	0x00a2
                           000097   222 _CKRL	=	0x0097
                           00008F   223 _CKCON0	=	0x008f
                           0000AF   224 _CKCON1	=	0x00af
                           0000FA   225 _CCAP0H	=	0x00fa
                           0000FB   226 _CCAP1H	=	0x00fb
                           0000FC   227 _CCAP2H	=	0x00fc
                           0000FD   228 _CCAP3H	=	0x00fd
                           0000FE   229 _CCAP4H	=	0x00fe
                           0000EA   230 _CCAP0L	=	0x00ea
                           0000EB   231 _CCAP1L	=	0x00eb
                           0000EC   232 _CCAP2L	=	0x00ec
                           0000ED   233 _CCAP3L	=	0x00ed
                           0000EE   234 _CCAP4L	=	0x00ee
                           0000DA   235 _CCAPM0	=	0x00da
                           0000DB   236 _CCAPM1	=	0x00db
                           0000DC   237 _CCAPM2	=	0x00dc
                           0000DD   238 _CCAPM3	=	0x00dd
                           0000DE   239 _CCAPM4	=	0x00de
                           0000D8   240 _CCON	=	0x00d8
                           0000F9   241 _CH	=	0x00f9
                           0000E9   242 _CL	=	0x00e9
                           0000D9   243 _CMOD	=	0x00d9
                           0000A8   244 _IEN0	=	0x00a8
                           0000B1   245 _IEN1	=	0x00b1
                           0000B8   246 _IPL0	=	0x00b8
                           0000B7   247 _IPH0	=	0x00b7
                           0000B2   248 _IPL1	=	0x00b2
                           0000B3   249 _IPH1	=	0x00b3
                           0000C0   250 _P4	=	0x00c0
                           0000E8   251 _P5	=	0x00e8
                           0000A6   252 _WDTRST	=	0x00a6
                           0000A7   253 _WDTPRG	=	0x00a7
                           0000A9   254 _SADDR	=	0x00a9
                           0000B9   255 _SADEN	=	0x00b9
                           0000C3   256 _SPCON	=	0x00c3
                           0000C4   257 _SPSTA	=	0x00c4
                           0000C5   258 _SPDAT	=	0x00c5
                           0000C9   259 _T2MOD	=	0x00c9
                           00009B   260 _BDRCON	=	0x009b
                           00009A   261 _BRL	=	0x009a
                           00009C   262 _KBLS	=	0x009c
                           00009D   263 _KBE	=	0x009d
                           00009E   264 _KBF	=	0x009e
                           0000D2   265 _EECON	=	0x00d2
                           000080   266 _P0	=	0x0080
                           000081   267 _SP	=	0x0081
                           000082   268 _DPL	=	0x0082
                           000083   269 _DPH	=	0x0083
                           000087   270 _PCON	=	0x0087
                           000088   271 _TCON	=	0x0088
                           000089   272 _TMOD	=	0x0089
                           00008A   273 _TL0	=	0x008a
                           00008B   274 _TL1	=	0x008b
                           00008C   275 _TH0	=	0x008c
                           00008D   276 _TH1	=	0x008d
                           000090   277 _P1	=	0x0090
                           000098   278 _SCON	=	0x0098
                           000099   279 _SBUF	=	0x0099
                           0000A0   280 _P2	=	0x00a0
                           0000A8   281 _IE	=	0x00a8
                           0000B0   282 _P3	=	0x00b0
                           0000B8   283 _IP	=	0x00b8
                           0000D0   284 _PSW	=	0x00d0
                           0000E0   285 _ACC	=	0x00e0
                           0000F0   286 _B	=	0x00f0
                                    287 ;--------------------------------------------------------
                                    288 ; special function bits
                                    289 ;--------------------------------------------------------
                                    290 	.area RSEG    (ABS,DATA)
      000000                        291 	.org 0x0000
                           0000AD   292 _ET2	=	0x00ad
                           0000BD   293 _PT2	=	0x00bd
                           0000C8   294 _T2CON_0	=	0x00c8
                           0000C9   295 _T2CON_1	=	0x00c9
                           0000CA   296 _T2CON_2	=	0x00ca
                           0000CB   297 _T2CON_3	=	0x00cb
                           0000CC   298 _T2CON_4	=	0x00cc
                           0000CD   299 _T2CON_5	=	0x00cd
                           0000CE   300 _T2CON_6	=	0x00ce
                           0000CF   301 _T2CON_7	=	0x00cf
                           0000C8   302 _CP_RL2	=	0x00c8
                           0000C9   303 _C_T2	=	0x00c9
                           0000CA   304 _TR2	=	0x00ca
                           0000CB   305 _EXEN2	=	0x00cb
                           0000CC   306 _TCLK	=	0x00cc
                           0000CD   307 _RCLK	=	0x00cd
                           0000CE   308 _EXF2	=	0x00ce
                           0000CF   309 _TF2	=	0x00cf
                           0000DF   310 _CF	=	0x00df
                           0000DE   311 _CR	=	0x00de
                           0000DC   312 _CCF4	=	0x00dc
                           0000DB   313 _CCF3	=	0x00db
                           0000DA   314 _CCF2	=	0x00da
                           0000D9   315 _CCF1	=	0x00d9
                           0000D8   316 _CCF0	=	0x00d8
                           0000AE   317 _EC	=	0x00ae
                           0000BE   318 _PPCL	=	0x00be
                           0000BD   319 _PT2L	=	0x00bd
                           0000BC   320 _PSL	=	0x00bc
                           0000BB   321 _PT1L	=	0x00bb
                           0000BA   322 _PX1L	=	0x00ba
                           0000B9   323 _PT0L	=	0x00b9
                           0000B8   324 _PX0L	=	0x00b8
                           0000C0   325 _P4_0	=	0x00c0
                           0000C1   326 _P4_1	=	0x00c1
                           0000C2   327 _P4_2	=	0x00c2
                           0000C3   328 _P4_3	=	0x00c3
                           0000C4   329 _P4_4	=	0x00c4
                           0000C5   330 _P4_5	=	0x00c5
                           0000C6   331 _P4_6	=	0x00c6
                           0000C7   332 _P4_7	=	0x00c7
                           0000E8   333 _P5_0	=	0x00e8
                           0000E9   334 _P5_1	=	0x00e9
                           0000EA   335 _P5_2	=	0x00ea
                           0000EB   336 _P5_3	=	0x00eb
                           0000EC   337 _P5_4	=	0x00ec
                           0000ED   338 _P5_5	=	0x00ed
                           0000EE   339 _P5_6	=	0x00ee
                           0000EF   340 _P5_7	=	0x00ef
                           000080   341 _P0_0	=	0x0080
                           000081   342 _P0_1	=	0x0081
                           000082   343 _P0_2	=	0x0082
                           000083   344 _P0_3	=	0x0083
                           000084   345 _P0_4	=	0x0084
                           000085   346 _P0_5	=	0x0085
                           000086   347 _P0_6	=	0x0086
                           000087   348 _P0_7	=	0x0087
                           000088   349 _IT0	=	0x0088
                           000089   350 _IE0	=	0x0089
                           00008A   351 _IT1	=	0x008a
                           00008B   352 _IE1	=	0x008b
                           00008C   353 _TR0	=	0x008c
                           00008D   354 _TF0	=	0x008d
                           00008E   355 _TR1	=	0x008e
                           00008F   356 _TF1	=	0x008f
                           000090   357 _P1_0	=	0x0090
                           000091   358 _P1_1	=	0x0091
                           000092   359 _P1_2	=	0x0092
                           000093   360 _P1_3	=	0x0093
                           000094   361 _P1_4	=	0x0094
                           000095   362 _P1_5	=	0x0095
                           000096   363 _P1_6	=	0x0096
                           000097   364 _P1_7	=	0x0097
                           000098   365 _RI	=	0x0098
                           000099   366 _TI	=	0x0099
                           00009A   367 _RB8	=	0x009a
                           00009B   368 _TB8	=	0x009b
                           00009C   369 _REN	=	0x009c
                           00009D   370 _SM2	=	0x009d
                           00009E   371 _SM1	=	0x009e
                           00009F   372 _SM0	=	0x009f
                           0000A0   373 _P2_0	=	0x00a0
                           0000A1   374 _P2_1	=	0x00a1
                           0000A2   375 _P2_2	=	0x00a2
                           0000A3   376 _P2_3	=	0x00a3
                           0000A4   377 _P2_4	=	0x00a4
                           0000A5   378 _P2_5	=	0x00a5
                           0000A6   379 _P2_6	=	0x00a6
                           0000A7   380 _P2_7	=	0x00a7
                           0000A8   381 _EX0	=	0x00a8
                           0000A9   382 _ET0	=	0x00a9
                           0000AA   383 _EX1	=	0x00aa
                           0000AB   384 _ET1	=	0x00ab
                           0000AC   385 _ES	=	0x00ac
                           0000AF   386 _EA	=	0x00af
                           0000B0   387 _P3_0	=	0x00b0
                           0000B1   388 _P3_1	=	0x00b1
                           0000B2   389 _P3_2	=	0x00b2
                           0000B3   390 _P3_3	=	0x00b3
                           0000B4   391 _P3_4	=	0x00b4
                           0000B5   392 _P3_5	=	0x00b5
                           0000B6   393 _P3_6	=	0x00b6
                           0000B7   394 _P3_7	=	0x00b7
                           0000B0   395 _RXD	=	0x00b0
                           0000B1   396 _TXD	=	0x00b1
                           0000B2   397 _INT0	=	0x00b2
                           0000B3   398 _INT1	=	0x00b3
                           0000B4   399 _T0	=	0x00b4
                           0000B5   400 _T1	=	0x00b5
                           0000B6   401 _WR	=	0x00b6
                           0000B7   402 _RD	=	0x00b7
                           0000B8   403 _PX0	=	0x00b8
                           0000B9   404 _PT0	=	0x00b9
                           0000BA   405 _PX1	=	0x00ba
                           0000BB   406 _PT1	=	0x00bb
                           0000BC   407 _PS	=	0x00bc
                           0000D0   408 _P	=	0x00d0
                           0000D1   409 _F1	=	0x00d1
                           0000D2   410 _OV	=	0x00d2
                           0000D3   411 _RS0	=	0x00d3
                           0000D4   412 _RS1	=	0x00d4
                           0000D5   413 _F0	=	0x00d5
                           0000D6   414 _AC	=	0x00d6
                           0000D7   415 _CY	=	0x00d7
                                    416 ;--------------------------------------------------------
                                    417 ; overlayable register banks
                                    418 ;--------------------------------------------------------
                                    419 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        420 	.ds 8
                                    421 ;--------------------------------------------------------
                                    422 ; internal ram data
                                    423 ;--------------------------------------------------------
                                    424 	.area DSEG    (DATA)
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable items in internal ram 
                                    427 ;--------------------------------------------------------
                                    428 ;--------------------------------------------------------
                                    429 ; Stack segment in internal ram 
                                    430 ;--------------------------------------------------------
                                    431 	.area	SSEG
      000009                        432 __start__stack:
      000009                        433 	.ds	1
                                    434 
                                    435 ;--------------------------------------------------------
                                    436 ; indirectly addressable internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area ISEG    (DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; absolute internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area IABS    (ABS,DATA)
                                    443 	.area IABS    (ABS,DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; bit data
                                    446 ;--------------------------------------------------------
                                    447 	.area BSEG    (BIT)
                                    448 ;--------------------------------------------------------
                                    449 ; paged external ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area PSEG    (PAG,XDATA)
                                    452 ;--------------------------------------------------------
                                    453 ; external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area XSEG    (XDATA)
                                    456 ;--------------------------------------------------------
                                    457 ; absolute external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XABS    (ABS,XDATA)
                                    460 ;--------------------------------------------------------
                                    461 ; external initialized ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area XISEG   (XDATA)
                                    464 	.area HOME    (CODE)
                                    465 	.area GSINIT0 (CODE)
                                    466 	.area GSINIT1 (CODE)
                                    467 	.area GSINIT2 (CODE)
                                    468 	.area GSINIT3 (CODE)
                                    469 	.area GSINIT4 (CODE)
                                    470 	.area GSINIT5 (CODE)
                                    471 	.area GSINIT  (CODE)
                                    472 	.area GSFINAL (CODE)
                                    473 	.area CSEG    (CODE)
                                    474 ;--------------------------------------------------------
                                    475 ; interrupt vector 
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
      002000                        478 __interrupt_vect:
      002000 02 20 06         [24]  479 	ljmp	__sdcc_gsinit_startup
                                    480 ;--------------------------------------------------------
                                    481 ; global & static initialisations
                                    482 ;--------------------------------------------------------
                                    483 	.area HOME    (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 	.area GSFINAL (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 	.globl __sdcc_gsinit_startup
                                    488 	.globl __sdcc_program_startup
                                    489 	.globl __start__stack
                                    490 	.globl __mcs51_genXINIT
                                    491 	.globl __mcs51_genXRAMCLEAR
                                    492 	.globl __mcs51_genRAMCLEAR
                                    493 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  494 	ljmp	__sdcc_program_startup
                                    495 ;--------------------------------------------------------
                                    496 ; Home
                                    497 ;--------------------------------------------------------
                                    498 	.area HOME    (CODE)
                                    499 	.area HOME    (CODE)
      002003                        500 __sdcc_program_startup:
      002003 02 20 62         [24]  501 	ljmp	_main
                                    502 ;	return from main will return to caller
                                    503 ;--------------------------------------------------------
                                    504 ; code
                                    505 ;--------------------------------------------------------
                                    506 	.area CSEG    (CODE)
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'main'
                                    509 ;------------------------------------------------------------
                                    510 ;	main.c:17: void main()
                                    511 ;	-----------------------------------------
                                    512 ;	 function main
                                    513 ;	-----------------------------------------
      002062                        514 _main:
                           000007   515 	ar7 = 0x07
                           000006   516 	ar6 = 0x06
                           000005   517 	ar5 = 0x05
                           000004   518 	ar4 = 0x04
                           000003   519 	ar3 = 0x03
                           000002   520 	ar2 = 0x02
                           000001   521 	ar1 = 0x01
                           000000   522 	ar0 = 0x00
                                    523 ;	main.c:19: printf_tiny("Initializing SPI\n\r");
      002062 74 C6            [12]  524 	mov	a,#___str_0
      002064 C0 E0            [24]  525 	push	acc
      002066 74 22            [12]  526 	mov	a,#(___str_0 >> 8)
      002068 C0 E0            [24]  527 	push	acc
      00206A 12 21 9D         [24]  528 	lcall	_printf_tiny
      00206D 15 81            [12]  529 	dec	sp
      00206F 15 81            [12]  530 	dec	sp
                                    531 ;	main.c:20: init_spi();
                                    532 ;	main.c:21: }
      002071 02 21 5B         [24]  533 	ljmp	_init_spi
                                    534 	.area CSEG    (CODE)
                                    535 	.area CONST   (CODE)
                                    536 	.area CONST   (CODE)
      0022C6                        537 ___str_0:
      0022C6 49 6E 69 74 69 61 6C   538 	.ascii "Initializing SPI"
             69 7A 69 6E 67 20 53
             50 49
      0022D6 0A                     539 	.db 0x0a
      0022D7 0D                     540 	.db 0x0d
      0022D8 00                     541 	.db 0x00
                                    542 	.area CSEG    (CODE)
                                    543 	.area XINIT   (CODE)
                                    544 	.area CABS    (ABS,CODE)
