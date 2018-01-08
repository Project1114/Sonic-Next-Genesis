WO2_Header:
	sHeaderInit	; Z80 offset is $9223
	sHeaderPatch	WO2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $3F
	sHeaderDAC	WO2_DAC
	sHeaderFM	WO2_FM1, $F6, $15
	sHeaderFM	WO2_FM2, $EA, $15
	sHeaderFM	WO2_FM3, $F6, $20
	sHeaderFM	WO2_FM4, $F6, $15
	sHeaderFM	WO2_FM5, $F6, $20
	sHeaderPSG	WO2_PSG1, $DE, $06, $00, VolEnv_03
	sHeaderPSG	WO2_PSG2, $DE, $09, $00, VolEnv_03
	sHeaderPSG	WO2_PSG3, $26, $03, $00, VolEnv_00

WO2_FM1:
	ssModZ80	$20, $01, $0B, $05
	ssVol		$16
	sPatFM		$08
	dc.b nG6, $30
	sPatFM		$06
	dc.b nRst, $18, nG6, $04, $04, $04, $04, nRst
	dc.b nG6

WO2_Jump7:
	sPatFM		$02
	ssVol		$16
	ssModZ80	$0B, $01, $C9, $01
	saVolFM		$FB

WO2_Loop22:
	dc.b nA6, $10, nRst, $08
	saVolFM		$0A
	sLoop		$00, $04, WO2_Loop22
	saVolFM		$D8
	saVolFM		$05

WO2_Loop23:
	dc.b nRst, $60
	sLoop		$00, $03, WO2_Loop23
	ssModZ80	$50, $01, $06, $06
	dc.b nE6, $60, sHold, $48, nG6, $18, nFs6, $60
	dc.b sHold, $48, nRst, $08
	saVolFM		$FB
	ssModZ80	$0E, $01, $40, $01
	dc.b nG6, $10
	ssModZ80	$0B, $01, $C9, $01

WO2_Loop24:
	dc.b nA6, $10, nRst, $08
	saVolFM		$0A
	sLoop		$00, $04, WO2_Loop24
	saVolFM		$D8
	saVolFM		$05
	dc.b nRst, $60, nRst, nRst
	ssModZ80	$50, $01, $06, $06
	dc.b nE6, $60, sHold, $48, nG6, $18, nFs6, $60
	dc.b sHold, $60
	ssModZ80	$50, $01, $06, $04
	sPatFM		$05

WO2_Loop25:
	sCall		WO2_Call12
	sLoop		$00, $02, WO2_Loop25
	sPatFM		$00

WO2_Loop26:
	sCall		WO2_Call12
	sLoop		$00, $02, WO2_Loop26

WO2_Loop27:
	sCall		WO2_Call13
	sLoop		$00, $04, WO2_Loop27
	sJump		WO2_Jump7

WO2_Call12:
	ssVol		$16
	dc.b nE6, $24, nD6, $3C, nC6, $24, nD6, $3C
	dc.b nE6, $24, nD6, nB5, $18, nC6, $60
	sRet	

WO2_Call13:
	sPatFM		$07
	dc.b nRst, $08
	saTranspose	$F4
	ssVol		$1D
	dc.b nG4, $02, nA4, nC5, nD5, nE5, nG5, nA5
	dc.b nC6
	saTranspose	$0C
	dc.b nE6, $0C, nRst, $08, nE6, $03, nRst, $31
	dc.b nRst, $08
	saTranspose	$F4
	dc.b nG4, $02, nA4, nC5, nD5, nE5, nG5, nA5
	dc.b nC6
	saTranspose	$0C
	dc.b nF6, $0C, nRst, $08, nF6, $03, nRst, $0D
	dc.b nG6, $03, nRst, $09
	saTranspose	$F4
	dc.b nG6, $02, nF6, nE6, nD6, nC6, nB5, nA5
	dc.b nG5, nF5, nE5, nD5, nC5
	saTranspose	$0C
	sRet	

WO2_FM2:
	ssVol		$16
	sPatFM		$01
	dc.b nE4, $30, nRst, $18, nE4, $04, $04, $04
	dc.b $04, nRst, nE4

WO2_Jump6:
	ssVol		$0C

WO2_Loop20:
	sCall		WO2_Call10
	sLoop		$00, $08, WO2_Loop20

