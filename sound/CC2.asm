CC2_Header:
	sHeaderInit	; Z80 offset is $BA5E
	sHeaderPatch	CC2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $54
	sHeaderDAC	CC2_DAC
	sHeaderFM	CC2_FM1, $F4, $10
	sHeaderFM	CC2_FM2, $F4, $0E
	sHeaderFM	CC2_FM3, $F4, $11
	sHeaderFM	CC2_FM4, $F4, $12
	sHeaderFM	CC2_FM5, $F4, $12
	sHeaderPSG	CC2_PSG1, $DC, $05, $00, VolEnv_00
	sHeaderPSG	CC2_PSG2, $DC, $05, $00, VolEnv_00
	sHeaderPSG	CC2_PSG3, $00, $03, $00, VolEnv_00

CC2_FM1:
CC2_Jump4:
	dc.b nRst, $18, nRst, $06
CC2_Jump5:
	ssModZ80	$05, $01, $02, $02
	saVolFM		$FD
	sPatFM		$0B
	saTranspose	$DC
	dc.b nA6, $18, nB6, nG6, $30, nFs6, $12, nF6
	dc.b nE6, $3C, nB5, $12, nC6, nCs6, $0C, nD6
	dc.b $30, sHold, $60, nA6, $18, nAb6, nG6, $30
	dc.b nFs6, $12, nF6, nE6, $3C, nB5, $12, nBb5
	dc.b nA5, $0C, nAb5, $12, nG5, nFs5, $0C, nF5
	dc.b $5F, nRst, $01
	saTranspose	$24
	saVolFM		$03
	saVolFM		$FB
	sPatFM		$01
	dc.b nA3, $60, sHold, $5F, nRst, $01
	sPatFM		$00
	dc.b nEb3, $60, sHold, $5F, nRst, $01
	sPatFM		$01
	dc.b nC4, $60, sHold, $5F, nRst, $01
	sPatFM		$00
	dc.b nFs3, $60, sHold, $5F, nRst, $01
	saVolFM		$05
	ssModZ80	$05, $01, $02, $03
	sPatFM		$05
	dc.b nA6, $24, nA6, $06, nA6, nRst, nBb6, nRst
	dc.b $06, nBb6, nRst, nBb6, $12, nRst, $06, nA6
	dc.b nA6, nRst, nA6, nA6, $12, nRst, $06, nBb6
	dc.b $06, nBb6, nRst, nBb6, nBb6, $12, nRst, $06
	dc.b nA6, nAb6, nEb6, nD6, nAb6, nG6, nD6, nCs6
	dc.b nG6, nFs6, nCs6, nC6, nF6, nE6, nB5, nFs5
	dc.b nG5, nBb5, nB5, nEb6, nE6, nB6, nBb6, nRst
	dc.b $30, nRst, $60, nRst, $60
	sJump		CC2_Jump5

CC2_FM2:
	dc.b nRst, $18, nRst, $06
CC2_Jump8:
	sPatFM		$02
	dc.b nA3, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b $0C, $06, nG3, $0C, nA3, nA3, $06, $0C
	dc.b $0C, $06, $0C, $06, $0C, $06, nG3, $0C
	dc.b nA3, nA3, $06, $0C, $0C, $0C, $06, $0C
	dc.b $0C, nG3, $06, $06, nA3, $0C, $06, $0C
	dc.b $0C, $0C, $06, $0C, nC4, nD4, $06, $06
	dc.b nA3, $0C, $06, $0C, $0C, $0C, $06, $0C
	dc.b $0C, nG3, $06, $06, nA3, $0C, $06, $0C
	dc.b $0C, $0C, $06, $0C, nC4, nD4, $06, $06
	dc.b nA3, $0C, $06, $0C, $0C, $0C, $06, $0C
	dc.b $0C, nG3, $06, $06, nA3, $0C, $06, $0C
	dc.b $0C, $0C, $06, $0C, nC4, nD4, $06, $06
	sPatFM		$03
	dc.b nD4, $60, nD5, $24, nA4, nD4, $18, nAb4
	dc.b $60, nEb4, $24, nAb3, $3C, nC4, $60, nG4
	dc.b $24, nC5, $3C, nB4, $60, nFs4, $30, nB3
	sPatFM		$02
	dc.b nA3, $06, nAb3, nG3, nFs3, nF3, nE3, nEb3
	dc.b nD3, nA3, nAb3, nG3, nFs3, nF3, nE3, nEb3
	dc.b nD3, nA3, nAb3, nG3, nFs3, nF3, nE3, nEb3
	dc.b nD3, nEb3, nE3, nF3, nFs3, nG3, nAb3, nA3
	dc.b nBb3, nA3, nAb3, nG3, nFs3, nF3, nE3, nEb3
	dc.b nD3, nA3, nAb3, nG3, nFs3, nF3, nE3, nEb3
	dc.b nD3, nA3, nAb3, nG3, nFs3, nF3, nE3, nEb3
	dc.b nD3, $06, nRst, $30, nRst, $60, nRst, $60
	sJump		CC2_Jump8

