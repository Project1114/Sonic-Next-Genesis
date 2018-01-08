RT1_Header:
	sHeaderInit	; Z80 offset is $A2C8
	sHeaderPatch	RT1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $44
	sHeaderDAC	RT1_DAC
	sHeaderFM	RT1_FM1, $00, $09
	sHeaderFM	RT1_FM2, $00, $15
	sHeaderFM	RT1_FM3, $00, $17
	sHeaderFM	RT1_FM4, $F4, $17
	sHeaderFM	RT1_FM5, $00, $13
	sHeaderPSG	RT1_PSG1, $F4, $02, $00, VolEnv_03
	sHeaderPSG	RT1_PSG2, $F4, $02, $00, VolEnv_03
	sHeaderPSG	RT1_PSG3, $2C, $04, $00, VolEnv_02

RT1_FM1:
	sPatFM		$00
	ssModZ80	$0C, $01, $EC, $00
	dc.b nE1, $18, nRst, nRst, nRst
	ssModZ80	$00, $00, $00, $00
	dc.b nRst, $60, nRst
	saVolFM		$FC
	dc.b nRst, $30, nRst, $0C, nRst, $06
	ssModZ80	$03, $01, $06, $00
	dc.b nE1, $1E
	ssModZ80	$00, $00, $00, $00
	saVolFM		$04

RT1_Loop20:
RT1_Jump8:
	sCall		RT1_Call17
	sCall		RT1_Call17
	saTranspose	$01
	sCall		RT1_Call17
	sCall		RT1_Call17
	saTranspose	$FF
	sLoop		$00, $03, RT1_Loop20
	sCall		RT1_Call18
	dc.b nE1, $06, $1E, $0C, $12, nE2, $06, nRst
	dc.b nRst, nRst, nE2
	sCall		RT1_Call18
	dc.b nE2, $12, nEb2, nD2, nCs2
	saTranspose	$08
	sCall		RT1_Call17
	saTranspose	$FA
	sCall		RT1_Call17
	saTranspose	$06
	sCall		RT1_Call17
	saTranspose	$F8
	dc.b nFs1, $24, $0C, $12, nFs2, $06, nRst, $18
	dc.b nC2, $06, nC2, nRst, nRst, nRst, nRst, nD2
	dc.b nD2, nRst, $18
	ssModZ80	$08, $01, $EC, $00
	dc.b nD1
	ssModZ80	$00, $00, $00, $00
	sJump		RT1_Jump8

RT1_Call17:
	dc.b nE1, $24, $0C, $12, nE2, $06, nRst, $18
	dc.b nE1, $06, $1E, $0C, $12, nE2, $06, nRst
	dc.b nRst, nRst, nE2
	sRet	

RT1_Call18:
	dc.b nA1, $24, $0C, $12, nA2, $06, nRst, $18
	dc.b nC2, $06, $1E, $0C, $12, nC3, $06, nRst
	dc.b nRst, nRst, nC2, nD2, $24, $0C, $12, nD3
	dc.b $06, nRst, $18
	sRet	

RT1_FM2:
	saTranspose	$F4

RT1_Loop18:
	sPatFM		$02
	ssModZ80	$03, $01, $03, $05
	sPan		spLeft, $00
	saVolFM		$05
	sCall		RT1_Call14
	sPan		spRight, $00
	saVolFM		$05
	sCall		RT1_Call14
	sPan		spLeft, $00
	saVolFM		$03
	sCall		RT1_Call14
	sPan		spRight, $00
	saVolFM		$03
	sCall		RT1_Call14
	saTranspose	$D0
	saVolFM		$F0
	sLoop		$00, $02, RT1_Loop18
	ssModZ80	$00, $00, $00, $00
	sPan		spCenter, $00
	saTranspose	$0C
	saVolFM		$02

RT1_Jump7:
	sPatFM		$05
	sPan		spLeft, $00
	sCall		RT1_Call5
	saTranspose	$01
	sPan		spRight, $00
	sCall		RT1_Call5
	saTranspose	$FF
	sPan		spCenter, $00
	saTranspose	$0C
	saVolFM		$FC

