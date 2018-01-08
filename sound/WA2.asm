Port_Header:
	sHeaderInit	; Z80 offset is $A09B
	sHeaderPatch	Port_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $10
	sHeaderDAC	Port_DAC
	sHeaderFM	Port_FM2, $01, $19
	sHeaderFM	Port_FM3, $01, $0D
	sHeaderFM	Port_FM4, $F5, $1A
	sHeaderFM	Port_FM5, $F5, $1A
	sHeaderFM	Port_FM6, $01, $1D
	sHeaderPSG	Port_PSG1, $E9, $07, $00, VolEnv_00
	sHeaderPSG	Port_PSG2, $E9, $07, $00, VolEnv_00
	sHeaderPSG	Port_PSG3, $F5, $03, $00, VolEnv_00

Port_PSG1:
	ssModZ80	$0C, $01, $03, $02
	sPan		spCenter, $00
	sJump		Port_Jump3

Port_PSG2:
	ssModZ80	$0C, $01, $03, $02
	sPan		spCenter, $00
	sJump		Port_Jump2

Port_FM4:
	ssModZ80	$0C, $01, $03, $02
	saDetune	$FD
	sPan		spLeft, $00

Port_Jump3:
	sPatFM		$07
	dc.b nG4, $60, sHold, nG4, nG4, nFs4, nG4, $60
	dc.b sHold, nG4, nG4, nA4
	sNoteTimeOut	$0A

Port_Loop3:
	dc.b nG4, $12, nG4, nG4, nG4, nG4, $0C, nG4
	sLoop		$01, $03, Port_Loop3
	dc.b nFs4, $12, nFs4, nFs4, nFs4, nFs4, $0C, nFs4
	sLoop		$00, $04, Port_Loop3
	dc.b nRst, $30
	sPatFM		$09
	sNoteTimeOut	$00

Port_Loop4:
	sCall		Port_Call1
	sCall		Port_Call2
	sCall		Port_Call2
	sCall		Port_Call1
	sLoop		$00, $02, Port_Loop4
	dc.b nG4, $60, nF4, $30, nEb4, nBb4, $30, nA4
	dc.b nCs5, $30, nCs5, $18, nB4, nRst, $0C, nE5
	dc.b $24, nE4, $12, nE4, nE4, $0C, nA4, $30
	dc.b nCs5, nB4, $30, nB4, $12, nB4, nF0, $0C
	dc.b nD5, $18, nD5, nE5, nFs4, nG4, $60, nF4
	dc.b $30, nBb4, nC5, nE5, nD5, $60, nRst
	sJump		Port_Jump3

Port_Call1:
	dc.b nRst, $0C, nD4, $12, nD4, nD4, nF4, nD4
	dc.b $0C
	sRet	

Port_Call2:
	dc.b nRst, $0C, nE4, $12, nD4, nE4, nG4, nE4
	dc.b $0C
	sRet	

Port_FM5:
	ssModZ80	$0C, $01, $03, $02
	saDetune	$FD
	sPan		spRight, $00

Port_Jump2:
	sPatFM		$07
	dc.b nBb4, $60, sHold, nBb4, nBb4, nA4, nBb4, $60
	dc.b sHold, nBb4, nBb4, nD5
	sNoteTimeOut	$0A

Port_Loop1:
	dc.b nBb4, $12, nBb4, nBb4, nBb4, nBb4, $0C, nBb4
	sLoop		$01, $03, Port_Loop1
	dc.b nA4, $12, nA4, nA4, nA4, nA4, $0C, nA4
	sLoop		$00, $04, Port_Loop1
	dc.b nRst, $30
	sNoteTimeOut	$00
	sPatFM		$09