CC2_FM3:
	dc.b nRst, $18, nRst, $06
CC2_Jump7:
	sPatFM		$0A
	saVolFM		$FE
	saTranspose	$F4
	dc.b nA5, $06, $06, nC6, nA5, nA5, nD6, nA5
	dc.b nA5, nE6, nA5, nA5, nG6, nA5, nA5, nA6
	dc.b nA5, nA5, nG6, nA5, nA5, nFs6, nA5, nA5
	dc.b nD6, nA5, nA5, nE6, nA5, nA5, nC6, nA5
	dc.b nA5, nA5, nA5, nC6, nA5, nA5, nD6, nA5
	dc.b nA5, nE6, nA5, nA5, nG6, nA5, nA5, nA6
	dc.b nA5, nA5, nG6, nA5, nA5, nFs6, nA5, nA5
	dc.b nD6, nA5, nA5, nE6, nA5, nA5, nC6, nA5
	dc.b nA5, nA5, nA5, nC6, nA5, nA5, nD6, nA5
	dc.b nA5, nE6, nA5, nA5, nG6, nA5, nA5, nA6
	dc.b nA5, nA5, nG6, nA5, nA5, nFs6, nA5, nA5
	dc.b nD6, nA5, nA5, nE6, nA5, nA5, nC6, nA5
	dc.b nA5, nA5, nA5, nC6, nA5, nA5, nD6, nA5
	dc.b nA5, nE6, nA5, nA5, nG6, nA5, nA5, nA6
	dc.b nA5, nA5, nG6, nA5, nA5, nFs6, nA5, nA5
	dc.b nD6, nA5, nA5, nE6, nA5, nA5, nC6, nA5
	dc.b nA5
	saTranspose	$0C
	sPan		spRight, $00
	saVolFM		$02
	saVolFM		$FF
	sPatFM		$04
	dc.b nRst, $18, nG5, $03, nRst, $15, nRst, $18
	dc.b nG5, $03, nRst, $15, nRst, $18, nG5, $03
	dc.b nRst, $15, nRst, $18, nG5, $03, nRst, $15
	dc.b nRst, $18, nG5, $03, nRst, $15, nRst, $18
	dc.b nG5, $03, nRst, $15, nRst, $18, nG5, $03
	dc.b nRst, $15, nRst, $18, nG5, $03, nRst, $15
	dc.b nRst, $18, nG5, $03, nRst, $15, nRst, $18
	dc.b nG5, $03, nRst, $15, nRst, $18, nG5, $03
	dc.b nRst, $15, nRst, $18, nG5, $03, nRst, $15
	dc.b nRst, $18, nG5, $03, nRst, $15, nRst, $18
	dc.b nG5, $03, nRst, $15, nRst, $18, nG5, $03
	dc.b nRst, $15, nRst, $18, nG5, $03, nRst, $15
	sPan		spRight, $00
	saVolFM		$01
	ssModZ80	$05, $01, $02, $03
	sPatFM		$05
	dc.b nE6, $24, nE6, $06, nE6, nRst, nF6, nRst
	dc.b nF6, nRst, nF6, $12, nRst, $06, nE6, nE6
	dc.b nRst, nE6, nE6, $12, nRst, $06, nF6, $06
	dc.b nF6, nRst, nF6, nF6, $12
	saDetune	$05
	dc.b nRst, $06, nA6, nAb6, nEb6, nD6, nAb6, nG6
	dc.b nD6, nCs6, nG6, nFs6, nCs6, nC6, nF6, nE6
	dc.b nB5, nFs5, nG5, nBb5, nB5, nEb6, nE6, nB6
	dc.b nBb6, nRst, $30, nRst, $60, nRst, $60
	sModEnv		ModEnv_00
	sJump		CC2_Jump7

