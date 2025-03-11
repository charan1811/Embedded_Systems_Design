;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _timer0_ISR
	.globl _timer0_init
	.globl __sdcc_external_startup
	.globl _getchar
	.globl _putchar
	.globl _get_input
	.globl _ascii_to_int
	.globl _create_custom_char
	.globl _hex_dump
	.globl _cgram_dump
	.globl _lcdclear
	.globl _lcdputstr
	.globl _lcdputch
	.globl _get_cursor_address
	.globl _lcdgotoxy
	.globl _lcdgotoaddr
	.globl _lcdinit
	.globl _printf_tiny
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
	.globl _mino
	.globl _minz
	.globl _seco
	.globl _secz
	.globl _msec
	.globl _counter
	.globl _lcd_ptr
	.globl _saved_address
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_saved_address::
	.ds 1
_lcd_ptr	=	0x8000
_timer0_ISR_i_65537_82:
	.ds 2
_main_input_array_65536_89:
	.ds 3
_main_arr_input_65536_89:
	.ds 16
_main_eol_check_196615_104:
	.ds 2
_main_x_196616_110:
	.ds 2
_main_y_196617_111:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_counter::
	.ds 2
_msec::
	.ds 1
_secz::
	.ds 1
_seco::
	.ds 1
_minz::
	.ds 1
_mino::
	.ds 1
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;i                         Allocated with name '_timer0_ISR_i_65537_82'
;t                         Allocated with name '_timer0_ISR_t_65537_82'
;------------------------------------------------------------
;	main.c:45: static int i = 0;
	mov	dptr,#_timer0_ISR_i_65537_82
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	main.c:16: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:18: AUXR|=0x0C; //for 1kB memory
	orl	_AUXR,#0x0c
;	main.c:19: return 0;
	mov	dptr,#0x0000
;	main.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_init'
;------------------------------------------------------------
;	main.c:26: void timer0_init()
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	main.c:28: TMOD |= 0x01; // set the mode for timer 0
	orl	_TMOD,#0x01
;	main.c:29: TL0=0x00; // set the low value of timer
	mov	_TL0,#0x00
;	main.c:30: TH0=0x00; // set the high value of timer
	mov	_TH0,#0x00
;	main.c:31: EA = 1; // Enable global interrupts
;	assignBit
	setb	_EA
;	main.c:32: ET0 = 1;
;	assignBit
	setb	_ET0
;	main.c:33: TR0 = 1; //enable timer interrupts
;	assignBit
	setb	_TR0
;	main.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;i                         Allocated with name '_timer0_ISR_i_65537_82'
;t                         Allocated with name '_timer0_ISR_t_65537_82'
;------------------------------------------------------------
;	main.c:41: void timer0_ISR() __interrupt(1)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:44: saved_address = get_cursor_address();
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_saved_address
	movx	@dptr,a
;	main.c:47: while(t--);
	mov	r6,#0x98
	mov	r7,#0x08
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00145$
	dec	r7
00145$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	main.c:48: i++;
	mov	dptr,#_timer0_ISR_i_65537_82
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:50: if (i == 1)
	mov	dptr,#_timer0_ISR_i_65537_82
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00147$
	cjne	r7,#0x00,00147$
	sjmp	00148$
00147$:
	ljmp	00113$
00148$:
;	main.c:52: i= 0;
	mov	dptr,#_timer0_ISR_i_65537_82
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:54: msec++;
	mov	dptr,#_msec
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:55: if (msec == 10)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00111$
;	main.c:57: msec = 0;
	mov	dptr,#_msec
	clr	a
	movx	@dptr,a
;	main.c:58: secz++;
	mov	dptr,#_secz
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:60: if (secz == 10)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00111$
;	main.c:62: secz = 0;
	mov	dptr,#_secz
	clr	a
	movx	@dptr,a