WO2_Loop21:
	sCall		WO2_Call11
	sLoop		$00, $0C, WO2_Loop21
	sJump		WO2_Jump6

WO2_Call10:
	saTranspose	$FD
	ssVol		$0C
	dc.b nC5, $06, nRst, $02, nC5, $04, nRst, $20
	dc.b nBb4, $04, nC5, $06, nRst, $2A, nC5, $06
	dc.b nRst, $02, nC5, $04, nRst, $20, nBb4, $04
	dc.b nC5, $06, nRst
	saVolFM		$FB
	dc.b nEb5, nRst, nF5, $18
	saTranspose	$03
	sRet	

WO2_Call11:
	saTranspose	$FD
	ssVol		$0C
	dc.b nC5, $06, nRst, $02, nC5, $04, nRst, $20
	dc.b nBb4, $04, nC5, $06, nRst, $0E, nEb5, $06
	dc.b nRst, nF5, nRst, nFs5, $04, nF5, $06, nRst
	dc.b $02, nF4, $06, nRst, nF4, nRst
	saVolFM		$F6
	dc.b nF4, $04
	saVolFM		$0A
	dc.b nF5, $06, nRst, $02, nFs5, $04, nG5, $06
	dc.b nRst, $02, nG4, $06, nRst, nG4, $04, nBb4
	dc.b $06, nRst, nB4, nRst
	saTranspose	$03
	sRet	

WO2_FM3:
	ssModZ80	$20, $01, $0B, $05
	ssVol		$16
	sPatFM		$08
	dc.b nD6, $30
	sPatFM		$06
	dc.b nRst, $18, nD6, $04, $04, $04, $04, nRst
	dc.b nD6

WO2_Jump5:
	sPatFM		$02
	ssVol		$16
	saVolFM		$FB
	ssModZ80	$0B, $01, $C9, $01

WO2_Loop14:
	dc.b nE6, $10, nRst, $08
	saVolFM		$0A
	sLoop		$00, $04, WO2_Loop14
	saVolFM		$D8
	saVolFM		$05

WO2_Loop15:
	dc.b nRst, $60
	sLoop		$00, $03, WO2_Loop15
	ssModZ80	$50, $01, $06, $06
	dc.b nC6, $60, sHold, $48, nE6, $18, nD6, $60
	dc.b sHold, $48, nRst, $08
	saVolFM		$FB
	ssModZ80	$0E, $01, $40, $01
	dc.b nD6, $10
	ssModZ80	$0B, $01, $C9, $01

WO2_Loop16:
	dc.b nE6, $10, nRst, $08
	saVolFM		$0A
	sLoop		$00, $04, WO2_Loop16
	saVolFM		$D8
	saVolFM		$05
	dc.b nRst, $60, nRst, nRst
	ssModZ80	$50, $01, $06, $06
	dc.b nC6, $60, sHold, $48, nE6, $18, nD6, $60
	dc.b sHold, $60
	ssModZ80	$50, $01, $06, $04
	sPatFM		$05

WO2_Loop17:
	sCall		WO2_Call8
	sLoop		$00, $02, WO2_Loop17
	sPatFM		$00

WO2_Loop18:
	sCall		WO2_Call8
	sLoop		$00, $02, WO2_Loop18

WO2_Loop19:
	sCall		WO2_Call9
	sLoop		$00, $04, WO2_Loop19
	sJump		WO2_Jump5

WO2_Call8:
	ssVol		$16
	dc.b nC6, $24, nB5, $3C, nA5, $24, nB5, $3C
	dc.b nC6, $24, nB5, nG5, $18, nA5, $60
	sRet	

WO2_Call9:
	sPatFM		$07
	dc.b nRst, $18
	ssVol		$1D
	dc.b nC6, $0C, nRst, $08, nC6, $03, nRst, $31
	dc.b nRst, $18, nD6, $0C, nRst, $08, nD6, $03
	dc.b nRst, $0D, nE6, $03, nRst, $21
	sRet	

WO2_FM4:
	ssModZ80	$20, $01, $0B, $05
	ssVol		$16
	sPatFM		$08
	dc.b nB5, $30
	sPatFM		$06
	dc.b nRst, $18, nB5, $04, $04, $04, $04, nRst
	dc.b nB5