Port_Loop2:
	dc.b nRst, $0C, nF4, $12, nF4, nF4, nBb4, nF4
	dc.b $0C, nRst, $0C, nG4, $12, nG4, nG4, nC5
	dc.b nG4, $0C, nRst, $0C, nA4, $12, nA4, nA4
	dc.b nC5, nA4, $0C, nRst, $0C, nA4, $12, nA4
	dc.b nA4, nA4, nF4, $0C
	sLoop		$00, $02, Port_Loop2
	dc.b nBb4, $60, nA4, $30, nG4, nD5, nC5, nE5
	dc.b nE5, $18, nD5, nRst, $0C, nAb5, $24, nAb4
	dc.b $12, nAb4, nAb4, $0C, nCs5, $30, nFs5, nG5
	dc.b $30, nG4, $12, nG5, nG4, $0C, nFs5, $18
	dc.b nFs5, nG5, nA4, nB4, $60, nBb4, $30, nD5
	dc.b nE5, nG5, nA5, $60, nRst
	sJump		Port_Jump2

Port_PSG3:
	sNoteTimeOut	$01

Port_Jump1:
	dc.b nG6, $03
	saVolPSG	$06
	dc.b nG6
	saVolPSG	$FA
	dc.b nG5
	saVolPSG	$06
	dc.b nG5
	saVolPSG	$FA
	dc.b nG5
	saVolPSG	$06
	dc.b nG5
	saVolPSG	$FA
	dc.b nG6
	saVolPSG	$06
	dc.b nG6
	saVolPSG	$FA
	dc.b nG5
	saVolPSG	$06
	dc.b nG5
	saVolPSG	$FA
	dc.b nG5
	saVolPSG	$06
	dc.b nG5
	saVolPSG	$FA
	dc.b nG6
	saVolPSG	$06
	dc.b nG6
	saVolPSG	$FA
	dc.b nG5
	saVolPSG	$06
	dc.b nG5
	saVolPSG	$FA
	sJump		Port_Jump1

Port_FM2:
	saDetune	$04

Port_Jump4:
	sNoteTimeOut	$00
	sPatFM		$01
	ssModZ80	$10, $01, $07, $05
	dc.b nBb4, $48, nG5, $18, nAb5, $24, nG5, nF5
	dc.b $18, nF5, $24, nG5, nF5, $18, nE5, $24
	dc.b nFs5, nD5, $18, nBb5, $30, nEb6, $12, nD6
	dc.b nC6, $0C, nC6, $18, nBb5, nAb5, $12, nBb5
	dc.b nC6, $0C, nD6, $48, nE6, $18, nFs6, $24
	dc.b nG6, nA6, $18
	sPatFM		$02
	sNoteTimeOut	$04