RT1_Loop19:
	sPatFM		$02
	ssModZ80	$05, $01, $05, $04
	sCall		RT1_Call11
	dc.b nD4, $12, nE4, nB3, $0C, sHold, $60
	saTranspose	$01
	sCall		RT1_Call11
	saTranspose	$FF
	dc.b nEb4, $12, nF4, nF4, $0C, sHold, $60
	ssModZ80	$00, $00, $00, $00
	sLoop		$00, $02, RT1_Loop19
	saTranspose	$F4
	saVolFM		$FD
	saTranspose	$0C
	ssModZ80	$0F, $01, $06, $06
	sCall		RT1_Call15
	dc.b nAb3, $12, nG3, nFs3, nF3
	ssModZ80	$00, $00, $00, $00
	saTranspose	$F4
	saVolFM		$07
	sPatFM		$01
	sCall		RT1_Call16
	dc.b nBb3, $06, nBb3, nRst
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nBb3, $03, nRst, nBb3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nBb3, $06, nBb3, nRst
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nBb3, $03, nRst, nBb3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $18
	sCall		RT1_Call16
	dc.b nG3, $06, nG3, nRst
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nG3, $03, nRst, nG3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nA3, $06, nA3, nRst
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nA3, $03, nRst, nA3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $18
	sJump		RT1_Jump7

RT1_Call11:
	dc.b nD4, $12, nCs4, nB3, $0C, nD4, $12, nCs4
	dc.b nB3, $0C, nD4, $12, nE4, nB3, $30, nRst
	dc.b $06, nD4, $06, sHold, $0C, $0C, nCs4, nB3
	sRet	

RT1_Call16:
	dc.b nRst, $60, nRst, $54, nG3, $06, nA3
	ssModZ80	$1E, $01, $0A, $08
	dc.b nBb3, $60
	ssModZ80	$00, $00, $00, $00
	sRet	

RT1_Call15:
	dc.b nRst, $18
	sPatFM		$04
	dc.b nE3, $30, nA3, $18, nG3, $48, nC3, $0C
	dc.b nD3, nG3, nFs3, nE3, nD3, $30, nF3, $0C
	dc.b sHold, $0C, nE3, $0C, nD3, nE3, $3C, nRst
	dc.b $18, nE3, $30, nA3, $18, nG3, $48, nA3
	dc.b $0C, nB3, nC4, $12, nA3, $4E
	sRet	

RT1_Call14:
	dc.b nRst, $06, nA2, nB2, nRst, nD3, nRst, nB2
	dc.b nRst
	saTranspose	$0C
	sRet	

RT1_FM3:
	dc.b nRst, $60, nRst, nRst, nRst
