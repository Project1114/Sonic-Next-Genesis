WO1_Header:
	sHeaderInit	; Z80 offset is $87B0
	sHeaderPatch	WO1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	WO1_DAC
	sHeaderFM	WO1_FM1, $F4, $10
	sHeaderFM	WO1_FM2, $F4, $0B
	sHeaderFM	WO1_FM3, $00, $0D
	sHeaderFM	WO1_FM4, $E8, $10
	sHeaderFM	WO1_FM5, $F4, $13
	sHeaderPSG	WO1_PSG1, $C4, $03, $07, VolEnv_0C
	sHeaderPSG	WO1_PSG2, $C4, $03, $07, VolEnv_0C
	sHeaderPSG	WO1_PSG3, $00, $03, $00, VolEnv_02

WO1_FM5:
	sPatFM		$00
	saDetune	$FB
	dc.b nRst, $0C
	sCall		WO1_Call3
	sModEnv		ModEnv_07

WO1_Jump4:
	sPan		spLeft, $00
	sPatFM		$00
	ssModZ80	$20, $01, $04, $08
	saDetune	$FB
	sCall		WO1_Call4
	saDetune	$FB
	sCall		WO1_Call5
	saDetune	$FB
	sJump		WO1_Jump4

WO1_FM1:
	sPatFM		$00
	ssModZ80	$20, $01, $04, $08
	sCall		WO1_Call3

WO1_Jump8:
	sPatFM		$00
	sPan		spCenter, $00
	sCall		WO1_Call4
	sCall		WO1_Call5
	sJump		WO1_Jump8

WO1_Call3:
	sPatFM		$07
	saVolFM		$FB
	dc.b nRst, $60, nRst, $60, nRst, $60
	sPan		spRight, $00
	dc.b nRst, $3C, nA6, $0C
	sPan		spLeft, $00
	dc.b nRst, nA6, nRst, $60, nRst, $60, nRst, $60
	sPan		spRight, $00
	dc.b nRst, $3C, nA6, $0C
	sPan		spLeft, $00
	dc.b nRst, nA6
	sPatFM		$00
	saVolFM		$05
	sRet	

WO1_Call4:
	dc.b nE6, $3C, nCs6, $0C, nD6, nE6, sHold, $0C
	dc.b nD6, $18, nCs6, nD6, nC6, $0C, sHold, $30
	dc.b nC6, $18, nB5, $0C, nA5, sHold, $30, nE5
	dc.b $0C, nA5, nB5, nC6, sHold, $30, nA5, $0C
	dc.b nC6, nE6, nD6, sHold, $0C, nC6, $18, nB5
	dc.b nC6, nD6, $0C, sHold, $3C, nCs6, $0C, nD6
	dc.b nE6, sHold, $60, nE6, $3C, nCs6, $0C, nD6
	dc.b nE6, sHold, $0C, nD6, $18, nCs6, nD6, nC6
	dc.b $0C, sHold, $30, nC6, $18, nB5, $0C, nA5
	dc.b $0C, sHold, $30, nE5, $0C, nA5, nC6, nE6
	dc.b sHold, $30, nA5, $0C, nC6, nE6, nD6, sHold
	dc.b $0C, nC6, $18, nB5, nG6, nG6, $0C, sHold
	dc.b $3C, nD6, $0C, nG6, nA6, sHold, $60, nE6
	dc.b $30, nA5, $0C, nC6, nE6, nD6, $18, nC6
	dc.b $18, nB5, nC6, nD6, $3C, nD6, $0C, nC6
	dc.b nB5, nA5, $3C, nE5, $0C, nA5, nB5, nC6
	dc.b $3C, nA5, $0C, nC6, nE6, nD6, $18, nC6
	dc.b $18, nB5, nG6, nG6, $48, nD6, $0C, nG6
	dc.b nA6, $30, sHold, nA6
	sPatFM		$05
	saVolFM		$FF
	dc.b nF6, $48
	sRet	