CC2_FM4:
	dc.b nRst, $18, nRst, $06
CC2_Jump6:
	sPan		spRight, $00
	saVolFM		$FB
	saTranspose	$E8
	sPatFM		$08
	dc.b nRst, $30, nA4, $0C, nG4, $06, nA4, $0C
	dc.b nRst, $12, nRst, $60, nRst, $30, nA5, $0C
	dc.b nG5, $06, nA5, $0C, nA6, nA6, $06, nRst
	dc.b $60, $30, nA4, $0C, nG4, $06, nA4, $0C
	dc.b nRst, $12, nRst, $30, nA5, $0C, nG5, $06
	dc.b nA5, $0C, nA6, nA6, $06, nRst, $54, nA7
	dc.b $06, $06, nRst, nA7, $0C, $0C, nRst, $42
	saTranspose	$0C
	saVolFM		$05
	saVolFM		$FE
	sPan		spLeft, $00
	sPatFM		$09
	dc.b nA5, $5F, nRst, $01, nE6, $2F, nRst, $01
	dc.b nA6, $2F, nRst, $01, nAb6, $2F, nRst, $01
	dc.b nEb6, $2F, nRst, $01, nAb5, $5F, nRst, $01
	dc.b nG5, $5F, nRst, $01, nD6, $2F, nRst, $01
	dc.b nG6, $2F, nRst, $01, nFs6, $2F, nRst, $01
	dc.b nCs6, $2F, nRst, $01, nFs5, $5F, nRst, $01
	saTranspose	$0C
	saVolFM		$02
	sPan		spRight, $00
	ssModZ80	$05, $01, $02, $03
	sPatFM		$05
	dc.b nD6, $24, nD6, $06, nD6, nRst, nEb6, nRst
	dc.b nEb6, nRst, nEb6, $12, nRst, $06, nD6, nD6
	dc.b nRst, nD6, nD6, $12, nRst, $06, nEb6, $06
	dc.b nEb6, nRst, nEb6, nEb6, $12, nRst, $60, nRst
	dc.b $60
	sModEnv		ModEnv_00
	dc.b nRst, $60, nRst, $60
	sJump		CC2_Jump6

CC2_FM5:
	sPan		spLeft, $00
	saDetune	$05
	dc.b nRst, $0C
	sJump		CC2_Jump4

CC2_PSG1:
	dc.b nRst, $18, nRst, $06
CC2_Jump3:
	saVolPSG	$FF
	dc.b nRst, $30, nE6, nRst, nD6, nRst, nA6, nRst
	dc.b $24, nD6, $3C, nRst, $30, nE6, nRst, $30
	dc.b nD6, nRst, $3C, nA6, $24, nRst, $2A, nD6
	dc.b $36
	saVolPSG	$01
	dc.b nRst, $30, nF4, $04, nE5, nC5, nA4, nAb5
	dc.b nBb4, nFs3, nD5, nF4, nB6, $04, nRst, $08
	dc.b nRst, $60, nRst, $30, nBb6, $04, nEb6, nAb6
	dc.b nG4, nA5, nE5, nG6, nCs6, nG3, nFs5, $04
	dc.b nRst, $08, nRst, $60, nRst, $30, nEb6, $04
	dc.b nG5, nC4, nEb5, nB4, nA5, nEb6, nAb5, nBb4
	dc.b nRst, $60, nRst, $30, nBb6, $04, nD6, nC5
	dc.b nA6, nAb5, nB5, nC5, nD6, nB3, nRst, $04
	dc.b nRst, $08, nRst, $60
	saVolFM		$FF
	dc.b nRst, $0C, nC4, $06, nD5, nA4, nD6, nAb5
	dc.b nAb5, nBb4, nEb6, nB4, nE5, nF3, nA4, nEb4
	dc.b nE5, nA4, nB6, nG5, nC6, nAb5, nEb6, nF4
	dc.b nF5, nEb5, nBb6, nC3, nA4, nD4, nE6, nAb2
	dc.b nAb5, nEb4, nB4, nB4, nAb5, nA3, nC5, nC5
	dc.b nF6, nF4, nF5, nFs5, nBb6, nE3, nA4, nA4
	dc.b nG6, nF2, nB4, nFs4, nBb5, nE5, nG3, nA4
	dc.b nEb5, nF6, nBb5, $06, nRst, $30
	saVolFM		$01
	dc.b nRst, $60, nRst, $60
	sJump		CC2_Jump3

