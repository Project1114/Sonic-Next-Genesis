Title_Header:
	sHeaderInit	; Z80 offset is $8000
	sHeaderPatch	Title_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $02
	sHeaderDAC	Title_DAC
	sHeaderFM	Title_FM1, $F4, $10
	sHeaderFM	Title_FM2, $F4, $15
	sHeaderFM	Title_FM3, $E8, $10
	sHeaderFM	Title_FM4, $DC, $0C
	sHeaderFM	Title_FM5, $E8, $10
	sHeaderPSG	Title_PSG1, $E8, $08, $00, VolEnv_00
	sHeaderPSG	Title_PSG2, $E8, $08, $00, VolEnv_00
	sHeaderPSG	Title_PSG3, $00, $08, $00, VolEnv_00

Title_FM1:
	dc.b $02
Title_Loop5:
	sPatFM		$00
	dc.b nA4, $08, nE4, nA4, nB4, nA4, nB4, nC5
	dc.b nB4, nC5, nB4, nA4, nB4
	sLoop		$00, $07, Title_Loop5
	dc.b nA4, $08, nE4, nA4, nB4, nA4, nB4, nA4
	dc.b nAb4, nA4, nB4, nC5, nD5

Title_Jump5:
	sPatFM		$00
	sCall		Title_Call2
	dc.b nE5, $08, nEb5, nE5, nD4, nEb4, nE4, nF4
	dc.b nAb4, nA4, nB4, nC5, nEb5
	sCall		Title_Call2
	dc.b nE5, $08, nB4, nAb4, nF5, nB4, nAb4, nAb5
	dc.b nD5, nB4, nA5, nD5, nB4
	sPatFM		$00
	sCall		Title_Call3
	dc.b nB5, $08, nA5, nB5, nA5, nB5, nC6, nB5
	dc.b nA5, nB5, nA5, nB5, nC6, nB5, nA5, nC6
	dc.b nE6, nF6, nEb6, nE6, nC6, nA5, nC6, nB5
	dc.b nAb5
	sCall		Title_Call3
	dc.b nC6, nAb5, nA5, nB5, nA5, nAb5, nA5, nAb5
	dc.b nF5, nE5, nD5, nEb5, nE5, nF5, nEb5, nE5
	dc.b nD5, nEb5, nE5, nD5, nE5, nF5, nAb5, nB5

Title_Loop7:
	sPatFM		$00
	dc.b nA5, $08, nE5, nA5, nB5, nA5, nB5, nC6
	dc.b nB5, nC6, nB5, nA5, nB5
	sLoop		$00, $07, Title_Loop7
	dc.b nA5, nAb5, nA5, nE5, nD5, nEb5, nE5, nAb4
	dc.b nA4, nB4, nC5, nD5
	sJump		Title_Jump5

Title_Call2:
	dc.b nE5, $08, nC5, nA4, nEb5, nC5, nA4, nE5
	dc.b nC5, nA4, nA5, nC5, nA4, nB5, nE5, nC5
	dc.b nC6, nE5, nC5, nA5, nE5, nC5, nE5, nC5
	dc.b nA4, nEb5, nB4, nA4, nD5, nB4, nA4, nEb5
	dc.b nB4, nA4, nFs5, nB4, nA4, nAb5, nB4, nA4
	dc.b nA5, nEb5, nB4, nB5, nD5, nB4, nC6, nD5
	dc.b nB4, nB5, nF5, nD5, nAb5, nF5, nD5, nA5
	dc.b nF5, nD5, nB5, nF5, nD5, nC6, nF5, nD5
	dc.b nAb5, nF5, nD5, nA5, nF5, nD5, nF5, nD5
	dc.b nA4, nE5, nB4, nAb4, nF5, nB4, nAb4, nD5
	dc.b nB4, nAb4, nEb5, nB4, nAb4
	sRet	

Title_Call3:
Title_Loop6:
	dc.b nB5, $08, nA5, nB5, nA5, nB5, nC6, nB5
	dc.b nA5, nB5, nA5, nB5, nC6
	sLoop		$00, $02, Title_Loop6
	sRet	

Title_FM2:
	sPatFM		$00
	sPan		spCenter, $00
	dc.b nRst, $05
	saDetune	$03

Title_Loop4:
	sPatFM		$00
	dc.b nA4, $08, nE4, nA4, nB4, nA4, nB4, nC5
	dc.b nB4, nC5, nB4, nA4, nB4
	sLoop		$00, $07, Title_Loop4
	dc.b nA4, $08, nE4, nA4, nB4, nA4, nB4, nA4
	dc.b nAb4, nA4, nB4, nC5, nD5