WO1_Call5:
	dc.b nD6, $0C, nE6, nF6, $30, nG6, $0C, nA6
	dc.b nG6, nF6, nE6, $48, nC6, $0C, nD6, nE6
	dc.b $30, nF6, $0C, nG6, nF6, nE6, nF6, $3C
	dc.b nA5, $0C, nD6, nE6, nF6, $30, nG6, $0C
	dc.b nA6, nG6, nF6, nG6, $48, nEb6, $0C, nF6
	dc.b nG6, $48, nEb6, $0C, nF6, nG6, $48, nE6
	dc.b $0C, nC6, nE6, nG6, nE6, nC6, nA6, $4E
	dc.b sHold, nA6
	saVolFM		$01
	sRet	

WO1_FM2:
	sPatFM		$01

WO1_Loop8:
	dc.b nA3, $0C, nD4, nE4, nA3, nA4, nA3, nE4
	dc.b nG4, sHold, $0C, nA4, nG4, nE4, nD4, nE4
	dc.b nD4, nG3, nA3, nD4, nE4, nA3, nA4, nA3
	dc.b nE4, nG4, sHold, $0C, nA4, nG4, nE4, nD4
	dc.b nE4, nD4, nG3
	sLoop		$00, $02, WO1_Loop8

WO1_Loop9:
WO1_Jump7:
	dc.b nA3, nD4, nE4, nA3, nA4, nA3, nE4, nG4
	dc.b sHold, $0C, nA4, nG4, nE4, nD4, nE4, nD4
	dc.b nG3, nG3, nC4, nD4, nG3, nF4, nC4, nD4
	dc.b nG4, sHold, $0C, nF4, nC4, nD4, nG3, nG3
	dc.b nF3, nE3, nD3, nG3, nA3, nD3, nD4, nD3
	dc.b nG3, nE3, sHold, $0C, nA3, nB3, nE3, nE4
	dc.b nA3, nB3, nA3, sHold, $0C, nA3, nD4, nD4
	dc.b nE4, nE4, nG4, nA4, sHold, $0C, nA4, nE4
	dc.b nE4, nD4, nE4, nD4, nA3
	sLoop		$00, $02, WO1_Loop9
	dc.b nF3, nF3, nG3, nG3, nA3, nA3, nF3, nG3
	dc.b sHold, $0C, nG3, nA3, nA3, nB3, nB3, nD4
	dc.b nA3, sHold, $0C, nA3, nB3, nB3, nC4, nC4
	dc.b nD4, nE4, sHold, $0C, nE4, nD4, nD4, nC4
	dc.b nC4, nB3, nF3, sHold, $0C, nF3, nG3, nG3
	dc.b nA3, nA3, nF3, nE3, sHold, $0C, nE3, nB3
	dc.b nB3, nE4, nE4, nE3, nE3, nA3, nA4, nA3
	dc.b nA3, nA4, nA3, nA3, nA4, sHold, $0C, nA4
	dc.b nG4, nE4, nD4, nC4, nA3, nBb3, sHold, $0C
	dc.b nBb3, nD4, nD4, nF4, nF4, nD4, nBb4, sHold
	dc.b $0C, nBb4, nF4, nF4, nD4, nD4, nBb3, nA3
	dc.b sHold, $0C, nA3, nC4, nC4, nE4, nE4, nC4
	dc.b nA4, sHold, $0C, nA4, nE4, nE4, nC4, nC4
	dc.b nA3, nBb3, sHold, $0C, nBb3, nD4, nD4, nF4
	dc.b nF4, nD4, nBb4, sHold, $0C, nBb4, nF4, nF4
	dc.b nD4, nD4, nBb3, nEb4, sHold, $0C, nEb4, nBb4
	dc.b nBb4, nEb5, nEb5, nEb4, nAb3, sHold, $0C, nAb3
	dc.b nEb4, nEb4, nAb4, nAb4, nAb3, nF3, sHold, $0C
	dc.b nF3, nC4, nC4, nF4, nF4, nC4, nF3, nD4
	dc.b $24, nE4, $3C, nRst, $0C, nE5, nD5, nB4
	dc.b nD5, nB4, nA4, nG4
	sJump		WO1_Jump7

WO1_FM3:
	sPatFM		$07
	saVolFM		$FC
	dc.b nRst, $60, nRst, $60, nRst, $60
	sPan		spRight, $00
	dc.b nRst, $3C, nE5, $0C
	sPan		spLeft, $00
	dc.b nRst, nE5, nRst, $60, nRst, $60, nRst, $60
	sPan		spRight, $00
	dc.b nRst, $3C, nE5, $0C
	sPan		spLeft, $00
	dc.b nRst, nE5
	saVolFM		$04

