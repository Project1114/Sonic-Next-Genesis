FinalBoss1_Header:
	sHeaderInit	; Z80 offset is $89EC
	sHeaderPatch	FinalBoss1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $07
	sHeaderDAC	FinalBoss1_DAC
	sHeaderFM	FinalBoss1_FM1, $0C, $11
	sHeaderFM	FinalBoss1_FM2, $00, $22
	sHeaderFM	FinalBoss1_FM3, $00, $24
	sHeaderFM	FinalBoss1_FM4, $F4, $13
	sHeaderFM	FinalBoss1_FM5, $EF, $13
	sHeaderPSG	FinalBoss1_PSG1, $00, $02, $00, VolEnv_00
	sHeaderPSG	FinalBoss1_PSG1, $00, $02, $00, VolEnv_00
	sHeaderPSG	FinalBoss1_PSG2, $00, $03, $00, VolEnv_08

FinalBoss1_PSG1:
	sStop	

FinalBoss1_FM1:
	sPatFM		$00
	dc.b nF1, $60, nAb1, $12, nBb1, nFs1, $0C, nRst
	dc.b $30
	sPatFM		$00

FinalBoss1_Loop15:
FinalBoss1_Jump6:
	sCall		FinalBoss1_Call14
	dc.b nD2, $12, nE2, nC2, $0C
	sLoop		$00, $02, FinalBoss1_Loop15
	sCall		FinalBoss1_Call14
	dc.b nA1, $12, nCs2, nG2, $0C
	sCall		FinalBoss1_Call15
	dc.b nC2, $0C, nC3, nBb2, $06, nA2, nG2, nE2
	dc.b nC2, nC2, nD2, $0C, nE2, nC2, nB1, $12
	dc.b nBb1, nB1, nBb1, nB1, $0C, nCs2
	sCall		FinalBoss1_Call15
	dc.b nG2, $18, nG3, nF3, $06, nF3, nE3, nD3
	dc.b nC3, nBb2, nA2, nG2

FinalBoss1_Loop16:
	dc.b nA2, $12, nG2, nA2, $3C
	sLoop		$00, $03, FinalBoss1_Loop16
	dc.b nA2, $12, nG2, nA2, $24, nRst, $06, nC2
	dc.b $12

FinalBoss1_Loop17:
	sCall		FinalBoss1_Call16
	dc.b nBb1, $12, $0C, $06, nA1, $0C, $06, nRst
	dc.b $06, nG1, nRst, nA1, nRst, nC2, nRst, nF2
	sLoop		$00, $03, FinalBoss1_Loop17
	sCall		FinalBoss1_Call16
	dc.b nAb1, $36, nBb1, $30, nB1, nG2, $06, nAb2
	dc.b nG2, nF2, nG2, nF2, nEb2, nD2
	sJump		FinalBoss1_Jump6

FinalBoss1_Call14:
	dc.b nG1, $0C, nG1, nG1, $06, nG1, nG1, nF1
	dc.b nG1, nG1, nG1, $0C, $06, nG1, nG1, $0C
	dc.b nG1, nG1, nG1, $06, nG1, nG1, $0C, nBb1
	dc.b $12, nC2, nF2, $0C, nG2, nG2, nG2, $06
	dc.b nG2, nG2, $0C, nE2, $06, nF2, nF2, nF2
	dc.b nE2, nD2, nC2, $0C, nA1, $06, nBb1, $0C
	dc.b nBb1, nBb1, nBb1, $06
	sRet	

FinalBoss1_Call15:
	dc.b nD2, $18, $06, nE2, nF2, nG2, nA2, $0C
	dc.b nF2, nG2, nD2, nCs2, $18, $06, nD2, nE2
	dc.b nF2, nG2, nG2, nRst, nA2, nBb2, nA2, nG2
	dc.b nE2
	sRet	

FinalBoss1_Call16:
	dc.b nD2, $0C, nD2, nD2, nD2, $06, $0C, $06
	dc.b nC2, $0C, nBb1, $06, nA1, $0C
	sRet	

FinalBoss1_FM4:
	sCall		FinalBoss1_Call3