RT1_Jump6:
	sPatFM		$05
	ssModZ80	$03, $01, $04, $04
	sPan		spRight, $00
	sCall		RT1_Call2
	saTranspose	$01
	sPan		spLeft, $00
	dc.b nRst, $06, nE3, $12, $0C, $0C, nD3, $18
	dc.b $12, nE3, $06, nRst, $06, nE3, $12, $0C
	dc.b $0C, nG3, $18, $12, nE3, $06
	ssModZ80	$00, $00, $00, $00
	saTranspose	$FF
	sPan		spCenter, $00
	sPatFM		$01
	ssModZ80	$1E, $01, $05, $06
	dc.b nC4, $60
	ssModZ80	$00, $00, $00, $00
	dc.b nEb4, $0A, nRst, $02
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nEb4, $0A, nRst, $02
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nD4, $0A, nRst, $02
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nD4, $0A, nRst, $02
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $0C, nC4, $03, nRst, $03, nBb3, $03
	dc.b nRst, $03, nC4, $03, nRst, $03, nC4, $12
	sPatFM		$02
	saTranspose	$0C
	ssModZ80	$05, $01, $05, $04
	sPan		spLeft, $00
	dc.b nRst, $03
	saVolFM		$06
	sCall		RT1_Call11
	dc.b nD4, $12, nE4, nB3, $0C, sHold, $15
	saVolFM		$F9
	sPan		spCenter, $00
	saTranspose	$F4
	ssModZ80	$00, $00, $00, $00
	sPatFM		$01
	dc.b nB3, $06, nRst, $02
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nB3, $04
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nFs3, $06, nRst, $02
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nFs3, $04
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nA3, $12, nB3, $06
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nRst, nB3
	saVolFM		$05
	sPan		spRight, $00
	dc.b nRst, nB3
	saVolFM		$F1
	sPan		spCenter, $00
	sPatFM		$02
	saTranspose	$0C
	ssModZ80	$05, $01, $04, $04
	sPan		spLeft, $00
	dc.b nRst, $03
	saVolFM		$07
	saTranspose	$01
	sCall		RT1_Call11
	saTranspose	$FF
	dc.b nEb4, $12, nF4, nF4, $09
	sPan		spCenter, $00
	saTranspose	$F4
	ssModZ80	$00, $00, $00, $00
	sPatFM		$01
	saVolFM		$FA
	dc.b nEb4, $0A, nRst, $02
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nEb4, $0A, nRst, $02
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nD4, $0A, nRst, $02
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nD4, $0A, nRst, $02
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $0C, nC4, $03, nRst, $03, nBb3, $03
	dc.b nRst, $03, nC4, $03, nRst, $03, nC4, $12
	saVolFM		$FC
	sPatFM		$02
	saTranspose	$0C
	ssModZ80	$05, $01, $05, $04
	sPan		spLeft, $00
	sCall		RT1_Call12
	dc.b nA3, $12, nB3, nE3, $0C, sHold, $18
	saTranspose	$F4
	ssModZ80	$00, $00, $00, $00
	saVolFM		$04
	sPan		spCenter, $00
	sPatFM		$01
	dc.b nB3, $06, nRst, $02
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nB3, $04
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nFs3, $06, nRst, $02
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nFs3, $04
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nA3, $12, nB3, $06
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nRst, nB3
	saVolFM		$05
	sPan		spRight, $00
	dc.b nRst, nB3
	saVolFM		$F1
	sPan		spCenter, $00
	saVolFM		$FC
	sPatFM		$02
	saTranspose	$0C
	ssModZ80	$05, $01, $05, $04
	sPan		spRight, $00
	saTranspose	$01
	sCall		RT1_Call12
	saTranspose	$FF
	dc.b nBb3, $12, nC4, nC4, $0C
	saTranspose	$F4
	ssModZ80	$00, $00, $00, $00
	saVolFM		$04
	sPan		spCenter, $00
	sPatFM		$01
	dc.b nEb4, $0A, nRst, $02
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nEb4, $0A, nRst, $02
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nD4, $0A, nRst, $02
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nD4, $0A, nRst, $02
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $0C, nC4, $06, nBb3, nC4, nC4, $12
	saVolFM		$FC
	dc.b nC4, $0C
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nC4
	saVolFM		$05
	sPan		spRight, $00
	dc.b nC4
	saVolFM		$F1
	sPan		spCenter, $00
	sPatFM		$06
	sPan		spRight, $00
	dc.b nE6, $06
	saVolFM		$0A
	dc.b nE6
	saVolFM		$05
	dc.b nE6
	saVolFM		$F1
	sPan		spLeft, $00
	dc.b nE6, $06
	saVolFM		$0A
	dc.b nE6
	saVolFM		$05
	dc.b nE6
	saVolFM		$F1
	sPan		spCenter, $00
	dc.b nE5
	saVolFM		$0A
	dc.b nE5
	saVolFM		$F6
	dc.b nE5
	saVolFM		$0A
	dc.b nE5
	saVolFM		$F6
	saTranspose	$02