WO1_Loop7:
WO1_Jump6:
	sPatFM		$02
	sPan		spLeft, $00
	dc.b nA4, $0C, nE5, nA5, nCs6, nE6, nCs6, nA5
	dc.b nG4, sHold, $0C, nD5, nG5, nB5, nD6, nB5
	dc.b nG5, nD5, nF4, nC5, nF5, nA5, nC6, nA5
	dc.b nF5, nF6, nF5, nC6, nA5, nC5, nF5, nA5
	dc.b nF5, nC5, nD4, nA4, nD5, nF5, nA5, nC6
	dc.b nA5, nE4, nE4, nB4, nE5, nG5, nB5, nG5
	dc.b nE5, nG4, nG4, nD5, nG5, nB5, nD6, nB5
	dc.b nG5, nA4, nA4, nE5, nA5, nCs6, nE6, nCs6
	dc.b nA5, nE5
	sLoop		$00, $02, WO1_Loop7
	sPatFM		$04
	dc.b nA6, $0C, nF6, nB6, nF6, nC7, nF6, nD7
	dc.b nB6, sHold, $0C, nG6, nC7, nG6, nD7, nG6
	dc.b nE7, nB6, sHold, $0C, nG6, nC7, nG6, nD7
	dc.b nG6, nG7, nA7, sHold, $0C, nG7, nE7, nD7
	dc.b nE7, nD7, nC7, nA6, sHold, $0C, nF6, nB6
	dc.b nF6, nC7, nF6, nD7, nB6, sHold, $0C, nG6
	dc.b nC7, nG6, nD7, nG6, nE7, $18, nA5, $0C
	dc.b nD6, nE6, nD6, nA6, nD6, nE6, nA6, nE5
	dc.b $08, nA5, nB5, nE6, nA5, nB5, nE6, nA6
	dc.b nE6, nA6
	sPatFM		$06
	dc.b nB5, $04, nF5, nA5, nD6, nA5, nD6, nF6
	dc.b nD6, nF6, nA6, nF6, nA6, nD7, nF7, nD7
	dc.b nA6, nD7, nA6, nF6, nA6, nF6, nD6, nF6
	dc.b nD6, nA5, nA5, nD6, nF6, nD6, nF6, nA6
	dc.b nF6, nA6, nD7, nA6, nD7, nF7, nA7, nF7
	dc.b nD7, nF7, nD7, nA6, nD7, nA6, nF6, nA6
	dc.b nF6, nD6, nG5, nC6, nE6, nC6, nE6, nG6
	dc.b nE6, nG6, nC7, nG6, nC7, nE7, nG7, nE7
	dc.b nC7, nE7, nC7, nG6, nC7, nG6, nE6, nG6
	dc.b nE6, nC6, nG5, nC6, nE6, nC6, nE6, nG6
	dc.b nE6, nG6, nC7, nG6, nC7, nE7, nG7, nE7
	dc.b nC7, nE7, nC7, nG6, nC7, nG6, nE6, nG6
	dc.b nE6, nC6, nF5, nA5, nD6, nA5, nD6, nF6
	dc.b nD6, nF6, nA6, nF6, nA6, nD7, nF7, nD7
	dc.b nA6, nD7, nA6, nF6, nA6, nF6, nD6, nF6
	dc.b nD6, nA5, nA5, nD6, nF6, nD6, nF6, nA6
	dc.b nF6, nA6, nD7, nA6, nD7, nF7, nA7, nF7
	dc.b nD7, nF7, nD7, nA6, nD7, nA6, nF6, nA6
	dc.b nF6, nD6, nG5, nBb5, nD6, nBb5, nD6, nG6
	dc.b nD6, nG6, nBb6, nG6, nBb6, nD7, nG7, nD7
	dc.b nBb6, nD7, nBb6, nG6, nBb6, nG6, nD6, nG6
	dc.b nD6, nBb5, nG5, nC6, nEb6, nC6, nEb6, nG6
	dc.b nEb6, nG6, nC7, nG6, nC7, nEb7, nG7, nEb7
	dc.b nC7, nEb7, nC7, nG6, nC7, nG6, nEb6, nG6
	dc.b nEb6, nC6, nG5, nC6, nE6, nC6, nE6, nG6
	dc.b nE6, nG6, nC7, nG6, nC7, nE7, nG7, nE7
	dc.b nC7, nE7, nC7, nG6, nC7, nG6, nE6, nG6
	dc.b nE6, nC6, nG5, nC6, nE6, nG5, nC6, nE6
	dc.b nC6, nE6, nG6, nG6, nC7, nG6, nD5, nFs5
	dc.b nA5, nFs5, nA5, nD6, nA5, nD6, nFs6, nD6
	dc.b nFs6, nA6, nFs6, nA6, nD7, nD6, nFs6, nA6
	dc.b nFs6, nA6, nD7, nA6, nD7, nFs7, nA7, nFs7
	dc.b nD7, nA7, nFs7, nD7, nFs7, nD7, nA6, nD7
	dc.b nA6, nFs6, nA6, nFs6, nD6
	sJump		WO1_Jump6