FinalBoss1_Jump3:
	sCall		FinalBoss1_Call4
	dc.b nBb5, $06, nG5, nAb5, nF5, nE5, nCs6, nC6
	dc.b nBb5
	sPatFM		$04
	dc.b nA5, $60, $60, $60, nF5, $12, nF5, nF5
	dc.b nF5, nF5, $0C, nG5, nA5, $60, $60, nF5
	sCall		FinalBoss1_Call5
	dc.b nG5
	saVolFM		$FC
	dc.b nD6, $06, nEb6, nD6, nC6, nD6, nC6, nB5
	dc.b nF5
	saVolFM		$04
	sJump		FinalBoss1_Jump3

FinalBoss1_Call3:
	sPatFM		$02
	dc.b nBb4, $06, nAb4, nBb4, $54, nCs5, $24, nB4
	dc.b $0C, nRst, $30
	saVolFM		$04
	sRet	

FinalBoss1_Call4:
	sPatFM		$01

FinalBoss1_Loop6:
	dc.b nG4, $60, nAb4, $30, nBb4, $12, nC5, nF5
	dc.b $0C, nG5, $60, nF5, $30, nD5, $12, nE5
	dc.b nC5, $0C
	sLoop		$00, $02, FinalBoss1_Loop6
	dc.b nG4, $60, nAb4, $30, nBb4, $12, nC5, nF5
	dc.b $0C, nG5, $60, nF5, $12, nE5, nF5, $0C
	sRet	

FinalBoss1_Call5:
FinalBoss1_Loop7:
	dc.b nA5, $18
	saVolFM		$FD
	dc.b sHold, $18
	saVolFM		$FD
	dc.b sHold, $0C
	saVolFM		$FB
	dc.b sHold, $24
	saVolFM		$0B
	saTranspose	$01
	sLoop		$00, $03, FinalBoss1_Loop7
	saTranspose	$FD
	dc.b nC6, $18
	saVolFM		$FC
	dc.b nC6, $0C
	saVolFM		$FA
	dc.b nC6, $24, nRst, $06
	sPatFM		$01
	dc.b nEb6, $01, nD6, nC6, nB5, nA5, nG5, nF5
	dc.b nE5, nD5, nC5, nB4, nA4, nG4, nF4, nE4
	dc.b nD4, nC4, nB3
	saVolFM		$0A

FinalBoss1_Loop8:
	dc.b nF5, $12, $06, nRst, $18, nG5, $12, nF5
	dc.b $06, nRst, $12, nD5, $30, sHold, $06, nRst
	dc.b $06, nC5, nRst, nD5, nRst, nF5, nRst, nG5
	sLoop		$00, $03, FinalBoss1_Loop8
	dc.b nF5, $12, $06, nRst, $18, nG5, $12, nF5
	dc.b $06, nRst, $12, nG5, $36, $30
	sRet	

FinalBoss1_FM5:
	sPan		spLeft, $00
	sCall		FinalBoss1_Call3

FinalBoss1_Jump2:
	sCall		FinalBoss1_Call4
	saTranspose	$05
	dc.b nG5, $06, nE5, nF5, nD5, nCs5, nBb5, nA5
	dc.b nG5
	sPatFM		$04
	dc.b nF5, $60, $60, $60, nD5, $12, nD5, nD5
	dc.b nD5, nD5, $0C, nE5, nF5, $60, nF5, nD5
	saTranspose	$FB
	sCall		FinalBoss1_Call5
	saTranspose	$05
	saVolFM		$FC
	dc.b nD5, nB5, $06, nC6, nB5, nAb5, nB5, nAb5
	dc.b nG5, nD5
	saTranspose	$FB
	saVolFM		$04
	sJump		FinalBoss1_Jump2

FinalBoss1_FM2:
	sCall		FinalBoss1_Call6
	dc.b nB3, $06

FinalBoss1_Jump5:
	ssModZ80	$16, $03, $0A, $02
	sCall		FinalBoss1_Call7
	sCall		FinalBoss1_Call8
	dc.b nG3, $2A, nA3, $30
	sPatFM		$01
	sCall		FinalBoss1_Call13
	dc.b nA4, nF4, nD4, nG4, $0C, nE4, $06, nC4
	dc.b nF4, $0C, nD4, $06, nF4, nD4, nF4, nG4
	dc.b nA4, nBb4