RT1_Loop17:
	sCall		RT1_Call8
	sLoop		$00, $06, RT1_Loop17
	saTranspose	$FE
	sPatFM		$04
	dc.b nAb3, $12, nG3, nFs3, nF3
	saVolFM		$04
	sPatFM		$01
	sCall		RT1_Call13
	dc.b nFs3, $06, nFs3, nRst
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nFs3, $03, nRst, nFs3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nE3, nE3, nRst
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nE3, $03, nRst, nE3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $18
	sCall		RT1_Call13
	dc.b nE3, $06, nE3, nRst
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nE3, $03, nRst, nE3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nFs3, nFs3, nRst
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nFs3, $03, nRst, nFs3, nRst, nRst, $06
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $18
	sJump		RT1_Jump6

RT1_Call12:
	dc.b nB3, $12, nA3, nAb3, $0C, nB3, $12, nA3
	dc.b nAb3, $0C, nA3, $12, nB3, nE3, $30, nRst
	dc.b $06, nB3, $06, sHold, $0C, $0C, nA3, nAb3
	sRet	

RT1_Call13:
	dc.b nRst, $60, nRst, $54, nE3, $06, nF3
	ssModZ80	$1E, $01, $0A, $08
	dc.b nFs3, $60
	ssModZ80	$00, $00, $00, $00
	sRet	

RT1_FM4:
	sPatFM		$03
	sCall		RT1_Call9
	saVolFM		$FE

RT1_Loop15:
RT1_Jump5:
	sCall		RT1_Call9
	saTranspose	$01
	sCall		RT1_Call9
	saTranspose	$FF
	sLoop		$01, $03, RT1_Loop15
	sCall		RT1_Call10
	dc.b nRst, $06, nAb2, nB2, nRst, nD3, nRst, nB2
	dc.b nRst, nD3, $0C, nB2, $06, nD3, $0C, nB2
	dc.b $06, nD3, nE3
	sCall		RT1_Call10
	dc.b nAb2, $06, nB2, nB2, nG2, nBb2, nBb2, nFs2
	dc.b nA2, nA2, nF2, nAb2, nAb2
	saTranspose	$0C

RT1_Loop16:
	dc.b nRst, $06, nD2, nE2, nRst, nA2, nRst, nE2
	dc.b nRst, nA2, $0C, nE2, $06, nA2, $0C, nE2
	dc.b $06, nA2, nBb2
	sLoop		$00, $07, RT1_Loop16
	dc.b nRst, $06, nD2, nE2, nRst, nA2, nRst, nD2
	dc.b nD2
	saTranspose	$F4
	dc.b nRst, $18, $06, nC3, nEb3, nE3
	sJump		RT1_Jump5

RT1_Call9:
RT1_Loop14:
	dc.b nRst, $06, nA2, nB2, nRst, nD3, nRst, nB2
	dc.b nRst, nD3, $0C, nB2, $06, nD3, $0C, nB2
	dc.b $06, nD3, nE3
	sLoop		$00, $04, RT1_Loop14
	sRet	

RT1_Call10:
	dc.b nRst, $06, nG2, nA2, nRst, nC3, nRst, nA2
	dc.b nRst, nC3, $0C, nA2, $06, nC3, $0C, nA2
	dc.b $06, nC3, nD3, nRst, $06, nG2, nA2, nRst
	dc.b nC3, nRst, nA2, nRst, nC3, $0C, nA2, $06
	dc.b nC3, $0C, nA2, $06, nC3, nD3, nRst, $06
	dc.b nFs2, nA2, nRst, nC3, nRst, nA2, nRst, nC3
	dc.b $0C, nA2, $06, nC3, $0C, nA2, $06, nC3
	dc.b nD3
	sRet	

RT1_FM5:
RT1_Loop9:
	sPatFM		$06
	sCall		RT1_Call7
	sLoop		$00, $04, RT1_Loop9

