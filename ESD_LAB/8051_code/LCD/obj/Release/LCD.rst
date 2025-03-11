                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module LCD
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _putchar
                                     13 	.globl _getchar
                                     14 	.globl _printf
                                     15 	.globl _TF1
                                     16 	.globl _TR1
                                     17 	.globl _TF0
                                     18 	.globl _TR0
                                     19 	.globl _IE1
                                     20 	.globl _IT1
                                     21 	.globl _IE0
                                     22 	.globl _IT0
                                     23 	.globl _SM0
                                     24 	.globl _SM1
                                     25 	.globl _SM2
                                     26 	.globl _REN
                                     27 	.globl _TB8
                                     28 	.globl _RB8
                                     29 	.globl _TI
                                     30 	.globl _RI
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _RD
                                     40 	.globl _WR
                                     41 	.globl _T1
                                     42 	.globl _T0
                                     43 	.globl _INT1
                                     44 	.globl _INT0
                                     45 	.globl _TXD0
                                     46 	.globl _TXD
                                     47 	.globl _RXD0
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _P0_7
                                     74 	.globl _P0_6
                                     75 	.globl _P0_5
                                     76 	.globl _P0_4
                                     77 	.globl _P0_3
                                     78 	.globl _P0_2
                                     79 	.globl _P0_1
                                     80 	.globl _P0_0
                                     81 	.globl _PS
                                     82 	.globl _PT1
                                     83 	.globl _PX1
                                     84 	.globl _PT0
                                     85 	.globl _PX0
                                     86 	.globl _EA
                                     87 	.globl _ES
                                     88 	.globl _ET1
                                     89 	.globl _EX1
                                     90 	.globl _ET0
                                     91 	.globl _EX0
                                     92 	.globl _BREG_F7
                                     93 	.globl _BREG_F6
                                     94 	.globl _BREG_F5
                                     95 	.globl _BREG_F4
                                     96 	.globl _BREG_F3
                                     97 	.globl _BREG_F2
                                     98 	.globl _BREG_F1
                                     99 	.globl _BREG_F0
                                    100 	.globl _P5_7
                                    101 	.globl _P5_6
                                    102 	.globl _P5_5
                                    103 	.globl _P5_4
                                    104 	.globl _P5_3
                                    105 	.globl _P5_2
                                    106 	.globl _P5_1
                                    107 	.globl _P5_0
                                    108 	.globl _P4_7
                                    109 	.globl _P4_6
                                    110 	.globl _P4_5
                                    111 	.globl _P4_4
                                    112 	.globl _P4_3
                                    113 	.globl _P4_2
                                    114 	.globl _P4_1
                                    115 	.globl _P4_0
                                    116 	.globl _PX0L
                                    117 	.globl _PT0L
                                    118 	.globl _PX1L
                                    119 	.globl _PT1L
                                    120 	.globl _PSL
                                    121 	.globl _PT2L
                                    122 	.globl _PPCL
                                    123 	.globl _EC
                                    124 	.globl _CCF0
                                    125 	.globl _CCF1
                                    126 	.globl _CCF2
                                    127 	.globl _CCF3
                                    128 	.globl _CCF4
                                    129 	.globl _CR
                                    130 	.globl _CF
                                    131 	.globl _TF2
                                    132 	.globl _EXF2
                                    133 	.globl _RCLK
                                    134 	.globl _TCLK
                                    135 	.globl _EXEN2
                                    136 	.globl _TR2
                                    137 	.globl _C_T2
                                    138 	.globl _CP_RL2
                                    139 	.globl _T2CON_7
                                    140 	.globl _T2CON_6
                                    141 	.globl _T2CON_5
                                    142 	.globl _T2CON_4
                                    143 	.globl _T2CON_3
                                    144 	.globl _T2CON_2
                                    145 	.globl _T2CON_1
                                    146 	.globl _T2CON_0
                                    147 	.globl _PT2
                                    148 	.globl _ET2
                                    149 	.globl _TMOD
                                    150 	.globl _TL1
                                    151 	.globl _TL0
                                    152 	.globl _TH1
                                    153 	.globl _TH0
                                    154 	.globl _TCON
                                    155 	.globl _SP
                                    156 	.globl _SCON
                                    157 	.globl _SBUF0
                                    158 	.globl _SBUF
                                    159 	.globl _PSW
                                    160 	.globl _PCON
                                    161 	.globl _P3
                                    162 	.globl _P2
                                    163 	.globl _P1
                                    164 	.globl _P0
                                    165 	.globl _IP
                                    166 	.globl _IE
                                    167 	.globl _DP0L
                                    168 	.globl _DPL
                                    169 	.globl _DP0H
                                    170 	.globl _DPH
                                    171 	.globl _B
                                    172 	.globl _ACC
                                    173 	.globl _EECON
                                    174 	.globl _KBF
                                    175 	.globl _KBE
                                    176 	.globl _KBLS
                                    177 	.globl _BRL
                                    178 	.globl _BDRCON
                                    179 	.globl _T2MOD
                                    180 	.globl _SPDAT
                                    181 	.globl _SPSTA
                                    182 	.globl _SPCON
                                    183 	.globl _SADEN
                                    184 	.globl _SADDR
                                    185 	.globl _WDTPRG
                                    186 	.globl _WDTRST
                                    187 	.globl _P5
                                    188 	.globl _P4
                                    189 	.globl _IPH1
                                    190 	.globl _IPL1
                                    191 	.globl _IPH0
                                    192 	.globl _IPL0
                                    193 	.globl _IEN1
                                    194 	.globl _IEN0
                                    195 	.globl _CMOD
                                    196 	.globl _CL
                                    197 	.globl _CH
                                    198 	.globl _CCON
                                    199 	.globl _CCAPM4
                                    200 	.globl _CCAPM3
                                    201 	.globl _CCAPM2
                                    202 	.globl _CCAPM1
                                    203 	.globl _CCAPM0
                                    204 	.globl _CCAP4L
                                    205 	.globl _CCAP3L
                                    206 	.globl _CCAP2L
                                    207 	.globl _CCAP1L
                                    208 	.globl _CCAP0L
                                    209 	.globl _CCAP4H
                                    210 	.globl _CCAP3H
                                    211 	.globl _CCAP2H
                                    212 	.globl _CCAP1H
                                    213 	.globl _CCAP0H
                                    214 	.globl _CKCON1
                                    215 	.globl _CKCON0
                                    216 	.globl _CKRL
                                    217 	.globl _AUXR1
                                    218 	.globl _AUXR
                                    219 	.globl _TH2
                                    220 	.globl _TL2
                                    221 	.globl _RCAP2H
                                    222 	.globl _RCAP2L
                                    223 	.globl _T2CON
                                    224 	.globl _create_custom_char_PARM_2
                                    225 	.globl _lcdgotoxy_PARM_2
                                    226 	.globl _lcd_ptr
                                    227 	.globl _delay
                                    228 	.globl _lcdbusywait
                                    229 	.globl _lcdinit
                                    230 	.globl _lcdgotoaddr
                                    231 	.globl _lcdgotoxy
                                    232 	.globl _get_cursor_address
                                    233 	.globl _lcdputch
                                    234 	.globl _lcdputstr
                                    235 	.globl _lcdclear
                                    236 	.globl _hex_dump
                                    237 	.globl _create_custom_char
                                    238 	.globl _ascii_to_int
                                    239 	.globl _get_input
                                    240 	.globl _cgram_dump
                                    241 ;--------------------------------------------------------
                                    242 ; special function registers
                                    243 ;--------------------------------------------------------
                                    244 	.area RSEG    (ABS,DATA)
      000000                        245 	.org 0x0000
                           0000C8   246 _T2CON	=	0x00c8
                           0000CA   247 _RCAP2L	=	0x00ca
                           0000CB   248 _RCAP2H	=	0x00cb
                           0000CC   249 _TL2	=	0x00cc
                           0000CD   250 _TH2	=	0x00cd
                           00008E   251 _AUXR	=	0x008e
                           0000A2   252 _AUXR1	=	0x00a2
                           000097   253 _CKRL	=	0x0097
                           00008F   254 _CKCON0	=	0x008f
                           0000AF   255 _CKCON1	=	0x00af
                           0000FA   256 _CCAP0H	=	0x00fa
                           0000FB   257 _CCAP1H	=	0x00fb
                           0000FC   258 _CCAP2H	=	0x00fc
                           0000FD   259 _CCAP3H	=	0x00fd
                           0000FE   260 _CCAP4H	=	0x00fe
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 _CCAP1L	=	0x00eb
                           0000EC   263 _CCAP2L	=	0x00ec
                           0000ED   264 _CCAP3L	=	0x00ed
                           0000EE   265 _CCAP4L	=	0x00ee
                           0000DA   266 _CCAPM0	=	0x00da
                           0000DB   267 _CCAPM1	=	0x00db
                           0000DC   268 _CCAPM2	=	0x00dc
                           0000DD   269 _CCAPM3	=	0x00dd
                           0000DE   270 _CCAPM4	=	0x00de
                           0000D8   271 _CCON	=	0x00d8
                           0000F9   272 _CH	=	0x00f9
                           0000E9   273 _CL	=	0x00e9
                           0000D9   274 _CMOD	=	0x00d9
                           0000A8   275 _IEN0	=	0x00a8
                           0000B1   276 _IEN1	=	0x00b1
                           0000B8   277 _IPL0	=	0x00b8
                           0000B7   278 _IPH0	=	0x00b7
                           0000B2   279 _IPL1	=	0x00b2
                           0000B3   280 _IPH1	=	0x00b3
                           0000C0   281 _P4	=	0x00c0
                           0000E8   282 _P5	=	0x00e8
                           0000A6   283 _WDTRST	=	0x00a6
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A9   285 _SADDR	=	0x00a9
                           0000B9   286 _SADEN	=	0x00b9
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C9   290 _T2MOD	=	0x00c9
                           00009B   291 _BDRCON	=	0x009b
                           00009A   292 _BRL	=	0x009a
                           00009C   293 _KBLS	=	0x009c
                           00009D   294 _KBE	=	0x009d
                           00009E   295 _KBF	=	0x009e
                           0000D2   296 _EECON	=	0x00d2
                           0000E0   297 _ACC	=	0x00e0
                           0000F0   298 _B	=	0x00f0
                           000083   299 _DPH	=	0x0083
                           000083   300 _DP0H	=	0x0083
                           000082   301 _DPL	=	0x0082
                           000082   302 _DP0L	=	0x0082
                           0000A8   303 _IE	=	0x00a8
                           0000B8   304 _IP	=	0x00b8
                           000080   305 _P0	=	0x0080
                           000090   306 _P1	=	0x0090
                           0000A0   307 _P2	=	0x00a0
                           0000B0   308 _P3	=	0x00b0
                           000087   309 _PCON	=	0x0087
                           0000D0   310 _PSW	=	0x00d0
                           000099   311 _SBUF	=	0x0099
                           000099   312 _SBUF0	=	0x0099
                           000098   313 _SCON	=	0x0098
                           000081   314 _SP	=	0x0081
                           000088   315 _TCON	=	0x0088
                           00008C   316 _TH0	=	0x008c
                           00008D   317 _TH1	=	0x008d
                           00008A   318 _TL0	=	0x008a
                           00008B   319 _TL1	=	0x008b
                           000089   320 _TMOD	=	0x0089
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                           0000AD   326 _ET2	=	0x00ad
                           0000BD   327 _PT2	=	0x00bd
                           0000C8   328 _T2CON_0	=	0x00c8
                           0000C9   329 _T2CON_1	=	0x00c9
                           0000CA   330 _T2CON_2	=	0x00ca
                           0000CB   331 _T2CON_3	=	0x00cb
                           0000CC   332 _T2CON_4	=	0x00cc
                           0000CD   333 _T2CON_5	=	0x00cd
                           0000CE   334 _T2CON_6	=	0x00ce
                           0000CF   335 _T2CON_7	=	0x00cf
                           0000C8   336 _CP_RL2	=	0x00c8
                           0000C9   337 _C_T2	=	0x00c9
                           0000CA   338 _TR2	=	0x00ca
                           0000CB   339 _EXEN2	=	0x00cb
                           0000CC   340 _TCLK	=	0x00cc
                           0000CD   341 _RCLK	=	0x00cd
                           0000CE   342 _EXF2	=	0x00ce
                           0000CF   343 _TF2	=	0x00cf
                           0000DF   344 _CF	=	0x00df
                           0000DE   345 _CR	=	0x00de
                           0000DC   346 _CCF4	=	0x00dc
                           0000DB   347 _CCF3	=	0x00db
                           0000DA   348 _CCF2	=	0x00da
                           0000D9   349 _CCF1	=	0x00d9
                           0000D8   350 _CCF0	=	0x00d8
                           0000AE   351 _EC	=	0x00ae
                           0000BE   352 _PPCL	=	0x00be
                           0000BD   353 _PT2L	=	0x00bd
                           0000BC   354 _PSL	=	0x00bc
                           0000BB   355 _PT1L	=	0x00bb
                           0000BA   356 _PX1L	=	0x00ba
                           0000B9   357 _PT0L	=	0x00b9
                           0000B8   358 _PX0L	=	0x00b8
                           0000C0   359 _P4_0	=	0x00c0
                           0000C1   360 _P4_1	=	0x00c1
                           0000C2   361 _P4_2	=	0x00c2
                           0000C3   362 _P4_3	=	0x00c3
                           0000C4   363 _P4_4	=	0x00c4
                           0000C5   364 _P4_5	=	0x00c5
                           0000C6   365 _P4_6	=	0x00c6
                           0000C7   366 _P4_7	=	0x00c7
                           0000E8   367 _P5_0	=	0x00e8
                           0000E9   368 _P5_1	=	0x00e9
                           0000EA   369 _P5_2	=	0x00ea
                           0000EB   370 _P5_3	=	0x00eb
                           0000EC   371 _P5_4	=	0x00ec
                           0000ED   372 _P5_5	=	0x00ed
                           0000EE   373 _P5_6	=	0x00ee
                           0000EF   374 _P5_7	=	0x00ef
                           0000F0   375 _BREG_F0	=	0x00f0
                           0000F1   376 _BREG_F1	=	0x00f1
                           0000F2   377 _BREG_F2	=	0x00f2
                           0000F3   378 _BREG_F3	=	0x00f3
                           0000F4   379 _BREG_F4	=	0x00f4
                           0000F5   380 _BREG_F5	=	0x00f5
                           0000F6   381 _BREG_F6	=	0x00f6
                           0000F7   382 _BREG_F7	=	0x00f7
                           0000A8   383 _EX0	=	0x00a8
                           0000A9   384 _ET0	=	0x00a9
                           0000AA   385 _EX1	=	0x00aa
                           0000AB   386 _ET1	=	0x00ab
                           0000AC   387 _ES	=	0x00ac
                           0000AF   388 _EA	=	0x00af
                           0000B8   389 _PX0	=	0x00b8
                           0000B9   390 _PT0	=	0x00b9
                           0000BA   391 _PX1	=	0x00ba
                           0000BB   392 _PT1	=	0x00bb
                           0000BC   393 _PS	=	0x00bc
                           000080   394 _P0_0	=	0x0080
                           000081   395 _P0_1	=	0x0081
                           000082   396 _P0_2	=	0x0082
                           000083   397 _P0_3	=	0x0083
                           000084   398 _P0_4	=	0x0084
                           000085   399 _P0_5	=	0x0085
                           000086   400 _P0_6	=	0x0086
                           000087   401 _P0_7	=	0x0087
                           000090   402 _P1_0	=	0x0090
                           000091   403 _P1_1	=	0x0091
                           000092   404 _P1_2	=	0x0092
                           000093   405 _P1_3	=	0x0093
                           000094   406 _P1_4	=	0x0094
                           000095   407 _P1_5	=	0x0095
                           000096   408 _P1_6	=	0x0096
                           000097   409 _P1_7	=	0x0097
                           0000A0   410 _P2_0	=	0x00a0
                           0000A1   411 _P2_1	=	0x00a1
                           0000A2   412 _P2_2	=	0x00a2
                           0000A3   413 _P2_3	=	0x00a3
                           0000A4   414 _P2_4	=	0x00a4
                           0000A5   415 _P2_5	=	0x00a5
                           0000A6   416 _P2_6	=	0x00a6
                           0000A7   417 _P2_7	=	0x00a7
                           0000B0   418 _P3_0	=	0x00b0
                           0000B1   419 _P3_1	=	0x00b1
                           0000B2   420 _P3_2	=	0x00b2
                           0000B3   421 _P3_3	=	0x00b3
                           0000B4   422 _P3_4	=	0x00b4
                           0000B5   423 _P3_5	=	0x00b5
                           0000B6   424 _P3_6	=	0x00b6
                           0000B7   425 _P3_7	=	0x00b7
                           0000B0   426 _RXD	=	0x00b0
                           0000B0   427 _RXD0	=	0x00b0
                           0000B1   428 _TXD	=	0x00b1
                           0000B1   429 _TXD0	=	0x00b1
                           0000B2   430 _INT0	=	0x00b2
                           0000B3   431 _INT1	=	0x00b3
                           0000B4   432 _T0	=	0x00b4
                           0000B5   433 _T1	=	0x00b5
                           0000B6   434 _WR	=	0x00b6
                           0000B7   435 _RD	=	0x00b7
                           0000D0   436 _P	=	0x00d0
                           0000D1   437 _F1	=	0x00d1
                           0000D2   438 _OV	=	0x00d2
                           0000D3   439 _RS0	=	0x00d3
                           0000D4   440 _RS1	=	0x00d4
                           0000D5   441 _F0	=	0x00d5
                           0000D6   442 _AC	=	0x00d6
                           0000D7   443 _CY	=	0x00d7
                           000098   444 _RI	=	0x0098
                           000099   445 _TI	=	0x0099
                           00009A   446 _RB8	=	0x009a
                           00009B   447 _TB8	=	0x009b
                           00009C   448 _REN	=	0x009c
                           00009D   449 _SM2	=	0x009d
                           00009E   450 _SM1	=	0x009e
                           00009F   451 _SM0	=	0x009f
                           000088   452 _IT0	=	0x0088
                           000089   453 _IE0	=	0x0089
                           00008A   454 _IT1	=	0x008a
                           00008B   455 _IE1	=	0x008b
                           00008C   456 _TR0	=	0x008c
                           00008D   457 _TF0	=	0x008d
                           00008E   458 _TR1	=	0x008e
                           00008F   459 _TF1	=	0x008f
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable register banks
                                    462 ;--------------------------------------------------------
                                    463 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        464 	.ds 8
                                    465 ;--------------------------------------------------------
                                    466 ; internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area DSEG    (DATA)
      000008                        469 _create_custom_char_sloc0_1_0:
      000008                        470 	.ds 1
      000009                        471 _ascii_to_int_sloc0_1_0:
      000009                        472 	.ds 1
      00000A                        473 _ascii_to_int_sloc1_1_0:
      00000A                        474 	.ds 2
                                    475 ;--------------------------------------------------------
                                    476 ; overlayable items in internal ram 
                                    477 ;--------------------------------------------------------
                                    478 ;--------------------------------------------------------
                                    479 ; indirectly addressable internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area ISEG    (DATA)
                                    482 ;--------------------------------------------------------
                                    483 ; absolute internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area IABS    (ABS,DATA)
                                    486 	.area IABS    (ABS,DATA)
                                    487 ;--------------------------------------------------------
                                    488 ; bit data
                                    489 ;--------------------------------------------------------
                                    490 	.area BSEG    (BIT)
                                    491 ;--------------------------------------------------------
                                    492 ; paged external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area PSEG    (PAG,XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XSEG    (XDATA)
                           008000   499 _lcd_ptr	=	0x8000
      000400                        500 _delay_ms_65536_77:
      000400                        501 	.ds 2
      000402                        502 _lcdgotoaddr_addr_65536_86:
      000402                        503 	.ds 1
      000403                        504 _lcdgotoxy_PARM_2:
      000403                        505 	.ds 2
      000405                        506 _lcdgotoxy_x_65536_88:
      000405                        507 	.ds 2
      000407                        508 _lcdgotoxy_addr_65536_89:
      000407                        509 	.ds 2
      000409                        510 _lcdputch_c_65536_95:
      000409                        511 	.ds 1
      00040A                        512 _lcdputstr_ss_65536_103:
      00040A                        513 	.ds 3
      00040D                        514 _hex_dump_loop_65537_109:
      00040D                        515 	.ds 2
      00040F                        516 _create_custom_char_PARM_2:
      00040F                        517 	.ds 3
      000412                        518 _create_custom_char_ch_code_65536_113:
      000412                        519 	.ds 1
      000413                        520 _ascii_to_int_arr_65536_117:
      000413                        521 	.ds 3
      000416                        522 _ascii_to_int_i_65536_118:
      000416                        523 	.ds 2
      000418                        524 _ascii_to_int_buff_size_65536_118:
      000418                        525 	.ds 2
      00041A                        526 _get_input_arr_65536_122:
      00041A                        527 	.ds 3
                                    528 ;--------------------------------------------------------
                                    529 ; absolute external ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area XABS    (ABS,XDATA)
                                    532 ;--------------------------------------------------------
                                    533 ; external initialized ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area XISEG   (XDATA)
                                    536 	.area HOME    (CODE)
                                    537 	.area GSINIT0 (CODE)
                                    538 	.area GSINIT1 (CODE)
                                    539 	.area GSINIT2 (CODE)
                                    540 	.area GSINIT3 (CODE)
                                    541 	.area GSINIT4 (CODE)
                                    542 	.area GSINIT5 (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.area GSFINAL (CODE)
                                    545 	.area CSEG    (CODE)
                                    546 ;--------------------------------------------------------
                                    547 ; global & static initialisations
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
                                    550 	.area GSINIT  (CODE)
                                    551 	.area GSFINAL (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; code
                                    560 ;--------------------------------------------------------
                                    561 	.area CSEG    (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'delay'
                                    564 ;------------------------------------------------------------
                                    565 ;ms                        Allocated with name '_delay_ms_65536_77'
                                    566 ;j                         Allocated with name '_delay_j_131072_79'
                                    567 ;i                         Allocated with name '_delay_i_262144_81'
                                    568 ;------------------------------------------------------------
                                    569 ;	LCD.c:15: void delay(int ms)
                                    570 ;	-----------------------------------------
                                    571 ;	 function delay
                                    572 ;	-----------------------------------------
      002074                        573 _delay:
                           000007   574 	ar7 = 0x07
                           000006   575 	ar6 = 0x06
                           000005   576 	ar5 = 0x05
                           000004   577 	ar4 = 0x04
                           000003   578 	ar3 = 0x03
                           000002   579 	ar2 = 0x02
                           000001   580 	ar1 = 0x01
                           000000   581 	ar0 = 0x00
      002074 AF 83            [24]  582 	mov	r7,dph
      002076 E5 82            [12]  583 	mov	a,dpl
      002078 90 04 00         [24]  584 	mov	dptr,#_delay_ms_65536_77
      00207B F0               [24]  585 	movx	@dptr,a
      00207C EF               [12]  586 	mov	a,r7
      00207D A3               [24]  587 	inc	dptr
      00207E F0               [24]  588 	movx	@dptr,a
                                    589 ;	LCD.c:17: for(int j=0;j<ms;j++)
      00207F 90 04 00         [24]  590 	mov	dptr,#_delay_ms_65536_77
      002082 E0               [24]  591 	movx	a,@dptr
      002083 FE               [12]  592 	mov	r6,a
      002084 A3               [24]  593 	inc	dptr
      002085 E0               [24]  594 	movx	a,@dptr
      002086 FF               [12]  595 	mov	r7,a
      002087 7C 00            [12]  596 	mov	r4,#0x00
      002089 7D 00            [12]  597 	mov	r5,#0x00
      00208B                        598 00107$:
      00208B C3               [12]  599 	clr	c
      00208C EC               [12]  600 	mov	a,r4
      00208D 9E               [12]  601 	subb	a,r6
      00208E ED               [12]  602 	mov	a,r5
      00208F 64 80            [12]  603 	xrl	a,#0x80
      002091 8F F0            [24]  604 	mov	b,r7
      002093 63 F0 80         [24]  605 	xrl	b,#0x80
      002096 95 F0            [12]  606 	subb	a,b
      002098 50 1D            [24]  607 	jnc	00109$
                                    608 ;	LCD.c:19: for(int i=0;i<ONE_MS;i++);
      00209A 7A 00            [12]  609 	mov	r2,#0x00
      00209C 7B 00            [12]  610 	mov	r3,#0x00
      00209E                        611 00104$:
      00209E C3               [12]  612 	clr	c
      00209F EA               [12]  613 	mov	a,r2
      0020A0 94 52            [12]  614 	subb	a,#0x52
      0020A2 EB               [12]  615 	mov	a,r3
      0020A3 64 80            [12]  616 	xrl	a,#0x80
      0020A5 94 80            [12]  617 	subb	a,#0x80
      0020A7 50 07            [24]  618 	jnc	00108$
      0020A9 0A               [12]  619 	inc	r2
      0020AA BA 00 F1         [24]  620 	cjne	r2,#0x00,00104$
      0020AD 0B               [12]  621 	inc	r3
      0020AE 80 EE            [24]  622 	sjmp	00104$
      0020B0                        623 00108$:
                                    624 ;	LCD.c:17: for(int j=0;j<ms;j++)
      0020B0 0C               [12]  625 	inc	r4
      0020B1 BC 00 D7         [24]  626 	cjne	r4,#0x00,00107$
      0020B4 0D               [12]  627 	inc	r5
      0020B5 80 D4            [24]  628 	sjmp	00107$
      0020B7                        629 00109$:
                                    630 ;	LCD.c:21: }
      0020B7 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'lcdbusywait'
                                    634 ;------------------------------------------------------------
                                    635 ;	LCD.c:25: void lcdbusywait(void)
                                    636 ;	-----------------------------------------
                                    637 ;	 function lcdbusywait
                                    638 ;	-----------------------------------------
      0020B8                        639 _lcdbusywait:
                                    640 ;	LCD.c:28: RS=0;
                                    641 ;	assignBit
      0020B8 C2 90            [12]  642 	clr	_P1_0
                                    643 ;	LCD.c:29: RW=1;
                                    644 ;	assignBit
      0020BA D2 92            [12]  645 	setb	_P1_2
                                    646 ;	LCD.c:31: while(lcd_ptr&0x80);
      0020BC                        647 00101$:
      0020BC 90 80 00         [24]  648 	mov	dptr,#_lcd_ptr
      0020BF E0               [24]  649 	movx	a,@dptr
      0020C0 20 E7 F9         [24]  650 	jb	acc.7,00101$
                                    651 ;	LCD.c:32: }
      0020C3 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'lcdinit'
                                    655 ;------------------------------------------------------------
                                    656 ;	LCD.c:38: void lcdinit(void)
                                    657 ;	-----------------------------------------
                                    658 ;	 function lcdinit
                                    659 ;	-----------------------------------------
      0020C4                        660 _lcdinit:
                                    661 ;	LCD.c:40: delay(60);
      0020C4 90 00 3C         [24]  662 	mov	dptr,#0x003c
      0020C7 12 20 74         [24]  663 	lcall	_delay
                                    664 ;	LCD.c:42: RS=0;
                                    665 ;	assignBit
      0020CA C2 90            [12]  666 	clr	_P1_0
                                    667 ;	LCD.c:43: RW=0;
                                    668 ;	assignBit
      0020CC C2 92            [12]  669 	clr	_P1_2
                                    670 ;	LCD.c:46: lcd_ptr=0x30;
      0020CE 90 80 00         [24]  671 	mov	dptr,#_lcd_ptr
      0020D1 74 30            [12]  672 	mov	a,#0x30
      0020D3 F0               [24]  673 	movx	@dptr,a
                                    674 ;	LCD.c:48: delay(15);
      0020D4 90 00 0F         [24]  675 	mov	dptr,#0x000f
      0020D7 12 20 74         [24]  676 	lcall	_delay
                                    677 ;	LCD.c:50: lcd_ptr=0x30;
      0020DA 90 80 00         [24]  678 	mov	dptr,#_lcd_ptr
      0020DD 74 30            [12]  679 	mov	a,#0x30
      0020DF F0               [24]  680 	movx	@dptr,a
                                    681 ;	LCD.c:52: delay(1);
      0020E0 90 00 01         [24]  682 	mov	dptr,#0x0001
      0020E3 12 20 74         [24]  683 	lcall	_delay
                                    684 ;	LCD.c:54: lcd_ptr=0x30;
      0020E6 90 80 00         [24]  685 	mov	dptr,#_lcd_ptr
      0020E9 74 30            [12]  686 	mov	a,#0x30
      0020EB F0               [24]  687 	movx	@dptr,a
                                    688 ;	LCD.c:56: lcdbusywait();
      0020EC 12 20 B8         [24]  689 	lcall	_lcdbusywait
                                    690 ;	LCD.c:58: RS=0;
                                    691 ;	assignBit
      0020EF C2 90            [12]  692 	clr	_P1_0
                                    693 ;	LCD.c:59: RW=0;
                                    694 ;	assignBit
      0020F1 C2 92            [12]  695 	clr	_P1_2
                                    696 ;	LCD.c:61: lcd_ptr=0x38;
      0020F3 90 80 00         [24]  697 	mov	dptr,#_lcd_ptr
      0020F6 74 38            [12]  698 	mov	a,#0x38
      0020F8 F0               [24]  699 	movx	@dptr,a
                                    700 ;	LCD.c:63: lcdbusywait();
      0020F9 12 20 B8         [24]  701 	lcall	_lcdbusywait
                                    702 ;	LCD.c:65: RS=0;
                                    703 ;	assignBit
      0020FC C2 90            [12]  704 	clr	_P1_0
                                    705 ;	LCD.c:66: RW=0;
                                    706 ;	assignBit
      0020FE C2 92            [12]  707 	clr	_P1_2
                                    708 ;	LCD.c:68: lcd_ptr=0x08;
      002100 90 80 00         [24]  709 	mov	dptr,#_lcd_ptr
      002103 74 08            [12]  710 	mov	a,#0x08
      002105 F0               [24]  711 	movx	@dptr,a
                                    712 ;	LCD.c:70: lcdbusywait();
      002106 12 20 B8         [24]  713 	lcall	_lcdbusywait
                                    714 ;	LCD.c:72: RS=0;
                                    715 ;	assignBit
      002109 C2 90            [12]  716 	clr	_P1_0
                                    717 ;	LCD.c:73: RW=0;
                                    718 ;	assignBit
      00210B C2 92            [12]  719 	clr	_P1_2
                                    720 ;	LCD.c:75: lcd_ptr=0x0F;
      00210D 90 80 00         [24]  721 	mov	dptr,#_lcd_ptr
      002110 74 0F            [12]  722 	mov	a,#0x0f
      002112 F0               [24]  723 	movx	@dptr,a
                                    724 ;	LCD.c:77: lcdbusywait();
      002113 12 20 B8         [24]  725 	lcall	_lcdbusywait
                                    726 ;	LCD.c:79: RS=0;
                                    727 ;	assignBit
      002116 C2 90            [12]  728 	clr	_P1_0
                                    729 ;	LCD.c:80: RW=0;
                                    730 ;	assignBit
      002118 C2 92            [12]  731 	clr	_P1_2
                                    732 ;	LCD.c:82: lcd_ptr=0x06;
      00211A 90 80 00         [24]  733 	mov	dptr,#_lcd_ptr
      00211D 74 06            [12]  734 	mov	a,#0x06
      00211F F0               [24]  735 	movx	@dptr,a
                                    736 ;	LCD.c:84: lcdbusywait();
      002120 12 20 B8         [24]  737 	lcall	_lcdbusywait
                                    738 ;	LCD.c:86: RS=0;
                                    739 ;	assignBit
      002123 C2 90            [12]  740 	clr	_P1_0
                                    741 ;	LCD.c:87: RW=0;
                                    742 ;	assignBit
      002125 C2 92            [12]  743 	clr	_P1_2
                                    744 ;	LCD.c:89: lcd_ptr=0x01;
      002127 90 80 00         [24]  745 	mov	dptr,#_lcd_ptr
      00212A 74 01            [12]  746 	mov	a,#0x01
      00212C F0               [24]  747 	movx	@dptr,a
                                    748 ;	LCD.c:91: lcdbusywait();
                                    749 ;	LCD.c:92: }
      00212D 02 20 B8         [24]  750 	ljmp	_lcdbusywait
                                    751 ;------------------------------------------------------------
                                    752 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    753 ;------------------------------------------------------------
                                    754 ;addr                      Allocated with name '_lcdgotoaddr_addr_65536_86'
                                    755 ;------------------------------------------------------------
                                    756 ;	LCD.c:99: void lcdgotoaddr(unsigned char addr)
                                    757 ;	-----------------------------------------
                                    758 ;	 function lcdgotoaddr
                                    759 ;	-----------------------------------------
      002130                        760 _lcdgotoaddr:
      002130 E5 82            [12]  761 	mov	a,dpl
      002132 90 04 02         [24]  762 	mov	dptr,#_lcdgotoaddr_addr_65536_86
      002135 F0               [24]  763 	movx	@dptr,a
                                    764 ;	LCD.c:102: RS = 0;
                                    765 ;	assignBit
      002136 C2 90            [12]  766 	clr	_P1_0
                                    767 ;	LCD.c:103: RW = 0;
                                    768 ;	assignBit
      002138 C2 92            [12]  769 	clr	_P1_2
                                    770 ;	LCD.c:105: addr |= 0x80;
      00213A 90 04 02         [24]  771 	mov	dptr,#_lcdgotoaddr_addr_65536_86
      00213D E0               [24]  772 	movx	a,@dptr
      00213E 43 E0 80         [24]  773 	orl	acc,#0x80
      002141 F0               [24]  774 	movx	@dptr,a
                                    775 ;	LCD.c:107: lcd_ptr = addr;
      002142 90 04 02         [24]  776 	mov	dptr,#_lcdgotoaddr_addr_65536_86
      002145 E0               [24]  777 	movx	a,@dptr
      002146 90 80 00         [24]  778 	mov	dptr,#_lcd_ptr
      002149 F0               [24]  779 	movx	@dptr,a
                                    780 ;	LCD.c:109: lcdbusywait();
                                    781 ;	LCD.c:110: }
      00214A 02 20 B8         [24]  782 	ljmp	_lcdbusywait
                                    783 ;------------------------------------------------------------
                                    784 ;Allocation info for local variables in function 'lcdgotoxy'
                                    785 ;------------------------------------------------------------
                                    786 ;y                         Allocated with name '_lcdgotoxy_PARM_2'
                                    787 ;x                         Allocated with name '_lcdgotoxy_x_65536_88'
                                    788 ;addr                      Allocated with name '_lcdgotoxy_addr_65536_89'
                                    789 ;------------------------------------------------------------
                                    790 ;	LCD.c:120: void lcdgotoxy(uint16_t x, uint16_t y)
                                    791 ;	-----------------------------------------
                                    792 ;	 function lcdgotoxy
                                    793 ;	-----------------------------------------
      00214D                        794 _lcdgotoxy:
      00214D AF 83            [24]  795 	mov	r7,dph
      00214F E5 82            [12]  796 	mov	a,dpl
      002151 90 04 05         [24]  797 	mov	dptr,#_lcdgotoxy_x_65536_88
      002154 F0               [24]  798 	movx	@dptr,a
      002155 EF               [12]  799 	mov	a,r7
      002156 A3               [24]  800 	inc	dptr
      002157 F0               [24]  801 	movx	@dptr,a
                                    802 ;	LCD.c:122: uint16_t addr = 0;  // Initialize the address variable to zero
      002158 90 04 07         [24]  803 	mov	dptr,#_lcdgotoxy_addr_65536_89
      00215B E4               [12]  804 	clr	a
      00215C F0               [24]  805 	movx	@dptr,a
      00215D A3               [24]  806 	inc	dptr
      00215E F0               [24]  807 	movx	@dptr,a
                                    808 ;	LCD.c:125: if (x == 0)
      00215F 90 04 05         [24]  809 	mov	dptr,#_lcdgotoxy_x_65536_88
      002162 E0               [24]  810 	movx	a,@dptr
      002163 FE               [12]  811 	mov	r6,a
      002164 A3               [24]  812 	inc	dptr
      002165 E0               [24]  813 	movx	a,@dptr
      002166 FF               [12]  814 	mov	r7,a
      002167 4E               [12]  815 	orl	a,r6
      002168 70 19            [24]  816 	jnz	00110$
                                    817 ;	LCD.c:127: x = 0x00;
      00216A 90 04 05         [24]  818 	mov	dptr,#_lcdgotoxy_x_65536_88
      00216D E4               [12]  819 	clr	a
      00216E F0               [24]  820 	movx	@dptr,a
      00216F A3               [24]  821 	inc	dptr
      002170 F0               [24]  822 	movx	@dptr,a
                                    823 ;	LCD.c:128: addr = x | y;
      002171 90 04 03         [24]  824 	mov	dptr,#_lcdgotoxy_PARM_2
      002174 E0               [24]  825 	movx	a,@dptr
      002175 FC               [12]  826 	mov	r4,a
      002176 A3               [24]  827 	inc	dptr
      002177 E0               [24]  828 	movx	a,@dptr
      002178 FD               [12]  829 	mov	r5,a
      002179 90 04 07         [24]  830 	mov	dptr,#_lcdgotoxy_addr_65536_89
      00217C EC               [12]  831 	mov	a,r4
      00217D F0               [24]  832 	movx	@dptr,a
      00217E ED               [12]  833 	mov	a,r5
      00217F A3               [24]  834 	inc	dptr
      002180 F0               [24]  835 	movx	@dptr,a
      002181 80 67            [24]  836 	sjmp	00111$
      002183                        837 00110$:
                                    838 ;	LCD.c:130: else if (x == 1)
      002183 BE 01 20         [24]  839 	cjne	r6,#0x01,00107$
      002186 BF 00 1D         [24]  840 	cjne	r7,#0x00,00107$
                                    841 ;	LCD.c:132: x = 0x40;
      002189 90 04 05         [24]  842 	mov	dptr,#_lcdgotoxy_x_65536_88
      00218C 74 40            [12]  843 	mov	a,#0x40
      00218E F0               [24]  844 	movx	@dptr,a
      00218F E4               [12]  845 	clr	a
      002190 A3               [24]  846 	inc	dptr
      002191 F0               [24]  847 	movx	@dptr,a
                                    848 ;	LCD.c:133: addr = x | y;
      002192 90 04 03         [24]  849 	mov	dptr,#_lcdgotoxy_PARM_2
      002195 E0               [24]  850 	movx	a,@dptr
      002196 FC               [12]  851 	mov	r4,a
      002197 A3               [24]  852 	inc	dptr
      002198 E0               [24]  853 	movx	a,@dptr
      002199 FD               [12]  854 	mov	r5,a
      00219A 90 04 07         [24]  855 	mov	dptr,#_lcdgotoxy_addr_65536_89
      00219D 74 40            [12]  856 	mov	a,#0x40
      00219F 4C               [12]  857 	orl	a,r4
      0021A0 F0               [24]  858 	movx	@dptr,a
      0021A1 ED               [12]  859 	mov	a,r5
      0021A2 A3               [24]  860 	inc	dptr
      0021A3 F0               [24]  861 	movx	@dptr,a
      0021A4 80 44            [24]  862 	sjmp	00111$
      0021A6                        863 00107$:
                                    864 ;	LCD.c:135: else if (x == 2)
      0021A6 BE 02 20         [24]  865 	cjne	r6,#0x02,00104$
      0021A9 BF 00 1D         [24]  866 	cjne	r7,#0x00,00104$
                                    867 ;	LCD.c:137: x = 0x10;
      0021AC 90 04 05         [24]  868 	mov	dptr,#_lcdgotoxy_x_65536_88
      0021AF 74 10            [12]  869 	mov	a,#0x10
      0021B1 F0               [24]  870 	movx	@dptr,a
      0021B2 E4               [12]  871 	clr	a
      0021B3 A3               [24]  872 	inc	dptr
      0021B4 F0               [24]  873 	movx	@dptr,a
                                    874 ;	LCD.c:138: addr = x | y;
      0021B5 90 04 03         [24]  875 	mov	dptr,#_lcdgotoxy_PARM_2
      0021B8 E0               [24]  876 	movx	a,@dptr
      0021B9 FC               [12]  877 	mov	r4,a
      0021BA A3               [24]  878 	inc	dptr
      0021BB E0               [24]  879 	movx	a,@dptr
      0021BC FD               [12]  880 	mov	r5,a
      0021BD 90 04 07         [24]  881 	mov	dptr,#_lcdgotoxy_addr_65536_89
      0021C0 74 10            [12]  882 	mov	a,#0x10
      0021C2 4C               [12]  883 	orl	a,r4
      0021C3 F0               [24]  884 	movx	@dptr,a
      0021C4 ED               [12]  885 	mov	a,r5
      0021C5 A3               [24]  886 	inc	dptr
      0021C6 F0               [24]  887 	movx	@dptr,a
      0021C7 80 21            [24]  888 	sjmp	00111$
      0021C9                        889 00104$:
                                    890 ;	LCD.c:140: else if (x == 3)
      0021C9 BE 03 1E         [24]  891 	cjne	r6,#0x03,00111$
      0021CC BF 00 1B         [24]  892 	cjne	r7,#0x00,00111$
                                    893 ;	LCD.c:142: x = 0x50;
      0021CF 90 04 05         [24]  894 	mov	dptr,#_lcdgotoxy_x_65536_88
      0021D2 74 50            [12]  895 	mov	a,#0x50
      0021D4 F0               [24]  896 	movx	@dptr,a
      0021D5 E4               [12]  897 	clr	a
      0021D6 A3               [24]  898 	inc	dptr
      0021D7 F0               [24]  899 	movx	@dptr,a
                                    900 ;	LCD.c:143: addr = x | y;
      0021D8 90 04 03         [24]  901 	mov	dptr,#_lcdgotoxy_PARM_2
      0021DB E0               [24]  902 	movx	a,@dptr
      0021DC FE               [12]  903 	mov	r6,a
      0021DD A3               [24]  904 	inc	dptr
      0021DE E0               [24]  905 	movx	a,@dptr
      0021DF FF               [12]  906 	mov	r7,a
      0021E0 90 04 07         [24]  907 	mov	dptr,#_lcdgotoxy_addr_65536_89
      0021E3 74 50            [12]  908 	mov	a,#0x50
      0021E5 4E               [12]  909 	orl	a,r6
      0021E6 F0               [24]  910 	movx	@dptr,a
      0021E7 EF               [12]  911 	mov	a,r7
      0021E8 A3               [24]  912 	inc	dptr
      0021E9 F0               [24]  913 	movx	@dptr,a
      0021EA                        914 00111$:
                                    915 ;	LCD.c:147: lcdgotoaddr(addr);
      0021EA 90 04 07         [24]  916 	mov	dptr,#_lcdgotoxy_addr_65536_89
      0021ED E0               [24]  917 	movx	a,@dptr
      0021EE FE               [12]  918 	mov	r6,a
      0021EF A3               [24]  919 	inc	dptr
      0021F0 E0               [24]  920 	movx	a,@dptr
      0021F1 8E 82            [24]  921 	mov	dpl,r6
      0021F3 12 21 30         [24]  922 	lcall	_lcdgotoaddr
                                    923 ;	LCD.c:150: lcdbusywait();
                                    924 ;	LCD.c:151: }
      0021F6 02 20 B8         [24]  925 	ljmp	_lcdbusywait
                                    926 ;------------------------------------------------------------
                                    927 ;Allocation info for local variables in function 'get_cursor_address'
                                    928 ;------------------------------------------------------------
                                    929 ;	LCD.c:161: uint8_t get_cursor_address()
                                    930 ;	-----------------------------------------
                                    931 ;	 function get_cursor_address
                                    932 ;	-----------------------------------------
      0021F9                        933 _get_cursor_address:
                                    934 ;	LCD.c:163: RS = 0;        // Set RS to 0 for command mode
                                    935 ;	assignBit
      0021F9 C2 90            [12]  936 	clr	_P1_0
                                    937 ;	LCD.c:164: RW = 1;        // Set RW to 1 for read mode
                                    938 ;	assignBit
      0021FB D2 92            [12]  939 	setb	_P1_2
                                    940 ;	LCD.c:165: return lcd_ptr & (~0x80);  // Return the cursor address with the most significant bit cleared
      0021FD 90 80 00         [24]  941 	mov	dptr,#_lcd_ptr
      002200 E0               [24]  942 	movx	a,@dptr
      002201 54 7F            [12]  943 	anl	a,#0x7f
                                    944 ;	LCD.c:166: }
      002203 F5 82            [12]  945 	mov	dpl,a
      002205 22               [24]  946 	ret
                                    947 ;------------------------------------------------------------
                                    948 ;Allocation info for local variables in function 'lcdputch'
                                    949 ;------------------------------------------------------------
                                    950 ;c                         Allocated with name '_lcdputch_c_65536_95'
                                    951 ;------------------------------------------------------------
                                    952 ;	LCD.c:180: void lcdputch(char c)
                                    953 ;	-----------------------------------------
                                    954 ;	 function lcdputch
                                    955 ;	-----------------------------------------
      002206                        956 _lcdputch:
      002206 E5 82            [12]  957 	mov	a,dpl
      002208 90 04 09         [24]  958 	mov	dptr,#_lcdputch_c_65536_95
      00220B F0               [24]  959 	movx	@dptr,a
                                    960 ;	LCD.c:183: if (c == 127)
      00220C E0               [24]  961 	movx	a,@dptr
      00220D FF               [12]  962 	mov	r7,a
      00220E BF 7F 01         [24]  963 	cjne	r7,#0x7f,00102$
                                    964 ;	LCD.c:185: return;
      002211 22               [24]  965 	ret
      002212                        966 00102$:
                                    967 ;	LCD.c:189: if (get_cursor_address() == 0x0F)
      002212 C0 07            [24]  968 	push	ar7
      002214 12 21 F9         [24]  969 	lcall	_get_cursor_address
      002217 AE 82            [24]  970 	mov	r6,dpl
      002219 D0 07            [24]  971 	pop	ar7
      00221B BE 0F 19         [24]  972 	cjne	r6,#0x0f,00113$
                                    973 ;	LCD.c:192: RS = 1;
                                    974 ;	assignBit
      00221E D2 90            [12]  975 	setb	_P1_0
                                    976 ;	LCD.c:193: RW = 0;
                                    977 ;	assignBit
      002220 C2 92            [12]  978 	clr	_P1_2
                                    979 ;	LCD.c:195: lcd_ptr = c;
      002222 90 80 00         [24]  980 	mov	dptr,#_lcd_ptr
      002225 EF               [12]  981 	mov	a,r7
      002226 F0               [24]  982 	movx	@dptr,a
                                    983 ;	LCD.c:197: lcdbusywait();
      002227 12 20 B8         [24]  984 	lcall	_lcdbusywait
                                    985 ;	LCD.c:199: lcdgotoxy(1, 0);
      00222A 90 04 03         [24]  986 	mov	dptr,#_lcdgotoxy_PARM_2
      00222D E4               [12]  987 	clr	a
      00222E F0               [24]  988 	movx	@dptr,a
      00222F A3               [24]  989 	inc	dptr
      002230 F0               [24]  990 	movx	@dptr,a
      002231 90 00 01         [24]  991 	mov	dptr,#0x0001
      002234 02 21 4D         [24]  992 	ljmp	_lcdgotoxy
      002237                        993 00113$:
                                    994 ;	LCD.c:201: else if (get_cursor_address() == 0x4F)
      002237 C0 07            [24]  995 	push	ar7
      002239 12 21 F9         [24]  996 	lcall	_get_cursor_address
      00223C AE 82            [24]  997 	mov	r6,dpl
      00223E D0 07            [24]  998 	pop	ar7
      002240 BE 4F 19         [24]  999 	cjne	r6,#0x4f,00110$
                                   1000 ;	LCD.c:204: RS = 1;
                                   1001 ;	assignBit
      002243 D2 90            [12] 1002 	setb	_P1_0
                                   1003 ;	LCD.c:205: RW = 0;
                                   1004 ;	assignBit
      002245 C2 92            [12] 1005 	clr	_P1_2
                                   1006 ;	LCD.c:207: lcd_ptr = c;
      002247 90 80 00         [24] 1007 	mov	dptr,#_lcd_ptr
      00224A EF               [12] 1008 	mov	a,r7
      00224B F0               [24] 1009 	movx	@dptr,a
                                   1010 ;	LCD.c:209: lcdbusywait();
      00224C 12 20 B8         [24] 1011 	lcall	_lcdbusywait
                                   1012 ;	LCD.c:211: lcdgotoxy(2, 0);
      00224F 90 04 03         [24] 1013 	mov	dptr,#_lcdgotoxy_PARM_2
      002252 E4               [12] 1014 	clr	a
      002253 F0               [24] 1015 	movx	@dptr,a
      002254 A3               [24] 1016 	inc	dptr
      002255 F0               [24] 1017 	movx	@dptr,a
      002256 90 00 02         [24] 1018 	mov	dptr,#0x0002
      002259 02 21 4D         [24] 1019 	ljmp	_lcdgotoxy
      00225C                       1020 00110$:
                                   1021 ;	LCD.c:213: else if (get_cursor_address() == 0x1F)
      00225C C0 07            [24] 1022 	push	ar7
      00225E 12 21 F9         [24] 1023 	lcall	_get_cursor_address
      002261 AE 82            [24] 1024 	mov	r6,dpl
      002263 D0 07            [24] 1025 	pop	ar7
      002265 BE 1F 19         [24] 1026 	cjne	r6,#0x1f,00107$
                                   1027 ;	LCD.c:216: RS = 1;
                                   1028 ;	assignBit
      002268 D2 90            [12] 1029 	setb	_P1_0
                                   1030 ;	LCD.c:217: RW = 0;
                                   1031 ;	assignBit
      00226A C2 92            [12] 1032 	clr	_P1_2
                                   1033 ;	LCD.c:219: lcd_ptr = c;
      00226C 90 80 00         [24] 1034 	mov	dptr,#_lcd_ptr
      00226F EF               [12] 1035 	mov	a,r7
      002270 F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	LCD.c:221: lcdbusywait();
      002271 12 20 B8         [24] 1038 	lcall	_lcdbusywait
                                   1039 ;	LCD.c:223: lcdgotoxy(3, 0);
      002274 90 04 03         [24] 1040 	mov	dptr,#_lcdgotoxy_PARM_2
      002277 E4               [12] 1041 	clr	a
      002278 F0               [24] 1042 	movx	@dptr,a
      002279 A3               [24] 1043 	inc	dptr
      00227A F0               [24] 1044 	movx	@dptr,a
      00227B 90 00 03         [24] 1045 	mov	dptr,#0x0003
      00227E 02 21 4D         [24] 1046 	ljmp	_lcdgotoxy
      002281                       1047 00107$:
                                   1048 ;	LCD.c:225: else if (get_cursor_address() == 0x58)
      002281 C0 07            [24] 1049 	push	ar7
      002283 12 21 F9         [24] 1050 	lcall	_get_cursor_address
      002286 AE 82            [24] 1051 	mov	r6,dpl
      002288 D0 07            [24] 1052 	pop	ar7
      00228A BE 58 19         [24] 1053 	cjne	r6,#0x58,00104$
                                   1054 ;	LCD.c:228: RS = 1;
                                   1055 ;	assignBit
      00228D D2 90            [12] 1056 	setb	_P1_0
                                   1057 ;	LCD.c:229: RW = 0;
                                   1058 ;	assignBit
      00228F C2 92            [12] 1059 	clr	_P1_2
                                   1060 ;	LCD.c:231: lcd_ptr = c;
      002291 90 80 00         [24] 1061 	mov	dptr,#_lcd_ptr
      002294 EF               [12] 1062 	mov	a,r7
      002295 F0               [24] 1063 	movx	@dptr,a
                                   1064 ;	LCD.c:233: lcdbusywait();
      002296 12 20 B8         [24] 1065 	lcall	_lcdbusywait
                                   1066 ;	LCD.c:235: lcdgotoxy(0, 0);
      002299 90 04 03         [24] 1067 	mov	dptr,#_lcdgotoxy_PARM_2
      00229C E4               [12] 1068 	clr	a
      00229D F0               [24] 1069 	movx	@dptr,a
      00229E A3               [24] 1070 	inc	dptr
      00229F F0               [24] 1071 	movx	@dptr,a
      0022A0 90 00 00         [24] 1072 	mov	dptr,#0x0000
      0022A3 02 21 4D         [24] 1073 	ljmp	_lcdgotoxy
      0022A6                       1074 00104$:
                                   1075 ;	LCD.c:241: RS = 1;
                                   1076 ;	assignBit
      0022A6 D2 90            [12] 1077 	setb	_P1_0
                                   1078 ;	LCD.c:242: RW = 0;
                                   1079 ;	assignBit
      0022A8 C2 92            [12] 1080 	clr	_P1_2
                                   1081 ;	LCD.c:244: lcd_ptr = c;
      0022AA 90 80 00         [24] 1082 	mov	dptr,#_lcd_ptr
      0022AD EF               [12] 1083 	mov	a,r7
      0022AE F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	LCD.c:246: lcdbusywait();
                                   1086 ;	LCD.c:248: }
      0022AF 02 20 B8         [24] 1087 	ljmp	_lcdbusywait
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'lcdputstr'
                                   1090 ;------------------------------------------------------------
                                   1091 ;ss                        Allocated with name '_lcdputstr_ss_65536_103'
                                   1092 ;i                         Allocated with name '_lcdputstr_i_65536_104'
                                   1093 ;------------------------------------------------------------
                                   1094 ;	LCD.c:257: void lcdputstr(char *ss)
                                   1095 ;	-----------------------------------------
                                   1096 ;	 function lcdputstr
                                   1097 ;	-----------------------------------------
      0022B2                       1098 _lcdputstr:
      0022B2 AF F0            [24] 1099 	mov	r7,b
      0022B4 AE 83            [24] 1100 	mov	r6,dph
      0022B6 E5 82            [12] 1101 	mov	a,dpl
      0022B8 90 04 0A         [24] 1102 	mov	dptr,#_lcdputstr_ss_65536_103
      0022BB F0               [24] 1103 	movx	@dptr,a
      0022BC EE               [12] 1104 	mov	a,r6
      0022BD A3               [24] 1105 	inc	dptr
      0022BE F0               [24] 1106 	movx	@dptr,a
      0022BF EF               [12] 1107 	mov	a,r7
      0022C0 A3               [24] 1108 	inc	dptr
      0022C1 F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	LCD.c:262: while (ss[i] != '\0')
      0022C2 90 04 0A         [24] 1111 	mov	dptr,#_lcdputstr_ss_65536_103
      0022C5 E0               [24] 1112 	movx	a,@dptr
      0022C6 FD               [12] 1113 	mov	r5,a
      0022C7 A3               [24] 1114 	inc	dptr
      0022C8 E0               [24] 1115 	movx	a,@dptr
      0022C9 FE               [12] 1116 	mov	r6,a
      0022CA A3               [24] 1117 	inc	dptr
      0022CB E0               [24] 1118 	movx	a,@dptr
      0022CC FF               [12] 1119 	mov	r7,a
      0022CD 7B 00            [12] 1120 	mov	r3,#0x00
      0022CF 7C 00            [12] 1121 	mov	r4,#0x00
      0022D1                       1122 00101$:
      0022D1 EB               [12] 1123 	mov	a,r3
      0022D2 2D               [12] 1124 	add	a,r5
      0022D3 F8               [12] 1125 	mov	r0,a
      0022D4 EC               [12] 1126 	mov	a,r4
      0022D5 3E               [12] 1127 	addc	a,r6
      0022D6 F9               [12] 1128 	mov	r1,a
      0022D7 8F 02            [24] 1129 	mov	ar2,r7
      0022D9 88 82            [24] 1130 	mov	dpl,r0
      0022DB 89 83            [24] 1131 	mov	dph,r1
      0022DD 8A F0            [24] 1132 	mov	b,r2
      0022DF 12 3A EA         [24] 1133 	lcall	__gptrget
      0022E2 FA               [12] 1134 	mov	r2,a
      0022E3 60 20            [24] 1135 	jz	00104$
                                   1136 ;	LCD.c:265: lcdputch(ss[i]);
      0022E5 8A 82            [24] 1137 	mov	dpl,r2
      0022E7 C0 07            [24] 1138 	push	ar7
      0022E9 C0 06            [24] 1139 	push	ar6
      0022EB C0 05            [24] 1140 	push	ar5
      0022ED C0 04            [24] 1141 	push	ar4
      0022EF C0 03            [24] 1142 	push	ar3
      0022F1 12 22 06         [24] 1143 	lcall	_lcdputch
      0022F4 D0 03            [24] 1144 	pop	ar3
      0022F6 D0 04            [24] 1145 	pop	ar4
      0022F8 D0 05            [24] 1146 	pop	ar5
      0022FA D0 06            [24] 1147 	pop	ar6
      0022FC D0 07            [24] 1148 	pop	ar7
                                   1149 ;	LCD.c:266: i++;
      0022FE 0B               [12] 1150 	inc	r3
      0022FF BB 00 CF         [24] 1151 	cjne	r3,#0x00,00101$
      002302 0C               [12] 1152 	inc	r4
      002303 80 CC            [24] 1153 	sjmp	00101$
      002305                       1154 00104$:
                                   1155 ;	LCD.c:268: }
      002305 22               [24] 1156 	ret
                                   1157 ;------------------------------------------------------------
                                   1158 ;Allocation info for local variables in function 'lcdclear'
                                   1159 ;------------------------------------------------------------
                                   1160 ;	LCD.c:278: void lcdclear(void)
                                   1161 ;	-----------------------------------------
                                   1162 ;	 function lcdclear
                                   1163 ;	-----------------------------------------
      002306                       1164 _lcdclear:
                                   1165 ;	LCD.c:281: RS = 0;
                                   1166 ;	assignBit
      002306 C2 90            [12] 1167 	clr	_P1_0
                                   1168 ;	LCD.c:282: RW = 0;
                                   1169 ;	assignBit
      002308 C2 92            [12] 1170 	clr	_P1_2
                                   1171 ;	LCD.c:285: lcd_ptr = 0x01;
      00230A 90 80 00         [24] 1172 	mov	dptr,#_lcd_ptr
      00230D 74 01            [12] 1173 	mov	a,#0x01
      00230F F0               [24] 1174 	movx	@dptr,a
                                   1175 ;	LCD.c:288: lcdbusywait();
      002310 12 20 B8         [24] 1176 	lcall	_lcdbusywait
                                   1177 ;	LCD.c:291: lcdgotoaddr(0x00);
      002313 75 82 00         [24] 1178 	mov	dpl,#0x00
                                   1179 ;	LCD.c:292: }
      002316 02 21 30         [24] 1180 	ljmp	_lcdgotoaddr
                                   1181 ;------------------------------------------------------------
                                   1182 ;Allocation info for local variables in function 'hex_dump'
                                   1183 ;------------------------------------------------------------
                                   1184 ;loop                      Allocated with name '_hex_dump_loop_65537_109'
                                   1185 ;i                         Allocated with name '_hex_dump_i_131073_110'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	LCD.c:301: void hex_dump()
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function hex_dump
                                   1190 ;	-----------------------------------------
      002319                       1191 _hex_dump:
                                   1192 ;	LCD.c:304: lcdgotoaddr(0x00);
      002319 75 82 00         [24] 1193 	mov	dpl,#0x00
      00231C 12 21 30         [24] 1194 	lcall	_lcdgotoaddr
                                   1195 ;	LCD.c:306: int loop = 0;
      00231F 90 04 0D         [24] 1196 	mov	dptr,#_hex_dump_loop_65537_109
      002322 E4               [12] 1197 	clr	a
      002323 F0               [24] 1198 	movx	@dptr,a
      002324 A3               [24] 1199 	inc	dptr
      002325 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	LCD.c:309: for (int i = 0; i < 80; i++)
      002326 7E 00            [12] 1202 	mov	r6,#0x00
      002328 7F 00            [12] 1203 	mov	r7,#0x00
      00232A                       1204 00105$:
      00232A C3               [12] 1205 	clr	c
      00232B EE               [12] 1206 	mov	a,r6
      00232C 94 50            [12] 1207 	subb	a,#0x50
      00232E EF               [12] 1208 	mov	a,r7
      00232F 64 80            [12] 1209 	xrl	a,#0x80
      002331 94 80            [12] 1210 	subb	a,#0x80
      002333 40 03            [24] 1211 	jc	00122$
      002335 02 23 AD         [24] 1212 	ljmp	00103$
      002338                       1213 00122$:
                                   1214 ;	LCD.c:311: if (loop == 16)
      002338 90 04 0D         [24] 1215 	mov	dptr,#_hex_dump_loop_65537_109
      00233B E0               [24] 1216 	movx	a,@dptr
      00233C FC               [12] 1217 	mov	r4,a
      00233D A3               [24] 1218 	inc	dptr
      00233E E0               [24] 1219 	movx	a,@dptr
      00233F FD               [12] 1220 	mov	r5,a
      002340 BC 10 27         [24] 1221 	cjne	r4,#0x10,00102$
      002343 BD 00 24         [24] 1222 	cjne	r5,#0x00,00102$
                                   1223 ;	LCD.c:313: loop = 0;
      002346 90 04 0D         [24] 1224 	mov	dptr,#_hex_dump_loop_65537_109
      002349 E4               [12] 1225 	clr	a
      00234A F0               [24] 1226 	movx	@dptr,a
      00234B A3               [24] 1227 	inc	dptr
      00234C F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	LCD.c:314: printf("\n\r");
      00234D C0 07            [24] 1230 	push	ar7
      00234F C0 06            [24] 1231 	push	ar6
      002351 74 06            [12] 1232 	mov	a,#___str_0
      002353 C0 E0            [24] 1233 	push	acc
      002355 74 3B            [12] 1234 	mov	a,#(___str_0 >> 8)
      002357 C0 E0            [24] 1235 	push	acc
      002359 74 80            [12] 1236 	mov	a,#0x80
      00235B C0 E0            [24] 1237 	push	acc
      00235D 12 30 C8         [24] 1238 	lcall	_printf
      002360 15 81            [12] 1239 	dec	sp
      002362 15 81            [12] 1240 	dec	sp
      002364 15 81            [12] 1241 	dec	sp
      002366 D0 06            [24] 1242 	pop	ar6
      002368 D0 07            [24] 1243 	pop	ar7
      00236A                       1244 00102$:
                                   1245 ;	LCD.c:316: loop++;
      00236A 90 04 0D         [24] 1246 	mov	dptr,#_hex_dump_loop_65537_109
      00236D E0               [24] 1247 	movx	a,@dptr
      00236E 24 01            [12] 1248 	add	a,#0x01
      002370 F0               [24] 1249 	movx	@dptr,a
      002371 A3               [24] 1250 	inc	dptr
      002372 E0               [24] 1251 	movx	a,@dptr
      002373 34 00            [12] 1252 	addc	a,#0x00
      002375 F0               [24] 1253 	movx	@dptr,a
                                   1254 ;	LCD.c:319: RS = 1;
                                   1255 ;	assignBit
      002376 D2 90            [12] 1256 	setb	_P1_0
                                   1257 ;	LCD.c:320: RW = 1;
                                   1258 ;	assignBit
      002378 D2 92            [12] 1259 	setb	_P1_2
                                   1260 ;	LCD.c:323: printf("%X\t", (lcd_ptr) & 0x7F);
      00237A 90 80 00         [24] 1261 	mov	dptr,#_lcd_ptr
      00237D E0               [24] 1262 	movx	a,@dptr
      00237E FD               [12] 1263 	mov	r5,a
      00237F 53 05 7F         [24] 1264 	anl	ar5,#0x7f
      002382 7C 00            [12] 1265 	mov	r4,#0x00
      002384 C0 07            [24] 1266 	push	ar7
      002386 C0 06            [24] 1267 	push	ar6
      002388 C0 05            [24] 1268 	push	ar5
      00238A C0 04            [24] 1269 	push	ar4
      00238C 74 09            [12] 1270 	mov	a,#___str_1
      00238E C0 E0            [24] 1271 	push	acc
      002390 74 3B            [12] 1272 	mov	a,#(___str_1 >> 8)
      002392 C0 E0            [24] 1273 	push	acc
      002394 74 80            [12] 1274 	mov	a,#0x80
      002396 C0 E0            [24] 1275 	push	acc
      002398 12 30 C8         [24] 1276 	lcall	_printf
      00239B E5 81            [12] 1277 	mov	a,sp
      00239D 24 FB            [12] 1278 	add	a,#0xfb
      00239F F5 81            [12] 1279 	mov	sp,a
      0023A1 D0 06            [24] 1280 	pop	ar6
      0023A3 D0 07            [24] 1281 	pop	ar7
                                   1282 ;	LCD.c:309: for (int i = 0; i < 80; i++)
      0023A5 0E               [12] 1283 	inc	r6
      0023A6 BE 00 01         [24] 1284 	cjne	r6,#0x00,00125$
      0023A9 0F               [12] 1285 	inc	r7
      0023AA                       1286 00125$:
      0023AA 02 23 2A         [24] 1287 	ljmp	00105$
      0023AD                       1288 00103$:
                                   1289 ;	LCD.c:326: printf("\n\r");
      0023AD 74 06            [12] 1290 	mov	a,#___str_0
      0023AF C0 E0            [24] 1291 	push	acc
      0023B1 74 3B            [12] 1292 	mov	a,#(___str_0 >> 8)
      0023B3 C0 E0            [24] 1293 	push	acc
      0023B5 74 80            [12] 1294 	mov	a,#0x80
      0023B7 C0 E0            [24] 1295 	push	acc
      0023B9 12 30 C8         [24] 1296 	lcall	_printf
      0023BC 15 81            [12] 1297 	dec	sp
      0023BE 15 81            [12] 1298 	dec	sp
      0023C0 15 81            [12] 1299 	dec	sp
                                   1300 ;	LCD.c:327: }
      0023C2 22               [24] 1301 	ret
                                   1302 ;------------------------------------------------------------
                                   1303 ;Allocation info for local variables in function 'create_custom_char'
                                   1304 ;------------------------------------------------------------
                                   1305 ;sloc0                     Allocated with name '_create_custom_char_sloc0_1_0'
                                   1306 ;ch_arr                    Allocated with name '_create_custom_char_PARM_2'
                                   1307 ;ch_code                   Allocated with name '_create_custom_char_ch_code_65536_113'
                                   1308 ;address                   Allocated with name '_create_custom_char_address_65536_114'
                                   1309 ;i                         Allocated with name '_create_custom_char_i_131072_115'
                                   1310 ;------------------------------------------------------------
                                   1311 ;	LCD.c:339: void create_custom_char(char ch_code, uint16_t* ch_arr)
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function create_custom_char
                                   1314 ;	-----------------------------------------
      0023C3                       1315 _create_custom_char:
      0023C3 E5 82            [12] 1316 	mov	a,dpl
      0023C5 90 04 12         [24] 1317 	mov	dptr,#_create_custom_char_ch_code_65536_113
      0023C8 F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	LCD.c:341: uint16_t address = (0x40 | (ch_code - '0' << 3));
      0023C9 E0               [24] 1320 	movx	a,@dptr
      0023CA 7E 00            [12] 1321 	mov	r6,#0x00
      0023CC 24 D0            [12] 1322 	add	a,#0xd0
      0023CE FF               [12] 1323 	mov	r7,a
      0023CF EE               [12] 1324 	mov	a,r6
      0023D0 34 FF            [12] 1325 	addc	a,#0xff
      0023D2 C4               [12] 1326 	swap	a
      0023D3 03               [12] 1327 	rr	a
      0023D4 54 F8            [12] 1328 	anl	a,#0xf8
      0023D6 CF               [12] 1329 	xch	a,r7
      0023D7 C4               [12] 1330 	swap	a
      0023D8 03               [12] 1331 	rr	a
      0023D9 CF               [12] 1332 	xch	a,r7
      0023DA 6F               [12] 1333 	xrl	a,r7
      0023DB CF               [12] 1334 	xch	a,r7
      0023DC 54 F8            [12] 1335 	anl	a,#0xf8
      0023DE CF               [12] 1336 	xch	a,r7
      0023DF 6F               [12] 1337 	xrl	a,r7
      0023E0 FE               [12] 1338 	mov	r6,a
      0023E1 43 07 40         [24] 1339 	orl	ar7,#0x40
                                   1340 ;	LCD.c:344: for (int i = 0; i < 8; i++)
      0023E4 90 04 0F         [24] 1341 	mov	dptr,#_create_custom_char_PARM_2
      0023E7 E0               [24] 1342 	movx	a,@dptr
      0023E8 FB               [12] 1343 	mov	r3,a
      0023E9 A3               [24] 1344 	inc	dptr
      0023EA E0               [24] 1345 	movx	a,@dptr
      0023EB FC               [12] 1346 	mov	r4,a
      0023EC A3               [24] 1347 	inc	dptr
      0023ED E0               [24] 1348 	movx	a,@dptr
      0023EE FD               [12] 1349 	mov	r5,a
      0023EF 79 00            [12] 1350 	mov	r1,#0x00
      0023F1 7A 00            [12] 1351 	mov	r2,#0x00
      0023F3                       1352 00103$:
      0023F3 C3               [12] 1353 	clr	c
      0023F4 E9               [12] 1354 	mov	a,r1
      0023F5 94 08            [12] 1355 	subb	a,#0x08
      0023F7 EA               [12] 1356 	mov	a,r2
      0023F8 64 80            [12] 1357 	xrl	a,#0x80
      0023FA 94 80            [12] 1358 	subb	a,#0x80
      0023FC 50 71            [24] 1359 	jnc	00101$
                                   1360 ;	LCD.c:347: RS = 0;
                                   1361 ;	assignBit
      0023FE C2 90            [12] 1362 	clr	_P1_0
                                   1363 ;	LCD.c:348: RW = 0;
                                   1364 ;	assignBit
      002400 C2 92            [12] 1365 	clr	_P1_2
                                   1366 ;	LCD.c:351: lcd_ptr = address | i;
      002402 89 08            [24] 1367 	mov	_create_custom_char_sloc0_1_0,r1
      002404 8F 00            [24] 1368 	mov	ar0,r7
      002406 90 80 00         [24] 1369 	mov	dptr,#_lcd_ptr
      002409 E5 08            [12] 1370 	mov	a,_create_custom_char_sloc0_1_0
      00240B 48               [12] 1371 	orl	a,r0
      00240C F0               [24] 1372 	movx	@dptr,a
                                   1373 ;	LCD.c:354: lcdbusywait();
      00240D C0 07            [24] 1374 	push	ar7
      00240F C0 06            [24] 1375 	push	ar6
      002411 C0 05            [24] 1376 	push	ar5
      002413 C0 04            [24] 1377 	push	ar4
      002415 C0 03            [24] 1378 	push	ar3
      002417 C0 02            [24] 1379 	push	ar2
      002419 C0 01            [24] 1380 	push	ar1
      00241B 12 20 B8         [24] 1381 	lcall	_lcdbusywait
      00241E D0 01            [24] 1382 	pop	ar1
      002420 D0 02            [24] 1383 	pop	ar2
      002422 D0 03            [24] 1384 	pop	ar3
      002424 D0 04            [24] 1385 	pop	ar4
      002426 D0 05            [24] 1386 	pop	ar5
                                   1387 ;	LCD.c:357: RS = 1;
                                   1388 ;	assignBit
      002428 D2 90            [12] 1389 	setb	_P1_0
                                   1390 ;	LCD.c:360: lcd_ptr = ch_arr[i];
      00242A E9               [12] 1391 	mov	a,r1
      00242B 29               [12] 1392 	add	a,r1
      00242C F8               [12] 1393 	mov	r0,a
      00242D EA               [12] 1394 	mov	a,r2
      00242E 33               [12] 1395 	rlc	a
      00242F FF               [12] 1396 	mov	r7,a
      002430 E8               [12] 1397 	mov	a,r0
      002431 2B               [12] 1398 	add	a,r3
      002432 F8               [12] 1399 	mov	r0,a
      002433 EF               [12] 1400 	mov	a,r7
      002434 3C               [12] 1401 	addc	a,r4
      002435 FF               [12] 1402 	mov	r7,a
      002436 8D 06            [24] 1403 	mov	ar6,r5
      002438 88 82            [24] 1404 	mov	dpl,r0
      00243A 8F 83            [24] 1405 	mov	dph,r7
      00243C 8E F0            [24] 1406 	mov	b,r6
      00243E 12 3A EA         [24] 1407 	lcall	__gptrget
      002441 90 80 00         [24] 1408 	mov	dptr,#_lcd_ptr
      002444 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	LCD.c:363: lcdbusywait();
      002445 C0 07            [24] 1411 	push	ar7
      002447 C0 06            [24] 1412 	push	ar6
      002449 C0 05            [24] 1413 	push	ar5
      00244B C0 04            [24] 1414 	push	ar4
      00244D C0 03            [24] 1415 	push	ar3
      00244F C0 02            [24] 1416 	push	ar2
      002451 C0 01            [24] 1417 	push	ar1
      002453 12 20 B8         [24] 1418 	lcall	_lcdbusywait
      002456 D0 01            [24] 1419 	pop	ar1
      002458 D0 02            [24] 1420 	pop	ar2
      00245A D0 03            [24] 1421 	pop	ar3
      00245C D0 04            [24] 1422 	pop	ar4
      00245E D0 05            [24] 1423 	pop	ar5
      002460 D0 06            [24] 1424 	pop	ar6
      002462 D0 07            [24] 1425 	pop	ar7
                                   1426 ;	LCD.c:344: for (int i = 0; i < 8; i++)
      002464 09               [12] 1427 	inc	r1
      002465 B9 00 01         [24] 1428 	cjne	r1,#0x00,00117$
      002468 0A               [12] 1429 	inc	r2
      002469                       1430 00117$:
      002469 D0 06            [24] 1431 	pop	ar6
      00246B D0 07            [24] 1432 	pop	ar7
      00246D 80 84            [24] 1433 	sjmp	00103$
      00246F                       1434 00101$:
                                   1435 ;	LCD.c:367: RS = 1;
                                   1436 ;	assignBit
      00246F D2 90            [12] 1437 	setb	_P1_0
                                   1438 ;	LCD.c:368: RW = 0;
                                   1439 ;	assignBit
      002471 C2 92            [12] 1440 	clr	_P1_2
                                   1441 ;	LCD.c:371: lcd_ptr = 0x40;
      002473 90 80 00         [24] 1442 	mov	dptr,#_lcd_ptr
      002476 74 40            [12] 1443 	mov	a,#0x40
      002478 F0               [24] 1444 	movx	@dptr,a
                                   1445 ;	LCD.c:374: lcdgotoxy(2, 1);
      002479 90 04 03         [24] 1446 	mov	dptr,#_lcdgotoxy_PARM_2
      00247C 74 01            [12] 1447 	mov	a,#0x01
      00247E F0               [24] 1448 	movx	@dptr,a
      00247F E4               [12] 1449 	clr	a
      002480 A3               [24] 1450 	inc	dptr
      002481 F0               [24] 1451 	movx	@dptr,a
      002482 90 00 02         [24] 1452 	mov	dptr,#0x0002
      002485 12 21 4D         [24] 1453 	lcall	_lcdgotoxy
                                   1454 ;	LCD.c:377: RS = 1;
                                   1455 ;	assignBit
      002488 D2 90            [12] 1456 	setb	_P1_0
                                   1457 ;	LCD.c:380: lcd_ptr = ch_code - '0';
      00248A 90 04 12         [24] 1458 	mov	dptr,#_create_custom_char_ch_code_65536_113
      00248D E0               [24] 1459 	movx	a,@dptr
      00248E 24 D0            [12] 1460 	add	a,#0xd0
      002490 90 80 00         [24] 1461 	mov	dptr,#_lcd_ptr
      002493 F0               [24] 1462 	movx	@dptr,a
                                   1463 ;	LCD.c:383: lcdbusywait();
                                   1464 ;	LCD.c:384: }
      002494 02 20 B8         [24] 1465 	ljmp	_lcdbusywait
                                   1466 ;------------------------------------------------------------
                                   1467 ;Allocation info for local variables in function 'ascii_to_int'
                                   1468 ;------------------------------------------------------------
                                   1469 ;sloc0                     Allocated with name '_ascii_to_int_sloc0_1_0'
                                   1470 ;sloc1                     Allocated with name '_ascii_to_int_sloc1_1_0'
                                   1471 ;arr                       Allocated with name '_ascii_to_int_arr_65536_117'
                                   1472 ;i                         Allocated with name '_ascii_to_int_i_65536_118'
                                   1473 ;x                         Allocated with name '_ascii_to_int_x_65536_118'
                                   1474 ;buff_size                 Allocated with name '_ascii_to_int_buff_size_65536_118'
                                   1475 ;------------------------------------------------------------
                                   1476 ;	LCD.c:396: uint16_t ascii_to_int(char *arr)
                                   1477 ;	-----------------------------------------
                                   1478 ;	 function ascii_to_int
                                   1479 ;	-----------------------------------------
      002497                       1480 _ascii_to_int:
      002497 AF F0            [24] 1481 	mov	r7,b
      002499 AE 83            [24] 1482 	mov	r6,dph
      00249B E5 82            [12] 1483 	mov	a,dpl
      00249D 90 04 13         [24] 1484 	mov	dptr,#_ascii_to_int_arr_65536_117
      0024A0 F0               [24] 1485 	movx	@dptr,a
      0024A1 EE               [12] 1486 	mov	a,r6
      0024A2 A3               [24] 1487 	inc	dptr
      0024A3 F0               [24] 1488 	movx	@dptr,a
      0024A4 EF               [12] 1489 	mov	a,r7
      0024A5 A3               [24] 1490 	inc	dptr
      0024A6 F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	LCD.c:398: int i = 0;
      0024A7 90 04 16         [24] 1493 	mov	dptr,#_ascii_to_int_i_65536_118
      0024AA E4               [12] 1494 	clr	a
      0024AB F0               [24] 1495 	movx	@dptr,a
      0024AC A3               [24] 1496 	inc	dptr
      0024AD F0               [24] 1497 	movx	@dptr,a
                                   1498 ;	LCD.c:400: uint16_t buff_size = 0;
      0024AE 90 04 18         [24] 1499 	mov	dptr,#_ascii_to_int_buff_size_65536_118
      0024B1 F0               [24] 1500 	movx	@dptr,a
      0024B2 A3               [24] 1501 	inc	dptr
      0024B3 F0               [24] 1502 	movx	@dptr,a
                                   1503 ;	LCD.c:403: while (arr[i] != 0x0D)
      0024B4 90 04 13         [24] 1504 	mov	dptr,#_ascii_to_int_arr_65536_117
      0024B7 E0               [24] 1505 	movx	a,@dptr
      0024B8 FD               [12] 1506 	mov	r5,a
      0024B9 A3               [24] 1507 	inc	dptr
      0024BA E0               [24] 1508 	movx	a,@dptr
      0024BB FE               [12] 1509 	mov	r6,a
      0024BC A3               [24] 1510 	inc	dptr
      0024BD E0               [24] 1511 	movx	a,@dptr
      0024BE FF               [12] 1512 	mov	r7,a
      0024BF 8D 02            [24] 1513 	mov	ar2,r5
      0024C1 8E 03            [24] 1514 	mov	ar3,r6
      0024C3 8F 04            [24] 1515 	mov	ar4,r7
      0024C5                       1516 00105$:
      0024C5 C0 02            [24] 1517 	push	ar2
      0024C7 C0 03            [24] 1518 	push	ar3
      0024C9 C0 04            [24] 1519 	push	ar4
      0024CB 90 04 16         [24] 1520 	mov	dptr,#_ascii_to_int_i_65536_118
      0024CE E0               [24] 1521 	movx	a,@dptr
      0024CF F8               [12] 1522 	mov	r0,a
      0024D0 A3               [24] 1523 	inc	dptr
      0024D1 E0               [24] 1524 	movx	a,@dptr
      0024D2 F9               [12] 1525 	mov	r1,a
      0024D3 E8               [12] 1526 	mov	a,r0
      0024D4 2D               [12] 1527 	add	a,r5
      0024D5 FA               [12] 1528 	mov	r2,a
      0024D6 E9               [12] 1529 	mov	a,r1
      0024D7 3E               [12] 1530 	addc	a,r6
      0024D8 FB               [12] 1531 	mov	r3,a
      0024D9 8F 04            [24] 1532 	mov	ar4,r7
      0024DB 8A 82            [24] 1533 	mov	dpl,r2
      0024DD 8B 83            [24] 1534 	mov	dph,r3
      0024DF 8C F0            [24] 1535 	mov	b,r4
      0024E1 12 3A EA         [24] 1536 	lcall	__gptrget
      0024E4 F5 09            [12] 1537 	mov	_ascii_to_int_sloc0_1_0,a
      0024E6 74 0D            [12] 1538 	mov	a,#0x0d
      0024E8 B5 09 09         [24] 1539 	cjne	a,_ascii_to_int_sloc0_1_0,00126$
      0024EB D0 04            [24] 1540 	pop	ar4
      0024ED D0 03            [24] 1541 	pop	ar3
      0024EF D0 02            [24] 1542 	pop	ar2
      0024F1 02 25 D2         [24] 1543 	ljmp	00107$
      0024F4                       1544 00126$:
      0024F4 D0 04            [24] 1545 	pop	ar4
      0024F6 D0 03            [24] 1546 	pop	ar3
      0024F8 D0 02            [24] 1547 	pop	ar2
                                   1548 ;	LCD.c:406: if ((arr[i] >= 'A') && (arr[i] <= 'Z'))
      0024FA 74 BF            [12] 1549 	mov	a,#0x100 - 0x41
      0024FC 25 09            [12] 1550 	add	a,_ascii_to_int_sloc0_1_0
      0024FE 50 52            [24] 1551 	jnc	00102$
      002500 E5 09            [12] 1552 	mov	a,_ascii_to_int_sloc0_1_0
      002502 24 A5            [12] 1553 	add	a,#0xff - 0x5a
      002504 40 4C            [24] 1554 	jc	00102$
                                   1555 ;	LCD.c:408: x = (arr[i] - 55);  // Convert ASCII character to an integer (A=10, B=11, ..., Z=35)
      002506 C0 02            [24] 1556 	push	ar2
      002508 C0 03            [24] 1557 	push	ar3
      00250A C0 04            [24] 1558 	push	ar4
      00250C E5 09            [12] 1559 	mov	a,_ascii_to_int_sloc0_1_0
      00250E 24 C9            [12] 1560 	add	a,#0xc9
      002510 FC               [12] 1561 	mov	r4,a
                                   1562 ;	LCD.c:409: buff_size = (buff_size * 16) + x;
      002511 90 04 18         [24] 1563 	mov	dptr,#_ascii_to_int_buff_size_65536_118
      002514 E0               [24] 1564 	movx	a,@dptr
      002515 FA               [12] 1565 	mov	r2,a
      002516 A3               [24] 1566 	inc	dptr
      002517 E0               [24] 1567 	movx	a,@dptr
      002518 8A 0A            [24] 1568 	mov	_ascii_to_int_sloc1_1_0,r2
      00251A C4               [12] 1569 	swap	a
      00251B 54 F0            [12] 1570 	anl	a,#0xf0
      00251D C5 0A            [12] 1571 	xch	a,_ascii_to_int_sloc1_1_0
      00251F C4               [12] 1572 	swap	a
      002520 C5 0A            [12] 1573 	xch	a,_ascii_to_int_sloc1_1_0
      002522 65 0A            [12] 1574 	xrl	a,_ascii_to_int_sloc1_1_0
      002524 C5 0A            [12] 1575 	xch	a,_ascii_to_int_sloc1_1_0
      002526 54 F0            [12] 1576 	anl	a,#0xf0
      002528 C5 0A            [12] 1577 	xch	a,_ascii_to_int_sloc1_1_0
      00252A 65 0A            [12] 1578 	xrl	a,_ascii_to_int_sloc1_1_0
      00252C F5 0B            [12] 1579 	mov	(_ascii_to_int_sloc1_1_0 + 1),a
      00252E 8C 03            [24] 1580 	mov	ar3,r4
      002530 7C 00            [12] 1581 	mov	r4,#0x00
      002532 90 04 18         [24] 1582 	mov	dptr,#_ascii_to_int_buff_size_65536_118
      002535 EB               [12] 1583 	mov	a,r3
      002536 25 0A            [12] 1584 	add	a,_ascii_to_int_sloc1_1_0
      002538 F0               [24] 1585 	movx	@dptr,a
      002539 EC               [12] 1586 	mov	a,r4
      00253A 35 0B            [12] 1587 	addc	a,(_ascii_to_int_sloc1_1_0 + 1)
      00253C A3               [24] 1588 	inc	dptr
      00253D F0               [24] 1589 	movx	@dptr,a
                                   1590 ;	LCD.c:410: i++;
      00253E 90 04 16         [24] 1591 	mov	dptr,#_ascii_to_int_i_65536_118
      002541 74 01            [12] 1592 	mov	a,#0x01
      002543 28               [12] 1593 	add	a,r0
      002544 F0               [24] 1594 	movx	@dptr,a
      002545 E4               [12] 1595 	clr	a
      002546 39               [12] 1596 	addc	a,r1
      002547 A3               [24] 1597 	inc	dptr
      002548 F0               [24] 1598 	movx	@dptr,a
      002549 D0 04            [24] 1599 	pop	ar4
      00254B D0 03            [24] 1600 	pop	ar3
      00254D D0 02            [24] 1601 	pop	ar2
      00254F 02 24 C5         [24] 1602 	ljmp	00105$
      002552                       1603 00102$:
                                   1604 ;	LCD.c:414: x = (arr[i] - '0');  // Convert ASCII character to an integer
      002552 C0 05            [24] 1605 	push	ar5
      002554 C0 06            [24] 1606 	push	ar6
      002556 C0 07            [24] 1607 	push	ar7
      002558 90 04 16         [24] 1608 	mov	dptr,#_ascii_to_int_i_65536_118
      00255B E0               [24] 1609 	movx	a,@dptr
      00255C F8               [12] 1610 	mov	r0,a
      00255D A3               [24] 1611 	inc	dptr
      00255E E0               [24] 1612 	movx	a,@dptr
      00255F F9               [12] 1613 	mov	r1,a
      002560 E8               [12] 1614 	mov	a,r0
      002561 2A               [12] 1615 	add	a,r2
      002562 FD               [12] 1616 	mov	r5,a
      002563 E9               [12] 1617 	mov	a,r1
      002564 3B               [12] 1618 	addc	a,r3
      002565 FE               [12] 1619 	mov	r6,a
      002566 8C 07            [24] 1620 	mov	ar7,r4
      002568 8D 82            [24] 1621 	mov	dpl,r5
      00256A 8E 83            [24] 1622 	mov	dph,r6
      00256C 8F F0            [24] 1623 	mov	b,r7
      00256E 12 3A EA         [24] 1624 	lcall	__gptrget
      002571 24 D0            [12] 1625 	add	a,#0xd0
      002573 FD               [12] 1626 	mov	r5,a
                                   1627 ;	LCD.c:415: buff_size = (buff_size * 10) + x;
      002574 90 04 18         [24] 1628 	mov	dptr,#_ascii_to_int_buff_size_65536_118
      002577 E0               [24] 1629 	movx	a,@dptr
      002578 FE               [12] 1630 	mov	r6,a
      002579 A3               [24] 1631 	inc	dptr
      00257A E0               [24] 1632 	movx	a,@dptr
      00257B FF               [12] 1633 	mov	r7,a
      00257C 90 04 3C         [24] 1634 	mov	dptr,#__mulint_PARM_2
      00257F EE               [12] 1635 	mov	a,r6
      002580 F0               [24] 1636 	movx	@dptr,a
      002581 EF               [12] 1637 	mov	a,r7
      002582 A3               [24] 1638 	inc	dptr
      002583 F0               [24] 1639 	movx	@dptr,a
      002584 90 00 0A         [24] 1640 	mov	dptr,#0x000a
      002587 C0 07            [24] 1641 	push	ar7
      002589 C0 06            [24] 1642 	push	ar6
      00258B C0 05            [24] 1643 	push	ar5
      00258D C0 04            [24] 1644 	push	ar4
      00258F C0 03            [24] 1645 	push	ar3
      002591 C0 02            [24] 1646 	push	ar2
      002593 C0 01            [24] 1647 	push	ar1
      002595 C0 00            [24] 1648 	push	ar0
      002597 12 30 5A         [24] 1649 	lcall	__mulint
      00259A 85 82 0A         [24] 1650 	mov	_ascii_to_int_sloc1_1_0,dpl
      00259D 85 83 0B         [24] 1651 	mov	(_ascii_to_int_sloc1_1_0 + 1),dph
      0025A0 D0 00            [24] 1652 	pop	ar0
      0025A2 D0 01            [24] 1653 	pop	ar1
      0025A4 D0 02            [24] 1654 	pop	ar2
      0025A6 D0 03            [24] 1655 	pop	ar3
      0025A8 D0 04            [24] 1656 	pop	ar4
      0025AA D0 05            [24] 1657 	pop	ar5
      0025AC D0 06            [24] 1658 	pop	ar6
      0025AE D0 07            [24] 1659 	pop	ar7
      0025B0 7F 00            [12] 1660 	mov	r7,#0x00
      0025B2 90 04 18         [24] 1661 	mov	dptr,#_ascii_to_int_buff_size_65536_118
      0025B5 ED               [12] 1662 	mov	a,r5
      0025B6 25 0A            [12] 1663 	add	a,_ascii_to_int_sloc1_1_0
      0025B8 F0               [24] 1664 	movx	@dptr,a
      0025B9 EF               [12] 1665 	mov	a,r7
      0025BA 35 0B            [12] 1666 	addc	a,(_ascii_to_int_sloc1_1_0 + 1)
      0025BC A3               [24] 1667 	inc	dptr
      0025BD F0               [24] 1668 	movx	@dptr,a
                                   1669 ;	LCD.c:416: i++;
      0025BE 90 04 16         [24] 1670 	mov	dptr,#_ascii_to_int_i_65536_118
      0025C1 74 01            [12] 1671 	mov	a,#0x01
      0025C3 28               [12] 1672 	add	a,r0
      0025C4 F0               [24] 1673 	movx	@dptr,a
      0025C5 E4               [12] 1674 	clr	a
      0025C6 39               [12] 1675 	addc	a,r1
      0025C7 A3               [24] 1676 	inc	dptr
      0025C8 F0               [24] 1677 	movx	@dptr,a
      0025C9 D0 07            [24] 1678 	pop	ar7
      0025CB D0 06            [24] 1679 	pop	ar6
      0025CD D0 05            [24] 1680 	pop	ar5
      0025CF 02 24 C5         [24] 1681 	ljmp	00105$
      0025D2                       1682 00107$:
                                   1683 ;	LCD.c:420: return buff_size;  // Return the integer value
      0025D2 90 04 18         [24] 1684 	mov	dptr,#_ascii_to_int_buff_size_65536_118
      0025D5 E0               [24] 1685 	movx	a,@dptr
      0025D6 FE               [12] 1686 	mov	r6,a
      0025D7 A3               [24] 1687 	inc	dptr
      0025D8 E0               [24] 1688 	movx	a,@dptr
                                   1689 ;	LCD.c:421: }
      0025D9 8E 82            [24] 1690 	mov	dpl,r6
      0025DB F5 83            [12] 1691 	mov	dph,a
      0025DD 22               [24] 1692 	ret
                                   1693 ;------------------------------------------------------------
                                   1694 ;Allocation info for local variables in function 'get_input'
                                   1695 ;------------------------------------------------------------
                                   1696 ;arr                       Allocated with name '_get_input_arr_65536_122'
                                   1697 ;i                         Allocated with name '_get_input_i_65536_123'
                                   1698 ;------------------------------------------------------------
                                   1699 ;	LCD.c:431: void get_input(char* arr)
                                   1700 ;	-----------------------------------------
                                   1701 ;	 function get_input
                                   1702 ;	-----------------------------------------
      0025DE                       1703 _get_input:
      0025DE AF F0            [24] 1704 	mov	r7,b
      0025E0 AE 83            [24] 1705 	mov	r6,dph
      0025E2 E5 82            [12] 1706 	mov	a,dpl
      0025E4 90 04 1A         [24] 1707 	mov	dptr,#_get_input_arr_65536_122
      0025E7 F0               [24] 1708 	movx	@dptr,a
      0025E8 EE               [12] 1709 	mov	a,r6
      0025E9 A3               [24] 1710 	inc	dptr
      0025EA F0               [24] 1711 	movx	@dptr,a
      0025EB EF               [12] 1712 	mov	a,r7
      0025EC A3               [24] 1713 	inc	dptr
      0025ED F0               [24] 1714 	movx	@dptr,a
                                   1715 ;	LCD.c:437: while (1)
      0025EE 90 04 1A         [24] 1716 	mov	dptr,#_get_input_arr_65536_122
      0025F1 E0               [24] 1717 	movx	a,@dptr
      0025F2 FD               [12] 1718 	mov	r5,a
      0025F3 A3               [24] 1719 	inc	dptr
      0025F4 E0               [24] 1720 	movx	a,@dptr
      0025F5 FE               [12] 1721 	mov	r6,a
      0025F6 A3               [24] 1722 	inc	dptr
      0025F7 E0               [24] 1723 	movx	a,@dptr
      0025F8 FF               [12] 1724 	mov	r7,a
      0025F9 7B 00            [12] 1725 	mov	r3,#0x00
      0025FB 7C 00            [12] 1726 	mov	r4,#0x00
      0025FD                       1727 00104$:
                                   1728 ;	LCD.c:440: arr[i] = getchar();
      0025FD EB               [12] 1729 	mov	a,r3
      0025FE 2D               [12] 1730 	add	a,r5
      0025FF F8               [12] 1731 	mov	r0,a
      002600 EC               [12] 1732 	mov	a,r4
      002601 3E               [12] 1733 	addc	a,r6
      002602 F9               [12] 1734 	mov	r1,a
      002603 8F 02            [24] 1735 	mov	ar2,r7
      002605 C0 05            [24] 1736 	push	ar5
      002607 C0 06            [24] 1737 	push	ar6
      002609 C0 07            [24] 1738 	push	ar7
      00260B C0 05            [24] 1739 	push	ar5
      00260D C0 04            [24] 1740 	push	ar4
      00260F C0 03            [24] 1741 	push	ar3
      002611 C0 02            [24] 1742 	push	ar2
      002613 C0 01            [24] 1743 	push	ar1
      002615 C0 00            [24] 1744 	push	ar0
      002617 12 2F 28         [24] 1745 	lcall	_getchar
      00261A AE 82            [24] 1746 	mov	r6,dpl
      00261C D0 00            [24] 1747 	pop	ar0
      00261E D0 01            [24] 1748 	pop	ar1
      002620 D0 02            [24] 1749 	pop	ar2
      002622 D0 03            [24] 1750 	pop	ar3
      002624 D0 04            [24] 1751 	pop	ar4
      002626 D0 05            [24] 1752 	pop	ar5
      002628 88 82            [24] 1753 	mov	dpl,r0
      00262A 89 83            [24] 1754 	mov	dph,r1
      00262C 8A F0            [24] 1755 	mov	b,r2
      00262E EE               [12] 1756 	mov	a,r6
      00262F 12 2F 36         [24] 1757 	lcall	__gptrput
                                   1758 ;	LCD.c:443: if (arr[i] == ENDOFLINE)
      002632 BE 0D 07         [24] 1759 	cjne	r6,#0x0d,00117$
      002635 D0 07            [24] 1760 	pop	ar7
      002637 D0 06            [24] 1761 	pop	ar6
      002639 D0 05            [24] 1762 	pop	ar5
      00263B 22               [24] 1763 	ret
      00263C                       1764 00117$:
      00263C D0 07            [24] 1765 	pop	ar7
      00263E D0 06            [24] 1766 	pop	ar6
      002640 D0 05            [24] 1767 	pop	ar5
                                   1768 ;	LCD.c:449: putchar(arr[i]);
      002642 88 82            [24] 1769 	mov	dpl,r0
      002644 89 83            [24] 1770 	mov	dph,r1
      002646 8A F0            [24] 1771 	mov	b,r2
      002648 12 3A EA         [24] 1772 	lcall	__gptrget
      00264B F8               [12] 1773 	mov	r0,a
      00264C 7A 00            [12] 1774 	mov	r2,#0x00
      00264E 88 82            [24] 1775 	mov	dpl,r0
      002650 8A 83            [24] 1776 	mov	dph,r2
      002652 C0 07            [24] 1777 	push	ar7
      002654 C0 06            [24] 1778 	push	ar6
      002656 C0 05            [24] 1779 	push	ar5
      002658 C0 04            [24] 1780 	push	ar4
      00265A C0 03            [24] 1781 	push	ar3
      00265C 12 2F 09         [24] 1782 	lcall	_putchar
                                   1783 ;	LCD.c:450: printf("\n\r");
      00265F 74 06            [12] 1784 	mov	a,#___str_0
      002661 C0 E0            [24] 1785 	push	acc
      002663 74 3B            [12] 1786 	mov	a,#(___str_0 >> 8)
      002665 C0 E0            [24] 1787 	push	acc
      002667 74 80            [12] 1788 	mov	a,#0x80
      002669 C0 E0            [24] 1789 	push	acc
      00266B 12 30 C8         [24] 1790 	lcall	_printf
      00266E 15 81            [12] 1791 	dec	sp
      002670 15 81            [12] 1792 	dec	sp
      002672 15 81            [12] 1793 	dec	sp
      002674 D0 03            [24] 1794 	pop	ar3
      002676 D0 04            [24] 1795 	pop	ar4
      002678 D0 05            [24] 1796 	pop	ar5
      00267A D0 06            [24] 1797 	pop	ar6
      00267C D0 07            [24] 1798 	pop	ar7
                                   1799 ;	LCD.c:453: i++;
      00267E 0B               [12] 1800 	inc	r3
      00267F BB 00 01         [24] 1801 	cjne	r3,#0x00,00118$
      002682 0C               [12] 1802 	inc	r4
      002683                       1803 00118$:
      002683 02 25 FD         [24] 1804 	ljmp	00104$
                                   1805 ;	LCD.c:456: return;
                                   1806 ;	LCD.c:457: }
      002686 22               [24] 1807 	ret
                                   1808 ;------------------------------------------------------------
                                   1809 ;Allocation info for local variables in function 'cgram_dump'
                                   1810 ;------------------------------------------------------------
                                   1811 ;i                         Allocated with name '_cgram_dump_i_131072_127'
                                   1812 ;address                   Allocated with name '_cgram_dump_address_196609_129'
                                   1813 ;j                         Allocated with name '_cgram_dump_j_262145_130'
                                   1814 ;------------------------------------------------------------
                                   1815 ;	LCD.c:466: void cgram_dump()
                                   1816 ;	-----------------------------------------
                                   1817 ;	 function cgram_dump
                                   1818 ;	-----------------------------------------
      002687                       1819 _cgram_dump:
                                   1820 ;	LCD.c:469: for (uint8_t i = 0; i < 8; i++)
      002687 7F 00            [12] 1821 	mov	r7,#0x00
      002689                       1822 00107$:
      002689 BF 08 00         [24] 1823 	cjne	r7,#0x08,00129$
      00268C                       1824 00129$:
      00268C 40 01            [24] 1825 	jc	00130$
      00268E 22               [24] 1826 	ret
      00268F                       1827 00130$:
                                   1828 ;	LCD.c:472: printf_tiny("0X%d: ", i);
      00268F 8F 05            [24] 1829 	mov	ar5,r7
      002691 7E 00            [12] 1830 	mov	r6,#0x00
      002693 C0 07            [24] 1831 	push	ar7
      002695 C0 06            [24] 1832 	push	ar6
      002697 C0 05            [24] 1833 	push	ar5
      002699 C0 05            [24] 1834 	push	ar5
      00269B C0 06            [24] 1835 	push	ar6
      00269D 74 0D            [12] 1836 	mov	a,#___str_2
      00269F C0 E0            [24] 1837 	push	acc
      0026A1 74 3B            [12] 1838 	mov	a,#(___str_2 >> 8)
      0026A3 C0 E0            [24] 1839 	push	acc
      0026A5 12 2F 51         [24] 1840 	lcall	_printf_tiny
      0026A8 E5 81            [12] 1841 	mov	a,sp
      0026AA 24 FC            [12] 1842 	add	a,#0xfc
      0026AC F5 81            [12] 1843 	mov	sp,a
      0026AE D0 05            [24] 1844 	pop	ar5
      0026B0 D0 06            [24] 1845 	pop	ar6
      0026B2 D0 07            [24] 1846 	pop	ar7
                                   1847 ;	LCD.c:475: uint16_t address = (0x40 | (i << 3));
      0026B4 EE               [12] 1848 	mov	a,r6
      0026B5 C4               [12] 1849 	swap	a
      0026B6 03               [12] 1850 	rr	a
      0026B7 54 F8            [12] 1851 	anl	a,#0xf8
      0026B9 CD               [12] 1852 	xch	a,r5
      0026BA C4               [12] 1853 	swap	a
      0026BB 03               [12] 1854 	rr	a
      0026BC CD               [12] 1855 	xch	a,r5
      0026BD 6D               [12] 1856 	xrl	a,r5
      0026BE CD               [12] 1857 	xch	a,r5
      0026BF 54 F8            [12] 1858 	anl	a,#0xf8
      0026C1 CD               [12] 1859 	xch	a,r5
      0026C2 6D               [12] 1860 	xrl	a,r5
      0026C3 FE               [12] 1861 	mov	r6,a
      0026C4 43 05 40         [24] 1862 	orl	ar5,#0x40
                                   1863 ;	LCD.c:478: for (int j = 0; j < 8; j++)
      0026C7 7B 00            [12] 1864 	mov	r3,#0x00
      0026C9 7C 00            [12] 1865 	mov	r4,#0x00
      0026CB                       1866 00104$:
      0026CB C3               [12] 1867 	clr	c
      0026CC EB               [12] 1868 	mov	a,r3
      0026CD 94 08            [12] 1869 	subb	a,#0x08
      0026CF EC               [12] 1870 	mov	a,r4
      0026D0 64 80            [12] 1871 	xrl	a,#0x80
      0026D2 94 80            [12] 1872 	subb	a,#0x80
      0026D4 50 53            [24] 1873 	jnc	00101$
                                   1874 ;	LCD.c:481: RS = 0;
                                   1875 ;	assignBit
      0026D6 C2 90            [12] 1876 	clr	_P1_0
                                   1877 ;	LCD.c:482: RW = 0;
                                   1878 ;	assignBit
      0026D8 C2 92            [12] 1879 	clr	_P1_2
                                   1880 ;	LCD.c:485: lcd_ptr = address | j;
      0026DA 8B 02            [24] 1881 	mov	ar2,r3
      0026DC 8D 01            [24] 1882 	mov	ar1,r5
      0026DE 90 80 00         [24] 1883 	mov	dptr,#_lcd_ptr
      0026E1 EA               [12] 1884 	mov	a,r2
      0026E2 49               [12] 1885 	orl	a,r1
      0026E3 F0               [24] 1886 	movx	@dptr,a
                                   1887 ;	LCD.c:488: lcdbusywait();
      0026E4 C0 07            [24] 1888 	push	ar7
      0026E6 C0 06            [24] 1889 	push	ar6
      0026E8 C0 05            [24] 1890 	push	ar5
      0026EA C0 04            [24] 1891 	push	ar4
      0026EC C0 03            [24] 1892 	push	ar3
      0026EE 12 20 B8         [24] 1893 	lcall	_lcdbusywait
                                   1894 ;	LCD.c:491: RS = 1;
                                   1895 ;	assignBit
      0026F1 D2 90            [12] 1896 	setb	_P1_0
                                   1897 ;	LCD.c:492: RW = 1;
                                   1898 ;	assignBit
      0026F3 D2 92            [12] 1899 	setb	_P1_2
                                   1900 ;	LCD.c:495: printf("%X ", lcd_ptr & 0x3F);
      0026F5 90 80 00         [24] 1901 	mov	dptr,#_lcd_ptr
      0026F8 E0               [24] 1902 	movx	a,@dptr
      0026F9 F9               [12] 1903 	mov	r1,a
      0026FA 53 01 3F         [24] 1904 	anl	ar1,#0x3f
      0026FD 7A 00            [12] 1905 	mov	r2,#0x00
      0026FF C0 01            [24] 1906 	push	ar1
      002701 C0 02            [24] 1907 	push	ar2
      002703 74 14            [12] 1908 	mov	a,#___str_3
      002705 C0 E0            [24] 1909 	push	acc
      002707 74 3B            [12] 1910 	mov	a,#(___str_3 >> 8)
      002709 C0 E0            [24] 1911 	push	acc
      00270B 74 80            [12] 1912 	mov	a,#0x80
      00270D C0 E0            [24] 1913 	push	acc
      00270F 12 30 C8         [24] 1914 	lcall	_printf
      002712 E5 81            [12] 1915 	mov	a,sp
      002714 24 FB            [12] 1916 	add	a,#0xfb
      002716 F5 81            [12] 1917 	mov	sp,a
      002718 D0 03            [24] 1918 	pop	ar3
      00271A D0 04            [24] 1919 	pop	ar4
      00271C D0 05            [24] 1920 	pop	ar5
      00271E D0 06            [24] 1921 	pop	ar6
      002720 D0 07            [24] 1922 	pop	ar7
                                   1923 ;	LCD.c:478: for (int j = 0; j < 8; j++)
      002722 0B               [12] 1924 	inc	r3
      002723 BB 00 A5         [24] 1925 	cjne	r3,#0x00,00104$
      002726 0C               [12] 1926 	inc	r4
      002727 80 A2            [24] 1927 	sjmp	00104$
      002729                       1928 00101$:
                                   1929 ;	LCD.c:499: printf_tiny("\n\r");
      002729 C0 07            [24] 1930 	push	ar7
      00272B 74 06            [12] 1931 	mov	a,#___str_0
      00272D C0 E0            [24] 1932 	push	acc
      00272F 74 3B            [12] 1933 	mov	a,#(___str_0 >> 8)
      002731 C0 E0            [24] 1934 	push	acc
      002733 12 2F 51         [24] 1935 	lcall	_printf_tiny
      002736 15 81            [12] 1936 	dec	sp
      002738 15 81            [12] 1937 	dec	sp
      00273A D0 07            [24] 1938 	pop	ar7
                                   1939 ;	LCD.c:469: for (uint8_t i = 0; i < 8; i++)
      00273C 0F               [12] 1940 	inc	r7
                                   1941 ;	LCD.c:501: }
      00273D 02 26 89         [24] 1942 	ljmp	00107$
                                   1943 	.area CSEG    (CODE)
                                   1944 	.area CONST   (CODE)
                                   1945 	.area CONST   (CODE)
      003B06                       1946 ___str_0:
      003B06 0A                    1947 	.db 0x0a
      003B07 0D                    1948 	.db 0x0d
      003B08 00                    1949 	.db 0x00
                                   1950 	.area CSEG    (CODE)
                                   1951 	.area CONST   (CODE)
      003B09                       1952 ___str_1:
      003B09 25 58                 1953 	.ascii "%X"
      003B0B 09                    1954 	.db 0x09
      003B0C 00                    1955 	.db 0x00
                                   1956 	.area CSEG    (CODE)
                                   1957 	.area CONST   (CODE)
      003B0D                       1958 ___str_2:
      003B0D 30 58 25 64 3A 20     1959 	.ascii "0X%d: "
      003B13 00                    1960 	.db 0x00
                                   1961 	.area CSEG    (CODE)
                                   1962 	.area CONST   (CODE)
      003B14                       1963 ___str_3:
      003B14 25 58 20              1964 	.ascii "%X "
      003B17 00                    1965 	.db 0x00
                                   1966 	.area CSEG    (CODE)
                                   1967 	.area XINIT   (CODE)
                                   1968 	.area CABS    (ABS,CODE)