WO1_FM4:
	sPatFM		$01
	saDetune	$F5
	saTranspose	$0C

WO1_Loop5:
	dc.b nA3, $0C, nD4, nE4, nA3, nA4, nA3, nE4
	dc.b nG4, sHold, $0C, nA4, nG4, nE4, nD4, nE4
	dc.b nD4, nG3, nA3, nD4, nE4, nA3, nA4, nA3
	dc.b nE4, nG4, sHold, $0C, nA4, nG4, nE4, nD4
	dc.b nE4, nD4, nG3
	sLoop		$00, $02, WO1_Loop5
	saDetune	$00
	saTranspose	$F4

WO1_Loop6:
WO1_Jump5:
	sModEnv		ModEnv_01
	ssModZ80	$04, $01, $02, $04
	sPatFM		$03
	sPan		spRight, $00
	dc.b nB5, $54, nG5, $0C, sHold, $60, nF5, $60
	dc.b sHold, $60, nF5, $54, nG5, $0C, sHold, $54
	dc.b nB5, $0C, sHold, $54, nCs6, $0C, sHold, $60
	sLoop		$00, $02, WO1_Loop6
	dc.b nC6, $24, nC6, $24, nC7, $06, nRst, $06
	dc.b nB5, $0C, sHold, $24, nG6, $24, nB6, $06
	dc.b nRst, $06, nD6, $0C, sHold, $24, nB5, $24
	dc.b nD6, $06, nRst, $06, nC7, $0C, sHold, $24
	dc.b nE6, $24, nC6, $06, nRst, $06, nE6, $0C
	dc.b sHold, $24, nC6, $24, nE6, $0C, nD6, $0C
	dc.b sHold, $24, nB5, $24, nD6, $0C, nRst, $0C
	dc.b nRst, $0C, nE6, $06, nRst, $1E, nE6, $06
	dc.b nRst, $1E, nA6, $0C, nRst, $54, nA5, $0C
	dc.b sHold, $3C, nA5, $0C, nRst, $0C, nA5, $0C
	dc.b sHold, $3C, nA5, $0C, nRst, $0C, nE6, $0C
	dc.b sHold, $3C, nE5, $0C, nRst, $0C, nE6, $0C
	dc.b sHold, $3C, nE5, $0C, nRst, $0C, nA5, $0C
	dc.b sHold, $3C, nA5, $0C, nRst, $0C, nD6, $0C
	dc.b sHold, $3C, nA5, $0C, nRst, $0C, nG6, $0C
	dc.b sHold, $3C, nG6, $0C, nRst, $0C, nG6, $0C
	dc.b sHold, $3C, nEb6, $12, nRst, $06, nG6, $0C
	dc.b sHold, $54, nRst, $0C, nE6, $24, nA6, $3C
	dc.b sHold, $48, nRst, $18
	sJump		WO1_Jump5

WO1_PSG1:
	dc.b nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b nRst, $60, nRst, $60, nRst, $60, nRst, $60