Port_Loop5:
	sPan		spCenter, $00
	dc.b nG4, $06, nG3
	sPan		spRight, $00
	dc.b nEb5
	sPan		spCenter, $00
	dc.b nEb4
	sPan		spCenter, $00
	dc.b nBb5
	sPan		spRight, $00
	dc.b nBb4, nRst, $0C
	sPan		spCenter, $00
	dc.b nG4, $06
	sPan		spLeft, $00
	dc.b nEb5
	sPan		spCenter, $00
	dc.b nEb4
	sPan		spCenter, $00
	dc.b nBb5
	sPan		spRight, $00
	dc.b nBb4
	sPan		spCenter, $00
	dc.b nG5
	sPan		spLeft, $00
	dc.b nBb4
	sPan		spRight, $00
	dc.b nBb5
	sLoop		$01, $02, Port_Loop5
	sPan		spCenter, $00
	dc.b nG4, $06, nG3
	sPan		spRight, $00
	dc.b nD5
	sPan		spCenter, $00
	dc.b nD4
	sPan		spCenter, $00
	dc.b nBb5
	sPan		spRight, $00
	dc.b nBb4, nRst, $0C
	sPan		spCenter, $00
	dc.b nG4, $06
	sPan		spLeft, $00
	dc.b nD5
	sPan		spCenter, $00
	dc.b nD4
	sPan		spCenter, $00
	dc.b nBb5
	sPan		spRight, $00
	dc.b nBb4
	sPan		spCenter, $00
	dc.b nG5
	sPan		spLeft, $00
	dc.b nBb4
	sPan		spRight, $00
	dc.b nBb5
	sPan		spCenter, $00
	dc.b nFs4, $06, nFs3
	sPan		spRight, $00
	dc.b nD5
	sPan		spCenter, $00
	dc.b nD4
	sPan		spCenter, $00
	dc.b nA5
	sPan		spRight, $00
	dc.b nA4, nRst, $0C
	sPan		spCenter, $00
	dc.b nFs4, $06
	sPan		spLeft, $00
	dc.b nD5
	sPan		spCenter, $00
	dc.b nD4
	sPan		spCenter, $00
	dc.b nA5
	sPan		spRight, $00
	dc.b nA4
	sPan		spLeft, $00
	dc.b nFs5
	sPan		spCenter, $00
	dc.b nA5
	sPan		spRight, $00
	dc.b nD6
	sLoop		$00, $04, Port_Loop5
	sPan		spCenter, $00
	sNoteTimeOut	$5C
	sPatFM		$08
	dc.b nRst, $30, nBb4, $30, nD5, nC5, nG4, nA4
	dc.b nE5, nF5, $60, nD5, $30, nBb4, nC5, nE5
	dc.b nA5, nC6, nD6, $60, nEb6, $12, nD6, nC6
	dc.b nBb5, nC6, $0C, nG5, nRst, $0C, nF5, $12
	dc.b nG5, nA5, nD5, nC6, $0C, nBb5, $12, nA5
	dc.b nG5, $0C, nA5, $12, nG5, nF5, $0C, nE5
	dc.b $30, nE6, $18, nD6, nCs6, $30, nCs5, $10
	dc.b nD5, nE5, nA5, $18, nA5, nAb5, nFs5, nE5
	dc.b $30, nE5, $10, nFs5, nG5, nFs5, $18, nFs5
	dc.b nG5, nA5, nD5, $48, nC6, $18, nBb5, $12
	dc.b nA5, nBb5, $0C, nA5, $10, nG5, nF5, nG5
	dc.b $30, nE5, $10, nF5, nG5, nFs5, $60, nRst
	sJump		Port_Jump4
	; Unused
	dc.b $C4, $02, $E7, $B8, $E7, $C3, $E7, $B7
	dc.b $E7, $C2, $E7, $B6, $E7, $C1, $E7, $B5
	dc.b $E7, $C0, $E7, $B4, $E7, $F9

Port_FM6:
	saDetune	$FB
	dc.b nRst, $0B
	sJump		Port_Jump4

Port_FM3:
	ssModZ80	$0C, $01, $03, $02
	sPatFM		$06

Port_Jump5:
	dc.b nEb2, $60, sHold, nEb2, nD2, sHold, nD2, nEb2
	dc.b $06, nEb2, $0C, nEb2, $06, nEb2, $48, sHold
	dc.b nEb2, $60, nD2, nD2, $0C, nD2, nD2, nD2
	dc.b nD3, $06, nRst, nD2, nD3, nD2, nD2, nD3
	dc.b nD3
Port_Loop6:
	dc.b nEb2, $0C, nEb3, nEb2, nEb3, nEb2, nEb3, $06
	dc.b nEb2, nEb3, $0C, nRst, nEb2, $0C, nEb3, nEb2
	dc.b nEb3, nEb2, nEb3, $06, nEb2, nEb3, nEb2, nEb3
	dc.b nEb3
	saTranspose	$FF
	sLoop		$01, $02, Port_Loop6
	saTranspose	$02
	sLoop		$00, $04, Port_Loop6
	dc.b nRst, $30