CC2_PSG2:
	dc.b nRst, $18, nRst, $06
CC2_Jump2:
	saTranspose	$FB
	saVolPSG	$FF
	dc.b nRst, $30, nE6, nRst, nD6, nRst, nA6, nRst
	dc.b $24, nD6, $3C, nRst, $30, nE6, nRst, $30
	dc.b nD6, nRst, $3C, nA6, $24, nRst, $2A, nD6
	dc.b $36
	saVolPSG	$01
	saTranspose	$05
	saDetune	$02
	dc.b nRst, $30, nF4, $04, nE5, nC5, nA4, nAb5
	dc.b nBb4, nFs3, nD5, nF4, nB6, $04, nRst, $08
	dc.b nRst, $60, nRst, $30, nBb6, $04, nEb6, nAb6
	dc.b nG4, nA5, nE5, nG6, nCs6, nG3, nFs5, $04
	dc.b nRst, $08, nRst, $60, nRst, $30, nEb6, $04
	dc.b nG5, nC4, nEb5, nB4, nA5, nEb6, nAb5, nBb4
	dc.b nRst, $60, nRst, $30, nBb6, $04, nD6, nC5
	dc.b nA6, nAb5, nB5, nC5, nD6, nB3, nRst, $04
	dc.b nRst, $08, nRst, $60
	saVolFM		$FF
	dc.b nRst, $06, nRst, $0C, nC4, $06, nD5, nA4
	dc.b nD6, nAb5, nAb5, nBb4, nEb6, nB4, nE5, nF3
	dc.b nA4, nEb4, nE5, nA4, nB6, nG5, nC6, nAb5
	dc.b nEb6, nF4, nF5, nEb5, nBb6, nC3, nA4, nD4
	dc.b nE6, nAb2, nAb5, nEb4, nB4, nB4, nAb5, nA3
	dc.b nC5, nC5, nF6, nF4, nF5, nFs5, nBb6, nE3
	dc.b nA4, nA4, nG6, nF2, nB4, nFs4, nBb5, nE5
	dc.b nG3, nA4, nEb5, nF6, nRst, $30
	saVolFM		$01
	saDetune	$00
	dc.b nRst, $60, nRst, $60
	sJump		CC2_Jump2

CC2_PSG3:
	dc.b nRst, $18, nRst, $06
	sNoisePSG	$E7

CC2_Jump1:
	sVolEnvPSG	VolEnv_02

CC2_Loop1:
	dc.b nBb5, $06, $06, $06, $06, nBb5, $06, $06
	dc.b $06, $06, nBb5, $06, $06, $06, $06, nBb5
	dc.b $06, $06, $06, $06
	sLoop		$00, $08, CC2_Loop1

CC2_Loop2:
	dc.b nBb5, $0C, $0C, $0C, $0C, nBb5, $0C, $0C
	dc.b $0C, $0C
	sLoop		$00, $08, CC2_Loop2

CC2_Loop3:
	dc.b nBb5, $06, $06, $06, $06, nBb5, $06, $06
	dc.b $06, $06, nBb5, $06, $06, $06, $06, nBb5
	dc.b $06, $06, $06, $06
	sLoop		$00, $04, CC2_Loop3
	dc.b nBb5, $06, $06, $06, $06, nBb5, $06, $06
	dc.b $06, $06, nBb5, $06, $06
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $18, nRst, $06, nRst, $06, nRst, $60
	sJump		CC2_Jump1

CC2_DAC:
	saVolFM		$00
	dc.b dSnare, $03, dSnare, $03, $06, dHighTom, $06, dMidTom
	dc.b $06, dLowTom, $06