FinalBoss1_Loop14:
	dc.b nF4, $06, nD4, nBb3, nG4, nE4, nC4
	sLoop		$00, $02, FinalBoss1_Loop14
	dc.b nD4, $06, nCs4, nD4, nE4
	sCall		FinalBoss1_Call13
	dc.b nA4, nG4, nF4, nE4, nBb4, nA4, nG4, nF4
	dc.b nC5, nBb4, nA4, nG4, nE5, nCs5, nBb4, nG4
	sPatFM		$02
	dc.b nA4, $12, nG4, nA4, $0C
	sCall		FinalBoss1_Call10
	dc.b nE4, $06
	ssModZ80	$24, $02, $08, $02
	sCall		FinalBoss1_Call11
	dc.b nG5, $2A
	sCall		FinalBoss1_Call12
	dc.b nAb5, $06, nB5, nG5, nAb5, nF5, nG5, nEb5
	dc.b nF5, nD5, nF5, $03, nFs5, nG5, $2A
	sJump		FinalBoss1_Jump5

FinalBoss1_Call6:
	sPatFM		$05

FinalBoss1_Loop9:
	sPan		spLeft, $00
	dc.b nF4, $04, nAb4, nBb4, nC5, $06, nEb5
	saVolFM		$FB
	sPan		spRight, $00
	dc.b nF4, $04, nAb4, nBb4, nC5, $06, nEb5
	saVolFM		$FB
	sPan		spCenter, $00
	dc.b nF4, $04, nAb4, nBb4, nC5, $06, nEb5
	saVolFM		$FB
	sLoop		$00, $02, FinalBoss1_Loop9
	sPatFM		$02
	saVolFM		$0E
	dc.b nG4, $02, nAb4, $04, nG4, $06, nF4, nD4
	dc.b nEb4, nC4, nF4
	sRet	

FinalBoss1_Call7:
	sPatFM		$02
	saTranspose	$0C

FinalBoss1_Loop10:
	dc.b nG2, $04, nBb2, nC3, nCs3, nC3, nBb2
	sLoop		$00, $07, FinalBoss1_Loop10
	dc.b nG2, $04, nBb2, nC3, nD3, nF3, nG3

FinalBoss1_Loop11:
	dc.b nG3, $04, nBb3, nC4, nCs4, nC4, nBb3
	sLoop		$00, $04, FinalBoss1_Loop11
	saTranspose	$F4
	sRet	

FinalBoss1_Call8:
	dc.b nG4, $12, nF4, $06
	sNoteTimeOut	$05
	dc.b nF4, nE4, nE4, nC4
	sNoteTimeOut	$00
	dc.b nD4, nC4, nBb3, nF3, nG3, nBb3, nC4, nD4
	sCall		FinalBoss1_Call9
	dc.b nD5, $06, nC5, nD5, $3C, nC5, $06, nD5
	dc.b nF5, nC5
	sNoteTimeOut	$05
	dc.b nD5, nD5, nCs5, nCs5, nC5, nC5, nBb4, nBb4
	sNoteTimeOut	$00
	dc.b nF4, nE4, $0C, nF4, $06, nE4, $0C, nBb4
	sCall		FinalBoss1_Call9
	dc.b nF4, $06, nE4, $2A, nD4, $06, nCs4, nRst
	dc.b nC4, nRst, nBb3, nRst, nF3, nRst
	sRet	

FinalBoss1_Call13:
	dc.b nD4, $06, nE4, nF4, nD4, nE4, nF4, nG4
	dc.b nE4, nF4, nG4, nA4, nBb4, nA4, nG4, nD4
	dc.b nE4, nF4, nG4, nF4, nE4, nD4, nCs4, nD4
	dc.b nE4, nF4, nD4, nG4, nE4, nA4, nF4, nBb4
	dc.b nG4
	sRet	

