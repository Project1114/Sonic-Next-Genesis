; ---------------------------------------------------------------------------
; Animation script - monitors
; ---------------------------------------------------------------------------
		dc.w byte_A522-Ani_obj2E
		dc.w byte_A51D-Ani_obj2E
		dc.w byte_A51E-Ani_obj2E
		dc.w byte_A51F-Ani_obj2E
		dc.w byte_A520-Ani_obj2E
		dc.w byte_A521-Ani_obj2E
byte_A522:	dc.b 2, $A, $10, $16, $17, $A, $10, $16, $17, $A, $FE, 1
byte_A51D:	dc.b 2, $B, $11, $16, $18, $B, $11, $16, $18, $B, $FE, 1
byte_A51E:	dc.b 2, $C, $12, $16, $19, $C, $12, $16, $19, $C, $FE, 1
byte_A51F:	dc.b 2, $D, $13, $16, $1A, $D, $13, $16, $1A, $D, $FE, 1
byte_A520:	dc.b 2, $E, $14, $16, $1B, $E, $14, $16, $1B, $E, $FE, 1
byte_A521:	dc.b 2, $F, $15, $16, $1C, $F, $15, $16, $1C, $F, $FE, 1
		even