RT1_Loop10:
RT1_Jump4:
	sPatFM		$06
	sCall		RT1_Call7
	sLoop		$00, $04, RT1_Loop10
	saTranspose	$01
	sCall		RT1_Call7
	sCall		RT1_Call7
	saTranspose	$FF
	saVolFM		$04
	sPatFM		$01
	ssModZ80	$1E, $01, $05, $06
	dc.b nF3, $60
	ssModZ80	$00, $00, $00, $00
	dc.b nC4, $0C
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nC4
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nBb3
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nBb3
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $0C, nF3, $03, nRst, $03, nEb3, $03
	dc.b nRst, $03, nF3, $03, nRst, $03, nF3, $12
	saVolFM		$FC

RT1_Loop11:
	sPatFM		$06
	sCall		RT1_Call7
	sLoop		$00, $03, RT1_Loop11
	sPatFM		$01
	saVolFM		$04
	dc.b nRst, $18, nE3, $06, nRst, $02
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nE3, $04
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nB2, $06, nRst, $02
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nB2, $04
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nD3, $12, nE3, $06, nRst
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nE3, nRst
	saVolFM		$05
	sPan		spRight, $00
	dc.b nE3
	saVolFM		$F1
	sPan		spCenter, $00
	saVolFM		$FC
	saTranspose	$01
	sPatFM		$06
	sCall		RT1_Call7
	sCall		RT1_Call7
	sCall		RT1_Call7
	sPatFM		$01
	saVolFM		$04
	saTranspose	$FF
	dc.b nC4, $0C
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nC4
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nBb3
	saVolFM		$0A
	sPan		spRight, $00
	dc.b nBb3
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nRst, $0C, nF3, $06, nEb3, nF3, nF3, $12
	saVolFM		$FC
	sLoop		$01, $02, RT1_Loop11
	dc.b nE3, $0C
	saVolFM		$0A
	sPan		spLeft, $00
	dc.b nE3
	saVolFM		$05
	sPan		spRight, $00
	dc.b nE3
	saVolFM		$F1
	sPan		spCenter, $00
	sPatFM		$06
	sPan		spRight, $00
	dc.b nD6, $06
	saVolFM		$0A
	dc.b nD6
	saVolFM		$05
	dc.b nD6
	saVolFM		$F1
	sPan		spLeft, $00
	dc.b nD6, $06
	saVolFM		$0A
	dc.b nD6
	saVolFM		$05
	dc.b nD6
	saVolFM		$F1
	sPan		spCenter, $00
	dc.b nD6
	saVolFM		$0A
	dc.b nD6
	saVolFM		$F6
	dc.b nD6
	saVolFM		$0A
	dc.b nD6
	saVolFM		$F6

RT1_Loop12:
	sCall		RT1_Call8
	sLoop		$00, $06, RT1_Loop12
	sPan		spRight, $00
	dc.b nE6, $06
	saVolFM		$0A
	dc.b nE6
	saVolFM		$05
	dc.b nE6
	saVolFM		$F1
	sPan		spLeft, $00
	dc.b nEb6, $06
	saVolFM		$0A
	dc.b nEb6
	saVolFM		$05
	dc.b nEb6
	saVolFM		$F1
	sPan		spRight, $00
	dc.b nD6, $06
	saVolFM		$0A
	dc.b nD6
	saVolFM		$05
	dc.b nD6
	saVolFM		$F1
	sPan		spLeft, $00
	dc.b nCs6, $06
	saVolFM		$0A
	dc.b nCs6
	saVolFM		$05
	dc.b nCs6
	saVolFM		$F1
	sPan		spCenter, $00

RT1_Loop13:
	sPan		spLeft, $00
	dc.b nD6, $06, nE6, nA5, nBb5
	saVolFM		$0A
	dc.b nA5, nBb5
	saVolFM		$F6
	sPan		spRight, $00
	dc.b nD6, nE6, nA5, nBb5, nRst
	saVolFM		$0A
	dc.b nA5, nBb5
	saVolFM		$F6
	dc.b nRst, nRst, nRst
	sLoop		$00, $07, RT1_Loop13
	sPan		spLeft, $00
	dc.b nD6, $06, nE6, nA5, nBb5
	saVolFM		$0A
	dc.b nA5, nBb5
	saVolFM		$F6
	dc.b nRst, nRst
	sPan		spCenter, $00
	dc.b nRst, $30
	sJump		RT1_Jump4