WO2_Jump4:
	ssVol		$16
	sPatFM		$02
	saVolFM		$FB
	ssModZ80	$0B, $01, $C9, $01

WO2_Loop11:
	dc.b nC6, $10, nRst, $08
	saVolFM		$0A
	sLoop		$00, $04, WO2_Loop11
	saVolFM		$D8
	saVolFM		$05

WO2_Loop12:
	dc.b nRst, $60
	sLoop		$00, $03, WO2_Loop12
	ssModZ80	$50, $01, $06, $06
	dc.b nG5, $60, sHold, $48, nC6, $18, nA5, $60
	dc.b sHold, $48, nRst, $08
	saVolFM		$FB
	ssModZ80	$0E, $01, $40, $01
	dc.b nB5, $10
	ssModZ80	$0B, $01, $C9, $01

WO2_Loop13:
	dc.b nC6, $10, nRst, $08
	saVolFM		$0A
	sLoop		$00, $04, WO2_Loop13
	saVolFM		$D8
	saVolFM		$05
	dc.b nRst, $60, nRst, nRst
	ssModZ80	$50, $01, $06, $06
	dc.b nG5, $60, sHold, $48, nC6, $18, nA5, $60
	dc.b sHold, $60
	ssVol		$16
	sPatFM		$03
	sPan		spLeft, $00
	sCall		WO2_Call5
	sCall		WO2_Call5
	sCall		WO2_Call5
	sCall		WO2_Call5
	ssVol		$11
	sCall		WO2_Call6
	sCall		WO2_Call7
	sCall		WO2_Call6
	sCall		WO2_Call7
	sJump		WO2_Jump4

WO2_Call7:
	sPan		spLeft, $00
	sPatFM		$04
	dc.b nA5, $18, nC6, nD6, nRst, $08, nC6, $06
	dc.b nRst, nD6, $04, nEb6, $06, nRst, $02, nE6
	dc.b $04, nEb6, $06, nRst, $02, nE6, $04, nD6
	dc.b $06, nRst, $02, nC6, $06, nRst, nA5, $04
	sPan		spRight, $00
	sPatFM		$03
	sNoteTimeOut	$04
	saVolFM		$05
	dc.b nG5, $04, nA5, nC6
	saVolFM		$FB
	dc.b nA5, nC6, nD6
	saVolFM		$FB
	dc.b nC6, nD6, nE6
	saVolFM		$FB
	dc.b nD6, nE6, nG6
	saVolFM		$0A
	sPan		spCenter, $00
	sNoteTimeOut	$00
	sRet	

WO2_Call6:
	sPan		spLeft, $00
	sPatFM		$04
	dc.b nA5, $18, nC6, nD6, nRst, $08, nC6, $06
	dc.b nRst, nD6, $04, nB5, $06, nRst, nG5, nRst
	dc.b $02, nE5, $06, nRst, nE5, $04, nD5, $06
	dc.b nRst, $02, nE5, $04
	sPan		spRight, $00
	sPatFM		$03
	sNoteTimeOut	$04
	dc.b nRst, $08, nE5, $06, nRst, nD5, $04, nG5
	dc.b nE5, nG5, nB5, nD6, nE6
	sNoteTimeOut	$00
	sPan		spCenter, $00
	sRet	

WO2_Call5:
	dc.b nRst, $04, nD4, $02, nE4, nG4, nA4, nC5
	dc.b nD5, nE5, nG5, nC6, nD6
	ssModZ80	$0C, $01, $C0, $01
	saVolFM		$F8
	dc.b nA6, $0C, nRst
	saVolFM		$08
	dc.b nA6, nRst
	saVolFM		$08
	dc.b nA6, nRst
	ssModZ80	$00, $00, $00, $00
	dc.b nRst, $04
	saVolFM		$F8
	dc.b nD4, $02, nE4, nG4, nA4, nC5, nD5, nE5
	dc.b nG5, nC6, nD6
	saVolFM		$F8
	dc.b nA6, $06, nRst, $02, nA6, $06, nRst
	saVolFM		$08
	dc.b nA6, nRst, nG5, $04, nA5, $06, nRst, nC6
	dc.b nRst, nD6, nRst, $02, nC6, $04, nRst, nD4
	dc.b $02, nE4, nG4, nA4, nC5, nD5, nE5, nG5
	dc.b nC6, nD6
	saVolFM		$FD
	dc.b nC7, $06, nRst, $12, nA6, $06, nRst, $12
	dc.b nE6, $06, nRst, $12, nD6, $06, nRst, $02
	dc.b nC6, $04, nD6, $06, nRst, $02, nC6, $06
	dc.b nRst
	saVolFM		$03
	dc.b nG5, $04, nA5, $06, nRst, $02, nG5, $04
	dc.b nRst
	saVolFM		$FC
	sNoteTimeOut	$03
	dc.b nG4, nA4, nC5, nD5, nE5, nG5, nA5, nC6
	dc.b nD6, nE6, nG6
	saVolFM		$04
	sNoteTimeOut	$00
	sRet	

