;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module LCD
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf_tiny
	.globl _putchar
	.globl _getchar
	.globl _printf
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _create_custom_char_PARM_2
	.globl _lcdgotoxy_PARM_2
	.globl _lcd_ptr
	.globl _delay
	.globl _lcdbusywait
	.globl _lcdinit
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _get_cursor_address
	.globl _lcdputch
	.globl _lcdputstr
	.globl _lcdclear
	.globl _hex_dump
	.globl _create_custom_char
	.globl _ascii_to_int
	.globl _get_input
	.globl _cgram_dump
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_create_custom_char_sloc0_1_0:
	.ds 1
_ascii_to_int_sloc0_1_0:
	.ds 1
_ascii_to_int_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_lcd_ptr	=	0x8000
_delay_ms_65536_77:
	.ds 2
_lcdgotoaddr_addr_65536_86:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 2
_lcdgotoxy_x_65536_88:
	.ds 2
_lcdgotoxy_addr_65536_89:
	.ds 2
_lcdputch_c_65536_95:
	.ds 1
_lcdputstr_ss_65536_103:
	.ds 3
_hex_dump_loop_65537_109:
	.ds 2
_create_custom_char_PARM_2:
	.ds 3
_create_custom_char_ch_code_65536_113:
	.ds 1
_ascii_to_int_arr_65536_117:
	.ds 3
_ascii_to_int_i_65536_118:
	.ds 2
_ascii_to_int_buff_size_65536_118:
	.ds 2