WO1_Loop4:
WO1_Jump3:
	dc.b nCs6, $54, nD6, $0C, sHold, $60, nA5, $60
	dc.b sHold, $60, nA5, $54, nD6, $0C, sHold, $54
	dc.b nD6, $0C, sHold, $54, nA5, $0C, sHold, $60
	sLoop		$00, $02, WO1_Loop4
	dc.b nA5, $24, nE6, $24, nE6, $06, nRst, $06
	dc.b nD6, $0C, sHold, $24, nD6, $24, nD6, $06
	dc.b nRst, $06, nB5, $0C, sHold, $24, nG6, $24
	dc.b nD6, $06, nRst, $06, nA6, $0C, sHold, $24
	dc.b nA6, $24, nE6, $06, nRst, $06, nC6, $0C
	dc.b sHold, $24, nE6, $24, nC7, $06, nRst, $06
	dc.b nB5, $0C, sHold, $24, nD6, $24, nG6, $06
	dc.b nRst, $12, nRst, $0C, nD6, $06, nRst, $1E
	dc.b nD6, $06, nRst, $1E, nE6, $0C, nRst, $54
	dc.b nF6, $0C, sHold, $3C, nF6, $0C, nRst, $0C
	dc.b nF6, $0C, sHold, $3C, nA5, $0C, nRst, $0C
	dc.b nC6, $0C, sHold, $3C, nE6, $0C, nRst, $0C
	dc.b nC6, $0C, sHold, $3C, nE6, $0C, nRst, $0C
	dc.b nD6, $0C, sHold, $3C, nD6, $0C, nRst, $0C
	dc.b nD6, $0C, sHold, $3C, nF6, $0C, nRst, $0C
	dc.b nD6, $0C, sHold, $3C, nBb5, $0C, nRst, $0C
	dc.b nEb6, $0C, sHold, $3C, nC6, $0C, nRst, $0C
	dc.b nC6, $0C, sHold, $54, nRst, $0C, nC6, $24
	dc.b nFs6, $3C, sHold, $48, nRst, $18
	sJump		WO1_Jump3

WO1_PSG2:
	dc.b nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b nRst, $60, nRst, $60, nRst, $60, nRst, $60
WO1_Loop3:
WO1_Jump2:
	dc.b nE6, $54, nB5, $0C, sHold, $60, nC6, $60
	dc.b sHold, $60, nC6, $54, nB5, $0C, sHold, $54
	dc.b nG5, $0C, sHold, $54, nE6, $0C, sHold, $60
	sLoop		$00, $02, WO1_Loop3
	dc.b nE6, $24, nA6, $24, nA6, $06, nRst, nG5
	dc.b $0C, sHold, $24, nB5, $24, nG6, $06, nRst
	dc.b $06, nG5, $0C, sHold, $24, nD6, $24, nG6
	dc.b $06, nRst, $06, nE6, $0C, sHold, $24, nC6
	dc.b $24, nA5, $06, nRst, $06, nA5, $0C, sHold
	dc.b $24, nA6, $24, nA6, $06, nRst, $06, nG5
	dc.b $0C, sHold, $24, nG6, $24, nB6, $06, nRst
	dc.b $12, nRst, $0C, nA6, $06, nRst, $1E, nA6
	dc.b $06, nRst, $1E, nCs6, $0C, nRst, $54, nD6
	dc.b $0C, sHold, $30, nRst, $0C, nD6, $0C, nRst
	dc.b $0C, nD6, $0C, sHold, $30, nRst, $0C, nD6
	dc.b $0C, nRst, $0C, nG5, $0C, sHold, $30, nRst
	dc.b $0C, nC6, $0C, nRst, $0C, nG5, $0C, sHold
	dc.b $30, nRst, $0C, nC6, $0C, nRst, $0C, nF6
	dc.b $0C, sHold, $30, nRst, $0C, nF6, $0C, nRst
	dc.b $0C, nF6, $0C, sHold, $30, nRst, $0C, nD6
	dc.b $0C, nRst, $0C, nBb5, $0C, sHold, $30, nRst
	dc.b $0C, nD6, $0C, nRst, $0C, nC6, $0C, sHold
	dc.b $30, nRst, $0C, nG6, $0C, nRst, $0C, nE6
	dc.b $0C, sHold, $54, nRst, $0C, nG6, $24, nD6
	dc.b $3C, sHold, $48, nRst, $18
	sJump		WO1_Jump2