Title_Jump4:
	sPatFM		$00
	sCall		Title_Call1
	dc.b nE5, $08, nEb5, nE5, nD4, nEb4, nE4, nF4
	dc.b nAb4, nA4, nB4, nC5, nEb5
	sCall		Title_Call1
	dc.b nE5, $08, nB4, nAb4, nF5, nB4, nAb4, nAb5
	dc.b nD5, nB4, nA5, nD5, nB4
	sPatFM		$00
	dc.b nB3, $30, nA3, $60, nB3, $18, nC4, nA3
	dc.b $60, nC4, $60, nB3, $30, nA3, $60, nB3
	dc.b $18, nC4, nA3, $60, nD4, $60
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nE4, $0C, nRst, $54, nRst, $48, nD4, $0C
	dc.b nRst, $0C, nC4, $0C, nRst, $54, nRst, $48
	dc.b nD4, $0C, nRst, $0C, nE4, $0C, nRst, $54
	dc.b nRst, $48, nD4, $0C, nRst, $0C, nC4, $0C
	dc.b nRst, $54, nE4, $60
	sJump		Title_Jump4

Title_Call1:
	dc.b nE5, $08, nC5, nA4, nEb5, nC5, nA4, nE5
	dc.b nC5, nA4, nA5, nC5, nA4, nB5, nE5, nC5
	dc.b nC6, nE5, nC5, nA5, nE5, nC5, nE5, nC5
	dc.b nA4, nEb5, nB4, nA4, nD5, nB4, nA4, nEb5
	dc.b nB4, nA4, nFs5, nB4, nA4, nAb5, nB4, nA4
	dc.b nA5, nEb5, nB4, nB5, nD5, nB4, nC6, nD5
	dc.b nB4, nB5, nF5, nD5, nAb5, nF5, nD5, nA5
	dc.b nF5, nD5, nB5, nF5, nD5, nC6, nF5, nD5
	dc.b nAb5, nF5, nD5, nA5, nF5, nD5, nF5, nD5
	dc.b nA4, nE5, nB4, nAb4, nF5, nB4, nAb4, nD5
	dc.b nB4, nAb4, nEb5, nB4, nAb4
	sRet	

Title_FM3:
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nA3, $60, sHold, $60, sHold, $60, sHold, $60
	dc.b nA3, $60, sHold, $60, sHold, $60, sHold, $30
	dc.b nAb3, $30

Title_Loop3:
Title_Jump3:
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	dc.b nA3, $60, sHold, $30, nE4, $30, nEb4, $60
	dc.b sHold, $60, nD4, $60, sHold, $18, nB3, $30
	dc.b nC4, $18, nD4, $30, nF4, $60, nE4, $30
	sLoop		$00, $02, Title_Loop3
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nB4, $30, nA4, $60, nB4, $18, nC5, nD5
	dc.b $60, nE5, $60, nB4, $30, nA4, $60, nB4
	dc.b $18, nC5, nC5, $60, nB4, $60
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nA4, $0C, nRst, $54, nRst, $48, nG4, $0C
	dc.b nRst, $0C, nA4, $0C, nRst, $54, nRst, $48
	dc.b nG4, $0C, nRst, $0C, nA4, $0C, nRst, $54
	dc.b nRst, $48, nG4, $0C, nRst, $0C, nA4, $0C
	dc.b nRst, $54, nAb4, $60
	sJump		Title_Jump3

Title_FM4:
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nA3, $60, sHold, $48, nG3, $18, nF3, $60
	dc.b sHold, $48, nG3, $18, nA3, $60, sHold, $48
	dc.b nG3, $18, nF3, $60, sHold, $30, nE3, $30

Title_Loop2:
Title_Jump2:
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nA3, $48, nE3, $18, nA3, $48, nE3, $18
	dc.b nB3, $48, nFs3, $18, nB3, $48, nFs3, $18
	dc.b nD3, $48, nF3, $18, nD4, $30, nD3, nE3
	dc.b $48, nAb3, $18, nE3, $48, nE3, $18
	sLoop		$00, $02, Title_Loop2
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nF3, $60, sHold, $60, nA3, $60, sHold, $48
	dc.b nE3, $18, nF3, $60, sHold, $60, nE3, $08
	dc.b sHold, $48, nD3, $08, nEb3, nE3, $48, nF3
	dc.b $08, nAb3, nB3
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spCenter, $00
	dc.b nA3, $0C, nRst, $54, nRst, $48, nG3, $0C
	dc.b nRst, $0C, nF3, $0C, nRst, $54, nRst, $48
	dc.b nG3, $0C, nRst, $0C, nA3, $0C, nRst, $54
	dc.b nRst, $48, nG3, $0C, nRst, $0C, nF3, $0C
	dc.b nRst, $54, nE3, $60
	sJump		Title_Jump2