_get_input_arr_65536_122:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_65536_77'
;j                         Allocated with name '_delay_j_131072_79'
;i                         Allocated with name '_delay_i_262144_81'
;------------------------------------------------------------
;	LCD.c:15: void delay(int ms)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_65536_77
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	LCD.c:17: for(int j=0;j<ms;j++)
	mov	dptr,#_delay_ms_65536_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	LCD.c:19: for(int i=0;i<ONE_MS;i++);
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,#0x52
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00108$:
;	LCD.c:17: for(int j=0;j<ms;j++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	LCD.c:21: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	LCD.c:25: void lcdbusywait(void)
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	LCD.c:28: RS=0;
;	assignBit
	clr	_P1_0
;	LCD.c:29: RW=1;
;	assignBit
	setb	_P1_2
;	LCD.c:31: while(lcd_ptr&0x80);
00101$:
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
	jb	acc.7,00101$
;	LCD.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;	LCD.c:38: void lcdinit(void)
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	LCD.c:40: delay(60);
	mov	dptr,#0x003c
	lcall	_delay
;	LCD.c:42: RS=0;
;	assignBit
	clr	_P1_0
;	LCD.c:43: RW=0;
;	assignBit
	clr	_P1_2
;	LCD.c:46: lcd_ptr=0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	LCD.c:48: delay(15);
	mov	dptr,#0x000f
	lcall	_delay
;	LCD.c:50: lcd_ptr=0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	LCD.c:52: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	LCD.c:54: lcd_ptr=0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	LCD.c:56: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:58: RS=0;
;	assignBit
	clr	_P1_0
;	LCD.c:59: RW=0;
;	assignBit
	clr	_P1_2
;	LCD.c:61: lcd_ptr=0x38;
	mov	dptr,#_lcd_ptr
	mov	a,#0x38
	movx	@dptr,a
;	LCD.c:63: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:65: RS=0;
;	assignBit
	clr	_P1_0
;	LCD.c:66: RW=0;
;	assignBit
	clr	_P1_2
;	LCD.c:68: lcd_ptr=0x08;
	mov	dptr,#_lcd_ptr
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:70: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:72: RS=0;
;	assignBit
	clr	_P1_0
;	LCD.c:73: RW=0;
;	assignBit
	clr	_P1_2
;	LCD.c:75: lcd_ptr=0x0F;
	mov	dptr,#_lcd_ptr
	mov	a,#0x0f
	movx	@dptr,a
;	LCD.c:77: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:79: RS=0;
;	assignBit
	clr	_P1_0
;	LCD.c:80: RW=0;
;	assignBit
	clr	_P1_2
;	LCD.c:82: lcd_ptr=0x06;
	mov	dptr,#_lcd_ptr
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:84: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:86: RS=0;
;	assignBit
	clr	_P1_0
;	LCD.c:87: RW=0;
;	assignBit
	clr	_P1_2
;	LCD.c:89: lcd_ptr=0x01;
	mov	dptr,#_lcd_ptr
	mov	a,#0x01
	movx	@dptr,a
;	LCD.c:91: lcdbusywait();
;	LCD.c:92: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcdgotoaddr_addr_65536_86'
;------------------------------------------------------------
;	LCD.c:99: void lcdgotoaddr(unsigned char addr)
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	a,dpl
	mov	dptr,#_lcdgotoaddr_addr_65536_86
	movx	@dptr,a
;	LCD.c:102: RS = 0;
;	assignBit
	clr	_P1_0
;	LCD.c:103: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:105: addr |= 0x80;
	mov	dptr,#_lcdgotoaddr_addr_65536_86
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
;	LCD.c:107: lcd_ptr = addr;
	mov	dptr,#_lcdgotoaddr_addr_65536_86
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	LCD.c:109: lcdbusywait();
;	LCD.c:110: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;y                         Allocated with name '_lcdgotoxy_PARM_2'
;x                         Allocated with name '_lcdgotoxy_x_65536_88'
;addr                      Allocated with name '_lcdgotoxy_addr_65536_89'
;------------------------------------------------------------
;	LCD.c:120: void lcdgotoxy(uint16_t x, uint16_t y)
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_x_65536_88
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	LCD.c:122: uint16_t addr = 0;  // Initialize the address variable to zero
	mov	dptr,#_lcdgotoxy_addr_65536_89
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	LCD.c:125: if (x == 0)
	mov	dptr,#_lcdgotoxy_x_65536_88
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00110$
;	LCD.c:127: x = 0x00;
	mov	dptr,#_lcdgotoxy_x_65536_88
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	LCD.c:128: addr = x | y;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_lcdgotoxy_addr_65536_89
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00111$
00110$:
;	LCD.c:130: else if (x == 1)
	cjne	r6,#0x01,00107$
	cjne	r7,#0x00,00107$
;	LCD.c:132: x = 0x40;
	mov	dptr,#_lcdgotoxy_x_65536_88
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	LCD.c:133: addr = x | y;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_lcdgotoxy_addr_65536_89
	mov	a,#0x40
	orl	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00111$
00107$:
;	LCD.c:135: else if (x == 2)
	cjne	r6,#0x02,00104$
	cjne	r7,#0x00,00104$
;	LCD.c:137: x = 0x10;
	mov	dptr,#_lcdgotoxy_x_65536_88
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	LCD.c:138: addr = x | y;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_lcdgotoxy_addr_65536_89
	mov	a,#0x10
	orl	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00111$
00104$:
;	LCD.c:140: else if (x == 3)
	cjne	r6,#0x03,00111$
	cjne	r7,#0x00,00111$
;	LCD.c:142: x = 0x50;
	mov	dptr,#_lcdgotoxy_x_65536_88
	mov	a,#0x50
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	LCD.c:143: addr = x | y;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lcdgotoxy_addr_65536_89
	mov	a,#0x50
	orl	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00111$:
;	LCD.c:147: lcdgotoaddr(addr);
	mov	dptr,#_lcdgotoxy_addr_65536_89
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	lcall	_lcdgotoaddr
;	LCD.c:150: lcdbusywait();
;	LCD.c:151: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'get_cursor_address'
;------------------------------------------------------------
;	LCD.c:161: uint8_t get_cursor_address()
;	-----------------------------------------
;	 function get_cursor_address
;	-----------------------------------------
_get_cursor_address:
;	LCD.c:163: RS = 0;        // Set RS to 0 for command mode
;	assignBit
	clr	_P1_0
;	LCD.c:164: RW = 1;        // Set RW to 1 for read mode
;	assignBit
	setb	_P1_2
;	LCD.c:165: return lcd_ptr & (~0x80);  // Return the cursor address with the most significant bit cleared
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
	anl	a,#0x7f
;	LCD.c:166: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;c                         Allocated with name '_lcdputch_c_65536_95'
;------------------------------------------------------------
;	LCD.c:180: void lcdputch(char c)
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	a,dpl
	mov	dptr,#_lcdputch_c_65536_95
	movx	@dptr,a
;	LCD.c:183: if (c == 127)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x7f,00102$
;	LCD.c:185: return;
	ret
00102$:
;	LCD.c:189: if (get_cursor_address() == 0x0F)
	push	ar7
	lcall	_get_cursor_address
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x0f,00113$
;	LCD.c:192: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:193: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:195: lcd_ptr = c;
	mov	dptr,#_lcd_ptr
	mov	a,r7
	movx	@dptr,a
;	LCD.c:197: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:199: lcdgotoxy(1, 0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0001
	ljmp	_lcdgotoxy
00113$:
;	LCD.c:201: else if (get_cursor_address() == 0x4F)
	push	ar7
	lcall	_get_cursor_address
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x4f,00110$
;	LCD.c:204: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:205: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:207: lcd_ptr = c;
	mov	dptr,#_lcd_ptr
	mov	a,r7
	movx	@dptr,a
;	LCD.c:209: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:211: lcdgotoxy(2, 0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0002
	ljmp	_lcdgotoxy
00110$:
;	LCD.c:213: else if (get_cursor_address() == 0x1F)
	push	ar7
	lcall	_get_cursor_address
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x1f,00107$
;	LCD.c:216: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:217: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:219: lcd_ptr = c;
	mov	dptr,#_lcd_ptr
	mov	a,r7
	movx	@dptr,a
;	LCD.c:221: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:223: lcdgotoxy(3, 0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	ljmp	_lcdgotoxy
00107$:
;	LCD.c:225: else if (get_cursor_address() == 0x58)
	push	ar7
	lcall	_get_cursor_address
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x58,00104$
;	LCD.c:228: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:229: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:231: lcd_ptr = c;
	mov	dptr,#_lcd_ptr
	mov	a,r7
	movx	@dptr,a
;	LCD.c:233: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:235: lcdgotoxy(0, 0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	ljmp	_lcdgotoxy
00104$:
;	LCD.c:241: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:242: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:244: lcd_ptr = c;
	mov	dptr,#_lcd_ptr
	mov	a,r7
	movx	@dptr,a
;	LCD.c:246: lcdbusywait();
;	LCD.c:248: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated with name '_lcdputstr_ss_65536_103'
;i                         Allocated with name '_lcdputstr_i_65536_104'
;------------------------------------------------------------
;	LCD.c:257: void lcdputstr(char *ss)
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_ss_65536_103
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	LCD.c:262: while (ss[i] != '\0')
	mov	dptr,#_lcdputstr_ss_65536_103
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jz	00104$
;	LCD.c:265: lcdputch(ss[i]);
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_lcdputch
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	LCD.c:266: i++;
	inc	r3
	cjne	r3,#0x00,00101$
	inc	r4
	sjmp	00101$
00104$:
;	LCD.c:268: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	LCD.c:278: void lcdclear(void)
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	LCD.c:281: RS = 0;
;	assignBit
	clr	_P1_0
;	LCD.c:282: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:285: lcd_ptr = 0x01;
	mov	dptr,#_lcd_ptr
	mov	a,#0x01
	movx	@dptr,a
;	LCD.c:288: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:291: lcdgotoaddr(0x00);
	mov	dpl,#0x00
;	LCD.c:292: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_dump'
;------------------------------------------------------------
;loop                      Allocated with name '_hex_dump_loop_65537_109'
;i                         Allocated with name '_hex_dump_i_131073_110'
;------------------------------------------------------------
;	LCD.c:301: void hex_dump()
;	-----------------------------------------
;	 function hex_dump
;	-----------------------------------------
_hex_dump:
;	LCD.c:304: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
;	LCD.c:306: int loop = 0;
	mov	dptr,#_hex_dump_loop_65537_109
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	LCD.c:309: for (int i = 0; i < 80; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x50
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00122$
	ljmp	00103$
00122$:
;	LCD.c:311: if (loop == 16)
	mov	dptr,#_hex_dump_loop_65537_109
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x10,00102$
	cjne	r5,#0x00,00102$
;	LCD.c:313: loop = 0;
	mov	dptr,#_hex_dump_loop_65537_109
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	LCD.c:314: printf("\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00102$:
;	LCD.c:316: loop++;
	mov	dptr,#_hex_dump_loop_65537_109
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	LCD.c:319: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:320: RW = 1;
;	assignBit
	setb	_P1_2
;	LCD.c:323: printf("%X\t", (lcd_ptr) & 0x7F);
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x7f
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	LCD.c:309: for (int i = 0; i < 80; i++)
	inc	r6
	cjne	r6,#0x00,00125$
	inc	r7
00125$:
	ljmp	00105$
00103$:
;	LCD.c:326: printf("\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	LCD.c:327: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_custom_char'
;------------------------------------------------------------
;sloc0                     Allocated with name '_create_custom_char_sloc0_1_0'
;ch_arr                    Allocated with name '_create_custom_char_PARM_2'
;ch_code                   Allocated with name '_create_custom_char_ch_code_65536_113'
;address                   Allocated with name '_create_custom_char_address_65536_114'
;i                         Allocated with name '_create_custom_char_i_131072_115'
;------------------------------------------------------------
;	LCD.c:339: void create_custom_char(char ch_code, uint16_t* ch_arr)
;	-----------------------------------------
;	 function create_custom_char
;	-----------------------------------------
_create_custom_char:
	mov	a,dpl
	mov	dptr,#_create_custom_char_ch_code_65536_113
	movx	@dptr,a
;	LCD.c:341: uint16_t address = (0x40 | (ch_code - '0' << 3));
	movx	a,@dptr
	mov	r6,#0x00
	add	a,#0xd0
	mov	r7,a
	mov	a,r6
	addc	a,#0xff
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	orl	ar7,#0x40
;	LCD.c:344: for (int i = 0; i < 8; i++)
	mov	dptr,#_create_custom_char_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r1
	subb	a,#0x08
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	LCD.c:347: RS = 0;
;	assignBit
	clr	_P1_0
;	LCD.c:348: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:351: lcd_ptr = address | i;
	mov	_create_custom_char_sloc0_1_0,r1
	mov	ar0,r7
	mov	dptr,#_lcd_ptr
	mov	a,_create_custom_char_sloc0_1_0
	orl	a,r0
	movx	@dptr,a
;	LCD.c:354: lcdbusywait();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_lcdbusywait
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	LCD.c:357: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:360: lcd_ptr = ch_arr[i];
	mov	a,r1
	add	a,r1
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r7,a
	mov	a,r0
	add	a,r3
	mov	r0,a
	mov	a,r7
	addc	a,r4
	mov	r7,a
	mov	ar6,r5
	mov	dpl,r0
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	LCD.c:363: lcdbusywait();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_lcdbusywait
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	LCD.c:344: for (int i = 0; i < 8; i++)
	inc	r1
	cjne	r1,#0x00,00117$
	inc	r2
00117$:
	pop	ar6
	pop	ar7
	sjmp	00103$
00101$:
;	LCD.c:367: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:368: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:371: lcd_ptr = 0x40;
	mov	dptr,#_lcd_ptr
	mov	a,#0x40
	movx	@dptr,a
;	LCD.c:374: lcdgotoxy(2, 1);
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_lcdgotoxy
;	LCD.c:377: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:380: lcd_ptr = ch_code - '0';
	mov	dptr,#_create_custom_char_ch_code_65536_113
	movx	a,@dptr
	add	a,#0xd0
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	LCD.c:383: lcdbusywait();
;	LCD.c:384: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'ascii_to_int'
;------------------------------------------------------------
;sloc0                     Allocated with name '_ascii_to_int_sloc0_1_0'
;sloc1                     Allocated with name '_ascii_to_int_sloc1_1_0'
;arr                       Allocated with name '_ascii_to_int_arr_65536_117'
;i                         Allocated with name '_ascii_to_int_i_65536_118'
;x                         Allocated with name '_ascii_to_int_x_65536_118'
;buff_size                 Allocated with name '_ascii_to_int_buff_size_65536_118'
;------------------------------------------------------------
;	LCD.c:396: uint16_t ascii_to_int(char *arr)
;	-----------------------------------------
;	 function ascii_to_int
;	-----------------------------------------
_ascii_to_int:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ascii_to_int_arr_65536_117
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	LCD.c:398: int i = 0;
	mov	dptr,#_ascii_to_int_i_65536_118
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	LCD.c:400: uint16_t buff_size = 0;
	mov	dptr,#_ascii_to_int_buff_size_65536_118
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	LCD.c:403: while (arr[i] != 0x0D)
	mov	dptr,#_ascii_to_int_arr_65536_117
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00105$:
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_ascii_to_int_i_65536_118
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	add	a,r5
	mov	r2,a
	mov	a,r1
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_ascii_to_int_sloc0_1_0,a
	mov	a,#0x0d
	cjne	a,_ascii_to_int_sloc0_1_0,00126$
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00107$
00126$:
	pop	ar4
	pop	ar3
	pop	ar2
;	LCD.c:406: if ((arr[i] >= 'A') && (arr[i] <= 'Z'))
	mov	a,#0x100 - 0x41
	add	a,_ascii_to_int_sloc0_1_0
	jnc	00102$
	mov	a,_ascii_to_int_sloc0_1_0
	add	a,#0xff - 0x5a
	jc	00102$
;	LCD.c:408: x = (arr[i] - 55);  // Convert ASCII character to an integer (A=10, B=11, ..., Z=35)
	push	ar2
	push	ar3
	push	ar4
	mov	a,_ascii_to_int_sloc0_1_0
	add	a,#0xc9
	mov	r4,a
;	LCD.c:409: buff_size = (buff_size * 16) + x;
	mov	dptr,#_ascii_to_int_buff_size_65536_118
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	_ascii_to_int_sloc1_1_0,r2
	swap	a
	anl	a,#0xf0
	xch	a,_ascii_to_int_sloc1_1_0
	swap	a
	xch	a,_ascii_to_int_sloc1_1_0
	xrl	a,_ascii_to_int_sloc1_1_0
	xch	a,_ascii_to_int_sloc1_1_0
	anl	a,#0xf0
	xch	a,_ascii_to_int_sloc1_1_0
	xrl	a,_ascii_to_int_sloc1_1_0
	mov	(_ascii_to_int_sloc1_1_0 + 1),a
	mov	ar3,r4
	mov	r4,#0x00
	mov	dptr,#_ascii_to_int_buff_size_65536_118
	mov	a,r3
	add	a,_ascii_to_int_sloc1_1_0
	movx	@dptr,a
	mov	a,r4
	addc	a,(_ascii_to_int_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	LCD.c:410: i++;
	mov	dptr,#_ascii_to_int_i_65536_118
	mov	a,#0x01
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00105$
00102$:
;	LCD.c:414: x = (arr[i] - '0');  // Convert ASCII character to an integer
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_ascii_to_int_i_65536_118
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	add	a,r2
	mov	r5,a
	mov	a,r1
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,#0xd0
	mov	r5,a
;	LCD.c:415: buff_size = (buff_size * 10) + x;
	mov	dptr,#_ascii_to_int_buff_size_65536_118
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	_ascii_to_int_sloc1_1_0,dpl
	mov	(_ascii_to_int_sloc1_1_0 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r7,#0x00
	mov	dptr,#_ascii_to_int_buff_size_65536_118
	mov	a,r5
	add	a,_ascii_to_int_sloc1_1_0
	movx	@dptr,a
	mov	a,r7
	addc	a,(_ascii_to_int_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	LCD.c:416: i++;
	mov	dptr,#_ascii_to_int_i_65536_118
	mov	a,#0x01
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00105$
00107$:
;	LCD.c:420: return buff_size;  // Return the integer value
	mov	dptr,#_ascii_to_int_buff_size_65536_118
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	LCD.c:421: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_input'
;------------------------------------------------------------
;arr                       Allocated with name '_get_input_arr_65536_122'
;i                         Allocated with name '_get_input_i_65536_123'
;------------------------------------------------------------
;	LCD.c:431: void get_input(char* arr)
;	-----------------------------------------
;	 function get_input
;	-----------------------------------------
_get_input:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_input_arr_65536_122
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	LCD.c:437: while (1)
	mov	dptr,#_get_input_arr_65536_122
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00104$:
;	LCD.c:440: arr[i] = getchar();
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	push	ar5
	push	ar6
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_getchar
	mov	r6,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	__gptrput
;	LCD.c:443: if (arr[i] == ENDOFLINE)
	cjne	r6,#0x0d,00117$
	pop	ar7
	pop	ar6
	pop	ar5
	ret
00117$:
	pop	ar7
	pop	ar6
	pop	ar5
;	LCD.c:449: putchar(arr[i]);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	mov	dpl,r0
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
;	LCD.c:450: printf("\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	LCD.c:453: i++;
	inc	r3
	cjne	r3,#0x00,00118$
	inc	r4
00118$:
	ljmp	00104$
;	LCD.c:456: return;
;	LCD.c:457: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cgram_dump'
;------------------------------------------------------------
;i                         Allocated with name '_cgram_dump_i_131072_127'
;address                   Allocated with name '_cgram_dump_address_196609_129'
;j                         Allocated with name '_cgram_dump_j_262145_130'
;------------------------------------------------------------
;	LCD.c:466: void cgram_dump()
;	-----------------------------------------
;	 function cgram_dump
;	-----------------------------------------
_cgram_dump:
;	LCD.c:469: for (uint8_t i = 0; i < 8; i++)
	mov	r7,#0x00
00107$:
	cjne	r7,#0x08,00129$
00129$:
	jc	00130$
	ret
00130$:
;	LCD.c:472: printf_tiny("0X%d: ", i);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	LCD.c:475: uint16_t address = (0x40 | (i << 3));
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r5
	swap	a
	rr	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf8
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	orl	ar5,#0x40
;	LCD.c:478: for (int j = 0; j < 8; j++)
	mov	r3,#0x00
	mov	r4,#0x00
00104$:
	clr	c
	mov	a,r3
	subb	a,#0x08
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	LCD.c:481: RS = 0;
;	assignBit
	clr	_P1_0
;	LCD.c:482: RW = 0;
;	assignBit
	clr	_P1_2
;	LCD.c:485: lcd_ptr = address | j;
	mov	ar2,r3
	mov	ar1,r5
	mov	dptr,#_lcd_ptr
	mov	a,r2
	orl	a,r1
	movx	@dptr,a
;	LCD.c:488: lcdbusywait();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_lcdbusywait
;	LCD.c:491: RS = 1;
;	assignBit
	setb	_P1_0
;	LCD.c:492: RW = 1;
;	assignBit
	setb	_P1_2
;	LCD.c:495: printf("%X ", lcd_ptr & 0x3F);
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x3f
	mov	r2,#0x00
	push	ar1
	push	ar2
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	LCD.c:478: for (int j = 0; j < 8; j++)
	inc	r3
	cjne	r3,#0x00,00104$
	inc	r4
	sjmp	00104$
00101$:
;	LCD.c:499: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	LCD.c:469: for (uint8_t i = 0; i < 8; i++)
	inc	r7
;	LCD.c:501: }
	ljmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "%X"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "0X%d: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "%X "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