;	main.c:64: seco++;
	mov	dptr,#_seco
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:65: if (seco == 6)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00111$
;	main.c:67: seco = 0;
	mov	dptr,#_seco
	clr	a
	movx	@dptr,a
;	main.c:69: minz++;
	mov	dptr,#_minz
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:70: if (minz == 10)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00111$
;	main.c:72: minz=0;
	mov	dptr,#_minz
	clr	a
	movx	@dptr,a
;	main.c:74: mino++;
	mov	dptr,#_mino
	movx	a,@dptr
	inc	a
	movx	@dptr,a
00111$:
;	main.c:80: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	main.c:81: lcdputch((char)mino+ '0');
	mov	dptr,#_mino
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:82: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	main.c:83: lcdputch((char)minz+ '0');
	mov	dptr,#_minz
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:84: lcdgotoaddr(0x5B);
	mov	dpl,#0x5b
	lcall	_lcdgotoaddr
;	main.c:85: lcdputch((char)58);
	mov	dpl,#0x3a
	lcall	_lcdputch
;	main.c:86: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	main.c:87: lcdputch((char)seco+ '0');
	mov	dptr,#_seco
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:88: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	main.c:89: lcdputch((char)secz+ '0');
	mov	dptr,#_secz
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:90: lcdgotoaddr(0x5E);
	mov	dpl,#0x5e
	lcall	_lcdgotoaddr
;	main.c:91: lcdputch((char)46);
	mov	dpl,#0x2e
	lcall	_lcdputch
;	main.c:92: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	main.c:93: lcdputch((char)msec+ '0');
	mov	dptr,#_msec
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
00113$:
;	main.c:95: lcdgotoaddr(saved_address); //pop out the saved address
	mov	dptr,#_saved_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	main.c:96: TL0=0x00; // set the low value of timer
	mov	_TL0,#0x00
;	main.c:97: TH0=0x00; // set the high value of timer
	mov	_TH0,#0x00
;	main.c:98: TF0=0; //clear overflow flag
;	assignBit
	clr	_TF0
;	main.c:99: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input_array               Allocated with name '_main_input_array_65536_89'
;arr_input                 Allocated with name '_main_arr_input_65536_89'
;block_size                Allocated with name '_main_block_size_65536_89'
;input                     Allocated with name '_main_input_65537_91'
;string                    Allocated with name '_main_string_65538_92'
;input                     Allocated with name '_main_input_131075_94'
;row                       Allocated with name '_main_row_196612_97'
;column                    Allocated with name '_main_column_196613_98'
;lcd_input                 Allocated with name '_main_lcd_input_196614_102'
;eol_check                 Allocated with name '_main_eol_check_196615_104'
;i                         Allocated with name '_main_i_196615_104'
;ch                        Allocated with name '_main_ch_262151_105'
;sum                       Allocated with name '_main_sum_196616_110'
;x                         Allocated with name '_main_x_196616_110'
;y                         Allocated with name '_main_y_196617_111'
;ch_code                   Allocated with name '_main_ch_code_196618_115'
;j                         Allocated with name '_main_j_262154_116'
;i                         Allocated with name '_main_i_262154_119'
;------------------------------------------------------------
;	main.c:105: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:111: lcdinit();
	lcall	_lcdinit
;	main.c:112: EA = 1;
;	assignBit
	setb	_EA
;	main.c:121: }
	mov	r7,#0x01
	jbc	ea,00310$
	mov	r7,#0x00
00310$:
;	main.c:116: msec = 0;
	mov	dptr,#_msec
	clr	a
	movx	@dptr,a
;	main.c:117: secz = 0;
	mov	dptr,#_secz
	movx	@dptr,a
;	main.c:118: seco = 0;
	mov	dptr,#_seco
	movx	@dptr,a
;	main.c:119: minz = 0;
	mov	dptr,#_minz
	movx	@dptr,a
;	main.c:120: mino = 0;
	mov	dptr,#_mino
	movx	@dptr,a
	mov	a,r7
	rrc	a
	mov	ea,c