Port_Loop7:
	dc.b nBb1, $0C, nBb2, nBb1, nBb2, $06, nBb1, $0C
	dc.b nBb2, nBb2, $06, nBb1, $0C, nBb2, $06, nBb2
	dc.b nC2, $0C, nC3, nC2, nC3, $06, nC2, $0C
	dc.b nC3, nC3, $06, nC2, $0C, nC3, $06, nC3
	dc.b nA1, $0C, nA2, nA1, nA2, $06, nA1, $0C
	dc.b nA2, nA2, $06, nA1, $0C, nA2, $06, nA2
	dc.b nD2, $0C, nD3, nD2, nD3, $06, nD2, $0C
	dc.b nD3, nD3, $06, nD2, nD3, nC2, nC3
	sLoop		$00, $02, Port_Loop7
	dc.b nEb2, $60, nD2, $30, nC2, nG1, nF1, nA1
	dc.b nA1, $0C, nA2, nG1, nG2, nCs2, $0C, nCs3
	dc.b nCs2, nCs3, $06, nCs2, $0C, nCs2, $06, nCs3
	dc.b $0C, nCs2, nCs3, $06, nCs3, nFs1, $0C, nFs2
	dc.b nFs1, nFs2, $06, nFs1, $0C, nFs1, $06, nFs2
	dc.b $0C, nFs1, nFs2, $06, nFs2, nE1, $0C, nE2
	dc.b nE1, nE2, $06, nE1, $0C, nE2, $06, nE3
	dc.b $0C, nE2, nE3, $06, nE3, nD2, $0C, nD3
	dc.b nD2, nD3, $06, nD2, $0C, nD2, $06, nD3
	dc.b $0C, nD2, nD3, $06, nD3, nG1, $0C, nG2
	dc.b nG1, nG2, $06, nG1, $0C, nG1, $06, nG2
	dc.b $0C, nG1, nG2, $06, nG2, nBb1, $0C, nBb2
	dc.b nBb1, nBb2, $06, nBb1, $0C, nBb1, $06, nBb2
	dc.b $0C, nBb1, nBb2, $06, nBb2, nC2, $0C, nC3
	dc.b nC2, nC3, $06, nC2, $0C, nC2, $06, nC3
	dc.b $0C, nC2, nC3, $06, nC3, nD2, $0C, nD3
	dc.b nD2, nD3, $06, nD2, $0C, nD2, $06, nD3
	dc.b $0C, nD2, nD3, $06, nD3, nRst, $60
	sJump		Port_Jump5

Port_DAC:
Port_Loop8:
Port_Jump6:
	sCall		Port_Call3
	sLoop		$00, $07, Port_Loop8
	sCall		Port_Call4
	dc.b dSnare, $06
	dc.b dSnare, dSnare, dSnare
	dc.b dSnare
	dc.b dSnare, dSnare, dSnare
	sCall		Port_Call5
	sCall		Port_Call7
	sCall		Port_Call5
	sCall		Port_Call6
	dc.b dMuffledSnare, $06
	dc.b dMuffledSnare, dMuffledSnare, dMuffledSnare
	sCall		Port_Call5
	sCall		Port_Call7
	sCall		Port_Call5
	sCall		Port_Call6
	dc.b dMuffledSnare, $06
	dc.b nRst, dMuffledSnare, dMuffledSnare
	sCall		Port_Call5
	sCall		Port_Call7
	sCall		Port_Call5
	sCall		Port_Call6
	dc.b dMuffledSnare, $06
	dc.b nRst, dMuffledSnare, dMuffledSnare
	sCall		Port_Call5
	sCall		Port_Call7
	sCall		Port_Call5
	sCall		Port_Call7
	dc.b dMuffledSnare, $06
	dc.b dMuffledSnare, $06
	dc.b dMuffledSnare, $06
	dc.b dMuffledSnare, $06, dMuffledSnare, $06, dMuffledSnare, dMuffledSnare, dMuffledSnare
	sCall		Port_Call8
	sCall		Port_Call9
	sCall		Port_Call8
	sCall		Port_Call10
	dc.b dMuffledSnare, $06, dMuffledSnare
	sCall		Port_Call8
	sCall		Port_Call9
	sCall		Port_Call8
	sCall		Port_Call4
	sPan		spCenter, $00
	dc.b dKick, $06
	dc.b dMuffledSnare, $0C
	dc.b dKick, $06
	dc.b dMuffledSnare, $0C, dMuffledSnare, $06, dMuffledSnare
	sCall		Port_Call11
	sPan		spCenter, $00
	dc.b dKick, $0C
	dc.b dMuffledSnare
	dc.b dHighMetalHit, $06
	dc.b dKick
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	dc.b dMuffledSnare, $0C
	sPan		spLeft, $00
	dc.b dHighMetalHit, $06
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	sCall		Port_Call11
	dc.b dMuffledSnare, $0C
	dc.b dKick, $06
	dc.b dHighMetalHit
	dc.b dMuffledSnare, $0C
	sPan		spLeft, $00
	dc.b dHighMetalHit, $06
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dMuffledSnare
	dc.b dMuffledSnare, dMuffledSnare, dMuffledSnare
	dc.b dMuffledSnare
	dc.b dMuffledSnare, dMuffledSnare, dMuffledSnare
	sCall		Port_Call5
	sCall		Port_Call7
	sCall		Port_Call5
	sCall		Port_Call7
	sCall		Port_Call5
	sCall		Port_Call7
	sCall		Port_Call5
	sCall		Port_Call7
	dc.b dMuffledSnare
	dc.b dMuffledSnare, dMuffledSnare, dMuffledSnare
	dc.b dMuffledSnare
	dc.b dMuffledSnare, dMuffledSnare, dMuffledSnare
	dc.b dMuffledSnare, $04
	dc.b dMuffledSnare, dMuffledSnare
	dc.b dMuffledSnare
	dc.b dMuffledSnare, dMuffledSnare
	dc.b dMuffledSnare, $0C, dMuffledSnare, $06, dMuffledSnare
	sJump		Port_Jump6