WO2_FM5:
	ssModZ80	$20, $01, $0B, $05
	ssVol		$16
	sPatFM		$08
	dc.b nAb5, $30
	sPatFM		$06
	dc.b nRst, $18, nAb5, $04, $04, $04, $04, nRst
	dc.b nAb5, nRst, $60

WO2_Loop4:
WO2_Jump3:
	dc.b nRst, $60
	sLoop		$00, $07, WO2_Loop4
	ssVol		$16
	saTranspose	$0C
	sCall		WO2_Call4
	saTranspose	$F4
	ssVol		$16
	saTranspose	$E8
	sPatFM		$03
	sPan		spRight, $00
	sCall		WO2_Call5
	sCall		WO2_Call5
	sCall		WO2_Call5
	sCall		WO2_Call5
	saTranspose	$18
	ssVol		$1B
	dc.b nRst, $0C
	ssModZ80	$01, $01, $01, $08
	ssVol		$21
	sCall		WO2_Call6
	sCall		WO2_Call7
	sCall		WO2_Call6
	sCall		WO2_Call7
	dc.b nRst, $54
	sJump		WO2_Jump3

WO2_Call4:
	ssModZ80	$50, $01, $06, $04
	sPatFM		$06
	saVolFM		$0F
	dc.b nC6, $03

WO2_Loop5:
	dc.b sHold, $03
	saVolFM		$FF
	sLoop		$00, $0F, WO2_Loop5
	saVolFM		$0F
	dc.b nB5, $03

WO2_Loop6:
	dc.b sHold, $03
	saVolFM		$FF
	sLoop		$00, $0F, WO2_Loop6
	saVolFM		$0F
	dc.b nE5, $03

WO2_Loop7:
	dc.b sHold, $03
	saVolFM		$FF
	sLoop		$00, $0F, WO2_Loop7
	dc.b sHold, $30
	saVolFM		$0F
	dc.b nB5, $03

WO2_Loop8:
	dc.b sHold, $03
	saVolFM		$FF
	sLoop		$00, $0F, WO2_Loop8
	saVolFM		$0F
	dc.b nA5, $03

WO2_Loop9:
	dc.b sHold, $03
	saVolFM		$FF
	sLoop		$00, $0F, WO2_Loop9
	saVolFM		$0F
	dc.b nD5, $03

WO2_Loop10:
	dc.b sHold, $03
	saVolFM		$FF
	sLoop		$00, $0F, WO2_Loop10
	dc.b sHold, $18, nD5, $06, nRst, $02, nC5, $04
	dc.b nD5, $06, nRst, $02, nC5, $04, nD5, $06
	dc.b nRst, $02, nC5, $04, nRst, $08, nA4, $06
	dc.b nRst, $46, nRst, $60, nRst, nRst
	sRet	

WO2_PSG2:
	dc.b nRst, $08
WO2_PSG1:
	dc.b nRst, $60
WO2_Loop1:
WO2_Jump2:
	dc.b nRst, $60
	sLoop		$00, $04, WO2_Loop1
	saVolPSG	$01

WO2_Loop2:
	sCall		WO2_Call1
	sCall		WO2_Call1
	sCall		WO2_Call2
	sCall		WO2_Call2
	sLoop		$00, $03, WO2_Loop2
	saVolPSG	$FF
	sCall		WO2_Call3
	sCall		WO2_Call3
	sCall		WO2_Call3
	sCall		WO2_Call3
	saVolPSG	$FF
	sCall		WO2_Call3
	sCall		WO2_Call3
	sCall		WO2_Call3
	sCall		WO2_Call3
	saVolPSG	$01