RT1_Call7:
	sPan		spLeft, $00
	dc.b nE6, $06
	saVolFM		$0A
	dc.b nE6
	saVolFM		$F6
	sPan		spRight, $00
	dc.b nB5
	saVolFM		$0A
	dc.b nB5
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nD6
	saVolFM		$0A
	dc.b nD6
	saVolFM		$F6
	dc.b nRst, nRst
	sPan		spLeft, $00
	dc.b nE6
	sPan		spRight, $00
	dc.b nB5
	saVolFM		$0A
	dc.b nB5
	saVolFM		$F6
	sPan		spCenter, $00
	dc.b nD6
	saVolFM		$0A
	dc.b nD6
	saVolFM		$F6
	dc.b nRst, nRst, nA5
	sRet	

RT1_Call8:
	sPan		spLeft, $00
	dc.b nD6, $06
	saVolFM		$0A
	dc.b nD6
	saVolFM		$05
	dc.b nD6
	saVolFM		$F1
	sPan		spRight, $00
	dc.b nD6, $06
	saVolFM		$0A
	dc.b nD6
	saVolFM		$05
	dc.b nD6
	saVolFM		$F1
	sPan		spLeft, $00
	dc.b nD6, $06
	saVolFM		$0A
	dc.b nD6
	saVolFM		$05
	dc.b nD6
	saVolFM		$F1
	sPan		spRight, $00
	dc.b nD6, $06
	saVolFM		$0A
	dc.b nD6
	saVolFM		$05
	dc.b nD6
	saVolFM		$F1
	sPan		spCenter, $00
	dc.b nD6
	saVolFM		$0A
	dc.b nD6
	saVolFM		$F6
	dc.b nD6
	saVolFM		$0A
	dc.b nD6
	saVolFM		$F6
	sRet	

RT1_PSG1:
	ssModZ80	$01, $01, $02, $03
	dc.b nRst, $60, nRst, nRst, nRst

RT1_Loop8:
RT1_Jump3:
	sCall		RT1_Call5
	saTranspose	$01
	sCall		RT1_Call5
	saTranspose	$FF
	sLoop		$01, $03, RT1_Loop8
	sCall		RT1_Call3
	sCall		RT1_Call3
	saTranspose	$FE
	sCall		RT1_Call3
	saTranspose	$02
	sCall		RT1_Call3
	sCall		RT1_Call3
	sCall		RT1_Call3
	saTranspose	$FE
	sCall		RT1_Call3
	saTranspose	$02
	dc.b nB2, $12, nBb2, nA2, nAb2
	sCall		RT1_Call6
	dc.b nRst, $06, nBb3, $12, $0C, $0C, nCs4, $18
	dc.b $12, nBb3, $06
	sCall		RT1_Call6
	dc.b nG3, $06, nG3, nRst, nRst, nRst, nRst, nA3
	dc.b nA3, nRst, $30
	sJump		RT1_Jump3

RT1_Call5:
RT1_Loop7:
	dc.b nRst, $06, nB3, $12, $0C, $0C, nA3, $18
	dc.b $12, nB3, $06, nRst, $06, nB3, $12, $0C
	dc.b $0C, nD4, $18, $12, nB3, $06
	sLoop		$00, $02, RT1_Loop7
	sRet	

RT1_Call3:
	dc.b nRst, $06, nE3, $12, $0C, $0C, $18, $12
	dc.b $06
	sRet	

RT1_Call6:
	dc.b nRst, $06, nBb3, $12, $0C, $0C, nG3, $18
	dc.b $12, nBb3, $06, nRst, $06, nBb3, $12, $0C
	dc.b $0C, nC4, $18, $12, nBb3, $06, nRst, $06
	dc.b nBb3, $12, $0C, $0C, nFs3, $18, $12, nBb3
	dc.b $06
	sRet	