WO1_PSG3:
WO1_Loop1:
	sNoisePSG	$E7
	saDetune	$FF
	sCall		WO1_Call1
	sCall		WO1_Call2
	sLoop		$00, $02, WO1_Loop1
	sNoisePSG	$E7
	sCall		WO1_Call1
	sCall		WO1_Call2

WO1_Loop2:
WO1_Jump1:
	sCall		WO1_Call1
	sCall		WO1_Call2
	sLoop		$00, $04, WO1_Loop2
	sCall		WO1_Call1
	dc.b nAb5, $06, nRst, nAb5, nRst, nAb5, nRst, nAb5
	dc.b nRst, nAb5, $06, nRst, nAb5, nRst, nAb5, nRst
	dc.b nAb5, nRst, nAb5, $06, nRst, nAb5, nRst, nAb5
	dc.b nRst, nAb5, nRst, nAb5, $06, nRst, nAb5, nRst
	dc.b nAb5, $08, nAb5, $06
	sNoisePSG	$00
	saVolPSG	$02
	saTranspose	$D0
	sVolEnvPSG	VolEnv_03
	dc.b nB5, $04, nF5, nA5, nD6, nA5, nD6, nF6
	dc.b nD6, nF6, nA6, nF6, nA6, nD7, nF7, nD7
	dc.b nA6, nD7, nA6, nF6, nA6, nF6, nD6, nF6
	dc.b nD6, nA5, nA5, nD6, nF6, nD6, nF6, nA6
	dc.b nF6, nA6, nD7, nA6, nD7, nF7, nA7, nF7
	dc.b nD7, nF7, nD7, nA6, nD7, nA6, nF6, nA6
	dc.b nF6, nD6, nG5, nC6, nE6, nC6, nE6, nG6
	dc.b nE6, nG6, nC7, nG6, nC7, nE7, nG7, nE7
	dc.b nC7, nE7, nC7, nG6, nC7, nG6, nE6, nG6
	dc.b nE6, nC6, nG5, nC6, nE6, nC6, nE6, nG6
	dc.b nE6, nG6, nC7, nG6, nC7, nE7, nG7, nE7
	dc.b nC7, nE7, nC7, nG6, nC7, nG6, nE6, nG6
	dc.b nE6, nC6, nF5, nA5, nD6, nA5, nD6, nF6
	dc.b nD6, nF6, nA6, nF6, nA6, nD7, nF7, nD7
	dc.b nA6, nD7, nA6, nF6, nA6, nF6, nD6, nF6
	dc.b nD6, nA5, nA5, nD6, nF6, nD6, nF6, nA6
	dc.b nF6, nA6, nD7, nA6, nD7, nF7, nA7, nF7
	dc.b nD7, nF7, nD7, nA6, nD7, nA6, nF6, nA6
	dc.b nF6, nD6, nG5, nBb5, nD6, nBb5, nD6, nG6
	dc.b nD6, nG6, nBb6, nG6, nBb6, nD7, nG7, nD7
	dc.b nBb6, nD7, nBb6, nG6, nBb6, nG6, nD6, nG6
	dc.b nD6, nBb5, nG5, nC6, nEb6, nC6, nEb6, nG6
	dc.b nEb6, nG6, nC7, nG6, nC7, nEb7, nG7, nEb7
	dc.b nC7, nEb7, nC7, nG6, nC7, nG6, nEb6, nG6
	dc.b nEb6, nC6, nG5, nC6, nE6, nC6, nE6, nG6
	dc.b nE6, nG6, nC7, nG6, nC7, nE7, nG7, nE7
	dc.b nC7, nE7, nC7, nG6, nC7, nG6, nE6, nG6
	dc.b nE6, nC6, nG5, nC6, nE6, nG5, nC6, nE6
	dc.b nC6, nE6, nG6, nG6, nC7, nG6, nD5, nFs5
	dc.b nA5, nFs5, nA5, nD6, nA5, nD6, nFs6, nD6
	dc.b nFs6, nA6, nFs6, nA6, nD7, nD6, nFs6, nA6
	dc.b nFs6, nA6, nD7, nA6, nD7, nFs7, nA7, nFs7
	dc.b nD7, nA7, nFs7, nD7, nFs7, nD7, nA6, nD7
	dc.b nA6, nFs6, nA6, $06
	saTranspose	$30
	saVolPSG	$FE
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02
	sCall		WO1_Call1
	sCall		WO1_Call2
	sJump		WO1_Jump1