Title_FM5:
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spLeft, $00
	dc.b nRst, $05
	saDetune	$03
	dc.b nA3, $60, sHold, $60, sHold, $60, sHold, $60
	dc.b nA3, $60, sHold, $60, sHold, $60, sHold, $30
	dc.b nAb3, $30

Title_Loop1:
Title_Jump1:
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spLeft, $00
	dc.b nA3, $60, sHold, $30, nE4, $30, nEb4, $60
	dc.b sHold, $60, nD4, $60, sHold, $18, nB3, $30
	dc.b nC4, $18, nD4, $30, nF4, $60, nE4, $30
	sLoop		$00, $02, Title_Loop1
	dc.b nB4, $30, nA4, $60, nB4, $18, nC5, nD5
	dc.b $60, nE5, $60, nB4, $30, nA4, $60, nB4
	dc.b $18, nC5, nC5, $60, nB4, $60
	sPatFM		$01
	ssModZ80	$21, $01, $01, $07
	sPan		spLeft, $00
	dc.b nA4, $0C, nRst, $54, nRst, $48, nG4, $0C
	dc.b nRst, $0C, nA4, $0C, nRst, $54, nRst, $48
	dc.b nG4, $0C, nRst, $0C, nA4, $0C, nRst, $54
	dc.b nRst, $48, nG4, $0C, nRst, $0C, nA4, $0C
	dc.b nRst, $54, nAb4, $60
	sJump		Title_Jump1

Title_PSG1:
	sStop	

Title_PSG2:
	sStop	

Title_PSG3:
	sStop	

Title_DAC:
	sCall		Title_Call4
	dc.b nRst, $48, dMidTimpani, $18
	sCall		Title_Call4
	dc.b nRst, $30, dLowTimpani, $18, dMidTimpani

Title_Loop8:
Title_Jump6:
	dc.b dLowTimpani, $18, nRst, $3C, dMidTimpani, $06, dMidTimpani, dLowTimpani
	dc.b $18, nRst, dMidTimpani, nRst
	sLoop		$00, $03, Title_Loop8
	dc.b dLowTimpani, $18, nRst, $3C, dMidTimpani, $06, dMidTimpani, dLowTimpani
	dc.b $18, dMidTimpani, dLowTimpani, dMidTimpani
	sLoop		$01, $02, Title_Loop8

Title_Loop9:
	dc.b dLowTimpani, $24, dMidTimpani, $06, dMidTimpani, dLowTimpani, $30, nRst
	dc.b $24, dMidTimpani, $06, dMidTimpani, dLowTimpani, $18, dMidTimpani
	sLoop		$00, $03, Title_Loop9
	dc.b dLowTimpani, $24, dMidTimpani, $06, dMidTimpani, dLowTimpani, $30, nRst
	dc.b $0C, dMidTimpani, $06, dMidTimpani, dLowTimpani, $18, dLowTimpani, dMidTimpani
	dc.b dLowTimpani, $18, nRst, $48, nRst, $48, dMidTimpani, $18
	dc.b dLowTimpani, $18, nRst, $48, nRst, $48, dMidTimpani, $0C
	dc.b $06, $06, dLowTimpani, $18, nRst, $48, nRst, $48
	dc.b dMidTimpani, $18, dLowTimpani, $18, nRst, $48, dLowTimpani, $18
	dc.b nRst, $0C, dMidTimpani, $06, dMidTimpani, dLowTimpani, $18, dMidTimpani
	sJump		Title_Jump6

Title_Call4:
	dc.b dLowTimpani, $24, dMidTimpani, $06, dMidTimpani, dLowTimpani, $30, nRst
	dc.b $54, dMidTimpani, $06, dMidTimpani, dLowTimpani, $18, nRst, $48
	sRet	

Title_Patches:
	; Patch $00
	; $3C
	; $0E, $12, $02, $22,	$1A, $1A, $1A, $1A
	; $02, $0C, $04, $0D,	$00, $00, $00, $00
	; $1F, $4F, $1F, $4F,	$2B, $84, $1C, $86
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $01, $02
	spMultiple	$0E, $02, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1A, $1A, $1A, $1A
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$02, $04, $0C, $0D
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $04, $04
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2B, $1C, $04, $06

	; Patch $01
	; $39
	; $F8, $64, $14, $14,	$0F, $8F, $0F, $4F
	; $00, $07, $03, $02,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$23, $24, $22, $82
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$0F, $01, $06, $01
	spMultiple	$08, $04, $04, $04
	spRateScale	$00, $00, $02, $01
	spAttackRt	$0F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $03, $07, $02
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $22, $24, $02
