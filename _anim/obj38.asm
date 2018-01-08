; ---------------------------------------------------------------------------
; Animation script - shield and invincibility stars
; ---------------------------------------------------------------------------
		dc.w byte_None-Ani_obj38
		dc.w byte_Lightning-Ani_obj38
		dc.w byte_Bubble-Ani_obj38
		dc.w byte_Flame-Ani_obj38
		dc.w byte_Flame_Dash-Ani_Obj38
		dc.w byte_Lightning_Jump-Ani_obj38
		dc.w byte_Lightning_Jump2-Ani_obj38
		dc.w byte_Bubble_Bounce-Ani_Obj38
		dc.w byte_Bubble_Bounce2-Ani_Obj38
byte_None:
byte_Lightning:	dc.b 1, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9
		dc.b $A, $B, $14, $14, $13, $13, $12, $12, $11, $11, $10, $10
		dc.b  $F, $F, $E, $E, $D, $D, $C, $C, 9, $A, $B, $FF
byte_Bubble: dc.b    1,   0,   9,   0,   9,   0,   9,   1,  $A,   1,  $A,   1,  $A,   2,   9,   2,   9,   2,   9,   3
		dc.b   $A,   3,  $A,   3,  $A,   4,   9,   4,   9,   4,   9,   5,  $A,   5,  $A,   5,  $A,   6,   9,   6
		dc.b    9,   6,   9,   7,  $A,   7,  $A,   7,  $A,   8,   9,   8,   9,   8,   9
		dc.b	$D,   9,   $D,   9,   $D,   9,   $E,  $A,   $E,  $A,   $E,  $A,   $F,   9,   $F,   9,   $F,   9,   $10
		dc.b   $A,   $10,  $A,   $10,  $A,   $11,   9,   $11,   9,   $11,   9,   $12,  $A,   $12,  $A,   $12,  $A,   $13,   9,   $13
		dc.b    9,   $13,   9,   $14,  $A,   $14,  $A,   $14,  $A,   $15,   9,   $15,   9,   $15,   9, $FF
byte_Flame:	dc.b	1,   0,	 $F,   1, $10,	 2, $11,   3, $12,   4,	$13,   5, $14,	 6, $15,   7, $16,   8,	$17, $FF
byte_Flame_Dash:	dc.b	1,   9,	 $A,  $B,  $C,	$D,  $E,   9,  $A,  $B,	 $C,  $D,  $E, $FD,   3,   0
byte_Lightning_Jump:	dc.b    0,  $C,  $D, $17,  $C,  $D, $17,  $C,  $D, $17,  $C,  $D, $17,  $C,  $D, $17,  $C,  $D, $17,  $C
		dc.b   $D, $FC, $FF
byte_Lightning_Jump2:	dc.b	3,   0,	  1,   2, $FC, $FF,   0
byte_Bubble_Bounce:	dc.b	5,   9,	 $B,  $B,  $B, $FD,   2
byte_Bubble_Bounce2:	dc.b	5,  $C,	 $C,  $B, $FD,	 2,   0
		even