WO1_Call2:
	dc.b nAb5, $06, nRst, nAb5, nRst, nAb5, nRst, nAb5
	dc.b nRst, nAb5, $06, nRst, nAb5, nRst, nAb5, nRst
	dc.b nAb5, nRst, nAb5, $06, nRst, nAb5, nRst, nAb5
	dc.b nRst, nAb5, nRst, nAb5, $06, nRst
	sVolEnvPSG	VolEnv_03
	dc.b nAb5, $0C
	sVolEnvPSG	VolEnv_02
	dc.b nAb5, $06, nRst
	sVolEnvPSG	VolEnv_03
	dc.b nAb5, $0C
	sVolEnvPSG	VolEnv_02
	sRet	

WO1_Call1:
	dc.b nAb5, $06, nRst, nAb5, nRst, nAb5, nRst, nAb5
	dc.b nRst, nAb5, $06, nRst, nAb5, nRst, nAb5, nRst
	dc.b nAb5, nRst, nAb5, $06, nRst, nAb5, nRst, nAb5
	dc.b nRst, nAb5, nRst, nAb5, $06, nRst, nAb5, nRst
	dc.b nAb5, nRst
	sVolEnvPSG	VolEnv_03
	dc.b nAb5, $0C
	sVolEnvPSG	VolEnv_02
	sRet	

WO1_DAC:
	sCall		WO1_Call6
	sCall		WO1_Call7
	sCall		WO1_Call6
	sCall		WO1_Call7

WO1_Jump9:
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call8
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call6
	sCall		WO1_Call9
	sCall		WO1_Call10
	sCall		WO1_Call10
	sCall		WO1_Call11
	sCall		WO1_Call12
	sCall		WO1_Call13
	sJump		WO1_Jump9

WO1_Call7:
	dc.b dKick, $0C, dKick, dSnare, nRst, $0C, dKick, nRst
	dc.b $0C, dSnare, dKick, nRst, $0C, dKick, dSnare, nRst
	dc.b $0C, dKick, dLowTom, dSnare, dHighTom
	sRet	

WO1_Call6:
	dc.b dKick, $0C, dKick, dSnare, nRst, $0C, dKick, nRst
	dc.b $0C, dSnare, dKick, nRst, $0C, dKick, dSnare, nRst
	dc.b $0C, dKick, nRst, $0C, dSnare, nRst, $0C
	sRet	

WO1_Call9:
	dc.b dKick, $0C, dLowTom, dKick, dKick, dLowTom, dKick, dKick
	dc.b dHighTom, nRst, dLowTom, $06, dLowTom, dLowTom, $0C, dLowTom
	dc.b dMidTom, dMidTom, dHighTom, dSnare
	sRet	

WO1_Call12:
	dc.b nRst, $0C, dKick, dSnare, nRst, $0C, dLowTom, $06
	dc.b dLowTom, dMidTom, $0C, dSnare, dKick, nRst, $0C, dKick
	dc.b dSnare, nRst, $0C, dKick, dLowTom, dSnare, dKick
	sRet	

WO1_Call13:
	dc.b nRst, $0C, dKick, dSnare, nRst, $0C, dLowTom, $06
	dc.b dLowTom, dMidTom, $0C, dSnare, dHighTom, dKick, dSnare, dSnare
	dc.b dHighTom, nRst, $0C, nRst, $0C, dKick, $0C, dSnare
	dc.b nRst, $0C, dLowTom, $06, dLowTom, dLowTom, $0C, dLowTom
	dc.b dMidTom, dMidTom, dHighTom, dHighTom
	sRet	

WO1_Call8:
	dc.b dKick, $0C, dKick, dSnare, nRst, $0C, dKick, nRst
	dc.b $0C, dSnare, dKick, nRst, $0C, dKick, dSnare, nRst
	dc.b $0C, dSnare, dLowTom, dMidTom, dHighTom
	sRet	

WO1_Call10:
	dc.b nRst, $0C, dKick, dSnare, nRst, $0C, dKick, nRst
	dc.b $0C, dSnare, dKick, nRst, $0C, dKick, dSnare, nRst
	dc.b $0C, dKick, nRst, $0C, dSnare, dKick
	sRet	

