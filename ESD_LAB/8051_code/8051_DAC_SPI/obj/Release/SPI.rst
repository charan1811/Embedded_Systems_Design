                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module SPI
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _EECON
                                    137 	.globl _KBF
                                    138 	.globl _KBE
                                    139 	.globl _KBLS
                                    140 	.globl _BRL
                                    141 	.globl _BDRCON
                                    142 	.globl _T2MOD
                                    143 	.globl _SPDAT
                                    144 	.globl _SPSTA
                                    145 	.globl _SPCON
                                    146 	.globl _SADEN
                                    147 	.globl _SADDR
                                    148 	.globl _WDTPRG
                                    149 	.globl _WDTRST
                                    150 	.globl _P5
                                    151 	.globl _P4
                                    152 	.globl _IPH1
                                    153 	.globl _IPL1
                                    154 	.globl _IPH0
                                    155 	.globl _IPL0
                                    156 	.globl _IEN1
                                    157 	.globl _IEN0
                                    158 	.globl _CMOD
                                    159 	.globl _CL
                                    160 	.globl _CH
                                    161 	.globl _CCON
                                    162 	.globl _CCAPM4
                                    163 	.globl _CCAPM3
                                    164 	.globl _CCAPM2
                                    165 	.globl _CCAPM1
                                    166 	.globl _CCAPM0
                                    167 	.globl _CCAP4L
                                    168 	.globl _CCAP3L
                                    169 	.globl _CCAP2L
                                    170 	.globl _CCAP1L
                                    171 	.globl _CCAP0L
                                    172 	.globl _CCAP4H
                                    173 	.globl _CCAP3H
                                    174 	.globl _CCAP2H
                                    175 	.globl _CCAP1H
                                    176 	.globl _CCAP0H
                                    177 	.globl _CKCON1
                                    178 	.globl _CKCON0
                                    179 	.globl _CKRL
                                    180 	.globl _AUXR1
                                    181 	.globl _AUXR
                                    182 	.globl _TH2
                                    183 	.globl _TL2
                                    184 	.globl _RCAP2H
                                    185 	.globl _RCAP2L
                                    186 	.globl _T2CON
                                    187 	.globl _B
                                    188 	.globl _ACC
                                    189 	.globl _PSW
                                    190 	.globl _IP
                                    191 	.globl _P3
                                    192 	.globl _IE
                                    193 	.globl _P2
                                    194 	.globl _SBUF
                                    195 	.globl _SCON
                                    196 	.globl _P1
                                    197 	.globl _TH1
                                    198 	.globl _TH0
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TMOD
                                    202 	.globl _TCON
                                    203 	.globl _PCON
                                    204 	.globl _DPH
                                    205 	.globl _DPL
                                    206 	.globl _SP
                                    207 	.globl _P0
                                    208 	.globl _generate_sin_wave
                                    209 	.globl _init_spi
                                    210 ;--------------------------------------------------------
                                    211 ; special function registers
                                    212 ;--------------------------------------------------------
                                    213 	.area RSEG    (ABS,DATA)
      000000                        214 	.org 0x0000
                           000080   215 _P0	=	0x0080
                           000081   216 _SP	=	0x0081
                           000082   217 _DPL	=	0x0082
                           000083   218 _DPH	=	0x0083
                           000087   219 _PCON	=	0x0087
                           000088   220 _TCON	=	0x0088
                           000089   221 _TMOD	=	0x0089
                           00008A   222 _TL0	=	0x008a
                           00008B   223 _TL1	=	0x008b
                           00008C   224 _TH0	=	0x008c
                           00008D   225 _TH1	=	0x008d
                           000090   226 _P1	=	0x0090
                           000098   227 _SCON	=	0x0098
                           000099   228 _SBUF	=	0x0099
                           0000A0   229 _P2	=	0x00a0
                           0000A8   230 _IE	=	0x00a8
                           0000B0   231 _P3	=	0x00b0
                           0000B8   232 _IP	=	0x00b8
                           0000D0   233 _PSW	=	0x00d0
                           0000E0   234 _ACC	=	0x00e0
                           0000F0   235 _B	=	0x00f0
                           0000C8   236 _T2CON	=	0x00c8
                           0000CA   237 _RCAP2L	=	0x00ca
                           0000CB   238 _RCAP2H	=	0x00cb
                           0000CC   239 _TL2	=	0x00cc
                           0000CD   240 _TH2	=	0x00cd
                           00008E   241 _AUXR	=	0x008e
                           0000A2   242 _AUXR1	=	0x00a2
                           000097   243 _CKRL	=	0x0097
                           00008F   244 _CKCON0	=	0x008f
                           0000AF   245 _CKCON1	=	0x00af
                           0000FA   246 _CCAP0H	=	0x00fa
                           0000FB   247 _CCAP1H	=	0x00fb
                           0000FC   248 _CCAP2H	=	0x00fc
                           0000FD   249 _CCAP3H	=	0x00fd
                           0000FE   250 _CCAP4H	=	0x00fe
                           0000EA   251 _CCAP0L	=	0x00ea
                           0000EB   252 _CCAP1L	=	0x00eb
                           0000EC   253 _CCAP2L	=	0x00ec
                           0000ED   254 _CCAP3L	=	0x00ed
                           0000EE   255 _CCAP4L	=	0x00ee
                           0000DA   256 _CCAPM0	=	0x00da
                           0000DB   257 _CCAPM1	=	0x00db
                           0000DC   258 _CCAPM2	=	0x00dc
                           0000DD   259 _CCAPM3	=	0x00dd
                           0000DE   260 _CCAPM4	=	0x00de
                           0000D8   261 _CCON	=	0x00d8
                           0000F9   262 _CH	=	0x00f9
                           0000E9   263 _CL	=	0x00e9
                           0000D9   264 _CMOD	=	0x00d9
                           0000A8   265 _IEN0	=	0x00a8
                           0000B1   266 _IEN1	=	0x00b1
                           0000B8   267 _IPL0	=	0x00b8
                           0000B7   268 _IPH0	=	0x00b7
                           0000B2   269 _IPL1	=	0x00b2
                           0000B3   270 _IPH1	=	0x00b3
                           0000C0   271 _P4	=	0x00c0
                           0000E8   272 _P5	=	0x00e8
                           0000A6   273 _WDTRST	=	0x00a6
                           0000A7   274 _WDTPRG	=	0x00a7
                           0000A9   275 _SADDR	=	0x00a9
                           0000B9   276 _SADEN	=	0x00b9
                           0000C3   277 _SPCON	=	0x00c3
                           0000C4   278 _SPSTA	=	0x00c4
                           0000C5   279 _SPDAT	=	0x00c5
                           0000C9   280 _T2MOD	=	0x00c9
                           00009B   281 _BDRCON	=	0x009b
                           00009A   282 _BRL	=	0x009a
                           00009C   283 _KBLS	=	0x009c
                           00009D   284 _KBE	=	0x009d
                           00009E   285 _KBF	=	0x009e
                           0000D2   286 _EECON	=	0x00d2
                                    287 ;--------------------------------------------------------
                                    288 ; special function bits
                                    289 ;--------------------------------------------------------
                                    290 	.area RSEG    (ABS,DATA)
      000000                        291 	.org 0x0000
                           000080   292 _P0_0	=	0x0080
                           000081   293 _P0_1	=	0x0081
                           000082   294 _P0_2	=	0x0082
                           000083   295 _P0_3	=	0x0083
                           000084   296 _P0_4	=	0x0084
                           000085   297 _P0_5	=	0x0085
                           000086   298 _P0_6	=	0x0086
                           000087   299 _P0_7	=	0x0087
                           000088   300 _IT0	=	0x0088
                           000089   301 _IE0	=	0x0089
                           00008A   302 _IT1	=	0x008a
                           00008B   303 _IE1	=	0x008b
                           00008C   304 _TR0	=	0x008c
                           00008D   305 _TF0	=	0x008d
                           00008E   306 _TR1	=	0x008e
                           00008F   307 _TF1	=	0x008f
                           000090   308 _P1_0	=	0x0090
                           000091   309 _P1_1	=	0x0091
                           000092   310 _P1_2	=	0x0092
                           000093   311 _P1_3	=	0x0093
                           000094   312 _P1_4	=	0x0094
                           000095   313 _P1_5	=	0x0095
                           000096   314 _P1_6	=	0x0096
                           000097   315 _P1_7	=	0x0097
                           000098   316 _RI	=	0x0098
                           000099   317 _TI	=	0x0099
                           00009A   318 _RB8	=	0x009a
                           00009B   319 _TB8	=	0x009b
                           00009C   320 _REN	=	0x009c
                           00009D   321 _SM2	=	0x009d
                           00009E   322 _SM1	=	0x009e
                           00009F   323 _SM0	=	0x009f
                           0000A0   324 _P2_0	=	0x00a0
                           0000A1   325 _P2_1	=	0x00a1
                           0000A2   326 _P2_2	=	0x00a2
                           0000A3   327 _P2_3	=	0x00a3
                           0000A4   328 _P2_4	=	0x00a4
                           0000A5   329 _P2_5	=	0x00a5
                           0000A6   330 _P2_6	=	0x00a6
                           0000A7   331 _P2_7	=	0x00a7
                           0000A8   332 _EX0	=	0x00a8
                           0000A9   333 _ET0	=	0x00a9
                           0000AA   334 _EX1	=	0x00aa
                           0000AB   335 _ET1	=	0x00ab
                           0000AC   336 _ES	=	0x00ac
                           0000AF   337 _EA	=	0x00af
                           0000B0   338 _P3_0	=	0x00b0
                           0000B1   339 _P3_1	=	0x00b1
                           0000B2   340 _P3_2	=	0x00b2
                           0000B3   341 _P3_3	=	0x00b3
                           0000B4   342 _P3_4	=	0x00b4
                           0000B5   343 _P3_5	=	0x00b5
                           0000B6   344 _P3_6	=	0x00b6
                           0000B7   345 _P3_7	=	0x00b7
                           0000B0   346 _RXD	=	0x00b0
                           0000B1   347 _TXD	=	0x00b1
                           0000B2   348 _INT0	=	0x00b2
                           0000B3   349 _INT1	=	0x00b3
                           0000B4   350 _T0	=	0x00b4
                           0000B5   351 _T1	=	0x00b5
                           0000B6   352 _WR	=	0x00b6
                           0000B7   353 _RD	=	0x00b7
                           0000B8   354 _PX0	=	0x00b8
                           0000B9   355 _PT0	=	0x00b9
                           0000BA   356 _PX1	=	0x00ba
                           0000BB   357 _PT1	=	0x00bb
                           0000BC   358 _PS	=	0x00bc
                           0000D0   359 _P	=	0x00d0
                           0000D1   360 _F1	=	0x00d1
                           0000D2   361 _OV	=	0x00d2
                           0000D3   362 _RS0	=	0x00d3
                           0000D4   363 _RS1	=	0x00d4
                           0000D5   364 _F0	=	0x00d5
                           0000D6   365 _AC	=	0x00d6
                           0000D7   366 _CY	=	0x00d7
                           0000AD   367 _ET2	=	0x00ad
                           0000BD   368 _PT2	=	0x00bd
                           0000C8   369 _T2CON_0	=	0x00c8
                           0000C9   370 _T2CON_1	=	0x00c9
                           0000CA   371 _T2CON_2	=	0x00ca
                           0000CB   372 _T2CON_3	=	0x00cb
                           0000CC   373 _T2CON_4	=	0x00cc
                           0000CD   374 _T2CON_5	=	0x00cd
                           0000CE   375 _T2CON_6	=	0x00ce
                           0000CF   376 _T2CON_7	=	0x00cf
                           0000C8   377 _CP_RL2	=	0x00c8
                           0000C9   378 _C_T2	=	0x00c9
                           0000CA   379 _TR2	=	0x00ca
                           0000CB   380 _EXEN2	=	0x00cb
                           0000CC   381 _TCLK	=	0x00cc
                           0000CD   382 _RCLK	=	0x00cd
                           0000CE   383 _EXF2	=	0x00ce
                           0000CF   384 _TF2	=	0x00cf
                           0000DF   385 _CF	=	0x00df
                           0000DE   386 _CR	=	0x00de
                           0000DC   387 _CCF4	=	0x00dc
                           0000DB   388 _CCF3	=	0x00db
                           0000DA   389 _CCF2	=	0x00da
                           0000D9   390 _CCF1	=	0x00d9
                           0000D8   391 _CCF0	=	0x00d8
                           0000AE   392 _EC	=	0x00ae
                           0000BE   393 _PPCL	=	0x00be
                           0000BD   394 _PT2L	=	0x00bd
                           0000BC   395 _PSL	=	0x00bc
                           0000BB   396 _PT1L	=	0x00bb
                           0000BA   397 _PX1L	=	0x00ba
                           0000B9   398 _PT0L	=	0x00b9
                           0000B8   399 _PX0L	=	0x00b8
                           0000C0   400 _P4_0	=	0x00c0
                           0000C1   401 _P4_1	=	0x00c1
                           0000C2   402 _P4_2	=	0x00c2
                           0000C3   403 _P4_3	=	0x00c3
                           0000C4   404 _P4_4	=	0x00c4
                           0000C5   405 _P4_5	=	0x00c5
                           0000C6   406 _P4_6	=	0x00c6
                           0000C7   407 _P4_7	=	0x00c7
                           0000E8   408 _P5_0	=	0x00e8
                           0000E9   409 _P5_1	=	0x00e9
                           0000EA   410 _P5_2	=	0x00ea
                           0000EB   411 _P5_3	=	0x00eb
                           0000EC   412 _P5_4	=	0x00ec
                           0000ED   413 _P5_5	=	0x00ed
                           0000EE   414 _P5_6	=	0x00ee
                           0000EF   415 _P5_7	=	0x00ef
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
                                    429 ; indirectly addressable internal ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area ISEG    (DATA)
                                    432 ;--------------------------------------------------------
                                    433 ; absolute internal ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area IABS    (ABS,DATA)
                                    436 	.area IABS    (ABS,DATA)
                                    437 ;--------------------------------------------------------
                                    438 ; bit data
                                    439 ;--------------------------------------------------------
                                    440 	.area BSEG    (BIT)
                                    441 ;--------------------------------------------------------
                                    442 ; paged external ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area PSEG    (PAG,XDATA)
                                    445 ;--------------------------------------------------------
                                    446 ; external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area XSEG    (XDATA)
      000400                        449 _generate_sin_wave_input_data_65536_15:
      000400                        450 	.ds 24
      000418                        451 _generate_sin_wave_i_196608_17:
      000418                        452 	.ds 2
                                    453 ;--------------------------------------------------------
                                    454 ; absolute external ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area XABS    (ABS,XDATA)
                                    457 ;--------------------------------------------------------
                                    458 ; external initialized ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area XISEG   (XDATA)
                                    461 	.area HOME    (CODE)
                                    462 	.area GSINIT0 (CODE)
                                    463 	.area GSINIT1 (CODE)
                                    464 	.area GSINIT2 (CODE)
                                    465 	.area GSINIT3 (CODE)
                                    466 	.area GSINIT4 (CODE)
                                    467 	.area GSINIT5 (CODE)
                                    468 	.area GSINIT  (CODE)
                                    469 	.area GSFINAL (CODE)
                                    470 	.area CSEG    (CODE)
                                    471 ;--------------------------------------------------------
                                    472 ; global & static initialisations
                                    473 ;--------------------------------------------------------
                                    474 	.area HOME    (CODE)
                                    475 	.area GSINIT  (CODE)
                                    476 	.area GSFINAL (CODE)
                                    477 	.area GSINIT  (CODE)
                                    478 ;--------------------------------------------------------
                                    479 ; Home
                                    480 ;--------------------------------------------------------
                                    481 	.area HOME    (CODE)
                                    482 	.area HOME    (CODE)
                                    483 ;--------------------------------------------------------
                                    484 ; code
                                    485 ;--------------------------------------------------------
                                    486 	.area CSEG    (CODE)
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'generate_sin_wave'
                                    489 ;------------------------------------------------------------
                                    490 ;input_data                Allocated with name '_generate_sin_wave_input_data_65536_15'
                                    491 ;i                         Allocated with name '_generate_sin_wave_i_196608_17'
                                    492 ;------------------------------------------------------------
                                    493 ;	SPI.c:20: void generate_sin_wave()
                                    494 ;	-----------------------------------------
                                    495 ;	 function generate_sin_wave
                                    496 ;	-----------------------------------------
      002074                        497 _generate_sin_wave:
                           000007   498 	ar7 = 0x07
                           000006   499 	ar6 = 0x06
                           000005   500 	ar5 = 0x05
                           000004   501 	ar4 = 0x04
                           000003   502 	ar3 = 0x03
                           000002   503 	ar2 = 0x02
                           000001   504 	ar1 = 0x01
                           000000   505 	ar0 = 0x00
                                    506 ;	SPI.c:22: unsigned char input_data[24] = {0x18, 0x0, 0x1c, 0x0, 0x1e, 0xe0, 0x1f, 0xf0, 0x1e, 0xe0, 0x1c, 0x0, 0x18, 0x0, 0x14, 0x0, 0x11, 0x10, 0x10, 0x0, 0x11, 0x10, 0x14, 0x0};
      002074 90 04 00         [24]  507 	mov	dptr,#_generate_sin_wave_input_data_65536_15
      002077 74 18            [12]  508 	mov	a,#0x18
      002079 F0               [24]  509 	movx	@dptr,a
      00207A 90 04 01         [24]  510 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0001)
      00207D E4               [12]  511 	clr	a
      00207E F0               [24]  512 	movx	@dptr,a
      00207F 90 04 02         [24]  513 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0002)
      002082 74 1C            [12]  514 	mov	a,#0x1c
      002084 F0               [24]  515 	movx	@dptr,a
      002085 90 04 03         [24]  516 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0003)
      002088 E4               [12]  517 	clr	a
      002089 F0               [24]  518 	movx	@dptr,a
      00208A 90 04 04         [24]  519 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0004)
      00208D 74 1E            [12]  520 	mov	a,#0x1e
      00208F F0               [24]  521 	movx	@dptr,a
      002090 90 04 05         [24]  522 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0005)
      002093 74 E0            [12]  523 	mov	a,#0xe0
      002095 F0               [24]  524 	movx	@dptr,a
      002096 90 04 06         [24]  525 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0006)
      002099 F4               [12]  526 	cpl	a
      00209A F0               [24]  527 	movx	@dptr,a
      00209B 90 04 07         [24]  528 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0007)
      00209E 74 F0            [12]  529 	mov	a,#0xf0
      0020A0 F0               [24]  530 	movx	@dptr,a
      0020A1 90 04 08         [24]  531 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0008)
      0020A4 74 1E            [12]  532 	mov	a,#0x1e
      0020A6 F0               [24]  533 	movx	@dptr,a
      0020A7 90 04 09         [24]  534 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0009)
      0020AA 74 E0            [12]  535 	mov	a,#0xe0
      0020AC F0               [24]  536 	movx	@dptr,a
      0020AD 90 04 0A         [24]  537 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x000a)
      0020B0 74 1C            [12]  538 	mov	a,#0x1c
      0020B2 F0               [24]  539 	movx	@dptr,a
      0020B3 90 04 0B         [24]  540 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x000b)
      0020B6 E4               [12]  541 	clr	a
      0020B7 F0               [24]  542 	movx	@dptr,a
      0020B8 90 04 0C         [24]  543 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x000c)
      0020BB 74 18            [12]  544 	mov	a,#0x18
      0020BD F0               [24]  545 	movx	@dptr,a
      0020BE 90 04 0D         [24]  546 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x000d)
      0020C1 E4               [12]  547 	clr	a
      0020C2 F0               [24]  548 	movx	@dptr,a
      0020C3 90 04 0E         [24]  549 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x000e)
      0020C6 74 14            [12]  550 	mov	a,#0x14
      0020C8 F0               [24]  551 	movx	@dptr,a
      0020C9 90 04 0F         [24]  552 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x000f)
      0020CC E4               [12]  553 	clr	a
      0020CD F0               [24]  554 	movx	@dptr,a
      0020CE 90 04 10         [24]  555 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0010)
      0020D1 74 11            [12]  556 	mov	a,#0x11
      0020D3 F0               [24]  557 	movx	@dptr,a
      0020D4 90 04 11         [24]  558 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0011)
      0020D7 14               [12]  559 	dec	a
      0020D8 F0               [24]  560 	movx	@dptr,a
      0020D9 90 04 12         [24]  561 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0012)
      0020DC F0               [24]  562 	movx	@dptr,a
      0020DD 90 04 13         [24]  563 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0013)
      0020E0 E4               [12]  564 	clr	a
      0020E1 F0               [24]  565 	movx	@dptr,a
      0020E2 90 04 14         [24]  566 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0014)
      0020E5 74 11            [12]  567 	mov	a,#0x11
      0020E7 F0               [24]  568 	movx	@dptr,a
      0020E8 90 04 15         [24]  569 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0015)
      0020EB 14               [12]  570 	dec	a
      0020EC F0               [24]  571 	movx	@dptr,a
      0020ED 90 04 16         [24]  572 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0016)
      0020F0 74 14            [12]  573 	mov	a,#0x14
      0020F2 F0               [24]  574 	movx	@dptr,a
      0020F3 90 04 17         [24]  575 	mov	dptr,#(_generate_sin_wave_input_data_65536_15 + 0x0017)
      0020F6 E4               [12]  576 	clr	a
      0020F7 F0               [24]  577 	movx	@dptr,a
                                    578 ;	SPI.c:23: while(1)
      0020F8                        579 00109$:
                                    580 ;	SPI.c:25: for (int i =0; i < 24; i++)
      0020F8 90 04 18         [24]  581 	mov	dptr,#_generate_sin_wave_i_196608_17
      0020FB E4               [12]  582 	clr	a
      0020FC F0               [24]  583 	movx	@dptr,a
      0020FD A3               [24]  584 	inc	dptr
      0020FE F0               [24]  585 	movx	@dptr,a
      0020FF                        586 00112$:
      0020FF 90 04 18         [24]  587 	mov	dptr,#_generate_sin_wave_i_196608_17
      002102 E0               [24]  588 	movx	a,@dptr
      002103 FE               [12]  589 	mov	r6,a
      002104 A3               [24]  590 	inc	dptr
      002105 E0               [24]  591 	movx	a,@dptr
      002106 FF               [12]  592 	mov	r7,a
      002107 C3               [12]  593 	clr	c
      002108 EE               [12]  594 	mov	a,r6
      002109 94 18            [12]  595 	subb	a,#0x18
      00210B EF               [12]  596 	mov	a,r7
      00210C 64 80            [12]  597 	xrl	a,#0x80
      00210E 94 80            [12]  598 	subb	a,#0x80
      002110 50 E6            [24]  599 	jnc	00109$
                                    600 ;	SPI.c:27: CS=0; // select slave
                                    601 ;	assignBit
      002112 C2 B4            [12]  602 	clr	_P3_4
                                    603 ;	SPI.c:28: SPDAT=input_data[i]; /* send an example data */
      002114 EE               [12]  604 	mov	a,r6
      002115 24 00            [12]  605 	add	a,#_generate_sin_wave_input_data_65536_15
      002117 F5 82            [12]  606 	mov	dpl,a
      002119 EF               [12]  607 	mov	a,r7
      00211A 34 04            [12]  608 	addc	a,#(_generate_sin_wave_input_data_65536_15 >> 8)
      00211C F5 83            [12]  609 	mov	dph,a
      00211E E0               [24]  610 	movx	a,@dptr
      00211F F5 C5            [12]  611 	mov	_SPDAT,a
                                    612 ;	SPI.c:29: while(!(SPSTA&SPIF));/* wait end of transmition */
      002121                        613 00101$:
      002121 E5 C4            [12]  614 	mov	a,_SPSTA
      002123 30 E7 FB         [24]  615 	jnb	acc.7,00101$
                                    616 ;	SPI.c:30: SPDAT=input_data[i++]; /* data is send to generate SCK signal */
      002126 90 04 18         [24]  617 	mov	dptr,#_generate_sin_wave_i_196608_17
      002129 E0               [24]  618 	movx	a,@dptr
      00212A FE               [12]  619 	mov	r6,a
      00212B A3               [24]  620 	inc	dptr
      00212C E0               [24]  621 	movx	a,@dptr
      00212D FF               [12]  622 	mov	r7,a
      00212E 90 04 18         [24]  623 	mov	dptr,#_generate_sin_wave_i_196608_17
      002131 74 01            [12]  624 	mov	a,#0x01
      002133 2E               [12]  625 	add	a,r6
      002134 F0               [24]  626 	movx	@dptr,a
      002135 E4               [12]  627 	clr	a
      002136 3F               [12]  628 	addc	a,r7
      002137 A3               [24]  629 	inc	dptr
      002138 F0               [24]  630 	movx	@dptr,a
      002139 EE               [12]  631 	mov	a,r6
      00213A 24 00            [12]  632 	add	a,#_generate_sin_wave_input_data_65536_15
      00213C F5 82            [12]  633 	mov	dpl,a
      00213E EF               [12]  634 	mov	a,r7
      00213F 34 04            [12]  635 	addc	a,#(_generate_sin_wave_input_data_65536_15 >> 8)
      002141 F5 83            [12]  636 	mov	dph,a
      002143 E0               [24]  637 	movx	a,@dptr
      002144 F5 C5            [12]  638 	mov	_SPDAT,a
                                    639 ;	SPI.c:31: while(!(SPSTA&SPIF));/* wait end of transmition */
      002146                        640 00104$:
      002146 E5 C4            [12]  641 	mov	a,_SPSTA
      002148 30 E7 FB         [24]  642 	jnb	acc.7,00104$
                                    643 ;	SPI.c:32: CS=1; // deselect slave
                                    644 ;	assignBit
      00214B D2 B4            [12]  645 	setb	_P3_4
                                    646 ;	SPI.c:25: for (int i =0; i < 24; i++)
      00214D 90 04 18         [24]  647 	mov	dptr,#_generate_sin_wave_i_196608_17
      002150 E0               [24]  648 	movx	a,@dptr
      002151 24 01            [12]  649 	add	a,#0x01
      002153 F0               [24]  650 	movx	@dptr,a
      002154 A3               [24]  651 	inc	dptr
      002155 E0               [24]  652 	movx	a,@dptr
      002156 34 00            [12]  653 	addc	a,#0x00
      002158 F0               [24]  654 	movx	@dptr,a
                                    655 ;	SPI.c:35: }
      002159 80 A4            [24]  656 	sjmp	00112$
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'init_spi'
                                    659 ;------------------------------------------------------------
                                    660 ;	SPI.c:41: void init_spi()
                                    661 ;	-----------------------------------------
                                    662 ;	 function init_spi
                                    663 ;	-----------------------------------------
      00215B                        664 _init_spi:
                                    665 ;	SPI.c:43: printf_tiny("executing DAC\n\r");
      00215B 74 D9            [12]  666 	mov	a,#___str_0
      00215D C0 E0            [24]  667 	push	acc
      00215F 74 22            [12]  668 	mov	a,#(___str_0 >> 8)
      002161 C0 E0            [24]  669 	push	acc
      002163 12 21 9D         [24]  670 	lcall	_printf_tiny
      002166 15 81            [12]  671 	dec	sp
      002168 15 81            [12]  672 	dec	sp
                                    673 ;	SPI.c:44: SPCON = 0x70; /* Master mode */
      00216A 75 C3 70         [24]  674 	mov	_SPCON,#0x70
                                    675 ;	SPI.c:45: generate_sin_wave();
                                    676 ;	SPI.c:46: }
      00216D 02 20 74         [24]  677 	ljmp	_generate_sin_wave
                                    678 	.area CSEG    (CODE)
                                    679 	.area CONST   (CODE)
                                    680 	.area CONST   (CODE)
      0022D9                        681 ___str_0:
      0022D9 65 78 65 63 75 74 69   682 	.ascii "executing DAC"
             6E 67 20 44 41 43
      0022E6 0A                     683 	.db 0x0a
      0022E7 0D                     684 	.db 0x0d
      0022E8 00                     685 	.db 0x00
                                    686 	.area CSEG    (CODE)
                                    687 	.area XINIT   (CODE)
                                    688 	.area CABS    (ABS,CODE)