FinalBoss1_Call10:
	dc.b nA4, $04, nBb4, nA4, nG4, $06, nF4, nE4
	dc.b nD4, nD4
	sRet	

FinalBoss1_Call11:
	dc.b nA4, $12, nG4, nA4, $0C
FinalBoss1_Loop12:
	dc.b nE5, $06, nF5, nE5, nG5
	sLoop		$00, $02, FinalBoss1_Loop12
	dc.b nA4, $12, nG4, nA4, $0C
	sNoteTimeOut	$05
	dc.b nBb4, $06, nBb4, nA4, nA4, nAb4, nAb4, nG4
	dc.b nG4
	sNoteTimeOut	$00
	dc.b nA4, $12, nBb4
	sRet	

FinalBoss1_Call12:
	sPatFM		$03

FinalBoss1_Loop13:
	dc.b nE5, $06, nF5, nC5, nD5, $48, nE5, $06
	dc.b nF5, nG5, nF5, $4E, nRst, $06
	sLoop		$00, $03, FinalBoss1_Loop13
	dc.b nE5, $06, nF5, nC5, nD5, $48, nE5, $06
	dc.b nF5, nRst, nG5, $0C, nAb5, $06, nG5, nF5
	dc.b nEb5, nD5, nF5, nD5, nEb5, nD5, nC5, nF5
	dc.b nEb5, nF5, nG5
	sRet	

FinalBoss1_Call9:
	dc.b nG4, $30, nF4, $10, nBb4, nF4, nG4, $30
	dc.b nF4, $12, nBb4, nC5, $0C
	sRet	

FinalBoss1_FM3:
	dc.b nRst, $04
	sCall		FinalBoss1_Call6
	dc.b nB3, $02
	sPan		spRight, $00

FinalBoss1_Jump4:
	ssModZ80	$16, $02, $0C, $02
	saTranspose	$FB
	sCall		FinalBoss1_Call7
	saTranspose	$05
	dc.b nRst, $04
	sCall		FinalBoss1_Call8
	dc.b nG3, $26, nE3, $30
	sPatFM		$01
	saVolFM		$FE
	dc.b nRst, $60, nRst, nRst, nRst, $48, nF4, $06
	dc.b nE4, nF4, nG4, nF4, nG4, nA4, nF4, nG4
	dc.b nA4, nBb4, nG4, nA4, nBb4, nC5, nCs5, nD5
	dc.b nC5, nG4, nA4, nA4, nBb4, nA4, nG4, nF4
	dc.b nE4, nF4, nG4, nA4, nF4, nBb4, nG4, nCs5
	dc.b nA4, nE5, nCs5, nC5, nBb4, nA4, nG4, nD5
	dc.b nC5, nBb4, nA4, nE5, nD5, nC5, nBb4, nG5
	dc.b nE5, nCs5, nBb4
	sPatFM		$02
	dc.b nE4, $12, nD4, nE4, $0C
	saVolFM		$02
	dc.b nRst, $04
	sCall		FinalBoss1_Call10
	dc.b nE4, $02
	saVolFM		$FE
	saTranspose	$FB
	ssModZ80	$24, $01, $08, $02
	sCall		FinalBoss1_Call11
	saTranspose	$05
	dc.b nD5, $2A, nRst, $04
	saVolFM		$02
	saDetune	$03
	sCall		FinalBoss1_Call12
	dc.b nAb5, $02
	saDetune	$00
	saVolFM		$FE
	dc.b nG5, $06, nEb5, nF5, nD5, nEb5, nB4, nD5
	dc.b nB4, nD5, $03, nD5, nD5, $2A
	saVolFM		$02
	sJump		FinalBoss1_Jump4

FinalBoss1_PSG2:
	sNoisePSG	$E7
	dc.b nAb5, $60, $12, nAb5, nAb5, $3C

FinalBoss1_Loop2:
FinalBoss1_Jump1:
	sCall		FinalBoss1_Call1
	sVolEnvPSG	VolEnv_08
	dc.b nAb5, $12, nAb5, nAb5, $0C
	sLoop		$01, $06, FinalBoss1_Loop2
	sCall		FinalBoss1_Call2
	dc.b nAb5, $12, nAb5, nAb5, nAb5, $2A
	sCall		FinalBoss1_Call2