;	main.c:123: timer0_init();
	lcall	_timer0_init
;	main.c:124: const char* input = "MANDADI SAI CHARAN UCB ESD LAB 4 \0";
;	main.c:126: lcdinit();
	lcall	_lcdinit
;	main.c:128: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
;	main.c:129: lcdputstr(input);
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:132: while(1)
00150$:
;	main.c:135: printf_tiny("Press H for the home menu\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:136: printf_tiny("Enter a choice:    \n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:139: uint8_t input=getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:140: printf_tiny("%c\n\r",input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	main.c:141: switch(input)
	cjne	r6,#0x42,00311$
	ljmp	00123$
00311$:
	cjne	r6,#0x43,00312$
	ljmp	00115$
00312$:
	cjne	r6,#0x44,00313$
	ljmp	00140$
00313$:
	cjne	r6,#0x45,00314$
	ljmp	00125$
00314$:
	cjne	r6,#0x46,00315$
	ljmp	00141$
00315$:
	cjne	r6,#0x47,00316$
	ljmp	00127$
00316$:
	cjne	r6,#0x48,00317$
	sjmp	00101$
00317$:
	cjne	r6,#0x49,00318$
	ljmp	00146$
00318$:
	cjne	r6,#0x4a,00319$
	ljmp	00102$
00319$:
	cjne	r6,#0x52,00320$
	ljmp	00126$
00320$:
	cjne	r6,#0x53,00321$
	ljmp	00116$
00321$:
	cjne	r6,#0x5a,00322$
	ljmp	00124$
00322$:
	ljmp	00150$
;	main.c:143: case 'H':
00101$:
;	main.c:160: }
	mov	r7,#0x01
	jbc	ea,00323$
	mov	r7,#0x00
00323$:
;	main.c:146: printf_tiny("*************Home Menu***************");
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:148: printf_tiny("\n\rEnter J to go to desired coordinate)\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:149: printf_tiny("\n\rPress C to print desired character on LCD\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:150: printf_tiny("\n\rPress S to print desired string on LCD\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:151: printf_tiny("\n\rPress B to clear LCD\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:152: printf_tiny("\n\rPress E to stop the elapsed time clock\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:153: printf_tiny("\n\rPress R to restart the clock\n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:154: printf_tiny("\n\rPress Z to reset the clock back to '00:00.0'\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:155: printf_tiny("\n\rPress G to go to a particular address location'\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:156: printf_tiny("\n\rPress F to Create a custom character'\n\r");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:157: printf_tiny("\n\rPress D For Hex Dump of DDRAM\n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:158: printf_tiny("\n\rPress I For Hex Dump of CGRAM\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:159: printf_tiny("\n\r**************************************************\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	main.c:161: break;
	ljmp	00150$
;	main.c:162: case 'J':
00102$:
;	main.c:164: printf_tiny("Enter row: \n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:165: uint16_t row=getchar();
	lcall	_getchar
;	main.c:167: putchar(row);
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	lcall	_putchar
;	main.c:168: printf_tiny("Enter column: \n\r");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:169: uint16_t column=getchar();
	lcall	_getchar
;	main.c:171: putchar(column);
	mov	r4,dpl
	mov  r5,dph
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:173: if (((row >= '0') && (row <= '3')) && ((column >= '0') && (column <= '9')))
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r2
	subb	a,#0x30
	mov	a,r3
	subb	a,#0x00
	jc	00110$
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,#0x33
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00110$
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,#0x30
	mov	a,r3
	subb	a,#0x00
	jc	00110$
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0x39
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00110$
;	main.c:176: lcdgotoxy(row-'0',column-'0');
	mov	a,r6
	add	a,#0xd0
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	add	a,#0xd0
	mov	r0,a
	mov	a,r5
	addc	a,#0xff
	mov	r1,a
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_lcdgotoxy
	ljmp	00150$
00110$:
;	main.c:179: else if (((row >= '0') && (row <= '3')) && ((column >= 'A') && (column <= 'F')))
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r2
	subb	a,#0x30
	mov	a,r3
	subb	a,#0x00
	jc	00104$
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,#0x33
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00104$
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,#0x41
	mov	a,r3
	subb	a,#0x00
	jc	00104$
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0x46
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00104$
;	main.c:182: lcdgotoxy(row-'0',column-55);
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_lcdgotoxy
	ljmp	00150$
00104$:
;	main.c:187: printf_tiny("Enter a valid input with row 0-3 and column 0-F\n\r");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:189: break;
	ljmp	00150$
;	main.c:190: case 'C':
00115$:
;	main.c:192: printf_tiny("Enter character to print on LCD: \n\r");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:193: uint8_t lcd_input=getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:195: printf_tiny("%c\n\r",lcd_input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	main.c:199: }
	mov	r7,#0x01
	jbc	ea,00332$
	mov	r7,#0x00
00332$:
;	main.c:198: lcdputch(lcd_input);
	mov	dpl,r6
	push	ar7
	lcall	_lcdputch
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	main.c:200: break;
	ljmp	00150$
;	main.c:201: case 'S':
00116$:
;	main.c:203: printf_tiny("Enter string to print on LCD: \n\r");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:205: int eol_check=1;
	mov	dptr,#_main_eol_check_196615_104
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:208: while(eol_check)
	mov	r6,#0x00
	mov	r7,#0x00
00120$:
	mov	dptr,#_main_eol_check_196615_104
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00122$
;	main.c:210: uint8_t ch=getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
;	main.c:212: printf_tiny("%c",ch);
	mov	ar3,r4
	mov	r5,#0x00
	push	ar4
	push	ar3
	push	ar5
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar6
	pop	ar7
;	main.c:214: if(ch==0xD)
	cjne	r4,#0x0d,00118$
;	main.c:215: eol_check=0;
	mov	dptr,#_main_eol_check_196615_104
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00120$
00118$:
;	main.c:219: *(string+i)=ch;
	mov	ar2,r6
	mov	a,r7
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
;	main.c:220: i++;
	inc	r6
	cjne	r6,#0x00,00120$
	inc	r7
	sjmp	00120$
00122$:
;	main.c:224: *(string+i)='\0';
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	clr	a
	lcall	__gptrput
;	main.c:228: }
	mov	r7,#0x01
	jbc	ea,00337$
	mov	r7,#0x00
00337$:
;	main.c:227: lcdputstr(string);
	mov	dptr,#0x0000
	mov	b,#0x00
	push	ar7
	lcall	_lcdputstr
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	main.c:229: break;
	ljmp	00150$
;	main.c:230: case 'B':
00123$:
;	main.c:235: }
	mov	r7,#0x01
	jbc	ea,00338$
	mov	r7,#0x00
00338$:
;	main.c:234: lcdclear();
	push	ar7
	lcall	_lcdclear
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	main.c:236: break;
	ljmp	00150$
;	main.c:237: case 'Z':
00124$:
;	main.c:261: }
	mov	r7,#0x01
	jbc	ea,00339$
	mov	r7,#0x00
00339$:
;	main.c:241: msec = 0;
	mov	dptr,#_msec
	clr	a
	movx	@dptr,a
;	main.c:242: secz = 0;
	mov	dptr,#_secz
	movx	@dptr,a
;	main.c:243: seco = 0;
	mov	dptr,#_seco
	movx	@dptr,a
;	main.c:244: minz = 0;
	mov	dptr,#_minz
	movx	@dptr,a
;	main.c:245: mino = 0;
	mov	dptr,#_mino
	movx	@dptr,a
;	main.c:247: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	push	ar7
	lcall	_lcdgotoaddr
;	main.c:248: lcdputch((char)mino+ '0');
	mov	dptr,#_mino
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:249: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	main.c:250: lcdputch((char)minz+ '0');
	mov	dptr,#_minz
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:251: lcdgotoaddr(0x5B);
	mov	dpl,#0x5b
	lcall	_lcdgotoaddr
;	main.c:252: lcdputch((char)58);
	mov	dpl,#0x3a
	lcall	_lcdputch
;	main.c:253: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	main.c:254: lcdputch((char)seco+ '0');
	mov	dptr,#_seco
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:255: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	main.c:256: lcdputch((char)secz+ '0');
	mov	dptr,#_secz
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
;	main.c:257: lcdgotoaddr(0x5E);
	mov	dpl,#0x5e
	lcall	_lcdgotoaddr
;	main.c:258: lcdputch((char)46);
	mov	dpl,#0x2e
	lcall	_lcdputch
;	main.c:259: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	main.c:260: lcdputch((char)msec+ '0');
	mov	dptr,#_msec
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdputch
	pop	ar7
	mov	a,r7
	rrc	a
	mov	ea,c
;	main.c:262: break;
	ljmp	00150$
;	main.c:263: case 'E':
00125$:
;	main.c:265: TCON &= ~(0x10);
	anl	_TCON,#0xef
;	main.c:266: break;
	ljmp	00150$
;	main.c:267: case 'R':
00126$:
;	main.c:269: TCON |= 0x10;
	orl	_TCON,#0x10
;	main.c:270: break;
	ljmp	00150$
;	main.c:271: case 'G':
00127$:
;	main.c:273: printf_tiny("Enter go to address: \n\r");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:276: uint16_t x=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_main_x_196616_110
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:277: putchar(x);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_putchar
;	main.c:279: uint16_t y=getchar();
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_y_196617_111
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:280: putchar(y);
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:282: if (((x >= '0') && (x <= '5')) && ((y >= '0') && (y <= '9')))
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r2
	subb	a,#0x30
	mov	a,r3
	subb	a,#0x00
	jc	00135$
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,#0x35
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00135$
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,#0x30
	mov	a,r3
	subb	a,#0x00
	jc	00135$
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0x39
	subb	a,r2
	clr	a
	subb	a,r3
	jc	00135$
;	main.c:287: x = x-'0';
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
;	main.c:288: y = y-'0';
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
;	main.c:290: sum = x*16 + y;
	mov	a,r6
	swap	a
	anl	a,#0xf0
	add	a,r4
;	main.c:292: lcdgotoaddr(sum);
	mov	dpl,a
	lcall	_lcdgotoaddr
	ljmp	00150$
00135$:
;	main.c:295: else if (((x >= '0') && (x <= '5')) && ((y >= 'A') && (y <= 'F')))
	mov	dptr,#_main_x_196616_110
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x30
	mov	a,r7
	subb	a,#0x00
	jc	00129$
	mov	a,#0x35
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00129$
	mov	dptr,#_main_y_196617_111
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0x41
	mov	a,r5
	subb	a,#0x00
	jc	00129$
	mov	a,#0x46
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00129$
;	main.c:300: x = x-'0';
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_main_x_196616_110
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:301: y = y-55;
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_main_y_196617_111
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:303: sum = x*16 + y;
	mov	dptr,#_main_x_196616_110
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	dptr,#_main_y_196617_111
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	add	a,r6
;	main.c:305: lcdgotoaddr(sum);
	mov	dpl,a
	lcall	_lcdgotoaddr
	ljmp	00150$
00129$:
;	main.c:310: printf_tiny("Enter a valid address 00-1f/ 40-58\n\r");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:312: break;
	ljmp	00150$
;	main.c:313: case 'D':
00140$:
;	main.c:315: hex_dump();
	lcall	_hex_dump
;	main.c:316: break;
	ljmp	00150$
;	main.c:317: case 'F':
00141$:
;	main.c:318: printf_tiny("Enter custom code\n\r");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:320: char ch_code = getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:321: putchar(ch_code);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
;	main.c:322: putchar('\n');
	mov	dptr,#0x000a
	lcall	_putchar
;	main.c:323: printf_tiny("Enter Row values\n\r");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	main.c:325: for (int j = 0; j<=7; j++)
	mov	r5,#0x00
	mov	r7,#0x00
00153$:
	clr	c
	mov	a,#0x07
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00196$
;	main.c:327: get_input(input_array);
	mov	dptr,#_main_input_array_65536_89
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_input
;	main.c:328: block_size = ascii_to_int(input_array);
	mov	dptr,#_main_input_array_65536_89
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ascii_to_int
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:330: if (block_size >128)
	clr	c
	mov	a,#0x80
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00143$
;	main.c:332: printf_tiny("Invalid Row values\n\r");
	push	ar6
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	main.c:333: break;
	sjmp	00196$
00143$:
;	main.c:336: arr_input[j] = block_size;
	mov	a,r5
	add	a,r5
	mov	r1,a
	mov	a,r7
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,#_main_arr_input_65536_89
	mov	dpl,a
	mov	a,r2
	addc	a,#(_main_arr_input_65536_89 >> 8)
	mov	dph,a
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:325: for (int j = 0; j<=7; j++)
	inc	r5
	cjne	r5,#0x00,00350$
	inc	r7
00350$:
	ljmp	00153$
;	main.c:339: for (int i=0;i<=7;i++)
00196$:
	mov	r5,#0x00
	mov	r7,#0x00
00156$:
	clr	c
	mov	a,#0x07
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00145$
;	main.c:341: printf_tiny("input values= %u\n\r",arr_input[i]);
	mov	a,r5
	add	a,r5
	mov	r3,a
	mov	a,r7
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,#_main_arr_input_65536_89
	mov	dpl,a
	mov	a,r4
	addc	a,#(_main_arr_input_65536_89 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:339: for (int i=0;i<=7;i++)
	inc	r5
	cjne	r5,#0x00,00156$
	inc	r7
	sjmp	00156$
00145$:
;	main.c:344: create_custom_char(ch_code, arr_input);
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_main_arr_input_65536_89
	movx	@dptr,a
	mov	a,#(_main_arr_input_65536_89 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	lcall	_create_custom_char
;	main.c:345: break;
	ljmp	00150$
;	main.c:346: case 'I':
00146$:
;	main.c:348: cgram_dump();
	lcall	_cgram_dump
;	main.c:349: break;
;	main.c:352: }
;	main.c:354: }
	ljmp	00150$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "MANDADI SAI CHARAN UCB ESD LAB 4 "
	.db 0x00
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Press H for the home menu"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Enter a choice:    "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "%c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "*************Home Menu***************"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "Enter J to go to desired coordinate)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "Press C to print desired character on LCD"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "Press S to print desired string on LCD"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "Press B to clear LCD"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "Press E to stop the elapsed time clock"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "Press R to restart the clock"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii "Press Z to reset the clock back to '00:00.0'"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "Press G to go to a particular address location'"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "Press F to Create a custom character'"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "Press D For Hex Dump of DDRAM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "Press I For Hex Dump of CGRAM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "**************************************************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Enter row: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Enter column: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Enter a valid input with row 0-3 and column 0-F"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Enter character to print on LCD: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Enter string to print on LCD: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Enter go to address: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Enter a valid address 00-1f/ 40-58"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Enter custom code"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "Enter Row values"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "Invalid Row values"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "input values= %u"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__counter:
	.byte #0x00, #0x00	;  0
__xinit__msec:
	.db #0x00	; 0
__xinit__secz:
	.db #0x00	; 0
__xinit__seco:
	.db #0x00	; 0
__xinit__minz:
	.db #0x00	; 0
__xinit__mino:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