RT1_PSG2:
	dc.b nRst, $60, nRst, nRst, nRst
RT1_Loop6:
RT1_Jump2:
	sCall		RT1_Call2
	saTranspose	$01
	sCall		RT1_Call2
	saTranspose	$FF
	sLoop		$01, $03, RT1_Loop6
	saTranspose	$F7
	sCall		RT1_Call3
	sCall		RT1_Call3
	saTranspose	$FF
	sCall		RT1_Call3
	saTranspose	$02
	sCall		RT1_Call3
	saTranspose	$FF
	sCall		RT1_Call3
	sCall		RT1_Call3
	saTranspose	$FF
	sCall		RT1_Call3
	saTranspose	$0A
	dc.b nAb2, $12, nG2, nFs2, nF2
	sCall		RT1_Call4
	dc.b nRst, $06, nEb3, $12, $0C, $0C, nFs3, $18
	dc.b $12, nEb3, $06
	sCall		RT1_Call4
	dc.b nE3, $06, nE3, nRst, nRst, nRst, nRst, nFs3
	dc.b nFs3, nRst, $30
	sJump		RT1_Jump2

RT1_Call2:
RT1_Loop5:
	dc.b nRst, $06, nE3, $12, $0C, $0C, nD3, $18
	dc.b $12, nE3, $06, nRst, $06, nE3, $12, $0C
	dc.b $0C, nG3, $18, $12, nE3, $06
	sLoop		$00, $02, RT1_Loop5
	sRet	

RT1_Call4:
	dc.b nRst, $06, nE3, $12, $0C, $0C, nC3, $18
	dc.b $12, nE3, $06, nRst, $06, nE3, $12, $0C
	dc.b $0C, nG3, $18, $12, nE3, $06, nRst, $06
	dc.b nEb3, $12, $0C, $0C, nCs3, $18, $12, nEb3
	dc.b $06
	sRet	

RT1_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02
	sCall		RT1_Call1
	sCall		RT1_Call1

RT1_Loop2:
RT1_Jump1:
	sCall		RT1_Call1
	sLoop		$01, $0F, RT1_Loop2

RT1_Loop3:
	dc.b nC3, $0C
	sLoop		$00, $08, RT1_Loop3
	dc.b nC3, $0C
	sVolEnvPSG	VolEnv_05
	dc.b $0C
	sVolEnvPSG	VolEnv_02
	dc.b $0C
	sVolEnvPSG	VolEnv_05
	dc.b $0C
	sVolEnvPSG	VolEnv_02
	dc.b $0C
	sVolEnvPSG	VolEnv_05
	dc.b $0C
	sVolEnvPSG	VolEnv_02

RT1_Loop4:
	sCall		RT1_Call1
	sLoop		$01, $03, RT1_Loop4
	dc.b nC3, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b $0C, nC3, $0C, $0C, $0C, $0C, $0C, $0C
	sVolEnvPSG	VolEnv_05
	dc.b $18
	sVolEnvPSG	VolEnv_02
	sJump		RT1_Jump1

RT1_Call1:
RT1_Loop1:
	dc.b nC3, $0C
	sLoop		$00, $0F, RT1_Loop1
	dc.b nC3, $06, $06
	sRet	

RT1_DAC:
	sCall		RT1_Call19
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, $18, dSnare
	dc.b dKick, $06, $12, dSnare, $0C, dKick, dSnare, $0C
	dc.b $0C, $06, $06, $06, $06

RT1_Loop21:
RT1_Jump9:
	sCall		RT1_Call19
	sLoop		$00, $0F, RT1_Loop21
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, $18, dSnare
	dc.b dKick, $12, dSnare, dLowerEchoedClapHit2, dSnare