FinalBoss1_Loop4:
	dc.b nAb5, $12, nAb5, nAb5, $3C
	sLoop		$00, $04, FinalBoss1_Loop4

FinalBoss1_Loop5:
	sCall		FinalBoss1_Call1
	sNoteTimeOut	$03
	dc.b nRst, $06, nA5, $0C, nA5, nA5, nA5, $06
	sNoteTimeOut	$00
	sLoop		$01, $03, FinalBoss1_Loop5
	sVolEnvPSG	VolEnv_08
	dc.b nAb5, $0C
	sVolEnvPSG	VolEnv_03
	dc.b nA5, $18, nA5, nA5, $1E
	sVolEnvPSG	VolEnv_08
	dc.b nAb5
	sVolEnvPSG	VolEnv_03
	dc.b nA5, $18, nA5, nA5, nA5, nA5
	sVolEnvPSG	VolEnv_08
	dc.b nAb5, $30
	sJump		FinalBoss1_Jump1

FinalBoss1_Call1:
	dc.b nAb5, $0C, nA5
	sVolEnvPSG	VolEnv_03

FinalBoss1_Loop1:
	dc.b nRst, $0C, nA5
	sLoop		$00, $05, FinalBoss1_Loop1
	sRet	

FinalBoss1_Call2:
	sVolEnvPSG	VolEnv_03

FinalBoss1_Loop3:
	dc.b nA5, $0C
	sLoop		$00, $18, FinalBoss1_Loop3
	sVolEnvPSG	VolEnv_08
	sRet	

FinalBoss1_DAC:
	dc.b dHighTom, $04, dMidTom, dLowTom, dSnare, $06, $4E, dKick
	dc.b $12, dKick, dKick, $24, dSnare, $06, dSnare, dSnare
	dc.b dSnare
FinalBoss1_Loop18:
FinalBoss1_Jump7:
	sCall		FinalBoss1_Call17
	dc.b dKick, dSnare, dKick, $06, dKick, dSnare, $0C, $12
	dc.b dSnare, dSnare, $06, dSnare
	sLoop		$00, $05, FinalBoss1_Loop18
	sCall		FinalBoss1_Call17
	dc.b $06, dSnare, dSnare, dSnare, dKick, dSnare, $0C, $06
	dc.b dHighTom, dHighTom, dMidTom, dMidTom, dLowTom, dLowTom, dLowTom, dLowTom

FinalBoss1_Loop19:
	sCall		FinalBoss1_Call17
	sLoop		$00, $03, FinalBoss1_Loop19
	dc.b dSnare, $0C, dKick, $06, dSnare, $0C, dKick, $06
	dc.b dSnare, $0C, dKick, $06, dSnare, $0C, dKick, $06
	dc.b dHighTom, dHighTom, dMidTom, dLowTom

FinalBoss1_Loop20:
	sCall		FinalBoss1_Call17
	sLoop		$00, $03, FinalBoss1_Loop20
	sCall		FinalBoss1_Call18
	dc.b dSnare, $06, $0C, $06, dSnare, dSnare, dSnare, dSnare
	sCall		FinalBoss1_Call18
	dc.b dHighTom, $04, dHighTom, dHighTom, dMidTom, dMidTom, dMidTom, dLowTom
	dc.b dLowTom, dLowTom, dSnare, $06, dSnare
	sCall		FinalBoss1_Call18
	dc.b dHighTom, $06, dHighTom, dMidTom, dMidTom, dLowTom, dLowTom, dLowTom
	dc.b dLowTom
	sCall		FinalBoss1_Call18
	dc.b nRst, $0C, dKick, $06, dKick, dSnare, dSnare, dSnare
	dc.b dSnare