CC2_Jump9:
	dc.b dKick, $18, dSnare, dKick, $0C, $0C, dSnare, $18
	dc.b dKick, dSnare, $12, dKick, $06, $0C, $0C, dSnare
	dc.b $18, dKick, $18, dSnare, dKick, $0C, $0C, dSnare
	dc.b $18, dKick, dSnare, $12, dKick, $06, $0C, $0C
	dc.b dSnare, $06, $06, $06, $06, dKick, $18, dSnare
	dc.b dKick, $0C, $0C, dSnare, $18, dKick, dSnare, $12
	dc.b dKick, $06, $0C, $0C, dSnare, $18, dKick, $18
	dc.b dSnare, dKick, $0C, $0C, dSnare, $18, dKick, $18
	dc.b dSnare, $12, dKick, $06, dKick, $0C, $0C, dSnare
	dc.b $06, $06, $06, $06, dKick, dKick, $12, dElectricHighTom
	dc.b $0C, dKick, $06, $1E, dElectricHighTom, $18, dKick, $06
	dc.b $12, dElectricHighTom, $0C, dKick, $06, $1E, dElectricLowTom, $0C
	dc.b dElectricFloorTom, dKick, $06, $12, dElectricHighTom, $0C, dKick, $06
	dc.b $1E, dElectricHighTom, $18, dKick, $06, $12, dElectricHighTom, $0C
	dc.b dKick, $06, $12, dElectricMidTom, $06, $06, dElectricLowTom, dElectricLowTom
	dc.b dElectricFloorTom, $0C, dKick, $06, $12, dElectricHighTom, $0C, dKick
	dc.b $06, $1E, dElectricHighTom, $18, dKick, $06, $12, dElectricHighTom
	dc.b $0C, dKick, $06, $1E, dElectricHighTom, $18, dKick, $06
	dc.b $12, dElectricHighTom, $0C, dKick, $06, $1E, dElectricHighTom, $0C
	dc.b dKick, dSnare, $06, $0C, $06, $0C, $06, $0C
	dc.b $06, $0C, $06, $06, $0C, dKick, $06, dElectricMidTom
	dc.b dElectricMidTom, dElectricMidTom, dSnare, dElectricLowTom, dElectricLowTom, dElectricFloorTom, $0C, nRst
	dc.b $06, dKick, $0C, dSnare, $0C, nRst, $06, $06
	dc.b dKick, $06, dElectricMidTom, dElectricMidTom, dElectricMidTom, dSnare, dElectricLowTom, dElectricLowTom
	dc.b dElectricFloorTom, $0C, dKick, $06, dKick, $0C, dSnare, $0C
	dc.b nRst, $06, dKick, $06, dKick, $06, dElectricMidTom, dElectricMidTom
	dc.b dElectricMidTom, dSnare, dElectricLowTom, dElectricLowTom, dElectricFloorTom, $0C, nRst, $06
	dc.b dKick, $0C, dSnare, $0C, nRst, $06, $06, dKick
	dc.b $06, dElectricMidTom, dElectricLowTom, dElectricFloorTom, dSnare, $0C, $06, $36
	dc.b nRst, $60, nRst, $30, nRst, $12, dSnare, $03
	dc.b $03, dSnare, $06, $06, $06, $06
	sJump		CC2_Jump9

