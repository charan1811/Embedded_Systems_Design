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
                                     12 	.globl _timer0_ISR
                                     13 	.globl _timer0_init
                                     14 	.globl __sdcc_external_startup
                                     15 	.globl _getchar
                                     16 	.globl _putchar
                                     17 	.globl _get_input
                                     18 	.globl _ascii_to_int
                                     19 	.globl _create_custom_char
                                     20 	.globl _hex_dump
                                     21 	.globl _cgram_dump
                                     22 	.globl _lcdclear
                                     23 	.globl _lcdputstr
                                     24 	.globl _lcdputch
                                     25 	.globl _get_cursor_address
                                     26 	.globl _lcdgotoxy
                                     27 	.globl _lcdgotoaddr
                                     28 	.globl _lcdinit
                                     29 	.globl _printf_tiny
                                     30 	.globl _TF1
                                     31 	.globl _TR1
                                     32 	.globl _TF0
                                     33 	.globl _TR0
                                     34 	.globl _IE1
                                     35 	.globl _IT1
                                     36 	.globl _IE0
                                     37 	.globl _IT0
                                     38 	.globl _SM0
                                     39 	.globl _SM1
                                     40 	.globl _SM2
                                     41 	.globl _REN
                                     42 	.globl _TB8
                                     43 	.globl _RB8
                                     44 	.globl _TI
                                     45 	.globl _RI
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _P
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD0
                                     61 	.globl _TXD
                                     62 	.globl _RXD0
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _P1_7
                                     81 	.globl _P1_6
                                     82 	.globl _P1_5
                                     83 	.globl _P1_4
                                     84 	.globl _P1_3
                                     85 	.globl _P1_2
                                     86 	.globl _P1_1
                                     87 	.globl _P1_0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _PS
                                     97 	.globl _PT1
                                     98 	.globl _PX1
                                     99 	.globl _PT0
                                    100 	.globl _PX0
                                    101 	.globl _EA
                                    102 	.globl _ES
                                    103 	.globl _ET1
                                    104 	.globl _EX1
                                    105 	.globl _ET0
                                    106 	.globl _EX0
                                    107 	.globl _BREG_F7
                                    108 	.globl _BREG_F6
                                    109 	.globl _BREG_F5
                                    110 	.globl _BREG_F4
                                    111 	.globl _BREG_F3
                                    112 	.globl _BREG_F2
                                    113 	.globl _BREG_F1
                                    114 	.globl _BREG_F0
                                    115 	.globl _P5_7
                                    116 	.globl _P5_6
                                    117 	.globl _P5_5
                                    118 	.globl _P5_4
                                    119 	.globl _P5_3
                                    120 	.globl _P5_2
                                    121 	.globl _P5_1
                                    122 	.globl _P5_0
                                    123 	.globl _P4_7
                                    124 	.globl _P4_6
                                    125 	.globl _P4_5
                                    126 	.globl _P4_4
                                    127 	.globl _P4_3
                                    128 	.globl _P4_2
                                    129 	.globl _P4_1
                                    130 	.globl _P4_0
                                    131 	.globl _PX0L
                                    132 	.globl _PT0L
                                    133 	.globl _PX1L
                                    134 	.globl _PT1L
                                    135 	.globl _PSL
                                    136 	.globl _PT2L
                                    137 	.globl _PPCL
                                    138 	.globl _EC
                                    139 	.globl _CCF0
                                    140 	.globl _CCF1
                                    141 	.globl _CCF2
                                    142 	.globl _CCF3
                                    143 	.globl _CCF4
                                    144 	.globl _CR
                                    145 	.globl _CF
                                    146 	.globl _TF2
                                    147 	.globl _EXF2
                                    148 	.globl _RCLK
                                    149 	.globl _TCLK
                                    150 	.globl _EXEN2
                                    151 	.globl _TR2
                                    152 	.globl _C_T2
                                    153 	.globl _CP_RL2
                                    154 	.globl _T2CON_7
                                    155 	.globl _T2CON_6
                                    156 	.globl _T2CON_5
                                    157 	.globl _T2CON_4
                                    158 	.globl _T2CON_3
                                    159 	.globl _T2CON_2
                                    160 	.globl _T2CON_1
                                    161 	.globl _T2CON_0
                                    162 	.globl _PT2
                                    163 	.globl _ET2
                                    164 	.globl _TMOD
                                    165 	.globl _TL1
                                    166 	.globl _TL0
                                    167 	.globl _TH1
                                    168 	.globl _TH0
                                    169 	.globl _TCON
                                    170 	.globl _SP
                                    171 	.globl _SCON
                                    172 	.globl _SBUF0
                                    173 	.globl _SBUF
                                    174 	.globl _PSW
                                    175 	.globl _PCON
                                    176 	.globl _P3
                                    177 	.globl _P2
                                    178 	.globl _P1
                                    179 	.globl _P0
                                    180 	.globl _IP
                                    181 	.globl _IE
                                    182 	.globl _DP0L
                                    183 	.globl _DPL
                                    184 	.globl _DP0H
                                    185 	.globl _DPH
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _EECON
                                    189 	.globl _KBF
                                    190 	.globl _KBE
                                    191 	.globl _KBLS
                                    192 	.globl _BRL
                                    193 	.globl _BDRCON
                                    194 	.globl _T2MOD
                                    195 	.globl _SPDAT
                                    196 	.globl _SPSTA
                                    197 	.globl _SPCON
                                    198 	.globl _SADEN
                                    199 	.globl _SADDR
                                    200 	.globl _WDTPRG
                                    201 	.globl _WDTRST
                                    202 	.globl _P5
                                    203 	.globl _P4
                                    204 	.globl _IPH1
                                    205 	.globl _IPL1
                                    206 	.globl _IPH0
                                    207 	.globl _IPL0
                                    208 	.globl _IEN1
                                    209 	.globl _IEN0
                                    210 	.globl _CMOD
                                    211 	.globl _CL
                                    212 	.globl _CH
                                    213 	.globl _CCON
                                    214 	.globl _CCAPM4
                                    215 	.globl _CCAPM3
                                    216 	.globl _CCAPM2
                                    217 	.globl _CCAPM1
                                    218 	.globl _CCAPM0
                                    219 	.globl _CCAP4L
                                    220 	.globl _CCAP3L
                                    221 	.globl _CCAP2L
                                    222 	.globl _CCAP1L
                                    223 	.globl _CCAP0L
                                    224 	.globl _CCAP4H
                                    225 	.globl _CCAP3H
                                    226 	.globl _CCAP2H
                                    227 	.globl _CCAP1H
                                    228 	.globl _CCAP0H
                                    229 	.globl _CKCON1
                                    230 	.globl _CKCON0
                                    231 	.globl _CKRL
                                    232 	.globl _AUXR1
                                    233 	.globl _AUXR
                                    234 	.globl _TH2
                                    235 	.globl _TL2
                                    236 	.globl _RCAP2H
                                    237 	.globl _RCAP2L
                                    238 	.globl _T2CON
                                    239 	.globl _mino
                                    240 	.globl _minz
                                    241 	.globl _seco
                                    242 	.globl _secz
                                    243 	.globl _msec
                                    244 	.globl _counter
                                    245 	.globl _lcd_ptr
                                    246 	.globl _saved_address
                                    247 ;--------------------------------------------------------
                                    248 ; special function registers
                                    249 ;--------------------------------------------------------
                                    250 	.area RSEG    (ABS,DATA)
      000000                        251 	.org 0x0000
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                           0000E0   303 _ACC	=	0x00e0
                           0000F0   304 _B	=	0x00f0
                           000083   305 _DPH	=	0x0083
                           000083   306 _DP0H	=	0x0083
                           000082   307 _DPL	=	0x0082
                           000082   308 _DP0L	=	0x0082
                           0000A8   309 _IE	=	0x00a8
                           0000B8   310 _IP	=	0x00b8
                           000080   311 _P0	=	0x0080
                           000090   312 _P1	=	0x0090
                           0000A0   313 _P2	=	0x00a0
                           0000B0   314 _P3	=	0x00b0
                           000087   315 _PCON	=	0x0087
                           0000D0   316 _PSW	=	0x00d0
                           000099   317 _SBUF	=	0x0099
                           000099   318 _SBUF0	=	0x0099
                           000098   319 _SCON	=	0x0098
                           000081   320 _SP	=	0x0081
                           000088   321 _TCON	=	0x0088
                           00008C   322 _TH0	=	0x008c
                           00008D   323 _TH1	=	0x008d
                           00008A   324 _TL0	=	0x008a
                           00008B   325 _TL1	=	0x008b
                           000089   326 _TMOD	=	0x0089
                                    327 ;--------------------------------------------------------
                                    328 ; special function bits
                                    329 ;--------------------------------------------------------
                                    330 	.area RSEG    (ABS,DATA)
      000000                        331 	.org 0x0000
                           0000AD   332 _ET2	=	0x00ad
                           0000BD   333 _PT2	=	0x00bd
                           0000C8   334 _T2CON_0	=	0x00c8
                           0000C9   335 _T2CON_1	=	0x00c9
                           0000CA   336 _T2CON_2	=	0x00ca
                           0000CB   337 _T2CON_3	=	0x00cb
                           0000CC   338 _T2CON_4	=	0x00cc
                           0000CD   339 _T2CON_5	=	0x00cd
                           0000CE   340 _T2CON_6	=	0x00ce
                           0000CF   341 _T2CON_7	=	0x00cf
                           0000C8   342 _CP_RL2	=	0x00c8
                           0000C9   343 _C_T2	=	0x00c9
                           0000CA   344 _TR2	=	0x00ca
                           0000CB   345 _EXEN2	=	0x00cb
                           0000CC   346 _TCLK	=	0x00cc
                           0000CD   347 _RCLK	=	0x00cd
                           0000CE   348 _EXF2	=	0x00ce
                           0000CF   349 _TF2	=	0x00cf
                           0000DF   350 _CF	=	0x00df
                           0000DE   351 _CR	=	0x00de
                           0000DC   352 _CCF4	=	0x00dc
                           0000DB   353 _CCF3	=	0x00db
                           0000DA   354 _CCF2	=	0x00da
                           0000D9   355 _CCF1	=	0x00d9
                           0000D8   356 _CCF0	=	0x00d8
                           0000AE   357 _EC	=	0x00ae
                           0000BE   358 _PPCL	=	0x00be
                           0000BD   359 _PT2L	=	0x00bd
                           0000BC   360 _PSL	=	0x00bc
                           0000BB   361 _PT1L	=	0x00bb
                           0000BA   362 _PX1L	=	0x00ba
                           0000B9   363 _PT0L	=	0x00b9
                           0000B8   364 _PX0L	=	0x00b8
                           0000C0   365 _P4_0	=	0x00c0
                           0000C1   366 _P4_1	=	0x00c1
                           0000C2   367 _P4_2	=	0x00c2
                           0000C3   368 _P4_3	=	0x00c3
                           0000C4   369 _P4_4	=	0x00c4
                           0000C5   370 _P4_5	=	0x00c5
                           0000C6   371 _P4_6	=	0x00c6
                           0000C7   372 _P4_7	=	0x00c7
                           0000E8   373 _P5_0	=	0x00e8
                           0000E9   374 _P5_1	=	0x00e9
                           0000EA   375 _P5_2	=	0x00ea
                           0000EB   376 _P5_3	=	0x00eb
                           0000EC   377 _P5_4	=	0x00ec
                           0000ED   378 _P5_5	=	0x00ed
                           0000EE   379 _P5_6	=	0x00ee
                           0000EF   380 _P5_7	=	0x00ef
                           0000F0   381 _BREG_F0	=	0x00f0
                           0000F1   382 _BREG_F1	=	0x00f1
                           0000F2   383 _BREG_F2	=	0x00f2
                           0000F3   384 _BREG_F3	=	0x00f3
                           0000F4   385 _BREG_F4	=	0x00f4
                           0000F5   386 _BREG_F5	=	0x00f5
                           0000F6   387 _BREG_F6	=	0x00f6
                           0000F7   388 _BREG_F7	=	0x00f7
                           0000A8   389 _EX0	=	0x00a8
                           0000A9   390 _ET0	=	0x00a9
                           0000AA   391 _EX1	=	0x00aa
                           0000AB   392 _ET1	=	0x00ab
                           0000AC   393 _ES	=	0x00ac
                           0000AF   394 _EA	=	0x00af
                           0000B8   395 _PX0	=	0x00b8
                           0000B9   396 _PT0	=	0x00b9
                           0000BA   397 _PX1	=	0x00ba
                           0000BB   398 _PT1	=	0x00bb
                           0000BC   399 _PS	=	0x00bc
                           000080   400 _P0_0	=	0x0080
                           000081   401 _P0_1	=	0x0081
                           000082   402 _P0_2	=	0x0082
                           000083   403 _P0_3	=	0x0083
                           000084   404 _P0_4	=	0x0084
                           000085   405 _P0_5	=	0x0085
                           000086   406 _P0_6	=	0x0086
                           000087   407 _P0_7	=	0x0087
                           000090   408 _P1_0	=	0x0090
                           000091   409 _P1_1	=	0x0091
                           000092   410 _P1_2	=	0x0092
                           000093   411 _P1_3	=	0x0093
                           000094   412 _P1_4	=	0x0094
                           000095   413 _P1_5	=	0x0095
                           000096   414 _P1_6	=	0x0096
                           000097   415 _P1_7	=	0x0097
                           0000A0   416 _P2_0	=	0x00a0
                           0000A1   417 _P2_1	=	0x00a1
                           0000A2   418 _P2_2	=	0x00a2
                           0000A3   419 _P2_3	=	0x00a3
                           0000A4   420 _P2_4	=	0x00a4
                           0000A5   421 _P2_5	=	0x00a5
                           0000A6   422 _P2_6	=	0x00a6
                           0000A7   423 _P2_7	=	0x00a7
                           0000B0   424 _P3_0	=	0x00b0
                           0000B1   425 _P3_1	=	0x00b1
                           0000B2   426 _P3_2	=	0x00b2
                           0000B3   427 _P3_3	=	0x00b3
                           0000B4   428 _P3_4	=	0x00b4
                           0000B5   429 _P3_5	=	0x00b5
                           0000B6   430 _P3_6	=	0x00b6
                           0000B7   431 _P3_7	=	0x00b7
                           0000B0   432 _RXD	=	0x00b0
                           0000B0   433 _RXD0	=	0x00b0
                           0000B1   434 _TXD	=	0x00b1
                           0000B1   435 _TXD0	=	0x00b1
                           0000B2   436 _INT0	=	0x00b2
                           0000B3   437 _INT1	=	0x00b3
                           0000B4   438 _T0	=	0x00b4
                           0000B5   439 _T1	=	0x00b5
                           0000B6   440 _WR	=	0x00b6
                           0000B7   441 _RD	=	0x00b7
                           0000D0   442 _P	=	0x00d0
                           0000D1   443 _F1	=	0x00d1
                           0000D2   444 _OV	=	0x00d2
                           0000D3   445 _RS0	=	0x00d3
                           0000D4   446 _RS1	=	0x00d4
                           0000D5   447 _F0	=	0x00d5
                           0000D6   448 _AC	=	0x00d6
                           0000D7   449 _CY	=	0x00d7
                           000098   450 _RI	=	0x0098
                           000099   451 _TI	=	0x0099
                           00009A   452 _RB8	=	0x009a
                           00009B   453 _TB8	=	0x009b
                           00009C   454 _REN	=	0x009c
                           00009D   455 _SM2	=	0x009d
                           00009E   456 _SM1	=	0x009e
                           00009F   457 _SM0	=	0x009f
                           000088   458 _IT0	=	0x0088
                           000089   459 _IE0	=	0x0089
                           00008A   460 _IT1	=	0x008a
                           00008B   461 _IE1	=	0x008b
                           00008C   462 _TR0	=	0x008c
                           00008D   463 _TF0	=	0x008d
                           00008E   464 _TR1	=	0x008e
                           00008F   465 _TF1	=	0x008f
                                    466 ;--------------------------------------------------------
                                    467 ; overlayable register banks
                                    468 ;--------------------------------------------------------
                                    469 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        470 	.ds 8
                                    471 ;--------------------------------------------------------
                                    472 ; overlayable bit register bank
                                    473 ;--------------------------------------------------------
                                    474 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        475 bits:
      000020                        476 	.ds 1
                           008000   477 	b0 = bits[0]
                           008100   478 	b1 = bits[1]
                           008200   479 	b2 = bits[2]
                           008300   480 	b3 = bits[3]
                           008400   481 	b4 = bits[4]
                           008500   482 	b5 = bits[5]
                           008600   483 	b6 = bits[6]
                           008700   484 	b7 = bits[7]
                                    485 ;--------------------------------------------------------
                                    486 ; internal ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area DSEG    (DATA)
                                    489 ;--------------------------------------------------------
                                    490 ; overlayable items in internal ram 
                                    491 ;--------------------------------------------------------
                                    492 ;--------------------------------------------------------
                                    493 ; Stack segment in internal ram 
                                    494 ;--------------------------------------------------------
                                    495 	.area	SSEG
      000021                        496 __start__stack:
      000021                        497 	.ds	1
                                    498 
                                    499 ;--------------------------------------------------------
                                    500 ; indirectly addressable internal ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area ISEG    (DATA)
                                    503 ;--------------------------------------------------------
                                    504 ; absolute internal ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area IABS    (ABS,DATA)
                                    507 	.area IABS    (ABS,DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; bit data
                                    510 ;--------------------------------------------------------
                                    511 	.area BSEG    (BIT)
                                    512 ;--------------------------------------------------------
                                    513 ; paged external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area PSEG    (PAG,XDATA)
                                    516 ;--------------------------------------------------------
                                    517 ; external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XSEG    (XDATA)
      00041D                        520 _saved_address::
      00041D                        521 	.ds 1
                           008000   522 _lcd_ptr	=	0x8000
      00041E                        523 _timer0_ISR_i_65537_82:
      00041E                        524 	.ds 2
      000420                        525 _main_input_array_65536_89:
      000420                        526 	.ds 3
      000423                        527 _main_arr_input_65536_89:
      000423                        528 	.ds 16
      000433                        529 _main_eol_check_196615_104:
      000433                        530 	.ds 2
      000435                        531 _main_x_196616_110:
      000435                        532 	.ds 2
      000437                        533 _main_y_196617_111:
      000437                        534 	.ds 2
                                    535 ;--------------------------------------------------------
                                    536 ; absolute external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XABS    (ABS,XDATA)
                                    539 ;--------------------------------------------------------
                                    540 ; external initialized ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area XISEG   (XDATA)
      000475                        543 _counter::
      000475                        544 	.ds 2
      000477                        545 _msec::
      000477                        546 	.ds 1
      000478                        547 _secz::
      000478                        548 	.ds 1
      000479                        549 _seco::
      000479                        550 	.ds 1
      00047A                        551 _minz::
      00047A                        552 	.ds 1
      00047B                        553 _mino::
      00047B                        554 	.ds 1
                                    555 	.area HOME    (CODE)
                                    556 	.area GSINIT0 (CODE)
                                    557 	.area GSINIT1 (CODE)
                                    558 	.area GSINIT2 (CODE)
                                    559 	.area GSINIT3 (CODE)
                                    560 	.area GSINIT4 (CODE)
                                    561 	.area GSINIT5 (CODE)
                                    562 	.area GSINIT  (CODE)
                                    563 	.area GSFINAL (CODE)
                                    564 	.area CSEG    (CODE)
                                    565 ;--------------------------------------------------------
                                    566 ; interrupt vector 
                                    567 ;--------------------------------------------------------
                                    568 	.area HOME    (CODE)
      002000                        569 __interrupt_vect:
      002000 02 20 11         [24]  570 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  571 	reti
      002004                        572 	.ds	7
      00200B 02 27 57         [24]  573 	ljmp	_timer0_ISR
                                    574 ;--------------------------------------------------------
                                    575 ; global & static initialisations
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME    (CODE)
                                    578 	.area GSINIT  (CODE)
                                    579 	.area GSFINAL (CODE)
                                    580 	.area GSINIT  (CODE)
                                    581 	.globl __sdcc_gsinit_startup
                                    582 	.globl __sdcc_program_startup
                                    583 	.globl __start__stack
                                    584 	.globl __mcs51_genXINIT
                                    585 	.globl __mcs51_genXRAMCLEAR
                                    586 	.globl __mcs51_genRAMCLEAR
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'timer0_ISR'
                                    589 ;------------------------------------------------------------
                                    590 ;i                         Allocated with name '_timer0_ISR_i_65537_82'
                                    591 ;t                         Allocated with name '_timer0_ISR_t_65537_82'
                                    592 ;------------------------------------------------------------
                                    593 ;	main.c:45: static int i = 0;
      00206A 90 04 1E         [24]  594 	mov	dptr,#_timer0_ISR_i_65537_82
      00206D E4               [12]  595 	clr	a
      00206E F0               [24]  596 	movx	@dptr,a
      00206F A3               [24]  597 	inc	dptr
      002070 F0               [24]  598 	movx	@dptr,a
                                    599 	.area GSFINAL (CODE)
      002071 02 20 0E         [24]  600 	ljmp	__sdcc_program_startup
                                    601 ;--------------------------------------------------------
                                    602 ; Home
                                    603 ;--------------------------------------------------------
                                    604 	.area HOME    (CODE)
                                    605 	.area HOME    (CODE)
      00200E                        606 __sdcc_program_startup:
      00200E 02 28 97         [24]  607 	ljmp	_main
                                    608 ;	return from main will return to caller
                                    609 ;--------------------------------------------------------
                                    610 ; code
                                    611 ;--------------------------------------------------------
                                    612 	.area CSEG    (CODE)
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    615 ;------------------------------------------------------------
                                    616 ;	main.c:16: _sdcc_external_startup()
                                    617 ;	-----------------------------------------
                                    618 ;	 function _sdcc_external_startup
                                    619 ;	-----------------------------------------
      002740                        620 __sdcc_external_startup:
                           000007   621 	ar7 = 0x07
                           000006   622 	ar6 = 0x06
                           000005   623 	ar5 = 0x05
                           000004   624 	ar4 = 0x04
                           000003   625 	ar3 = 0x03
                           000002   626 	ar2 = 0x02
                           000001   627 	ar1 = 0x01
                           000000   628 	ar0 = 0x00
                                    629 ;	main.c:18: AUXR|=0x0C; //for 1kB memory
      002740 43 8E 0C         [24]  630 	orl	_AUXR,#0x0c
                                    631 ;	main.c:19: return 0;
      002743 90 00 00         [24]  632 	mov	dptr,#0x0000
                                    633 ;	main.c:20: }
      002746 22               [24]  634 	ret
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'timer0_init'
                                    637 ;------------------------------------------------------------
                                    638 ;	main.c:26: void timer0_init()
                                    639 ;	-----------------------------------------
                                    640 ;	 function timer0_init
                                    641 ;	-----------------------------------------
      002747                        642 _timer0_init:
                                    643 ;	main.c:28: TMOD |= 0x01; // set the mode for timer 0
      002747 43 89 01         [24]  644 	orl	_TMOD,#0x01
                                    645 ;	main.c:29: TL0=0x00; // set the low value of timer
      00274A 75 8A 00         [24]  646 	mov	_TL0,#0x00
                                    647 ;	main.c:30: TH0=0x00; // set the high value of timer
      00274D 75 8C 00         [24]  648 	mov	_TH0,#0x00
                                    649 ;	main.c:31: EA = 1; // Enable global interrupts
                                    650 ;	assignBit
      002750 D2 AF            [12]  651 	setb	_EA
                                    652 ;	main.c:32: ET0 = 1;
                                    653 ;	assignBit
      002752 D2 A9            [12]  654 	setb	_ET0
                                    655 ;	main.c:33: TR0 = 1; //enable timer interrupts
                                    656 ;	assignBit
      002754 D2 8C            [12]  657 	setb	_TR0
                                    658 ;	main.c:34: }
      002756 22               [24]  659 	ret
                                    660 ;------------------------------------------------------------
                                    661 ;Allocation info for local variables in function 'timer0_ISR'
                                    662 ;------------------------------------------------------------
                                    663 ;i                         Allocated with name '_timer0_ISR_i_65537_82'
                                    664 ;t                         Allocated with name '_timer0_ISR_t_65537_82'
                                    665 ;------------------------------------------------------------
                                    666 ;	main.c:41: void timer0_ISR() __interrupt(1)
                                    667 ;	-----------------------------------------
                                    668 ;	 function timer0_ISR
                                    669 ;	-----------------------------------------
      002757                        670 _timer0_ISR:
      002757 C0 20            [24]  671 	push	bits
      002759 C0 E0            [24]  672 	push	acc
      00275B C0 F0            [24]  673 	push	b
      00275D C0 82            [24]  674 	push	dpl
      00275F C0 83            [24]  675 	push	dph
      002761 C0 07            [24]  676 	push	(0+7)
      002763 C0 06            [24]  677 	push	(0+6)
      002765 C0 05            [24]  678 	push	(0+5)
      002767 C0 04            [24]  679 	push	(0+4)
      002769 C0 03            [24]  680 	push	(0+3)
      00276B C0 02            [24]  681 	push	(0+2)
      00276D C0 01            [24]  682 	push	(0+1)
      00276F C0 00            [24]  683 	push	(0+0)
      002771 C0 D0            [24]  684 	push	psw
      002773 75 D0 00         [24]  685 	mov	psw,#0x00
                                    686 ;	main.c:44: saved_address = get_cursor_address();
      002776 12 21 F9         [24]  687 	lcall	_get_cursor_address
      002779 E5 82            [12]  688 	mov	a,dpl
      00277B 90 04 1D         [24]  689 	mov	dptr,#_saved_address
      00277E F0               [24]  690 	movx	@dptr,a
                                    691 ;	main.c:47: while(t--);
      00277F 7E 98            [12]  692 	mov	r6,#0x98
      002781 7F 08            [12]  693 	mov	r7,#0x08
      002783                        694 00101$:
      002783 8E 04            [24]  695 	mov	ar4,r6
      002785 8F 05            [24]  696 	mov	ar5,r7
      002787 1E               [12]  697 	dec	r6
      002788 BE FF 01         [24]  698 	cjne	r6,#0xff,00145$
      00278B 1F               [12]  699 	dec	r7
      00278C                        700 00145$:
      00278C EC               [12]  701 	mov	a,r4
      00278D 4D               [12]  702 	orl	a,r5
      00278E 70 F3            [24]  703 	jnz	00101$
                                    704 ;	main.c:48: i++;
      002790 90 04 1E         [24]  705 	mov	dptr,#_timer0_ISR_i_65537_82
      002793 E0               [24]  706 	movx	a,@dptr
      002794 24 01            [12]  707 	add	a,#0x01
      002796 F0               [24]  708 	movx	@dptr,a
      002797 A3               [24]  709 	inc	dptr
      002798 E0               [24]  710 	movx	a,@dptr
      002799 34 00            [12]  711 	addc	a,#0x00
      00279B F0               [24]  712 	movx	@dptr,a
                                    713 ;	main.c:50: if (i == 1)
      00279C 90 04 1E         [24]  714 	mov	dptr,#_timer0_ISR_i_65537_82
      00279F E0               [24]  715 	movx	a,@dptr
      0027A0 FE               [12]  716 	mov	r6,a
      0027A1 A3               [24]  717 	inc	dptr
      0027A2 E0               [24]  718 	movx	a,@dptr
      0027A3 FF               [12]  719 	mov	r7,a
      0027A4 BE 01 05         [24]  720 	cjne	r6,#0x01,00147$
      0027A7 BF 00 02         [24]  721 	cjne	r7,#0x00,00147$
      0027AA 80 03            [24]  722 	sjmp	00148$
      0027AC                        723 00147$:
      0027AC 02 28 69         [24]  724 	ljmp	00113$
      0027AF                        725 00148$:
                                    726 ;	main.c:52: i= 0;
      0027AF 90 04 1E         [24]  727 	mov	dptr,#_timer0_ISR_i_65537_82
      0027B2 E4               [12]  728 	clr	a
      0027B3 F0               [24]  729 	movx	@dptr,a
      0027B4 A3               [24]  730 	inc	dptr
      0027B5 F0               [24]  731 	movx	@dptr,a
                                    732 ;	main.c:54: msec++;
      0027B6 90 04 77         [24]  733 	mov	dptr,#_msec
      0027B9 E0               [24]  734 	movx	a,@dptr
      0027BA 04               [12]  735 	inc	a
      0027BB F0               [24]  736 	movx	@dptr,a
                                    737 ;	main.c:55: if (msec == 10)
      0027BC E0               [24]  738 	movx	a,@dptr
      0027BD FF               [12]  739 	mov	r7,a
      0027BE BF 0A 3B         [24]  740 	cjne	r7,#0x0a,00111$
                                    741 ;	main.c:57: msec = 0;
      0027C1 90 04 77         [24]  742 	mov	dptr,#_msec
      0027C4 E4               [12]  743 	clr	a
      0027C5 F0               [24]  744 	movx	@dptr,a
                                    745 ;	main.c:58: secz++;
      0027C6 90 04 78         [24]  746 	mov	dptr,#_secz
      0027C9 E0               [24]  747 	movx	a,@dptr
      0027CA 04               [12]  748 	inc	a
      0027CB F0               [24]  749 	movx	@dptr,a
                                    750 ;	main.c:60: if (secz == 10)
      0027CC E0               [24]  751 	movx	a,@dptr
      0027CD FF               [12]  752 	mov	r7,a
      0027CE BF 0A 2B         [24]  753 	cjne	r7,#0x0a,00111$
                                    754 ;	main.c:62: secz = 0;
      0027D1 90 04 78         [24]  755 	mov	dptr,#_secz
      0027D4 E4               [12]  756 	clr	a
      0027D5 F0               [24]  757 	movx	@dptr,a
                                    758 ;	main.c:64: seco++;
      0027D6 90 04 79         [24]  759 	mov	dptr,#_seco
      0027D9 E0               [24]  760 	movx	a,@dptr
      0027DA 04               [12]  761 	inc	a
      0027DB F0               [24]  762 	movx	@dptr,a
                                    763 ;	main.c:65: if (seco == 6)
      0027DC E0               [24]  764 	movx	a,@dptr
      0027DD FF               [12]  765 	mov	r7,a
      0027DE BF 06 1B         [24]  766 	cjne	r7,#0x06,00111$
                                    767 ;	main.c:67: seco = 0;
      0027E1 90 04 79         [24]  768 	mov	dptr,#_seco
      0027E4 E4               [12]  769 	clr	a
      0027E5 F0               [24]  770 	movx	@dptr,a
                                    771 ;	main.c:69: minz++;
      0027E6 90 04 7A         [24]  772 	mov	dptr,#_minz
      0027E9 E0               [24]  773 	movx	a,@dptr
      0027EA 04               [12]  774 	inc	a
      0027EB F0               [24]  775 	movx	@dptr,a
                                    776 ;	main.c:70: if (minz == 10)
      0027EC E0               [24]  777 	movx	a,@dptr
      0027ED FF               [12]  778 	mov	r7,a
      0027EE BF 0A 0B         [24]  779 	cjne	r7,#0x0a,00111$
                                    780 ;	main.c:72: minz=0;
      0027F1 90 04 7A         [24]  781 	mov	dptr,#_minz
      0027F4 E4               [12]  782 	clr	a
      0027F5 F0               [24]  783 	movx	@dptr,a
                                    784 ;	main.c:74: mino++;
      0027F6 90 04 7B         [24]  785 	mov	dptr,#_mino
      0027F9 E0               [24]  786 	movx	a,@dptr
      0027FA 04               [12]  787 	inc	a
      0027FB F0               [24]  788 	movx	@dptr,a
      0027FC                        789 00111$:
                                    790 ;	main.c:80: lcdgotoaddr(0x59);
      0027FC 75 82 59         [24]  791 	mov	dpl,#0x59
      0027FF 12 21 30         [24]  792 	lcall	_lcdgotoaddr
                                    793 ;	main.c:81: lcdputch((char)mino+ '0');
      002802 90 04 7B         [24]  794 	mov	dptr,#_mino
      002805 E0               [24]  795 	movx	a,@dptr
      002806 24 30            [12]  796 	add	a,#0x30
      002808 F5 82            [12]  797 	mov	dpl,a
      00280A 12 22 06         [24]  798 	lcall	_lcdputch
                                    799 ;	main.c:82: lcdgotoaddr(0x5A);
      00280D 75 82 5A         [24]  800 	mov	dpl,#0x5a
      002810 12 21 30         [24]  801 	lcall	_lcdgotoaddr
                                    802 ;	main.c:83: lcdputch((char)minz+ '0');
      002813 90 04 7A         [24]  803 	mov	dptr,#_minz
      002816 E0               [24]  804 	movx	a,@dptr
      002817 24 30            [12]  805 	add	a,#0x30
      002819 F5 82            [12]  806 	mov	dpl,a
      00281B 12 22 06         [24]  807 	lcall	_lcdputch
                                    808 ;	main.c:84: lcdgotoaddr(0x5B);
      00281E 75 82 5B         [24]  809 	mov	dpl,#0x5b
      002821 12 21 30         [24]  810 	lcall	_lcdgotoaddr
                                    811 ;	main.c:85: lcdputch((char)58);
      002824 75 82 3A         [24]  812 	mov	dpl,#0x3a
      002827 12 22 06         [24]  813 	lcall	_lcdputch
                                    814 ;	main.c:86: lcdgotoaddr(0x5C);
      00282A 75 82 5C         [24]  815 	mov	dpl,#0x5c
      00282D 12 21 30         [24]  816 	lcall	_lcdgotoaddr
                                    817 ;	main.c:87: lcdputch((char)seco+ '0');
      002830 90 04 79         [24]  818 	mov	dptr,#_seco
      002833 E0               [24]  819 	movx	a,@dptr
      002834 24 30            [12]  820 	add	a,#0x30
      002836 F5 82            [12]  821 	mov	dpl,a
      002838 12 22 06         [24]  822 	lcall	_lcdputch
                                    823 ;	main.c:88: lcdgotoaddr(0x5D);
      00283B 75 82 5D         [24]  824 	mov	dpl,#0x5d
      00283E 12 21 30         [24]  825 	lcall	_lcdgotoaddr
                                    826 ;	main.c:89: lcdputch((char)secz+ '0');
      002841 90 04 78         [24]  827 	mov	dptr,#_secz
      002844 E0               [24]  828 	movx	a,@dptr
      002845 24 30            [12]  829 	add	a,#0x30
      002847 F5 82            [12]  830 	mov	dpl,a
      002849 12 22 06         [24]  831 	lcall	_lcdputch
                                    832 ;	main.c:90: lcdgotoaddr(0x5E);
      00284C 75 82 5E         [24]  833 	mov	dpl,#0x5e
      00284F 12 21 30         [24]  834 	lcall	_lcdgotoaddr
                                    835 ;	main.c:91: lcdputch((char)46);
      002852 75 82 2E         [24]  836 	mov	dpl,#0x2e
      002855 12 22 06         [24]  837 	lcall	_lcdputch
                                    838 ;	main.c:92: lcdgotoaddr(0x5F);
      002858 75 82 5F         [24]  839 	mov	dpl,#0x5f
      00285B 12 21 30         [24]  840 	lcall	_lcdgotoaddr
                                    841 ;	main.c:93: lcdputch((char)msec+ '0');
      00285E 90 04 77         [24]  842 	mov	dptr,#_msec
      002861 E0               [24]  843 	movx	a,@dptr
      002862 24 30            [12]  844 	add	a,#0x30
      002864 F5 82            [12]  845 	mov	dpl,a
      002866 12 22 06         [24]  846 	lcall	_lcdputch
      002869                        847 00113$:
                                    848 ;	main.c:95: lcdgotoaddr(saved_address); //pop out the saved address
      002869 90 04 1D         [24]  849 	mov	dptr,#_saved_address
      00286C E0               [24]  850 	movx	a,@dptr
      00286D F5 82            [12]  851 	mov	dpl,a
      00286F 12 21 30         [24]  852 	lcall	_lcdgotoaddr
                                    853 ;	main.c:96: TL0=0x00; // set the low value of timer
      002872 75 8A 00         [24]  854 	mov	_TL0,#0x00
                                    855 ;	main.c:97: TH0=0x00; // set the high value of timer
      002875 75 8C 00         [24]  856 	mov	_TH0,#0x00
                                    857 ;	main.c:98: TF0=0; //clear overflow flag
                                    858 ;	assignBit
      002878 C2 8D            [12]  859 	clr	_TF0
                                    860 ;	main.c:99: }
      00287A D0 D0            [24]  861 	pop	psw
      00287C D0 00            [24]  862 	pop	(0+0)
      00287E D0 01            [24]  863 	pop	(0+1)
      002880 D0 02            [24]  864 	pop	(0+2)
      002882 D0 03            [24]  865 	pop	(0+3)
      002884 D0 04            [24]  866 	pop	(0+4)
      002886 D0 05            [24]  867 	pop	(0+5)
      002888 D0 06            [24]  868 	pop	(0+6)
      00288A D0 07            [24]  869 	pop	(0+7)
      00288C D0 83            [24]  870 	pop	dph
      00288E D0 82            [24]  871 	pop	dpl
      002890 D0 F0            [24]  872 	pop	b
      002892 D0 E0            [24]  873 	pop	acc
      002894 D0 20            [24]  874 	pop	bits
      002896 32               [24]  875 	reti
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'main'
                                    878 ;------------------------------------------------------------
                                    879 ;input_array               Allocated with name '_main_input_array_65536_89'
                                    880 ;arr_input                 Allocated with name '_main_arr_input_65536_89'
                                    881 ;block_size                Allocated with name '_main_block_size_65536_89'
                                    882 ;input                     Allocated with name '_main_input_65537_91'
                                    883 ;string                    Allocated with name '_main_string_65538_92'
                                    884 ;input                     Allocated with name '_main_input_131075_94'
                                    885 ;row                       Allocated with name '_main_row_196612_97'
                                    886 ;column                    Allocated with name '_main_column_196613_98'
                                    887 ;lcd_input                 Allocated with name '_main_lcd_input_196614_102'
                                    888 ;eol_check                 Allocated with name '_main_eol_check_196615_104'
                                    889 ;i                         Allocated with name '_main_i_196615_104'
                                    890 ;ch                        Allocated with name '_main_ch_262151_105'
                                    891 ;sum                       Allocated with name '_main_sum_196616_110'
                                    892 ;x                         Allocated with name '_main_x_196616_110'
                                    893 ;y                         Allocated with name '_main_y_196617_111'
                                    894 ;ch_code                   Allocated with name '_main_ch_code_196618_115'
                                    895 ;j                         Allocated with name '_main_j_262154_116'
                                    896 ;i                         Allocated with name '_main_i_262154_119'
                                    897 ;------------------------------------------------------------
                                    898 ;	main.c:105: void main(void)
                                    899 ;	-----------------------------------------
                                    900 ;	 function main
                                    901 ;	-----------------------------------------
      002897                        902 _main:
                                    903 ;	main.c:111: lcdinit();
      002897 12 20 C4         [24]  904 	lcall	_lcdinit
                                    905 ;	main.c:112: EA = 1;
                                    906 ;	assignBit
      00289A D2 AF            [12]  907 	setb	_EA
                                    908 ;	main.c:121: }
      00289C 7F 01            [12]  909 	mov	r7,#0x01
      00289E 10 AF 02         [24]  910 	jbc	ea,00310$
      0028A1 7F 00            [12]  911 	mov	r7,#0x00
      0028A3                        912 00310$:
                                    913 ;	main.c:116: msec = 0;
      0028A3 90 04 77         [24]  914 	mov	dptr,#_msec
      0028A6 E4               [12]  915 	clr	a
      0028A7 F0               [24]  916 	movx	@dptr,a
                                    917 ;	main.c:117: secz = 0;
      0028A8 90 04 78         [24]  918 	mov	dptr,#_secz
      0028AB F0               [24]  919 	movx	@dptr,a
                                    920 ;	main.c:118: seco = 0;
      0028AC 90 04 79         [24]  921 	mov	dptr,#_seco
      0028AF F0               [24]  922 	movx	@dptr,a
                                    923 ;	main.c:119: minz = 0;
      0028B0 90 04 7A         [24]  924 	mov	dptr,#_minz
      0028B3 F0               [24]  925 	movx	@dptr,a
                                    926 ;	main.c:120: mino = 0;
      0028B4 90 04 7B         [24]  927 	mov	dptr,#_mino
      0028B7 F0               [24]  928 	movx	@dptr,a
      0028B8 EF               [12]  929 	mov	a,r7
      0028B9 13               [12]  930 	rrc	a
      0028BA 92 AF            [24]  931 	mov	ea,c
                                    932 ;	main.c:123: timer0_init();
      0028BC 12 27 47         [24]  933 	lcall	_timer0_init
                                    934 ;	main.c:124: const char* input = "MANDADI SAI CHARAN UCB ESD LAB 4 \0";
                                    935 ;	main.c:126: lcdinit();
      0028BF 12 20 C4         [24]  936 	lcall	_lcdinit
                                    937 ;	main.c:128: lcdgotoaddr(0x00);
      0028C2 75 82 00         [24]  938 	mov	dpl,#0x00
      0028C5 12 21 30         [24]  939 	lcall	_lcdgotoaddr
                                    940 ;	main.c:129: lcdputstr(input);
      0028C8 90 3B 18         [24]  941 	mov	dptr,#___str_0
      0028CB 75 F0 80         [24]  942 	mov	b,#0x80
      0028CE 12 22 B2         [24]  943 	lcall	_lcdputstr
                                    944 ;	main.c:132: while(1)
      0028D1                        945 00150$:
                                    946 ;	main.c:135: printf_tiny("Press H for the home menu\n\r");
      0028D1 74 3B            [12]  947 	mov	a,#___str_1
      0028D3 C0 E0            [24]  948 	push	acc
      0028D5 74 3B            [12]  949 	mov	a,#(___str_1 >> 8)
      0028D7 C0 E0            [24]  950 	push	acc
      0028D9 12 2F 51         [24]  951 	lcall	_printf_tiny
      0028DC 15 81            [12]  952 	dec	sp
      0028DE 15 81            [12]  953 	dec	sp
                                    954 ;	main.c:136: printf_tiny("Enter a choice:    \n\r");
      0028E0 74 57            [12]  955 	mov	a,#___str_2
      0028E2 C0 E0            [24]  956 	push	acc
      0028E4 74 3B            [12]  957 	mov	a,#(___str_2 >> 8)
      0028E6 C0 E0            [24]  958 	push	acc
      0028E8 12 2F 51         [24]  959 	lcall	_printf_tiny
      0028EB 15 81            [12]  960 	dec	sp
      0028ED 15 81            [12]  961 	dec	sp
                                    962 ;	main.c:139: uint8_t input=getchar();
      0028EF 12 2F 28         [24]  963 	lcall	_getchar
      0028F2 AE 82            [24]  964 	mov	r6,dpl
                                    965 ;	main.c:140: printf_tiny("%c\n\r",input);
      0028F4 8E 05            [24]  966 	mov	ar5,r6
      0028F6 7F 00            [12]  967 	mov	r7,#0x00
      0028F8 C0 06            [24]  968 	push	ar6
      0028FA C0 05            [24]  969 	push	ar5
      0028FC C0 07            [24]  970 	push	ar7
      0028FE 74 6D            [12]  971 	mov	a,#___str_3
      002900 C0 E0            [24]  972 	push	acc
      002902 74 3B            [12]  973 	mov	a,#(___str_3 >> 8)
      002904 C0 E0            [24]  974 	push	acc
      002906 12 2F 51         [24]  975 	lcall	_printf_tiny
      002909 E5 81            [12]  976 	mov	a,sp
      00290B 24 FC            [12]  977 	add	a,#0xfc
      00290D F5 81            [12]  978 	mov	sp,a
      00290F D0 06            [24]  979 	pop	ar6
                                    980 ;	main.c:141: switch(input)
      002911 BE 42 03         [24]  981 	cjne	r6,#0x42,00311$
      002914 02 2C 15         [24]  982 	ljmp	00123$
      002917                        983 00311$:
      002917 BE 43 03         [24]  984 	cjne	r6,#0x43,00312$
      00291A 02 2B 2C         [24]  985 	ljmp	00115$
      00291D                        986 00312$:
      00291D BE 44 03         [24]  987 	cjne	r6,#0x44,00313$
      002920 02 2D DB         [24]  988 	ljmp	00140$
      002923                        989 00313$:
      002923 BE 45 03         [24]  990 	cjne	r6,#0x45,00314$
      002926 02 2C BE         [24]  991 	ljmp	00125$
      002929                        992 00314$:
      002929 BE 46 03         [24]  993 	cjne	r6,#0x46,00315$
      00292C 02 2D E1         [24]  994 	ljmp	00141$
      00292F                        995 00315$:
      00292F BE 47 03         [24]  996 	cjne	r6,#0x47,00316$
      002932 02 2C CA         [24]  997 	ljmp	00127$
      002935                        998 00316$:
      002935 BE 48 02         [24]  999 	cjne	r6,#0x48,00317$
      002938 80 21            [24] 1000 	sjmp	00101$
      00293A                       1001 00317$:
      00293A BE 49 03         [24] 1002 	cjne	r6,#0x49,00318$
      00293D 02 2F 03         [24] 1003 	ljmp	00146$
      002940                       1004 00318$:
      002940 BE 4A 03         [24] 1005 	cjne	r6,#0x4a,00319$
      002943 02 2A 30         [24] 1006 	ljmp	00102$
      002946                       1007 00319$:
      002946 BE 52 03         [24] 1008 	cjne	r6,#0x52,00320$
      002949 02 2C C4         [24] 1009 	ljmp	00126$
      00294C                       1010 00320$:
      00294C BE 53 03         [24] 1011 	cjne	r6,#0x53,00321$
      00294F 02 2B 74         [24] 1012 	ljmp	00116$
      002952                       1013 00321$:
      002952 BE 5A 03         [24] 1014 	cjne	r6,#0x5a,00322$
      002955 02 2C 2A         [24] 1015 	ljmp	00124$
      002958                       1016 00322$:
      002958 02 28 D1         [24] 1017 	ljmp	00150$
                                   1018 ;	main.c:143: case 'H':
      00295B                       1019 00101$:
                                   1020 ;	main.c:160: }
      00295B 7F 01            [12] 1021 	mov	r7,#0x01
      00295D 10 AF 02         [24] 1022 	jbc	ea,00323$
      002960 7F 00            [12] 1023 	mov	r7,#0x00
      002962                       1024 00323$:
                                   1025 ;	main.c:146: printf_tiny("*************Home Menu***************");
      002962 C0 07            [24] 1026 	push	ar7
      002964 74 72            [12] 1027 	mov	a,#___str_4
      002966 C0 E0            [24] 1028 	push	acc
      002968 74 3B            [12] 1029 	mov	a,#(___str_4 >> 8)
      00296A C0 E0            [24] 1030 	push	acc
      00296C 12 2F 51         [24] 1031 	lcall	_printf_tiny
      00296F 15 81            [12] 1032 	dec	sp
      002971 15 81            [12] 1033 	dec	sp
                                   1034 ;	main.c:148: printf_tiny("\n\rEnter J to go to desired coordinate)\n\r");
      002973 74 98            [12] 1035 	mov	a,#___str_5
      002975 C0 E0            [24] 1036 	push	acc
      002977 74 3B            [12] 1037 	mov	a,#(___str_5 >> 8)
      002979 C0 E0            [24] 1038 	push	acc
      00297B 12 2F 51         [24] 1039 	lcall	_printf_tiny
      00297E 15 81            [12] 1040 	dec	sp
      002980 15 81            [12] 1041 	dec	sp
                                   1042 ;	main.c:149: printf_tiny("\n\rPress C to print desired character on LCD\n\r");
      002982 74 C1            [12] 1043 	mov	a,#___str_6
      002984 C0 E0            [24] 1044 	push	acc
      002986 74 3B            [12] 1045 	mov	a,#(___str_6 >> 8)
      002988 C0 E0            [24] 1046 	push	acc
      00298A 12 2F 51         [24] 1047 	lcall	_printf_tiny
      00298D 15 81            [12] 1048 	dec	sp
      00298F 15 81            [12] 1049 	dec	sp
                                   1050 ;	main.c:150: printf_tiny("\n\rPress S to print desired string on LCD\n\r");
      002991 74 EF            [12] 1051 	mov	a,#___str_7
      002993 C0 E0            [24] 1052 	push	acc
      002995 74 3B            [12] 1053 	mov	a,#(___str_7 >> 8)
      002997 C0 E0            [24] 1054 	push	acc
      002999 12 2F 51         [24] 1055 	lcall	_printf_tiny
      00299C 15 81            [12] 1056 	dec	sp
      00299E 15 81            [12] 1057 	dec	sp
                                   1058 ;	main.c:151: printf_tiny("\n\rPress B to clear LCD\n\r");
      0029A0 74 1A            [12] 1059 	mov	a,#___str_8
      0029A2 C0 E0            [24] 1060 	push	acc
      0029A4 74 3C            [12] 1061 	mov	a,#(___str_8 >> 8)
      0029A6 C0 E0            [24] 1062 	push	acc
      0029A8 12 2F 51         [24] 1063 	lcall	_printf_tiny
      0029AB 15 81            [12] 1064 	dec	sp
      0029AD 15 81            [12] 1065 	dec	sp
                                   1066 ;	main.c:152: printf_tiny("\n\rPress E to stop the elapsed time clock\n\r");
      0029AF 74 33            [12] 1067 	mov	a,#___str_9
      0029B1 C0 E0            [24] 1068 	push	acc
      0029B3 74 3C            [12] 1069 	mov	a,#(___str_9 >> 8)
      0029B5 C0 E0            [24] 1070 	push	acc
      0029B7 12 2F 51         [24] 1071 	lcall	_printf_tiny
      0029BA 15 81            [12] 1072 	dec	sp
      0029BC 15 81            [12] 1073 	dec	sp
                                   1074 ;	main.c:153: printf_tiny("\n\rPress R to restart the clock\n\r");
      0029BE 74 5E            [12] 1075 	mov	a,#___str_10
      0029C0 C0 E0            [24] 1076 	push	acc
      0029C2 74 3C            [12] 1077 	mov	a,#(___str_10 >> 8)
      0029C4 C0 E0            [24] 1078 	push	acc
      0029C6 12 2F 51         [24] 1079 	lcall	_printf_tiny
      0029C9 15 81            [12] 1080 	dec	sp
      0029CB 15 81            [12] 1081 	dec	sp
                                   1082 ;	main.c:154: printf_tiny("\n\rPress Z to reset the clock back to '00:00.0'\n\r");
      0029CD 74 7F            [12] 1083 	mov	a,#___str_11
      0029CF C0 E0            [24] 1084 	push	acc
      0029D1 74 3C            [12] 1085 	mov	a,#(___str_11 >> 8)
      0029D3 C0 E0            [24] 1086 	push	acc
      0029D5 12 2F 51         [24] 1087 	lcall	_printf_tiny
      0029D8 15 81            [12] 1088 	dec	sp
      0029DA 15 81            [12] 1089 	dec	sp
                                   1090 ;	main.c:155: printf_tiny("\n\rPress G to go to a particular address location'\n\r");
      0029DC 74 B0            [12] 1091 	mov	a,#___str_12
      0029DE C0 E0            [24] 1092 	push	acc
      0029E0 74 3C            [12] 1093 	mov	a,#(___str_12 >> 8)
      0029E2 C0 E0            [24] 1094 	push	acc
      0029E4 12 2F 51         [24] 1095 	lcall	_printf_tiny
      0029E7 15 81            [12] 1096 	dec	sp
      0029E9 15 81            [12] 1097 	dec	sp
                                   1098 ;	main.c:156: printf_tiny("\n\rPress F to Create a custom character'\n\r");
      0029EB 74 E4            [12] 1099 	mov	a,#___str_13
      0029ED C0 E0            [24] 1100 	push	acc
      0029EF 74 3C            [12] 1101 	mov	a,#(___str_13 >> 8)
      0029F1 C0 E0            [24] 1102 	push	acc
      0029F3 12 2F 51         [24] 1103 	lcall	_printf_tiny
      0029F6 15 81            [12] 1104 	dec	sp
      0029F8 15 81            [12] 1105 	dec	sp
                                   1106 ;	main.c:157: printf_tiny("\n\rPress D For Hex Dump of DDRAM\n\r");
      0029FA 74 0E            [12] 1107 	mov	a,#___str_14
      0029FC C0 E0            [24] 1108 	push	acc
      0029FE 74 3D            [12] 1109 	mov	a,#(___str_14 >> 8)
      002A00 C0 E0            [24] 1110 	push	acc
      002A02 12 2F 51         [24] 1111 	lcall	_printf_tiny
      002A05 15 81            [12] 1112 	dec	sp
      002A07 15 81            [12] 1113 	dec	sp
                                   1114 ;	main.c:158: printf_tiny("\n\rPress I For Hex Dump of CGRAM\n\r");
      002A09 74 30            [12] 1115 	mov	a,#___str_15
      002A0B C0 E0            [24] 1116 	push	acc
      002A0D 74 3D            [12] 1117 	mov	a,#(___str_15 >> 8)
      002A0F C0 E0            [24] 1118 	push	acc
      002A11 12 2F 51         [24] 1119 	lcall	_printf_tiny
      002A14 15 81            [12] 1120 	dec	sp
      002A16 15 81            [12] 1121 	dec	sp
                                   1122 ;	main.c:159: printf_tiny("\n\r**************************************************\n\r");
      002A18 74 52            [12] 1123 	mov	a,#___str_16
      002A1A C0 E0            [24] 1124 	push	acc
      002A1C 74 3D            [12] 1125 	mov	a,#(___str_16 >> 8)
      002A1E C0 E0            [24] 1126 	push	acc
      002A20 12 2F 51         [24] 1127 	lcall	_printf_tiny
      002A23 15 81            [12] 1128 	dec	sp
      002A25 15 81            [12] 1129 	dec	sp
      002A27 D0 07            [24] 1130 	pop	ar7
      002A29 EF               [12] 1131 	mov	a,r7
      002A2A 13               [12] 1132 	rrc	a
      002A2B 92 AF            [24] 1133 	mov	ea,c
                                   1134 ;	main.c:161: break;
      002A2D 02 28 D1         [24] 1135 	ljmp	00150$
                                   1136 ;	main.c:162: case 'J':
      002A30                       1137 00102$:
                                   1138 ;	main.c:164: printf_tiny("Enter row: \n\r");
      002A30 74 89            [12] 1139 	mov	a,#___str_17
      002A32 C0 E0            [24] 1140 	push	acc
      002A34 74 3D            [12] 1141 	mov	a,#(___str_17 >> 8)
      002A36 C0 E0            [24] 1142 	push	acc
      002A38 12 2F 51         [24] 1143 	lcall	_printf_tiny
      002A3B 15 81            [12] 1144 	dec	sp
      002A3D 15 81            [12] 1145 	dec	sp
                                   1146 ;	main.c:165: uint16_t row=getchar();
      002A3F 12 2F 28         [24] 1147 	lcall	_getchar
                                   1148 ;	main.c:167: putchar(row);
      002A42 AE 82            [24] 1149 	mov	r6,dpl
      002A44 AF 83            [24] 1150 	mov  r7,dph
      002A46 C0 07            [24] 1151 	push	ar7
      002A48 C0 06            [24] 1152 	push	ar6
      002A4A 12 2F 09         [24] 1153 	lcall	_putchar
                                   1154 ;	main.c:168: printf_tiny("Enter column: \n\r");
      002A4D 74 97            [12] 1155 	mov	a,#___str_18
      002A4F C0 E0            [24] 1156 	push	acc
      002A51 74 3D            [12] 1157 	mov	a,#(___str_18 >> 8)
      002A53 C0 E0            [24] 1158 	push	acc
      002A55 12 2F 51         [24] 1159 	lcall	_printf_tiny
      002A58 15 81            [12] 1160 	dec	sp
      002A5A 15 81            [12] 1161 	dec	sp
                                   1162 ;	main.c:169: uint16_t column=getchar();
      002A5C 12 2F 28         [24] 1163 	lcall	_getchar
                                   1164 ;	main.c:171: putchar(column);
      002A5F AC 82            [24] 1165 	mov	r4,dpl
      002A61 AD 83            [24] 1166 	mov  r5,dph
      002A63 C0 05            [24] 1167 	push	ar5
      002A65 C0 04            [24] 1168 	push	ar4
      002A67 12 2F 09         [24] 1169 	lcall	_putchar
      002A6A D0 04            [24] 1170 	pop	ar4
      002A6C D0 05            [24] 1171 	pop	ar5
      002A6E D0 06            [24] 1172 	pop	ar6
      002A70 D0 07            [24] 1173 	pop	ar7
                                   1174 ;	main.c:173: if (((row >= '0') && (row <= '3')) && ((column >= '0') && (column <= '9')))
      002A72 8E 02            [24] 1175 	mov	ar2,r6
      002A74 8F 03            [24] 1176 	mov	ar3,r7
      002A76 C3               [12] 1177 	clr	c
      002A77 EA               [12] 1178 	mov	a,r2
      002A78 94 30            [12] 1179 	subb	a,#0x30
      002A7A EB               [12] 1180 	mov	a,r3
      002A7B 94 00            [12] 1181 	subb	a,#0x00
      002A7D 40 47            [24] 1182 	jc	00110$
      002A7F 8E 02            [24] 1183 	mov	ar2,r6
      002A81 8F 03            [24] 1184 	mov	ar3,r7
      002A83 C3               [12] 1185 	clr	c
      002A84 74 33            [12] 1186 	mov	a,#0x33
      002A86 9A               [12] 1187 	subb	a,r2
      002A87 E4               [12] 1188 	clr	a
      002A88 9B               [12] 1189 	subb	a,r3
      002A89 40 3B            [24] 1190 	jc	00110$
      002A8B 8C 02            [24] 1191 	mov	ar2,r4
      002A8D 8D 03            [24] 1192 	mov	ar3,r5
      002A8F C3               [12] 1193 	clr	c
      002A90 EA               [12] 1194 	mov	a,r2
      002A91 94 30            [12] 1195 	subb	a,#0x30
      002A93 EB               [12] 1196 	mov	a,r3
      002A94 94 00            [12] 1197 	subb	a,#0x00
      002A96 40 2E            [24] 1198 	jc	00110$
      002A98 8C 02            [24] 1199 	mov	ar2,r4
      002A9A 8D 03            [24] 1200 	mov	ar3,r5
      002A9C C3               [12] 1201 	clr	c
      002A9D 74 39            [12] 1202 	mov	a,#0x39
      002A9F 9A               [12] 1203 	subb	a,r2
      002AA0 E4               [12] 1204 	clr	a
      002AA1 9B               [12] 1205 	subb	a,r3
      002AA2 40 22            [24] 1206 	jc	00110$
                                   1207 ;	main.c:176: lcdgotoxy(row-'0',column-'0');
      002AA4 EE               [12] 1208 	mov	a,r6
      002AA5 24 D0            [12] 1209 	add	a,#0xd0
      002AA7 FA               [12] 1210 	mov	r2,a
      002AA8 EF               [12] 1211 	mov	a,r7
      002AA9 34 FF            [12] 1212 	addc	a,#0xff
      002AAB FB               [12] 1213 	mov	r3,a
      002AAC EC               [12] 1214 	mov	a,r4
      002AAD 24 D0            [12] 1215 	add	a,#0xd0
      002AAF F8               [12] 1216 	mov	r0,a
      002AB0 ED               [12] 1217 	mov	a,r5
      002AB1 34 FF            [12] 1218 	addc	a,#0xff
      002AB3 F9               [12] 1219 	mov	r1,a
      002AB4 90 04 03         [24] 1220 	mov	dptr,#_lcdgotoxy_PARM_2
      002AB7 E8               [12] 1221 	mov	a,r0
      002AB8 F0               [24] 1222 	movx	@dptr,a
      002AB9 E9               [12] 1223 	mov	a,r1
      002ABA A3               [24] 1224 	inc	dptr
      002ABB F0               [24] 1225 	movx	@dptr,a
      002ABC 8A 82            [24] 1226 	mov	dpl,r2
      002ABE 8B 83            [24] 1227 	mov	dph,r3
      002AC0 12 21 4D         [24] 1228 	lcall	_lcdgotoxy
      002AC3 02 28 D1         [24] 1229 	ljmp	00150$
      002AC6                       1230 00110$:
                                   1231 ;	main.c:179: else if (((row >= '0') && (row <= '3')) && ((column >= 'A') && (column <= 'F')))
      002AC6 8E 02            [24] 1232 	mov	ar2,r6
      002AC8 8F 03            [24] 1233 	mov	ar3,r7
      002ACA C3               [12] 1234 	clr	c
      002ACB EA               [12] 1235 	mov	a,r2
      002ACC 94 30            [12] 1236 	subb	a,#0x30
      002ACE EB               [12] 1237 	mov	a,r3
      002ACF 94 00            [12] 1238 	subb	a,#0x00
      002AD1 40 47            [24] 1239 	jc	00104$
      002AD3 8E 02            [24] 1240 	mov	ar2,r6
      002AD5 8F 03            [24] 1241 	mov	ar3,r7
      002AD7 C3               [12] 1242 	clr	c
      002AD8 74 33            [12] 1243 	mov	a,#0x33
      002ADA 9A               [12] 1244 	subb	a,r2
      002ADB E4               [12] 1245 	clr	a
      002ADC 9B               [12] 1246 	subb	a,r3
      002ADD 40 3B            [24] 1247 	jc	00104$
      002ADF 8C 02            [24] 1248 	mov	ar2,r4
      002AE1 8D 03            [24] 1249 	mov	ar3,r5
      002AE3 C3               [12] 1250 	clr	c
      002AE4 EA               [12] 1251 	mov	a,r2
      002AE5 94 41            [12] 1252 	subb	a,#0x41
      002AE7 EB               [12] 1253 	mov	a,r3
      002AE8 94 00            [12] 1254 	subb	a,#0x00
      002AEA 40 2E            [24] 1255 	jc	00104$
      002AEC 8C 02            [24] 1256 	mov	ar2,r4
      002AEE 8D 03            [24] 1257 	mov	ar3,r5
      002AF0 C3               [12] 1258 	clr	c
      002AF1 74 46            [12] 1259 	mov	a,#0x46
      002AF3 9A               [12] 1260 	subb	a,r2
      002AF4 E4               [12] 1261 	clr	a
      002AF5 9B               [12] 1262 	subb	a,r3
      002AF6 40 22            [24] 1263 	jc	00104$
                                   1264 ;	main.c:182: lcdgotoxy(row-'0',column-55);
      002AF8 EE               [12] 1265 	mov	a,r6
      002AF9 24 D0            [12] 1266 	add	a,#0xd0
      002AFB FE               [12] 1267 	mov	r6,a
      002AFC EF               [12] 1268 	mov	a,r7
      002AFD 34 FF            [12] 1269 	addc	a,#0xff
      002AFF FF               [12] 1270 	mov	r7,a
      002B00 EC               [12] 1271 	mov	a,r4
      002B01 24 C9            [12] 1272 	add	a,#0xc9
      002B03 FC               [12] 1273 	mov	r4,a
      002B04 ED               [12] 1274 	mov	a,r5
      002B05 34 FF            [12] 1275 	addc	a,#0xff
      002B07 FD               [12] 1276 	mov	r5,a
      002B08 90 04 03         [24] 1277 	mov	dptr,#_lcdgotoxy_PARM_2
      002B0B EC               [12] 1278 	mov	a,r4
      002B0C F0               [24] 1279 	movx	@dptr,a
      002B0D ED               [12] 1280 	mov	a,r5
      002B0E A3               [24] 1281 	inc	dptr
      002B0F F0               [24] 1282 	movx	@dptr,a
      002B10 8E 82            [24] 1283 	mov	dpl,r6
      002B12 8F 83            [24] 1284 	mov	dph,r7
      002B14 12 21 4D         [24] 1285 	lcall	_lcdgotoxy
      002B17 02 28 D1         [24] 1286 	ljmp	00150$
      002B1A                       1287 00104$:
                                   1288 ;	main.c:187: printf_tiny("Enter a valid input with row 0-3 and column 0-F\n\r");
      002B1A 74 A8            [12] 1289 	mov	a,#___str_19
      002B1C C0 E0            [24] 1290 	push	acc
      002B1E 74 3D            [12] 1291 	mov	a,#(___str_19 >> 8)
      002B20 C0 E0            [24] 1292 	push	acc
      002B22 12 2F 51         [24] 1293 	lcall	_printf_tiny
      002B25 15 81            [12] 1294 	dec	sp
      002B27 15 81            [12] 1295 	dec	sp
                                   1296 ;	main.c:189: break;
      002B29 02 28 D1         [24] 1297 	ljmp	00150$
                                   1298 ;	main.c:190: case 'C':
      002B2C                       1299 00115$:
                                   1300 ;	main.c:192: printf_tiny("Enter character to print on LCD: \n\r");
      002B2C 74 DA            [12] 1301 	mov	a,#___str_20
      002B2E C0 E0            [24] 1302 	push	acc
      002B30 74 3D            [12] 1303 	mov	a,#(___str_20 >> 8)
      002B32 C0 E0            [24] 1304 	push	acc
      002B34 12 2F 51         [24] 1305 	lcall	_printf_tiny
      002B37 15 81            [12] 1306 	dec	sp
      002B39 15 81            [12] 1307 	dec	sp
                                   1308 ;	main.c:193: uint8_t lcd_input=getchar();
      002B3B 12 2F 28         [24] 1309 	lcall	_getchar
      002B3E AE 82            [24] 1310 	mov	r6,dpl
                                   1311 ;	main.c:195: printf_tiny("%c\n\r",lcd_input);
      002B40 8E 05            [24] 1312 	mov	ar5,r6
      002B42 7F 00            [12] 1313 	mov	r7,#0x00
      002B44 C0 06            [24] 1314 	push	ar6
      002B46 C0 05            [24] 1315 	push	ar5
      002B48 C0 07            [24] 1316 	push	ar7
      002B4A 74 6D            [12] 1317 	mov	a,#___str_3
      002B4C C0 E0            [24] 1318 	push	acc
      002B4E 74 3B            [12] 1319 	mov	a,#(___str_3 >> 8)
      002B50 C0 E0            [24] 1320 	push	acc
      002B52 12 2F 51         [24] 1321 	lcall	_printf_tiny
      002B55 E5 81            [12] 1322 	mov	a,sp
      002B57 24 FC            [12] 1323 	add	a,#0xfc
      002B59 F5 81            [12] 1324 	mov	sp,a
      002B5B D0 06            [24] 1325 	pop	ar6
                                   1326 ;	main.c:199: }
      002B5D 7F 01            [12] 1327 	mov	r7,#0x01
      002B5F 10 AF 02         [24] 1328 	jbc	ea,00332$
      002B62 7F 00            [12] 1329 	mov	r7,#0x00
      002B64                       1330 00332$:
                                   1331 ;	main.c:198: lcdputch(lcd_input);
      002B64 8E 82            [24] 1332 	mov	dpl,r6
      002B66 C0 07            [24] 1333 	push	ar7
      002B68 12 22 06         [24] 1334 	lcall	_lcdputch
      002B6B D0 07            [24] 1335 	pop	ar7
      002B6D EF               [12] 1336 	mov	a,r7
      002B6E 13               [12] 1337 	rrc	a
      002B6F 92 AF            [24] 1338 	mov	ea,c
                                   1339 ;	main.c:200: break;
      002B71 02 28 D1         [24] 1340 	ljmp	00150$
                                   1341 ;	main.c:201: case 'S':
      002B74                       1342 00116$:
                                   1343 ;	main.c:203: printf_tiny("Enter string to print on LCD: \n\r");
      002B74 74 FE            [12] 1344 	mov	a,#___str_21
      002B76 C0 E0            [24] 1345 	push	acc
      002B78 74 3D            [12] 1346 	mov	a,#(___str_21 >> 8)
      002B7A C0 E0            [24] 1347 	push	acc
      002B7C 12 2F 51         [24] 1348 	lcall	_printf_tiny
      002B7F 15 81            [12] 1349 	dec	sp
      002B81 15 81            [12] 1350 	dec	sp
                                   1351 ;	main.c:205: int eol_check=1;
      002B83 90 04 33         [24] 1352 	mov	dptr,#_main_eol_check_196615_104
      002B86 74 01            [12] 1353 	mov	a,#0x01
      002B88 F0               [24] 1354 	movx	@dptr,a
      002B89 E4               [12] 1355 	clr	a
      002B8A A3               [24] 1356 	inc	dptr
      002B8B F0               [24] 1357 	movx	@dptr,a
                                   1358 ;	main.c:208: while(eol_check)
      002B8C 7E 00            [12] 1359 	mov	r6,#0x00
      002B8E 7F 00            [12] 1360 	mov	r7,#0x00
      002B90                       1361 00120$:
      002B90 90 04 33         [24] 1362 	mov	dptr,#_main_eol_check_196615_104
      002B93 E0               [24] 1363 	movx	a,@dptr
      002B94 F5 F0            [12] 1364 	mov	b,a
      002B96 A3               [24] 1365 	inc	dptr
      002B97 E0               [24] 1366 	movx	a,@dptr
      002B98 45 F0            [12] 1367 	orl	a,b
      002B9A 60 4F            [24] 1368 	jz	00122$
                                   1369 ;	main.c:210: uint8_t ch=getchar();
      002B9C C0 07            [24] 1370 	push	ar7
      002B9E C0 06            [24] 1371 	push	ar6
      002BA0 12 2F 28         [24] 1372 	lcall	_getchar
      002BA3 AC 82            [24] 1373 	mov	r4,dpl
                                   1374 ;	main.c:212: printf_tiny("%c",ch);
      002BA5 8C 03            [24] 1375 	mov	ar3,r4
      002BA7 7D 00            [12] 1376 	mov	r5,#0x00
      002BA9 C0 04            [24] 1377 	push	ar4
      002BAB C0 03            [24] 1378 	push	ar3
      002BAD C0 05            [24] 1379 	push	ar5
      002BAF 74 1F            [12] 1380 	mov	a,#___str_22
      002BB1 C0 E0            [24] 1381 	push	acc
      002BB3 74 3E            [12] 1382 	mov	a,#(___str_22 >> 8)
      002BB5 C0 E0            [24] 1383 	push	acc
      002BB7 12 2F 51         [24] 1384 	lcall	_printf_tiny
      002BBA E5 81            [12] 1385 	mov	a,sp
      002BBC 24 FC            [12] 1386 	add	a,#0xfc
      002BBE F5 81            [12] 1387 	mov	sp,a
      002BC0 D0 04            [24] 1388 	pop	ar4
      002BC2 D0 06            [24] 1389 	pop	ar6
      002BC4 D0 07            [24] 1390 	pop	ar7
                                   1391 ;	main.c:214: if(ch==0xD)
      002BC6 BC 0D 09         [24] 1392 	cjne	r4,#0x0d,00118$
                                   1393 ;	main.c:215: eol_check=0;
      002BC9 90 04 33         [24] 1394 	mov	dptr,#_main_eol_check_196615_104
      002BCC E4               [12] 1395 	clr	a
      002BCD F0               [24] 1396 	movx	@dptr,a
      002BCE A3               [24] 1397 	inc	dptr
      002BCF F0               [24] 1398 	movx	@dptr,a
      002BD0 80 BE            [24] 1399 	sjmp	00120$
      002BD2                       1400 00118$:
                                   1401 ;	main.c:219: *(string+i)=ch;
      002BD2 8E 02            [24] 1402 	mov	ar2,r6
      002BD4 EF               [12] 1403 	mov	a,r7
      002BD5 FB               [12] 1404 	mov	r3,a
      002BD6 33               [12] 1405 	rlc	a
      002BD7 95 E0            [12] 1406 	subb	a,acc
      002BD9 FD               [12] 1407 	mov	r5,a
      002BDA 8A 82            [24] 1408 	mov	dpl,r2
      002BDC 8B 83            [24] 1409 	mov	dph,r3
      002BDE 8D F0            [24] 1410 	mov	b,r5
      002BE0 EC               [12] 1411 	mov	a,r4
      002BE1 12 2F 36         [24] 1412 	lcall	__gptrput
                                   1413 ;	main.c:220: i++;
      002BE4 0E               [12] 1414 	inc	r6
      002BE5 BE 00 A8         [24] 1415 	cjne	r6,#0x00,00120$
      002BE8 0F               [12] 1416 	inc	r7
      002BE9 80 A5            [24] 1417 	sjmp	00120$
      002BEB                       1418 00122$:
                                   1419 ;	main.c:224: *(string+i)='\0';
      002BEB EF               [12] 1420 	mov	a,r7
      002BEC 33               [12] 1421 	rlc	a
      002BED 95 E0            [12] 1422 	subb	a,acc
      002BEF FD               [12] 1423 	mov	r5,a
      002BF0 8E 82            [24] 1424 	mov	dpl,r6
      002BF2 8F 83            [24] 1425 	mov	dph,r7
      002BF4 8D F0            [24] 1426 	mov	b,r5
      002BF6 E4               [12] 1427 	clr	a
      002BF7 12 2F 36         [24] 1428 	lcall	__gptrput
                                   1429 ;	main.c:228: }
      002BFA 7F 01            [12] 1430 	mov	r7,#0x01
      002BFC 10 AF 02         [24] 1431 	jbc	ea,00337$
      002BFF 7F 00            [12] 1432 	mov	r7,#0x00
      002C01                       1433 00337$:
                                   1434 ;	main.c:227: lcdputstr(string);
      002C01 90 00 00         [24] 1435 	mov	dptr,#0x0000
      002C04 75 F0 00         [24] 1436 	mov	b,#0x00
      002C07 C0 07            [24] 1437 	push	ar7
      002C09 12 22 B2         [24] 1438 	lcall	_lcdputstr
      002C0C D0 07            [24] 1439 	pop	ar7
      002C0E EF               [12] 1440 	mov	a,r7
      002C0F 13               [12] 1441 	rrc	a
      002C10 92 AF            [24] 1442 	mov	ea,c
                                   1443 ;	main.c:229: break;
      002C12 02 28 D1         [24] 1444 	ljmp	00150$
                                   1445 ;	main.c:230: case 'B':
      002C15                       1446 00123$:
                                   1447 ;	main.c:235: }
      002C15 7F 01            [12] 1448 	mov	r7,#0x01
      002C17 10 AF 02         [24] 1449 	jbc	ea,00338$
      002C1A 7F 00            [12] 1450 	mov	r7,#0x00
      002C1C                       1451 00338$:
                                   1452 ;	main.c:234: lcdclear();
      002C1C C0 07            [24] 1453 	push	ar7
      002C1E 12 23 06         [24] 1454 	lcall	_lcdclear
      002C21 D0 07            [24] 1455 	pop	ar7
      002C23 EF               [12] 1456 	mov	a,r7
      002C24 13               [12] 1457 	rrc	a
      002C25 92 AF            [24] 1458 	mov	ea,c
                                   1459 ;	main.c:236: break;
      002C27 02 28 D1         [24] 1460 	ljmp	00150$
                                   1461 ;	main.c:237: case 'Z':
      002C2A                       1462 00124$:
                                   1463 ;	main.c:261: }
      002C2A 7F 01            [12] 1464 	mov	r7,#0x01
      002C2C 10 AF 02         [24] 1465 	jbc	ea,00339$
      002C2F 7F 00            [12] 1466 	mov	r7,#0x00
      002C31                       1467 00339$:
                                   1468 ;	main.c:241: msec = 0;
      002C31 90 04 77         [24] 1469 	mov	dptr,#_msec
      002C34 E4               [12] 1470 	clr	a
      002C35 F0               [24] 1471 	movx	@dptr,a
                                   1472 ;	main.c:242: secz = 0;
      002C36 90 04 78         [24] 1473 	mov	dptr,#_secz
      002C39 F0               [24] 1474 	movx	@dptr,a
                                   1475 ;	main.c:243: seco = 0;
      002C3A 90 04 79         [24] 1476 	mov	dptr,#_seco
      002C3D F0               [24] 1477 	movx	@dptr,a
                                   1478 ;	main.c:244: minz = 0;
      002C3E 90 04 7A         [24] 1479 	mov	dptr,#_minz
      002C41 F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	main.c:245: mino = 0;
      002C42 90 04 7B         [24] 1482 	mov	dptr,#_mino
      002C45 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	main.c:247: lcdgotoaddr(0x59);
      002C46 75 82 59         [24] 1485 	mov	dpl,#0x59
      002C49 C0 07            [24] 1486 	push	ar7
      002C4B 12 21 30         [24] 1487 	lcall	_lcdgotoaddr
                                   1488 ;	main.c:248: lcdputch((char)mino+ '0');
      002C4E 90 04 7B         [24] 1489 	mov	dptr,#_mino
      002C51 E0               [24] 1490 	movx	a,@dptr
      002C52 24 30            [12] 1491 	add	a,#0x30
      002C54 F5 82            [12] 1492 	mov	dpl,a
      002C56 12 22 06         [24] 1493 	lcall	_lcdputch
                                   1494 ;	main.c:249: lcdgotoaddr(0x5A);
      002C59 75 82 5A         [24] 1495 	mov	dpl,#0x5a
      002C5C 12 21 30         [24] 1496 	lcall	_lcdgotoaddr
                                   1497 ;	main.c:250: lcdputch((char)minz+ '0');
      002C5F 90 04 7A         [24] 1498 	mov	dptr,#_minz
      002C62 E0               [24] 1499 	movx	a,@dptr
      002C63 24 30            [12] 1500 	add	a,#0x30
      002C65 F5 82            [12] 1501 	mov	dpl,a
      002C67 12 22 06         [24] 1502 	lcall	_lcdputch
                                   1503 ;	main.c:251: lcdgotoaddr(0x5B);
      002C6A 75 82 5B         [24] 1504 	mov	dpl,#0x5b
      002C6D 12 21 30         [24] 1505 	lcall	_lcdgotoaddr
                                   1506 ;	main.c:252: lcdputch((char)58);
      002C70 75 82 3A         [24] 1507 	mov	dpl,#0x3a
      002C73 12 22 06         [24] 1508 	lcall	_lcdputch
                                   1509 ;	main.c:253: lcdgotoaddr(0x5C);
      002C76 75 82 5C         [24] 1510 	mov	dpl,#0x5c
      002C79 12 21 30         [24] 1511 	lcall	_lcdgotoaddr
                                   1512 ;	main.c:254: lcdputch((char)seco+ '0');
      002C7C 90 04 79         [24] 1513 	mov	dptr,#_seco
      002C7F E0               [24] 1514 	movx	a,@dptr
      002C80 24 30            [12] 1515 	add	a,#0x30
      002C82 F5 82            [12] 1516 	mov	dpl,a
      002C84 12 22 06         [24] 1517 	lcall	_lcdputch
                                   1518 ;	main.c:255: lcdgotoaddr(0x5D);
      002C87 75 82 5D         [24] 1519 	mov	dpl,#0x5d
      002C8A 12 21 30         [24] 1520 	lcall	_lcdgotoaddr
                                   1521 ;	main.c:256: lcdputch((char)secz+ '0');
      002C8D 90 04 78         [24] 1522 	mov	dptr,#_secz
      002C90 E0               [24] 1523 	movx	a,@dptr
      002C91 24 30            [12] 1524 	add	a,#0x30
      002C93 F5 82            [12] 1525 	mov	dpl,a
      002C95 12 22 06         [24] 1526 	lcall	_lcdputch
                                   1527 ;	main.c:257: lcdgotoaddr(0x5E);
      002C98 75 82 5E         [24] 1528 	mov	dpl,#0x5e
      002C9B 12 21 30         [24] 1529 	lcall	_lcdgotoaddr
                                   1530 ;	main.c:258: lcdputch((char)46);
      002C9E 75 82 2E         [24] 1531 	mov	dpl,#0x2e
      002CA1 12 22 06         [24] 1532 	lcall	_lcdputch
                                   1533 ;	main.c:259: lcdgotoaddr(0x5F);
      002CA4 75 82 5F         [24] 1534 	mov	dpl,#0x5f
      002CA7 12 21 30         [24] 1535 	lcall	_lcdgotoaddr
                                   1536 ;	main.c:260: lcdputch((char)msec+ '0');
      002CAA 90 04 77         [24] 1537 	mov	dptr,#_msec
      002CAD E0               [24] 1538 	movx	a,@dptr
      002CAE 24 30            [12] 1539 	add	a,#0x30
      002CB0 F5 82            [12] 1540 	mov	dpl,a
      002CB2 12 22 06         [24] 1541 	lcall	_lcdputch
      002CB5 D0 07            [24] 1542 	pop	ar7
      002CB7 EF               [12] 1543 	mov	a,r7
      002CB8 13               [12] 1544 	rrc	a
      002CB9 92 AF            [24] 1545 	mov	ea,c
                                   1546 ;	main.c:262: break;
      002CBB 02 28 D1         [24] 1547 	ljmp	00150$
                                   1548 ;	main.c:263: case 'E':
      002CBE                       1549 00125$:
                                   1550 ;	main.c:265: TCON &= ~(0x10);
      002CBE 53 88 EF         [24] 1551 	anl	_TCON,#0xef
                                   1552 ;	main.c:266: break;
      002CC1 02 28 D1         [24] 1553 	ljmp	00150$
                                   1554 ;	main.c:267: case 'R':
      002CC4                       1555 00126$:
                                   1556 ;	main.c:269: TCON |= 0x10;
      002CC4 43 88 10         [24] 1557 	orl	_TCON,#0x10
                                   1558 ;	main.c:270: break;
      002CC7 02 28 D1         [24] 1559 	ljmp	00150$
                                   1560 ;	main.c:271: case 'G':
      002CCA                       1561 00127$:
                                   1562 ;	main.c:273: printf_tiny("Enter go to address: \n\r");
      002CCA 74 22            [12] 1563 	mov	a,#___str_23
      002CCC C0 E0            [24] 1564 	push	acc
      002CCE 74 3E            [12] 1565 	mov	a,#(___str_23 >> 8)
      002CD0 C0 E0            [24] 1566 	push	acc
      002CD2 12 2F 51         [24] 1567 	lcall	_printf_tiny
      002CD5 15 81            [12] 1568 	dec	sp
      002CD7 15 81            [12] 1569 	dec	sp
                                   1570 ;	main.c:276: uint16_t x=getchar();
      002CD9 12 2F 28         [24] 1571 	lcall	_getchar
      002CDC AE 82            [24] 1572 	mov	r6,dpl
      002CDE AF 83            [24] 1573 	mov	r7,dph
      002CE0 90 04 35         [24] 1574 	mov	dptr,#_main_x_196616_110
      002CE3 EE               [12] 1575 	mov	a,r6
      002CE4 F0               [24] 1576 	movx	@dptr,a
      002CE5 EF               [12] 1577 	mov	a,r7
      002CE6 A3               [24] 1578 	inc	dptr
      002CE7 F0               [24] 1579 	movx	@dptr,a
                                   1580 ;	main.c:277: putchar(x);
      002CE8 8E 82            [24] 1581 	mov	dpl,r6
      002CEA 8F 83            [24] 1582 	mov	dph,r7
      002CEC C0 07            [24] 1583 	push	ar7
      002CEE C0 06            [24] 1584 	push	ar6
      002CF0 12 2F 09         [24] 1585 	lcall	_putchar
                                   1586 ;	main.c:279: uint16_t y=getchar();
      002CF3 12 2F 28         [24] 1587 	lcall	_getchar
      002CF6 AC 82            [24] 1588 	mov	r4,dpl
      002CF8 AD 83            [24] 1589 	mov	r5,dph
      002CFA 90 04 37         [24] 1590 	mov	dptr,#_main_y_196617_111
      002CFD EC               [12] 1591 	mov	a,r4
      002CFE F0               [24] 1592 	movx	@dptr,a
      002CFF ED               [12] 1593 	mov	a,r5
      002D00 A3               [24] 1594 	inc	dptr
      002D01 F0               [24] 1595 	movx	@dptr,a
                                   1596 ;	main.c:280: putchar(y);
      002D02 8C 82            [24] 1597 	mov	dpl,r4
      002D04 8D 83            [24] 1598 	mov	dph,r5
      002D06 C0 05            [24] 1599 	push	ar5
      002D08 C0 04            [24] 1600 	push	ar4
      002D0A 12 2F 09         [24] 1601 	lcall	_putchar
      002D0D D0 04            [24] 1602 	pop	ar4
      002D0F D0 05            [24] 1603 	pop	ar5
      002D11 D0 06            [24] 1604 	pop	ar6
      002D13 D0 07            [24] 1605 	pop	ar7
                                   1606 ;	main.c:282: if (((x >= '0') && (x <= '5')) && ((y >= '0') && (y <= '9')))
      002D15 8E 02            [24] 1607 	mov	ar2,r6
      002D17 8F 03            [24] 1608 	mov	ar3,r7
      002D19 C3               [12] 1609 	clr	c
      002D1A EA               [12] 1610 	mov	a,r2
      002D1B 94 30            [12] 1611 	subb	a,#0x30
      002D1D EB               [12] 1612 	mov	a,r3
      002D1E 94 00            [12] 1613 	subb	a,#0x00
      002D20 40 3A            [24] 1614 	jc	00135$
      002D22 8E 02            [24] 1615 	mov	ar2,r6
      002D24 8F 03            [24] 1616 	mov	ar3,r7
      002D26 C3               [12] 1617 	clr	c
      002D27 74 35            [12] 1618 	mov	a,#0x35
      002D29 9A               [12] 1619 	subb	a,r2
      002D2A E4               [12] 1620 	clr	a
      002D2B 9B               [12] 1621 	subb	a,r3
      002D2C 40 2E            [24] 1622 	jc	00135$
      002D2E 8C 02            [24] 1623 	mov	ar2,r4
      002D30 8D 03            [24] 1624 	mov	ar3,r5
      002D32 C3               [12] 1625 	clr	c
      002D33 EA               [12] 1626 	mov	a,r2
      002D34 94 30            [12] 1627 	subb	a,#0x30
      002D36 EB               [12] 1628 	mov	a,r3
      002D37 94 00            [12] 1629 	subb	a,#0x00
      002D39 40 21            [24] 1630 	jc	00135$
      002D3B 8C 02            [24] 1631 	mov	ar2,r4
      002D3D 8D 03            [24] 1632 	mov	ar3,r5
      002D3F C3               [12] 1633 	clr	c
      002D40 74 39            [12] 1634 	mov	a,#0x39
      002D42 9A               [12] 1635 	subb	a,r2
      002D43 E4               [12] 1636 	clr	a
      002D44 9B               [12] 1637 	subb	a,r3
      002D45 40 15            [24] 1638 	jc	00135$
                                   1639 ;	main.c:287: x = x-'0';
      002D47 EE               [12] 1640 	mov	a,r6
      002D48 24 D0            [12] 1641 	add	a,#0xd0
      002D4A FE               [12] 1642 	mov	r6,a
                                   1643 ;	main.c:288: y = y-'0';
      002D4B EC               [12] 1644 	mov	a,r4
      002D4C 24 D0            [12] 1645 	add	a,#0xd0
      002D4E FC               [12] 1646 	mov	r4,a
                                   1647 ;	main.c:290: sum = x*16 + y;
      002D4F EE               [12] 1648 	mov	a,r6
      002D50 C4               [12] 1649 	swap	a
      002D51 54 F0            [12] 1650 	anl	a,#0xf0
      002D53 2C               [12] 1651 	add	a,r4
                                   1652 ;	main.c:292: lcdgotoaddr(sum);
      002D54 F5 82            [12] 1653 	mov	dpl,a
      002D56 12 21 30         [24] 1654 	lcall	_lcdgotoaddr
      002D59 02 28 D1         [24] 1655 	ljmp	00150$
      002D5C                       1656 00135$:
                                   1657 ;	main.c:295: else if (((x >= '0') && (x <= '5')) && ((y >= 'A') && (y <= 'F')))
      002D5C 90 04 35         [24] 1658 	mov	dptr,#_main_x_196616_110
      002D5F E0               [24] 1659 	movx	a,@dptr
      002D60 FE               [12] 1660 	mov	r6,a
      002D61 A3               [24] 1661 	inc	dptr
      002D62 E0               [24] 1662 	movx	a,@dptr
      002D63 FF               [12] 1663 	mov	r7,a
      002D64 C3               [12] 1664 	clr	c
      002D65 EE               [12] 1665 	mov	a,r6
      002D66 94 30            [12] 1666 	subb	a,#0x30
      002D68 EF               [12] 1667 	mov	a,r7
      002D69 94 00            [12] 1668 	subb	a,#0x00
      002D6B 40 5C            [24] 1669 	jc	00129$
      002D6D 74 35            [12] 1670 	mov	a,#0x35
      002D6F 9E               [12] 1671 	subb	a,r6
      002D70 E4               [12] 1672 	clr	a
      002D71 9F               [12] 1673 	subb	a,r7
      002D72 40 55            [24] 1674 	jc	00129$
      002D74 90 04 37         [24] 1675 	mov	dptr,#_main_y_196617_111
      002D77 E0               [24] 1676 	movx	a,@dptr
      002D78 FC               [12] 1677 	mov	r4,a
      002D79 A3               [24] 1678 	inc	dptr
      002D7A E0               [24] 1679 	movx	a,@dptr
      002D7B FD               [12] 1680 	mov	r5,a
      002D7C C3               [12] 1681 	clr	c
      002D7D EC               [12] 1682 	mov	a,r4
      002D7E 94 41            [12] 1683 	subb	a,#0x41
      002D80 ED               [12] 1684 	mov	a,r5
      002D81 94 00            [12] 1685 	subb	a,#0x00
      002D83 40 44            [24] 1686 	jc	00129$
      002D85 74 46            [12] 1687 	mov	a,#0x46
      002D87 9C               [12] 1688 	subb	a,r4
      002D88 E4               [12] 1689 	clr	a
      002D89 9D               [12] 1690 	subb	a,r5
      002D8A 40 3D            [24] 1691 	jc	00129$
                                   1692 ;	main.c:300: x = x-'0';
      002D8C EE               [12] 1693 	mov	a,r6
      002D8D 24 D0            [12] 1694 	add	a,#0xd0
      002D8F FE               [12] 1695 	mov	r6,a
      002D90 EF               [12] 1696 	mov	a,r7
      002D91 34 FF            [12] 1697 	addc	a,#0xff
      002D93 FF               [12] 1698 	mov	r7,a
      002D94 90 04 35         [24] 1699 	mov	dptr,#_main_x_196616_110
      002D97 EE               [12] 1700 	mov	a,r6
      002D98 F0               [24] 1701 	movx	@dptr,a
      002D99 EF               [12] 1702 	mov	a,r7
      002D9A A3               [24] 1703 	inc	dptr
      002D9B F0               [24] 1704 	movx	@dptr,a
                                   1705 ;	main.c:301: y = y-55;
      002D9C EC               [12] 1706 	mov	a,r4
      002D9D 24 C9            [12] 1707 	add	a,#0xc9
      002D9F FC               [12] 1708 	mov	r4,a
      002DA0 ED               [12] 1709 	mov	a,r5
      002DA1 34 FF            [12] 1710 	addc	a,#0xff
      002DA3 FD               [12] 1711 	mov	r5,a
      002DA4 90 04 37         [24] 1712 	mov	dptr,#_main_y_196617_111
      002DA7 EC               [12] 1713 	mov	a,r4
      002DA8 F0               [24] 1714 	movx	@dptr,a
      002DA9 ED               [12] 1715 	mov	a,r5
      002DAA A3               [24] 1716 	inc	dptr
      002DAB F0               [24] 1717 	movx	@dptr,a
                                   1718 ;	main.c:303: sum = x*16 + y;
      002DAC 90 04 35         [24] 1719 	mov	dptr,#_main_x_196616_110
      002DAF E0               [24] 1720 	movx	a,@dptr
      002DB0 FE               [12] 1721 	mov	r6,a
      002DB1 A3               [24] 1722 	inc	dptr
      002DB2 E0               [24] 1723 	movx	a,@dptr
      002DB3 EE               [12] 1724 	mov	a,r6
      002DB4 C4               [12] 1725 	swap	a
      002DB5 54 F0            [12] 1726 	anl	a,#0xf0
      002DB7 FE               [12] 1727 	mov	r6,a
      002DB8 90 04 37         [24] 1728 	mov	dptr,#_main_y_196617_111
      002DBB E0               [24] 1729 	movx	a,@dptr
      002DBC FD               [12] 1730 	mov	r5,a
      002DBD A3               [24] 1731 	inc	dptr
      002DBE E0               [24] 1732 	movx	a,@dptr
      002DBF ED               [12] 1733 	mov	a,r5
      002DC0 2E               [12] 1734 	add	a,r6
                                   1735 ;	main.c:305: lcdgotoaddr(sum);
      002DC1 F5 82            [12] 1736 	mov	dpl,a
      002DC3 12 21 30         [24] 1737 	lcall	_lcdgotoaddr
      002DC6 02 28 D1         [24] 1738 	ljmp	00150$
      002DC9                       1739 00129$:
                                   1740 ;	main.c:310: printf_tiny("Enter a valid address 00-1f/ 40-58\n\r");
      002DC9 74 3A            [12] 1741 	mov	a,#___str_24
      002DCB C0 E0            [24] 1742 	push	acc
      002DCD 74 3E            [12] 1743 	mov	a,#(___str_24 >> 8)
      002DCF C0 E0            [24] 1744 	push	acc
      002DD1 12 2F 51         [24] 1745 	lcall	_printf_tiny
      002DD4 15 81            [12] 1746 	dec	sp
      002DD6 15 81            [12] 1747 	dec	sp
                                   1748 ;	main.c:312: break;
      002DD8 02 28 D1         [24] 1749 	ljmp	00150$
                                   1750 ;	main.c:313: case 'D':
      002DDB                       1751 00140$:
                                   1752 ;	main.c:315: hex_dump();
      002DDB 12 23 19         [24] 1753 	lcall	_hex_dump
                                   1754 ;	main.c:316: break;
      002DDE 02 28 D1         [24] 1755 	ljmp	00150$
                                   1756 ;	main.c:317: case 'F':
      002DE1                       1757 00141$:
                                   1758 ;	main.c:318: printf_tiny("Enter custom code\n\r");
      002DE1 74 5F            [12] 1759 	mov	a,#___str_25
      002DE3 C0 E0            [24] 1760 	push	acc
      002DE5 74 3E            [12] 1761 	mov	a,#(___str_25 >> 8)
      002DE7 C0 E0            [24] 1762 	push	acc
      002DE9 12 2F 51         [24] 1763 	lcall	_printf_tiny
      002DEC 15 81            [12] 1764 	dec	sp
      002DEE 15 81            [12] 1765 	dec	sp
                                   1766 ;	main.c:320: char ch_code = getchar();
      002DF0 12 2F 28         [24] 1767 	lcall	_getchar
      002DF3 AE 82            [24] 1768 	mov	r6,dpl
                                   1769 ;	main.c:321: putchar(ch_code);
      002DF5 8E 05            [24] 1770 	mov	ar5,r6
      002DF7 7F 00            [12] 1771 	mov	r7,#0x00
      002DF9 8D 82            [24] 1772 	mov	dpl,r5
      002DFB 8F 83            [24] 1773 	mov	dph,r7
      002DFD C0 06            [24] 1774 	push	ar6
      002DFF 12 2F 09         [24] 1775 	lcall	_putchar
                                   1776 ;	main.c:322: putchar('\n');
      002E02 90 00 0A         [24] 1777 	mov	dptr,#0x000a
      002E05 12 2F 09         [24] 1778 	lcall	_putchar
                                   1779 ;	main.c:323: printf_tiny("Enter Row values\n\r");
      002E08 74 73            [12] 1780 	mov	a,#___str_26
      002E0A C0 E0            [24] 1781 	push	acc
      002E0C 74 3E            [12] 1782 	mov	a,#(___str_26 >> 8)
      002E0E C0 E0            [24] 1783 	push	acc
      002E10 12 2F 51         [24] 1784 	lcall	_printf_tiny
      002E13 15 81            [12] 1785 	dec	sp
      002E15 15 81            [12] 1786 	dec	sp
      002E17 D0 06            [24] 1787 	pop	ar6
                                   1788 ;	main.c:325: for (int j = 0; j<=7; j++)
      002E19 7D 00            [12] 1789 	mov	r5,#0x00
      002E1B 7F 00            [12] 1790 	mov	r7,#0x00
      002E1D                       1791 00153$:
      002E1D C3               [12] 1792 	clr	c
      002E1E 74 07            [12] 1793 	mov	a,#0x07
      002E20 9D               [12] 1794 	subb	a,r5
      002E21 74 80            [12] 1795 	mov	a,#(0x00 ^ 0x80)
      002E23 8F F0            [24] 1796 	mov	b,r7
      002E25 63 F0 80         [24] 1797 	xrl	b,#0x80
      002E28 95 F0            [12] 1798 	subb	a,b
      002E2A 40 72            [24] 1799 	jc	00196$
                                   1800 ;	main.c:327: get_input(input_array);
      002E2C 90 04 20         [24] 1801 	mov	dptr,#_main_input_array_65536_89
      002E2F E0               [24] 1802 	movx	a,@dptr
      002E30 FA               [12] 1803 	mov	r2,a
      002E31 A3               [24] 1804 	inc	dptr
      002E32 E0               [24] 1805 	movx	a,@dptr
      002E33 FB               [12] 1806 	mov	r3,a
      002E34 A3               [24] 1807 	inc	dptr
      002E35 E0               [24] 1808 	movx	a,@dptr
      002E36 FC               [12] 1809 	mov	r4,a
      002E37 8A 82            [24] 1810 	mov	dpl,r2
      002E39 8B 83            [24] 1811 	mov	dph,r3
      002E3B 8C F0            [24] 1812 	mov	b,r4
      002E3D C0 07            [24] 1813 	push	ar7
      002E3F C0 06            [24] 1814 	push	ar6
      002E41 C0 05            [24] 1815 	push	ar5
      002E43 12 25 DE         [24] 1816 	lcall	_get_input
                                   1817 ;	main.c:328: block_size = ascii_to_int(input_array);
      002E46 90 04 20         [24] 1818 	mov	dptr,#_main_input_array_65536_89
      002E49 E0               [24] 1819 	movx	a,@dptr
      002E4A FA               [12] 1820 	mov	r2,a
      002E4B A3               [24] 1821 	inc	dptr
      002E4C E0               [24] 1822 	movx	a,@dptr
      002E4D FB               [12] 1823 	mov	r3,a
      002E4E A3               [24] 1824 	inc	dptr
      002E4F E0               [24] 1825 	movx	a,@dptr
      002E50 FC               [12] 1826 	mov	r4,a
      002E51 8A 82            [24] 1827 	mov	dpl,r2
      002E53 8B 83            [24] 1828 	mov	dph,r3
      002E55 8C F0            [24] 1829 	mov	b,r4
      002E57 12 24 97         [24] 1830 	lcall	_ascii_to_int
      002E5A AB 82            [24] 1831 	mov	r3,dpl
      002E5C AC 83            [24] 1832 	mov	r4,dph
      002E5E D0 05            [24] 1833 	pop	ar5
      002E60 D0 06            [24] 1834 	pop	ar6
      002E62 D0 07            [24] 1835 	pop	ar7
                                   1836 ;	main.c:330: if (block_size >128)
      002E64 C3               [12] 1837 	clr	c
      002E65 74 80            [12] 1838 	mov	a,#0x80
      002E67 9B               [12] 1839 	subb	a,r3
      002E68 E4               [12] 1840 	clr	a
      002E69 9C               [12] 1841 	subb	a,r4
      002E6A 50 15            [24] 1842 	jnc	00143$
                                   1843 ;	main.c:332: printf_tiny("Invalid Row values\n\r");
      002E6C C0 06            [24] 1844 	push	ar6
      002E6E 74 86            [12] 1845 	mov	a,#___str_27
      002E70 C0 E0            [24] 1846 	push	acc
      002E72 74 3E            [12] 1847 	mov	a,#(___str_27 >> 8)
      002E74 C0 E0            [24] 1848 	push	acc
      002E76 12 2F 51         [24] 1849 	lcall	_printf_tiny
      002E79 15 81            [12] 1850 	dec	sp
      002E7B 15 81            [12] 1851 	dec	sp
      002E7D D0 06            [24] 1852 	pop	ar6
                                   1853 ;	main.c:333: break;
      002E7F 80 1D            [24] 1854 	sjmp	00196$
      002E81                       1855 00143$:
                                   1856 ;	main.c:336: arr_input[j] = block_size;
      002E81 ED               [12] 1857 	mov	a,r5
      002E82 2D               [12] 1858 	add	a,r5
      002E83 F9               [12] 1859 	mov	r1,a
      002E84 EF               [12] 1860 	mov	a,r7
      002E85 33               [12] 1861 	rlc	a
      002E86 FA               [12] 1862 	mov	r2,a
      002E87 E9               [12] 1863 	mov	a,r1
      002E88 24 23            [12] 1864 	add	a,#_main_arr_input_65536_89
      002E8A F5 82            [12] 1865 	mov	dpl,a
      002E8C EA               [12] 1866 	mov	a,r2
      002E8D 34 04            [12] 1867 	addc	a,#(_main_arr_input_65536_89 >> 8)
      002E8F F5 83            [12] 1868 	mov	dph,a
      002E91 EB               [12] 1869 	mov	a,r3
      002E92 F0               [24] 1870 	movx	@dptr,a
      002E93 EC               [12] 1871 	mov	a,r4
      002E94 A3               [24] 1872 	inc	dptr
      002E95 F0               [24] 1873 	movx	@dptr,a
                                   1874 ;	main.c:325: for (int j = 0; j<=7; j++)
      002E96 0D               [12] 1875 	inc	r5
      002E97 BD 00 01         [24] 1876 	cjne	r5,#0x00,00350$
      002E9A 0F               [12] 1877 	inc	r7
      002E9B                       1878 00350$:
      002E9B 02 2E 1D         [24] 1879 	ljmp	00153$
                                   1880 ;	main.c:339: for (int i=0;i<=7;i++)
      002E9E                       1881 00196$:
      002E9E 7D 00            [12] 1882 	mov	r5,#0x00
      002EA0 7F 00            [12] 1883 	mov	r7,#0x00
      002EA2                       1884 00156$:
      002EA2 C3               [12] 1885 	clr	c
      002EA3 74 07            [12] 1886 	mov	a,#0x07
      002EA5 9D               [12] 1887 	subb	a,r5
      002EA6 74 80            [12] 1888 	mov	a,#(0x00 ^ 0x80)
      002EA8 8F F0            [24] 1889 	mov	b,r7
      002EAA 63 F0 80         [24] 1890 	xrl	b,#0x80
      002EAD 95 F0            [12] 1891 	subb	a,b
      002EAF 40 3D            [24] 1892 	jc	00145$
                                   1893 ;	main.c:341: printf_tiny("input values= %u\n\r",arr_input[i]);
      002EB1 ED               [12] 1894 	mov	a,r5
      002EB2 2D               [12] 1895 	add	a,r5
      002EB3 FB               [12] 1896 	mov	r3,a
      002EB4 EF               [12] 1897 	mov	a,r7
      002EB5 33               [12] 1898 	rlc	a
      002EB6 FC               [12] 1899 	mov	r4,a
      002EB7 EB               [12] 1900 	mov	a,r3
      002EB8 24 23            [12] 1901 	add	a,#_main_arr_input_65536_89
      002EBA F5 82            [12] 1902 	mov	dpl,a
      002EBC EC               [12] 1903 	mov	a,r4
      002EBD 34 04            [12] 1904 	addc	a,#(_main_arr_input_65536_89 >> 8)
      002EBF F5 83            [12] 1905 	mov	dph,a
      002EC1 E0               [24] 1906 	movx	a,@dptr
      002EC2 FB               [12] 1907 	mov	r3,a
      002EC3 A3               [24] 1908 	inc	dptr
      002EC4 E0               [24] 1909 	movx	a,@dptr
      002EC5 FC               [12] 1910 	mov	r4,a
      002EC6 C0 07            [24] 1911 	push	ar7
      002EC8 C0 06            [24] 1912 	push	ar6
      002ECA C0 05            [24] 1913 	push	ar5
      002ECC C0 03            [24] 1914 	push	ar3
      002ECE C0 04            [24] 1915 	push	ar4
      002ED0 74 9B            [12] 1916 	mov	a,#___str_28
      002ED2 C0 E0            [24] 1917 	push	acc
      002ED4 74 3E            [12] 1918 	mov	a,#(___str_28 >> 8)
      002ED6 C0 E0            [24] 1919 	push	acc
      002ED8 12 2F 51         [24] 1920 	lcall	_printf_tiny
      002EDB E5 81            [12] 1921 	mov	a,sp
      002EDD 24 FC            [12] 1922 	add	a,#0xfc
      002EDF F5 81            [12] 1923 	mov	sp,a
      002EE1 D0 05            [24] 1924 	pop	ar5
      002EE3 D0 06            [24] 1925 	pop	ar6
      002EE5 D0 07            [24] 1926 	pop	ar7
                                   1927 ;	main.c:339: for (int i=0;i<=7;i++)
      002EE7 0D               [12] 1928 	inc	r5
      002EE8 BD 00 B7         [24] 1929 	cjne	r5,#0x00,00156$
      002EEB 0F               [12] 1930 	inc	r7
      002EEC 80 B4            [24] 1931 	sjmp	00156$
      002EEE                       1932 00145$:
                                   1933 ;	main.c:344: create_custom_char(ch_code, arr_input);
      002EEE 90 04 0F         [24] 1934 	mov	dptr,#_create_custom_char_PARM_2
      002EF1 74 23            [12] 1935 	mov	a,#_main_arr_input_65536_89
      002EF3 F0               [24] 1936 	movx	@dptr,a
      002EF4 74 04            [12] 1937 	mov	a,#(_main_arr_input_65536_89 >> 8)
      002EF6 A3               [24] 1938 	inc	dptr
      002EF7 F0               [24] 1939 	movx	@dptr,a
      002EF8 E4               [12] 1940 	clr	a
      002EF9 A3               [24] 1941 	inc	dptr
      002EFA F0               [24] 1942 	movx	@dptr,a
      002EFB 8E 82            [24] 1943 	mov	dpl,r6
      002EFD 12 23 C3         [24] 1944 	lcall	_create_custom_char
                                   1945 ;	main.c:345: break;
      002F00 02 28 D1         [24] 1946 	ljmp	00150$
                                   1947 ;	main.c:346: case 'I':
      002F03                       1948 00146$:
                                   1949 ;	main.c:348: cgram_dump();
      002F03 12 26 87         [24] 1950 	lcall	_cgram_dump
                                   1951 ;	main.c:349: break;
                                   1952 ;	main.c:352: }
                                   1953 ;	main.c:354: }
      002F06 02 28 D1         [24] 1954 	ljmp	00150$
                                   1955 	.area CSEG    (CODE)
                                   1956 	.area CONST   (CODE)
                                   1957 	.area CONST   (CODE)
      003B18                       1958 ___str_0:
      003B18 4D 41 4E 44 41 44 49  1959 	.ascii "MANDADI SAI CHARAN UCB ESD LAB 4 "
             20 53 41 49 20 43 48
             41 52 41 4E 20 55 43
             42 20 45 53 44 20 4C
             41 42 20 34 20
      003B39 00                    1960 	.db 0x00
      003B3A 00                    1961 	.db 0x00
                                   1962 	.area CSEG    (CODE)
                                   1963 	.area CONST   (CODE)
      003B3B                       1964 ___str_1:
      003B3B 50 72 65 73 73 20 48  1965 	.ascii "Press H for the home menu"
             20 66 6F 72 20 74 68
             65 20 68 6F 6D 65 20
             6D 65 6E 75
      003B54 0A                    1966 	.db 0x0a
      003B55 0D                    1967 	.db 0x0d
      003B56 00                    1968 	.db 0x00
                                   1969 	.area CSEG    (CODE)
                                   1970 	.area CONST   (CODE)
      003B57                       1971 ___str_2:
      003B57 45 6E 74 65 72 20 61  1972 	.ascii "Enter a choice:    "
             20 63 68 6F 69 63 65
             3A 20 20 20 20
      003B6A 0A                    1973 	.db 0x0a
      003B6B 0D                    1974 	.db 0x0d
      003B6C 00                    1975 	.db 0x00
                                   1976 	.area CSEG    (CODE)
                                   1977 	.area CONST   (CODE)
      003B6D                       1978 ___str_3:
      003B6D 25 63                 1979 	.ascii "%c"
      003B6F 0A                    1980 	.db 0x0a
      003B70 0D                    1981 	.db 0x0d
      003B71 00                    1982 	.db 0x00
                                   1983 	.area CSEG    (CODE)
                                   1984 	.area CONST   (CODE)
      003B72                       1985 ___str_4:
      003B72 2A 2A 2A 2A 2A 2A 2A  1986 	.ascii "*************Home Menu***************"
             2A 2A 2A 2A 2A 2A 48
             6F 6D 65 20 4D 65 6E
             75 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A
      003B97 00                    1987 	.db 0x00
                                   1988 	.area CSEG    (CODE)
                                   1989 	.area CONST   (CODE)
      003B98                       1990 ___str_5:
      003B98 0A                    1991 	.db 0x0a
      003B99 0D                    1992 	.db 0x0d
      003B9A 45 6E 74 65 72 20 4A  1993 	.ascii "Enter J to go to desired coordinate)"
             20 74 6F 20 67 6F 20
             74 6F 20 64 65 73 69
             72 65 64 20 63 6F 6F
             72 64 69 6E 61 74 65
             29
      003BBE 0A                    1994 	.db 0x0a
      003BBF 0D                    1995 	.db 0x0d
      003BC0 00                    1996 	.db 0x00
                                   1997 	.area CSEG    (CODE)
                                   1998 	.area CONST   (CODE)
      003BC1                       1999 ___str_6:
      003BC1 0A                    2000 	.db 0x0a
      003BC2 0D                    2001 	.db 0x0d
      003BC3 50 72 65 73 73 20 43  2002 	.ascii "Press C to print desired character on LCD"
             20 74 6F 20 70 72 69
             6E 74 20 64 65 73 69
             72 65 64 20 63 68 61
             72 61 63 74 65 72 20
             6F 6E 20 4C 43 44
      003BEC 0A                    2003 	.db 0x0a
      003BED 0D                    2004 	.db 0x0d
      003BEE 00                    2005 	.db 0x00
                                   2006 	.area CSEG    (CODE)
                                   2007 	.area CONST   (CODE)
      003BEF                       2008 ___str_7:
      003BEF 0A                    2009 	.db 0x0a
      003BF0 0D                    2010 	.db 0x0d
      003BF1 50 72 65 73 73 20 53  2011 	.ascii "Press S to print desired string on LCD"
             20 74 6F 20 70 72 69
             6E 74 20 64 65 73 69
             72 65 64 20 73 74 72
             69 6E 67 20 6F 6E 20
             4C 43 44
      003C17 0A                    2012 	.db 0x0a
      003C18 0D                    2013 	.db 0x0d
      003C19 00                    2014 	.db 0x00
                                   2015 	.area CSEG    (CODE)
                                   2016 	.area CONST   (CODE)
      003C1A                       2017 ___str_8:
      003C1A 0A                    2018 	.db 0x0a
      003C1B 0D                    2019 	.db 0x0d
      003C1C 50 72 65 73 73 20 42  2020 	.ascii "Press B to clear LCD"
             20 74 6F 20 63 6C 65
             61 72 20 4C 43 44
      003C30 0A                    2021 	.db 0x0a
      003C31 0D                    2022 	.db 0x0d
      003C32 00                    2023 	.db 0x00
                                   2024 	.area CSEG    (CODE)
                                   2025 	.area CONST   (CODE)
      003C33                       2026 ___str_9:
      003C33 0A                    2027 	.db 0x0a
      003C34 0D                    2028 	.db 0x0d
      003C35 50 72 65 73 73 20 45  2029 	.ascii "Press E to stop the elapsed time clock"
             20 74 6F 20 73 74 6F
             70 20 74 68 65 20 65
             6C 61 70 73 65 64 20
             74 69 6D 65 20 63 6C
             6F 63 6B
      003C5B 0A                    2030 	.db 0x0a
      003C5C 0D                    2031 	.db 0x0d
      003C5D 00                    2032 	.db 0x00
                                   2033 	.area CSEG    (CODE)
                                   2034 	.area CONST   (CODE)
      003C5E                       2035 ___str_10:
      003C5E 0A                    2036 	.db 0x0a
      003C5F 0D                    2037 	.db 0x0d
      003C60 50 72 65 73 73 20 52  2038 	.ascii "Press R to restart the clock"
             20 74 6F 20 72 65 73
             74 61 72 74 20 74 68
             65 20 63 6C 6F 63 6B
      003C7C 0A                    2039 	.db 0x0a
      003C7D 0D                    2040 	.db 0x0d
      003C7E 00                    2041 	.db 0x00
                                   2042 	.area CSEG    (CODE)
                                   2043 	.area CONST   (CODE)
      003C7F                       2044 ___str_11:
      003C7F 0A                    2045 	.db 0x0a
      003C80 0D                    2046 	.db 0x0d
      003C81 50 72 65 73 73 20 5A  2047 	.ascii "Press Z to reset the clock back to '00:00.0'"
             20 74 6F 20 72 65 73
             65 74 20 74 68 65 20
             63 6C 6F 63 6B 20 62
             61 63 6B 20 74 6F 20
             27 30 30 3A 30 30 2E
             30 27
      003CAD 0A                    2048 	.db 0x0a
      003CAE 0D                    2049 	.db 0x0d
      003CAF 00                    2050 	.db 0x00
                                   2051 	.area CSEG    (CODE)
                                   2052 	.area CONST   (CODE)
      003CB0                       2053 ___str_12:
      003CB0 0A                    2054 	.db 0x0a
      003CB1 0D                    2055 	.db 0x0d
      003CB2 50 72 65 73 73 20 47  2056 	.ascii "Press G to go to a particular address location'"
             20 74 6F 20 67 6F 20
             74 6F 20 61 20 70 61
             72 74 69 63 75 6C 61
             72 20 61 64 64 72 65
             73 73 20 6C 6F 63 61
             74 69 6F 6E 27
      003CE1 0A                    2057 	.db 0x0a
      003CE2 0D                    2058 	.db 0x0d
      003CE3 00                    2059 	.db 0x00
                                   2060 	.area CSEG    (CODE)
                                   2061 	.area CONST   (CODE)
      003CE4                       2062 ___str_13:
      003CE4 0A                    2063 	.db 0x0a
      003CE5 0D                    2064 	.db 0x0d
      003CE6 50 72 65 73 73 20 46  2065 	.ascii "Press F to Create a custom character'"
             20 74 6F 20 43 72 65
             61 74 65 20 61 20 63
             75 73 74 6F 6D 20 63
             68 61 72 61 63 74 65
             72 27
      003D0B 0A                    2066 	.db 0x0a
      003D0C 0D                    2067 	.db 0x0d
      003D0D 00                    2068 	.db 0x00
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
      003D0E                       2071 ___str_14:
      003D0E 0A                    2072 	.db 0x0a
      003D0F 0D                    2073 	.db 0x0d
      003D10 50 72 65 73 73 20 44  2074 	.ascii "Press D For Hex Dump of DDRAM"
             20 46 6F 72 20 48 65
             78 20 44 75 6D 70 20
             6F 66 20 44 44 52 41
             4D
      003D2D 0A                    2075 	.db 0x0a
      003D2E 0D                    2076 	.db 0x0d
      003D2F 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      003D30                       2080 ___str_15:
      003D30 0A                    2081 	.db 0x0a
      003D31 0D                    2082 	.db 0x0d
      003D32 50 72 65 73 73 20 49  2083 	.ascii "Press I For Hex Dump of CGRAM"
             20 46 6F 72 20 48 65
             78 20 44 75 6D 70 20
             6F 66 20 43 47 52 41
             4D
      003D4F 0A                    2084 	.db 0x0a
      003D50 0D                    2085 	.db 0x0d
      003D51 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      003D52                       2089 ___str_16:
      003D52 0A                    2090 	.db 0x0a
      003D53 0D                    2091 	.db 0x0d
      003D54 2A 2A 2A 2A 2A 2A 2A  2092 	.ascii "**************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A
      003D86 0A                    2093 	.db 0x0a
      003D87 0D                    2094 	.db 0x0d
      003D88 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      003D89                       2098 ___str_17:
      003D89 45 6E 74 65 72 20 72  2099 	.ascii "Enter row: "
             6F 77 3A 20
      003D94 0A                    2100 	.db 0x0a
      003D95 0D                    2101 	.db 0x0d
      003D96 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      003D97                       2105 ___str_18:
      003D97 45 6E 74 65 72 20 63  2106 	.ascii "Enter column: "
             6F 6C 75 6D 6E 3A 20
      003DA5 0A                    2107 	.db 0x0a
      003DA6 0D                    2108 	.db 0x0d
      003DA7 00                    2109 	.db 0x00
                                   2110 	.area CSEG    (CODE)
                                   2111 	.area CONST   (CODE)
      003DA8                       2112 ___str_19:
      003DA8 45 6E 74 65 72 20 61  2113 	.ascii "Enter a valid input with row 0-3 and column 0-F"
             20 76 61 6C 69 64 20
             69 6E 70 75 74 20 77
             69 74 68 20 72 6F 77
             20 30 2D 33 20 61 6E
             64 20 63 6F 6C 75 6D
             6E 20 30 2D 46
      003DD7 0A                    2114 	.db 0x0a
      003DD8 0D                    2115 	.db 0x0d
      003DD9 00                    2116 	.db 0x00
                                   2117 	.area CSEG    (CODE)
                                   2118 	.area CONST   (CODE)
      003DDA                       2119 ___str_20:
      003DDA 45 6E 74 65 72 20 63  2120 	.ascii "Enter character to print on LCD: "
             68 61 72 61 63 74 65
             72 20 74 6F 20 70 72
             69 6E 74 20 6F 6E 20
             4C 43 44 3A 20
      003DFB 0A                    2121 	.db 0x0a
      003DFC 0D                    2122 	.db 0x0d
      003DFD 00                    2123 	.db 0x00
                                   2124 	.area CSEG    (CODE)
                                   2125 	.area CONST   (CODE)
      003DFE                       2126 ___str_21:
      003DFE 45 6E 74 65 72 20 73  2127 	.ascii "Enter string to print on LCD: "
             74 72 69 6E 67 20 74
             6F 20 70 72 69 6E 74
             20 6F 6E 20 4C 43 44
             3A 20
      003E1C 0A                    2128 	.db 0x0a
      003E1D 0D                    2129 	.db 0x0d
      003E1E 00                    2130 	.db 0x00
                                   2131 	.area CSEG    (CODE)
                                   2132 	.area CONST   (CODE)
      003E1F                       2133 ___str_22:
      003E1F 25 63                 2134 	.ascii "%c"
      003E21 00                    2135 	.db 0x00
                                   2136 	.area CSEG    (CODE)
                                   2137 	.area CONST   (CODE)
      003E22                       2138 ___str_23:
      003E22 45 6E 74 65 72 20 67  2139 	.ascii "Enter go to address: "
             6F 20 74 6F 20 61 64
             64 72 65 73 73 3A 20
      003E37 0A                    2140 	.db 0x0a
      003E38 0D                    2141 	.db 0x0d
      003E39 00                    2142 	.db 0x00
                                   2143 	.area CSEG    (CODE)
                                   2144 	.area CONST   (CODE)
      003E3A                       2145 ___str_24:
      003E3A 45 6E 74 65 72 20 61  2146 	.ascii "Enter a valid address 00-1f/ 40-58"
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 30 30 2D 31 66 2F
             20 34 30 2D 35 38
      003E5C 0A                    2147 	.db 0x0a
      003E5D 0D                    2148 	.db 0x0d
      003E5E 00                    2149 	.db 0x00
                                   2150 	.area CSEG    (CODE)
                                   2151 	.area CONST   (CODE)
      003E5F                       2152 ___str_25:
      003E5F 45 6E 74 65 72 20 63  2153 	.ascii "Enter custom code"
             75 73 74 6F 6D 20 63
             6F 64 65
      003E70 0A                    2154 	.db 0x0a
      003E71 0D                    2155 	.db 0x0d
      003E72 00                    2156 	.db 0x00
                                   2157 	.area CSEG    (CODE)
                                   2158 	.area CONST   (CODE)
      003E73                       2159 ___str_26:
      003E73 45 6E 74 65 72 20 52  2160 	.ascii "Enter Row values"
             6F 77 20 76 61 6C 75
             65 73
      003E83 0A                    2161 	.db 0x0a
      003E84 0D                    2162 	.db 0x0d
      003E85 00                    2163 	.db 0x00
                                   2164 	.area CSEG    (CODE)
                                   2165 	.area CONST   (CODE)
      003E86                       2166 ___str_27:
      003E86 49 6E 76 61 6C 69 64  2167 	.ascii "Invalid Row values"
             20 52 6F 77 20 76 61
             6C 75 65 73
      003E98 0A                    2168 	.db 0x0a
      003E99 0D                    2169 	.db 0x0d
      003E9A 00                    2170 	.db 0x00
                                   2171 	.area CSEG    (CODE)
                                   2172 	.area CONST   (CODE)
      003E9B                       2173 ___str_28:
      003E9B 69 6E 70 75 74 20 76  2174 	.ascii "input values= %u"
             61 6C 75 65 73 3D 20
             25 75
      003EAB 0A                    2175 	.db 0x0a
      003EAC 0D                    2176 	.db 0x0d
      003EAD 00                    2177 	.db 0x00
                                   2178 	.area CSEG    (CODE)
                                   2179 	.area XINIT   (CODE)
      003EB9                       2180 __xinit__counter:
      003EB9 00 00                 2181 	.byte #0x00, #0x00	;  0
      003EBB                       2182 __xinit__msec:
      003EBB 00                    2183 	.db #0x00	; 0
      003EBC                       2184 __xinit__secz:
      003EBC 00                    2185 	.db #0x00	; 0
      003EBD                       2186 __xinit__seco:
      003EBD 00                    2187 	.db #0x00	; 0
      003EBE                       2188 __xinit__minz:
      003EBE 00                    2189 	.db #0x00	; 0
      003EBF                       2190 __xinit__mino:
      003EBF 00                    2191 	.db #0x00	; 0
                                   2192 	.area CABS    (ABS,CODE)