FinalBoss1_Loop21:
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, dKick
	dc.b $0C, $06, dSnare, $0C, dKick, $06, dKick, dSnare
	dc.b dKick, $12, dSnare, $0C, dKick, $06, dKick, dSnare
	dc.b $0C, dKick, $06, dSnare, $0C, dSnare, dSnare, dSnare
	dc.b $06
	sLoop		$00, $03, FinalBoss1_Loop21
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, dKick
	dc.b $0C, $06, dSnare, $0C, dHighTom, $06, dMidTom, dLowTom
	dc.b dKick, $1E, $06, dSnare, $0C, $06, dSnare, dSnare
	dc.b dSnare, $0C, dHighTom, $06, dHighTom, dMidTom, dLowTom, dSnare
	dc.b dKick, $0C, $06, dSnare, dKick, $0C, $06, dSnare
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $0C
	sJump		FinalBoss1_Jump7

FinalBoss1_Call18:
	dc.b dSnare, $0C, dKick, $06, dSnare, $0C, dKick, $06
	dc.b dSnare, $0C
	sRet	

FinalBoss1_Call17:
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, dKick
	dc.b $0C, $06, dSnare, $0C, dKick, $06, dKick, dSnare
	dc.b $0C
	sRet	

FinalBoss1_Patches:
	; Patch $00
	; $18
	; $36, $30, $30, $30,	$9E, $DC, $1C, $9C
	; $0D, $06, $04, $01,	$08, $0A, $03, $05
	; $B6, $B6, $36, $26,	$2C, $22, $14, $80
	spAlgorithm	$00
	spFeedback	$03
	spDetune	$03, $03, $03, $03
	spMultiple	$06, $00, $00, $00
	spRateScale	$02, $00, $03, $02
	spAttackRt	$1E, $1C, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0D, $04, $06, $01
	spSustainRt	$08, $03, $0A, $05
	spSustainLv	$0B, $03, $0B, $02
	spReleaseRt	$06, $06, $06, $06
	spTotalLv	$2C, $14, $22, $00

	; Patch $01
	; $3F
	; $10, $04, $12, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $AF, $9F, $9F, $9F,	$8F, $8A, $82, $82
	spAlgorithm	$07
	spFeedback	$07
	spDetune	$01, $01, $00, $00
	spMultiple	$00, $02, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0A, $09, $09, $09
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0F, $02, $0A, $02

	; Patch $02
	; $3A
	; $32, $00, $02, $73,	$9F, $DF, $4F, $4F
	; $0F, $0F, $0F, $0F,	$02, $02, $02, $02
	; $0F, $0F, $0F, $0E,	$16, $1F, $17, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $00, $00, $07
	spMultiple	$02, $02, $00, $03
	spRateScale	$02, $01, $03, $01
	spAttackRt	$1F, $0F, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0F, $0F, $0F
	spSustainRt	$02, $02, $02, $02
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0E
	spTotalLv	$16, $17, $1F, $00

	; Patch $03
	; $3A
	; $32, $40, $00, $31,	$5F, $5F, $3C, $2F
	; $01, $02, $04, $03,	$02, $02, $03, $02
	; $5F, $1E, $5E, $1E,	$19, $14, $0B, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $00, $04, $03
	spMultiple	$02, $00, $00, $01
	spRateScale	$01, $00, $01, $00
	spAttackRt	$1F, $1C, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$01, $04, $02, $03
	spSustainRt	$02, $03, $02, $02
	spSustainLv	$05, $05, $01, $01
	spReleaseRt	$0F, $0E, $0E, $0E
	spTotalLv	$19, $0B, $14, $00

	; Patch $04
	; $3D
	; $12, $02, $11, $00,	$6D, $47, $47, $47
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$22, $84, $84, $84
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$01, $01, $00, $00
	spMultiple	$02, $01, $02, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$0D, $07, $07, $07
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $04, $04, $04

	; Patch $05
	; $32
	; $59, $11, $4F, $22,	$15, $1A, $17, $12
	; $13, $09, $04, $08,	$07, $02, $03, $12
	; $09, $09, $09, $09,	$2E, $7F, $7F, $80
	spAlgorithm	$02
	spFeedback	$06
	spDetune	$05, $04, $01, $02
	spMultiple	$09, $0F, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$15, $17, $1A, $12
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $04, $09, $08
	spSustainRt	$07, $03, $02, $12
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$09, $09, $09, $09
	spTotalLv	$2E, $7F, $7F, $00