RT1_Loop22:
	sCall		RT1_Call19
	sLoop		$00, $03, RT1_Loop22
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, $18, dSnare
	dc.b dSnare, $06, dSnare, dLowerEchoedClapHit2, $0C, dKick, dSnare, $06
	dc.b dSnare, nRst, $0C, dKick, dSnare, $18
	sJump		RT1_Jump9

RT1_Call19:
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, $18, dSnare
	dc.b dKick, $06, $12, dSnare, $0C, dKick, dKick, $18
	dc.b dSnare
	sRet	

RT1_Patches:
	; Patch $00
	; $3A
	; $73, $77, $31, $72,	$1F, $95, $1F, $1F
	; $0E, $0F, $05, $0C,	$07, $06, $06, $07
	; $2F, $4F, $1F, $4F,	$20, $11, $27, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $07, $07
	spMultiple	$03, $01, $07, $02
	spRateScale	$00, $00, $02, $00
	spAttackRt	$1F, $1F, $15, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $05, $0F, $0C
	spSustainRt	$07, $06, $06, $07
	spSustainLv	$02, $01, $04, $04
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $27, $11, $00

	; Patch $01
	; $2C
	; $22, $04, $02, $14,	$51, $52, $50, $52
	; $0D, $00, $06, $04,	$03, $05, $02, $00
	; $16, $18, $26, $18,	$0F, $80, $12, $80
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$02, $00, $00, $01
	spMultiple	$02, $02, $04, $04
	spRateScale	$01, $01, $01, $01
	spAttackRt	$11, $10, $12, $12
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0D, $06, $00, $04
	spSustainRt	$03, $02, $05, $00
	spSustainLv	$01, $02, $01, $01
	spReleaseRt	$06, $06, $08, $08
	spTotalLv	$0F, $12, $00, $00

	; Patch $02
	; $2C
	; $70, $72, $33, $33,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1E, $80, $23, $82
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$00, $03, $02, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $23, $00, $02

	; Patch $03
	; $3B
	; $58, $35, $11, $01,	$9F, $9F, $9F, $9F
	; $09, $09, $09, $09,	$08, $05, $03, $07
	; $CF, $CF, $CF, $FF,	$20, $15, $03, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$05, $01, $03, $00
	spMultiple	$08, $01, $05, $01
	spRateScale	$02, $02, $02, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $09, $09, $09
	spSustainRt	$08, $03, $05, $07
	spSustainLv	$0C, $0C, $0C, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $03, $15, $00

	; Patch $04
	; $3C
	; $12, $13, $21, $62,	$3F, $1F, $1F, $1E
	; $0B, $0A, $0A, $02,	$09, $01, $01, $01
	; $2F, $1F, $2F, $1F,	$15, $80, $10, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$01, $02, $01, $06
	spMultiple	$02, $01, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $0A, $0A, $02
	spSustainRt	$09, $01, $01, $01
	spSustainLv	$02, $02, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $10, $00, $00

	; Patch $05
	; $4C
	; $46, $06, $76, $05,	$99, $9F, $99, $9F
	; $0A, $0A, $0A, $0A,	$0F, $0F, $0F, $0F
	; $CF, $CF, $CF, $CF,	$16, $80, $16, $80
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$04, $07, $00, $00
	spMultiple	$06, $06, $06, $05
	spRateScale	$02, $02, $02, $02
	spAttackRt	$19, $19, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $0A, $0A, $0A
	spSustainRt	$0F, $0F, $0F, $0F
	spSustainLv	$0C, $0C, $0C, $0C
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $16, $00, $00

	; Patch $06
	; $34
	; $50, $70, $54, $52,	$5F, $5F, $5F, $5F
	; $0F, $0E, $09, $0F,	$04, $04, $02, $02
	; $0F, $FF, $0F, $FF,	$12, $84, $33, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$05, $05, $07, $05
	spMultiple	$00, $04, $00, $02
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $09, $0E, $0F
	spSustainRt	$04, $02, $04, $02
	spSustainLv	$00, $00, $0F, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$12, $33, $04, $00