CC2_Patches:
	; Patch $00
	; $3C
	; $64, $04, $63, $03,	$0E, $0D, $0E, $0C
	; $05, $04, $05, $04,	$07, $01, $07, $01
	; $1C, $1F, $1C, $1F,	$14, $80, $11, $86
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$06, $06, $00, $00
	spMultiple	$04, $03, $04, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0E, $0E, $0D, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $05, $04, $04
	spSustainRt	$07, $07, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$14, $11, $00, $06

	; Patch $01
	; $3C
	; $63, $03, $62, $02,	$0E, $0D, $0E, $0C
	; $05, $04, $05, $04,	$07, $01, $07, $01
	; $1C, $1F, $1C, $1F,	$14, $80, $11, $86
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$06, $06, $00, $00
	spMultiple	$03, $02, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0E, $0E, $0D, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $05, $04, $04
	spSustainRt	$07, $07, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$14, $11, $00, $06

	; Patch $02
	; $35
	; $01, $31, $70, $00,	$1F, $1F, $1F, $1F
	; $0E, $07, $07, $07,	$12, $12, $12, $12
	; $80, $9F, $9F, $9F,	$16, $85, $85, $85
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $07, $03, $00
	spMultiple	$01, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $07, $07, $07
	spSustainRt	$12, $12, $12, $12
	spSustainLv	$08, $09, $09, $09
	spReleaseRt	$00, $0F, $0F, $0F
	spTotalLv	$16, $05, $05, $05

	; Patch $03
	; $35
	; $00, $32, $70, $01,	$1F, $1F, $1F, $1F
	; $07, $05, $07, $03,	$12, $12, $12, $12
	; $80, $9A, $9A, $9A,	$14, $85, $85, $85
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $07, $03, $00
	spMultiple	$00, $00, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $07, $05, $03
	spSustainRt	$12, $12, $12, $12
	spSustainLv	$08, $09, $09, $09
	spReleaseRt	$00, $0A, $0A, $0A
	spTotalLv	$14, $05, $05, $05

	; Patch $04
	; $3C
	; $07, $02, $37, $32,	$1F, $1F, $1F, $1F
	; $10, $0D, $10, $0D,	$10, $15, $00, $15
	; $4F, $5F, $AF, $8F,	$12, $80, $0D, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $03, $00, $03
	spMultiple	$07, $07, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $0D, $0D
	spSustainRt	$10, $00, $15, $15
	spSustainLv	$04, $0A, $05, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$12, $0D, $00, $00

	; Patch $05
	; $3C
	; $4A, $62, $60, $30,	$1F, $1C, $1F, $1C
	; $02, $04, $02, $04,	$08, $08, $08, $08
	; $2F, $1F, $2F, $1F,	$2C, $81, $0C, $83
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$04, $06, $06, $03
	spMultiple	$0A, $00, $02, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$02, $02, $04, $04
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$02, $02, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2C, $0C, $01, $03

	; Patch $06
	; $0C
	; $13, $03, $14, $04,	$10, $15, $10, $15
	; $04, $04, $04, $04,	$09, $01, $09, $01
	; $1C, $1F, $1C, $1F,	$0E, $81, $0E, $82
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$01, $01, $00, $00
	spMultiple	$03, $04, $03, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $10, $15, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $04, $04
	spSustainRt	$09, $09, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$0E, $0E, $01, $02

	; Patch $07
	; $2C
	; $44, $00, $21, $00,	$1F, $1F, $1F, $1F
	; $11, $0C, $0B, $0C,	$04, $05, $00, $05
	; $45, $56, $85, $86,	$14, $84, $18, $84
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$04, $02, $00, $00
	spMultiple	$04, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$11, $0B, $0C, $0C
	spSustainRt	$04, $00, $05, $05
	spSustainLv	$04, $08, $05, $08
	spReleaseRt	$05, $05, $06, $06
	spTotalLv	$14, $18, $04, $04

	; Patch $08
	; $3C
	; $13, $03, $14, $04,	$1F, $1F, $1F, $1F
	; $09, $0B, $09, $0B,	$09, $09, $09, $09
	; $1C, $1F, $1C, $1F,	$10, $80, $0F, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$01, $01, $00, $00
	spMultiple	$03, $04, $03, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $09, $0B, $0B
	spSustainRt	$09, $09, $09, $09
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$10, $0F, $00, $00

	; Patch $09
	; $0C
	; $03, $03, $73, $73,	$10, $09, $10, $09
	; $04, $04, $04, $04,	$09, $01, $09, $01
	; $1D, $1D, $1D, $1D,	$0E, $83, $0E, $84
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$00, $07, $00, $07
	spMultiple	$03, $03, $03, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $10, $09, $09
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $04, $04
	spSustainRt	$09, $09, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0D, $0D, $0D, $0D
	spTotalLv	$0E, $0E, $03, $04

	; Patch $0A
	; $38
	; $04, $12, $30, $71,	$1F, $1F, $1F, $1F
	; $0B, $0B, $0A, $0A,	$00, $00, $00, $00
	; $4F, $4F, $AF, $AB,	$14, $1B, $18, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $03, $01, $07
	spMultiple	$04, $00, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $0A, $0B, $0A
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$04, $0A, $04, $0A
	spReleaseRt	$0F, $0F, $0F, $0B
	spTotalLv	$14, $18, $1B, $00

	; Patch $0B
	; $3C
	; $63, $03, $64, $04,	$0F, $14, $0F, $14
	; $06, $04, $06, $04,	$09, $01, $09, $01
	; $1C, $1F, $1C, $1F,	$11, $80, $10, $84
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$06, $06, $00, $00
	spMultiple	$03, $04, $03, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $14, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $06, $04, $04
	spSustainRt	$09, $09, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$11, $10, $00, $04