Port_Call4:
	dc.b dKick, $06
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	dc.b dSnare, $0C
	sPan		spLeft, $00
	dc.b dHighMetalHit, $06
	sPan		spCenter, $00
	dc.b dKick
	sRet	

Port_Call3:
	sCall		Port_Call4
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	dc.b dSnare
	dc.b dKick
	dc.b dSnare, $0C
	dc.b dKick, $06
	dc.b dSnare
	sRet	

Port_Call6:
	sCall		Port_Call4
	dc.b dHighMetalHit
	dc.b dKick
	dc.b dSnare
	dc.b dKick
	sRet	

Port_Call5:
	sCall		Port_Call6
	dc.b dMuffledSnare, $0C
	dc.b dKick, $06
	dc.b dKick, $06
	sRet	

Port_Call7:
	sCall		Port_Call6
	dc.b dMuffledSnare, $0C
	dc.b dKick, $06
	dc.b dSnare
	sRet	

Port_Call8:
	dc.b dKick, $06
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	dc.b dSnare, $0C
	dc.b dKick, $06
	dc.b dKick
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick, $06, nRst
	dc.b dMuffledSnare, $0C
	dc.b dKick, $06
	dc.b dHighMetalHit
	sRet	

Port_Call9:
	sCall		Port_Call10
	dc.b dKick, $06
	dc.b dHighMetalHit
	sRet	

Port_Call10:
	dc.b dKick, $06
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	dc.b dSnare, $0C
	dc.b dKick, $06
	dc.b dKick
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	dc.b dMuffledSnare, $0C
	sRet	

Port_Call11:
	dc.b dMuffledSnare, $0C
	sPan		spLeft, $00
	dc.b dHighMetalHit, $06
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick, nRst
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dKick
	sPan		spLeft, $00
	dc.b dHighMetalHit
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	dc.b dMuffledSnare, $0C
	sPan		spLeft, $00
	dc.b dHighMetalHit, $06
	sPan		spRight, $00
	dc.b dHighMetalHit
	sPan		spCenter, $00
	sRet	