WO2_Loop3:
	dc.b nRst, $60
	sLoop		$00, $08, WO2_Loop3
	sJump		WO2_Jump2

WO2_Call3:
	dc.b nA4, $04, nC5, nE5, nA5, nC6, nE6, nA6
	dc.b nE6, nC6, nA5, nE5, nC5, nA4, nC5, nE5
	dc.b nA5, nC6, nE6, nA6, nE6, nC6, nA5, nE5
	dc.b nC5, nD5, nF5, nA5, nD6, nF6, nA6, nD7
	dc.b nA6, nF6, nD6, nA5, nF5, nE5, nG5, nB5
	dc.b nE6, nG6, nB6, nE7, nB6, nG6, nE6, nB5
	dc.b nG5
	sRet	

WO2_Call1:
	dc.b nD6, $04, nE6, nD6, nC6, nA5, nC6
	saVolPSG	$FF
	dc.b nD6, nE6, nD6, nC6, nA5, nC6
	saVolPSG	$FF
	dc.b nD6, nE6, nD6, nC6, nA5, nC6
	saVolPSG	$FF
	dc.b nD6, nE6, nD6, nC6, nA5, nC6
	saVolPSG	$03
	sRet	

WO2_Call2:
	dc.b nE6, $04, nFs6, nE6, nC6, nA5, nC6
	saVolPSG	$FF
	dc.b nE6, nFs6, nE6, nC6, nA5, nC6
	saVolPSG	$FF
	dc.b nE6, nFs6, nE6, nC6, nA5, nC6
	saVolPSG	$FF
	dc.b nE6, nFs6, nE6, nC6, nA5, nC6
	saVolPSG	$03
	sRet	

WO2_PSG3:
	dc.b nRst, $60
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02

WO2_Jump1:
	dc.b nRst, $0C, nFs3, $08
	saVolPSG	$02
	dc.b $04
	saVolPSG	$FE
	sJump		WO2_Jump1

WO2_DAC:
	dc.b dMidpitchSnare, $08, dKick, $0C, $04, dMidpitchSnare, $08, dKick
	dc.b $0C, $04
	sPan		spLeft, $00
	dc.b dMetalHit, $0C
	sPan		spRight, $00
	dc.b dKick, $04, dKick, dKick
	sPan		spCenter, $00
	dc.b dMidpitchSnare, dMidpitchSnare, dMidpitchSnare, dMidpitchSnare, $08, $04

WO2_Loop28:
	sCall		WO2_Call14
	sCall		WO2_Call15
	sCall		WO2_Call15
	sCall		WO2_Call16
	sLoop		$00, $04, WO2_Loop28

WO2_Jump8:
	sCall		WO2_Call14
	sCall		WO2_Call15
	sCall		WO2_Call15
	sCall		WO2_Call16
	sJump		WO2_Jump8

WO2_Call15:
	dc.b dKick, $08
	sPan		spLeft, $00
	dc.b dTightSnare, $04
	sPan		spCenter, $00
	dc.b dKick, $0C, dMidpitchSnare, $08, dKick, $04
	sPan		spRight, $00
	dc.b dKick, $08, dKick, $04, $08
	sPan		spCenter, $00
	dc.b dLooseSnare, $04, dKick, $08
	sPan		spRight, $00
	dc.b dKick, $04
	sPan		spCenter, $00
	dc.b dMidpitchSnare, $08, dKick, $04
	sPan		spRight, $00
	dc.b dKick, $08
	sPan		spCenter, $00
	dc.b dKick, $04
	sRet	

WO2_Call16:
	dc.b dKick, $08
	sPan		spLeft, $00
	dc.b dTightSnare, $04
	sPan		spCenter, $00
	dc.b dKick, $0C, dMidpitchSnare, $08, dKick, $04
	sPan		spRight, $00
	dc.b dKick, $08, dKick, $04, $08
	sPan		spCenter, $00
	dc.b dLooseSnare, $04, dKick, $08
	sPan		spRight, $00
	dc.b dKick, $04
	sPan		spCenter, $00
	dc.b dMidpitchSnare, $08, $04, $04, $04, $04
	sRet	