WO1_Call11:
	dc.b nRst, $0C, dKick, dSnare, nRst, $0C, dKick, nRst
	dc.b $0C, dSnare, dKick, nRst, $0C, dKick, dSnare, nRst
	dc.b $0C, dKick, dLowTom, dSnare, dKick
	sRet	

WO1_Patches:
	; Patch $00
	; $3D
	; $01, $62, $03, $21,	$30, $1F, $13, $26
	; $08, $08, $08, $03,	$05, $00, $03, $00
	; $0F, $1B, $1B, $1B,	$1A, $81, $85, $89
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $06, $02
	spMultiple	$01, $03, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $13, $1F, $06
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $03
	spSustainRt	$05, $03, $00, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0B, $0B, $0B
	spTotalLv	$1A, $05, $01, $09

	; Patch $01
	; $03
	; $09, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $10, $02, $0D, $0D,	$04, $00, $00, $00
	; $CF, $FF, $FF, $FF,	$25, $19, $19, $81
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$09, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $0D, $02, $0D
	spSustainRt	$04, $00, $00, $00
	spSustainLv	$0C, $0F, $0F, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$25, $19, $19, $01

	; Patch $02
	; $0C
	; $41, $00, $20, $00,	$1F, $1F, $1F, $1F
	; $0F, $0D, $0C, $0D,	$10, $09, $00, $09
	; $4F, $5F, $AF, $8F,	$1B, $80, $1D, $80
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$04, $02, $00, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0C, $0D, $0D
	spSustainRt	$10, $00, $09, $09
	spSustainLv	$04, $0A, $05, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $1D, $00, $00

	; Patch $03
	; $3A
	; $34, $72, $51, $73,	$1F, $5F, $1F, $5F
	; $10, $10, $10, $00,	$08, $00, $00, $00
	; $1A, $18, $18, $09,	$17, $22, $19, $83
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $05, $07, $07
	spMultiple	$04, $01, $02, $03
	spRateScale	$00, $00, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $10, $00
	spSustainRt	$08, $00, $00, $00
	spSustainLv	$01, $01, $01, $00
	spReleaseRt	$0A, $08, $08, $09
	spTotalLv	$17, $19, $22, $03

	; Patch $04
	; $2C
	; $41, $00, $22, $00,	$1F, $1F, $1F, $1F
	; $0D, $0C, $0C, $0C,	$10, $09, $00, $09
	; $4F, $5F, $AF, $8F,	$13, $84, $15, $84
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$04, $02, $00, $00
	spMultiple	$01, $02, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0D, $0C, $0C, $0C
	spSustainRt	$10, $00, $09, $09
	spSustainLv	$04, $0A, $05, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$13, $15, $04, $04

	; Patch $05
	; $3C
	; $01, $62, $01, $22,	$17, $1F, $1F, $1F
	; $08, $08, $08, $09,	$05, $00, $03, $00
	; $0F, $1B, $1B, $1B,	$18, $80, $08, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $06, $02
	spMultiple	$01, $01, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $09
	spSustainRt	$05, $03, $00, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0B, $0B, $0B
	spTotalLv	$18, $08, $00, $00

	; Patch $06
	; $4D
	; $42, $00, $21, $00,	$17, $1D, $1D, $1D
	; $05, $0E, $08, $0C,	$10, $03, $00, $03
	; $4F, $5F, $AF, $8F,	$21, $8F, $84, $8F
	spAlgorithm	$05
	spFeedback	$01
	spDetune	$04, $02, $00, $00
	spMultiple	$02, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $1D, $1D, $1D
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $08, $0E, $0C
	spSustainRt	$10, $00, $03, $03
	spSustainLv	$04, $0A, $05, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $04, $0F, $0F

	; Patch $07
	; $28
	; $05, $14, $32, $70,	$1F, $1F, $1F, $1F
	; $0E, $0E, $0C, $0A,	$00, $00, $00, $00
	; $4F, $4F, $AF, $AB,	$1D, $1B, $18, $82
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$00, $03, $01, $07
	spMultiple	$05, $02, $04, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $0C, $0E, $0A
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$04, $0A, $04, $0A
	spReleaseRt	$0F, $0F, $0F, $0B
	spTotalLv	$1D, $18, $1B, $02