Port_Patches:
	; Patch $00
	; $3E
	; $31, $70, $40, $00,	$1E, $1E, $5E, $1E
	; $18, $11, $17, $11,	$00, $0F, $00, $0F
	; $AF, $4F, $0F, $4F,	$0C, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$03, $04, $07, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $01, $00, $00
	spAttackRt	$1E, $1E, $1E, $1E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$18, $17, $11, $11
	spSustainRt	$00, $00, $0F, $0F
	spSustainLv	$0A, $00, $04, $04
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0C, $00, $00, $00

	; Patch $01
	; $32
	; $31, $75, $34, $71,	$0E, $5F, $10, $10
	; $04, $08, $05, $05,	$02, $00, $02, $00
	; $62, $33, $60, $A3,	$11, $1B, $1D, $80
	spAlgorithm	$02
	spFeedback	$06
	spDetune	$03, $03, $07, $07
	spMultiple	$01, $04, $05, $01
	spRateScale	$00, $00, $01, $00
	spAttackRt	$0E, $10, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $05, $08, $05
	spSustainRt	$02, $02, $00, $00
	spSustainLv	$06, $06, $03, $0A
	spReleaseRt	$02, $00, $03, $03
	spTotalLv	$11, $1D, $1B, $00

	; Patch $02
	; $14
	; $35, $72, $77, $32,	$1E, $1E, $1E, $1E
	; $01, $06, $01, $06,	$00, $05, $00, $05
	; $55, $47, $25, $45,	$15, $80, $13, $80
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$03, $07, $07, $03
	spMultiple	$05, $07, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1E, $1E, $1E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$01, $01, $06, $06
	spSustainRt	$00, $00, $05, $05
	spSustainLv	$05, $02, $04, $04
	spReleaseRt	$05, $05, $07, $05
	spTotalLv	$15, $13, $00, $00

	; Patch $03
	; $3C
	; $05, $06, $00, $00,	$1F, $1F, $1F, $1F
	; $01, $11, $15, $14,	$00, $0B, $00, $10
	; $1A, $EF, $FF, $EF,	$05, $80, $00, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$05, $00, $06, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$01, $15, $11, $14
	spSustainRt	$00, $00, $0B, $10
	spSustainLv	$01, $0F, $0E, $0E
	spReleaseRt	$0A, $0F, $0F, $0F
	spTotalLv	$05, $00, $00, $00

	; Patch $04
	; $34
	; $48, $39, $3C, $40,	$1F, $1F, $1F, $1F
	; $1C, $1B, $1F, $12,	$10, $12, $1E, $0B
	; $1F, $15, $1F, $14,	$00, $8A, $00, $8A
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$04, $03, $03, $04
	spMultiple	$08, $0C, $09, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1C, $1F, $1B, $12
	spSustainRt	$10, $1E, $12, $0B
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $05, $04
	spTotalLv	$00, $00, $0A, $0A

	; Patch $05
	; $3C
	; $34, $45, $21, $50,	$1F, $1F, $1F, $1F
	; $02, $02, $16, $1B,	$00, $10, $10, $15
	; $0F, $0F, $1F, $0F,	$05, $80, $00, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $02, $04, $05
	spMultiple	$04, $01, $05, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$02, $16, $02, $1B
	spSustainRt	$00, $10, $10, $15
	spSustainLv	$00, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$05, $00, $00, $00

	; Patch $06
	; $3D
	; $22, $62, $31, $21,	$1F, $1F, $1F, $1F
	; $1F, $19, $10, $10,	$0C, $0C, $0D, $0D
	; $09, $19, $19, $19,	$14, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$02, $03, $06, $02
	spMultiple	$02, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $10, $19, $10
	spSustainRt	$0C, $0D, $0C, $0D
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$09, $09, $09, $09
	spTotalLv	$14, $00, $00, $00

	; Patch $07
	; $2C
	; $22, $52, $23, $53,	$1F, $1F, $15, $15
	; $05, $06, $03, $01,	$03, $01, $01, $01
	; $72, $17, $77, $17,	$0F, $80, $07, $80
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$02, $02, $05, $05
	spMultiple	$02, $03, $02, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1F, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $03, $06, $01
	spSustainRt	$03, $01, $01, $01
	spSustainLv	$07, $07, $01, $01
	spReleaseRt	$02, $07, $07, $07
	spTotalLv	$0F, $07, $00, $00

	; Patch $08
	; $36
	; $33, $43, $01, $51,	$1F, $12, $12, $12
	; $08, $0A, $07, $09,	$00, $00, $00, $00
	; $03, $07, $07, $07,	$02, $85, $80, $80
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$03, $00, $04, $05
	spMultiple	$03, $01, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $12, $12, $12
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $07, $0A, $09
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$03, $07, $07, $07
	spTotalLv	$02, $00, $05, $00

	; Patch $09
	; $3D
	; $38, $56, $36, $5A,	$14, $19, $14, $14
	; $07, $0A, $05, $05,	$05, $0A, $05, $05
	; $25, $27, $57, $57,	$1C, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$03, $03, $05, $05
	spMultiple	$08, $06, $06, $0A
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $14, $19, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $05, $0A, $05
	spSustainRt	$05, $05, $0A, $05
	spSustainLv	$02, $05, $02, $05
	spReleaseRt	$05, $07, $07, $07
	spTotalLv	$1C, $00, $00, $00