WO2_Call14:
	dc.b dCrashCymbal, $08, dTightSnare, $04, dKick, $0C, dMidpitchSnare, $08
	dc.b dKick, $04, dKick, $08, dKick, $04, $08, dLooseSnare
	dc.b $04, dKick, $08, dKick, $04, dMidpitchSnare, $08, dKick
	dc.b $04, dKick, $08, dKick, $04
	sRet	

WO2_Patches:
	; Patch $00
	; $31
	; $34, $36, $4F, $31,	$1E, $1F, $1F, $1F
	; $0D, $05, $07, $07,	$0C, $01, $09, $09
	; $17, $04, $09, $0A,	$26, $18, $20, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$03, $04, $03, $03
	spMultiple	$04, $0F, $06, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0D, $07, $05, $07
	spSustainRt	$0C, $09, $01, $09
	spSustainLv	$01, $00, $00, $00
	spReleaseRt	$07, $09, $04, $0A
	spTotalLv	$26, $20, $18, $00

	; Patch $01
	; $3B
	; $34, $10, $21, $61,	$1F, $1F, $1F, $1E
	; $02, $0C, $13, $07,	$12, $0A, $05, $04
	; $0F, $3F, $5F, $3F,	$20, $21, $1F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $02, $01, $06
	spMultiple	$04, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$02, $13, $0C, $07
	spSustainRt	$12, $05, $0A, $04
	spSustainLv	$00, $05, $03, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $1F, $21, $00

	; Patch $02
	; $33
	; $42, $51, $31, $61,	$1E, $1F, $1F, $1B
	; $0A, $07, $10, $03,	$09, $06, $05, $04
	; $0F, $3F, $5F, $3F,	$18, $1F, $0F, $80
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$04, $03, $05, $06
	spMultiple	$02, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $10, $07, $03
	spSustainRt	$09, $05, $06, $04
	spSustainLv	$00, $05, $03, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $0F, $1F, $00

	; Patch $03
	; $3D
	; $01, $01, $01, $01,	$8E, $52, $14, $4C
	; $08, $08, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$1B, $80, $80, $9B
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $0E, $08, $03
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $00, $00, $1B

	; Patch $04
	; $30
	; $34, $60, $20, $42,	$5F, $5F, $1F, $5F
	; $0A, $06, $01, $06,	$0B, $02, $02, $05
	; $5F, $0F, $0F, $2F,	$1D, $17, $25, $80
	spAlgorithm	$00
	spFeedback	$06
	spDetune	$03, $02, $06, $04
	spMultiple	$04, $00, $00, $02
	spRateScale	$01, $00, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $01, $06, $06
	spSustainRt	$0B, $02, $02, $05
	spSustainLv	$05, $00, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1D, $25, $17, $00

	; Patch $05
	; $3A
	; $51, $10, $10, $41,	$0F, $10, $0F, $10
	; $08, $0A, $00, $06,	$01, $01, $01, $01
	; $1F, $1F, $1F, $1F,	$1D, $2E, $2D, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$05, $01, $01, $04
	spMultiple	$01, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $10, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $00, $0A, $06
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1D, $2D, $2E, $00

	; Patch $06
	; $3A
	; $01, $05, $00, $01,	$1F, $1F, $1E, $15
	; $04, $05, $04, $03,	$00, $00, $00, $00
	; $0F, $0F, $1F, $0F,	$1B, $47, $1F, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1E, $1F, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $05, $03
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $1F, $47, $00

	; Patch $07
	; $2C
	; $74, $71, $31, $30,	$1F, $1F, $1F, $1F
	; $0C, $03, $0A, $06,	$05, $0A, $04, $06
	; $1F, $0F, $0F, $0F,	$1B, $80, $23, $82
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$04, $01, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0C, $0A, $03, $06
	spSustainRt	$05, $04, $0A, $06
	spSustainLv	$01, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $23, $00, $02

	; Patch $08
	; $3A
	; $01, $05, $00, $01,	$09, $0E, $0F, $07
	; $04, $05, $04, $03,	$00, $00, $00, $00
	; $0F, $0F, $1F, $0F,	$1B, $47, $1F, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$09, $0F, $0E, $07
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $05, $03
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $1F, $47, $00
