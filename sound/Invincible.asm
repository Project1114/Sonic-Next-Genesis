Invincible_Header:
	sHeaderInit	; Z80 offset is $EF65
	sHeaderPatch	Invincible_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $02
	sHeaderDAC	Invincible_DAC
	sHeaderFM	Invincible_FM1, $F4, $0B
	sHeaderFM	Invincible_FM2, $00, $10
	sHeaderFM	Invincible_FM3, $00, $08
	sHeaderFM	Invincible_FM4, $0C, $18
	sHeaderFM	Invincible_FM5, $0C, $18
	sHeaderPSG	Invincible_PSG1, $DC, $05, $00, VolEnv_00
	sHeaderPSG	Invincible_PSG2, $DC, $05, $00, VolEnv_00
	sHeaderPSG	Invincible_PSG3, $00, $02, $00, VolEnv_00

Invincible_FM5:
	sPatFM		$00
	sPan		spCenter, $00
	dc.b nRst, $24, nRst, $18, nB3, nG4, nB4, nCs5
	dc.b nFs4, nCs4, nFs3, nRst, nB3, nG4, nB3, nFs3
	dc.b nCs4, nFs4, nCs5, nRst, nB3, nG4, nB4, nCs5
	dc.b nFs4, nCs4, nFs3, nRst, nB3, nG4, nB3, nFs3
	dc.b nCs4, nFs4, nCs5
	saVolFM		$F8
	dc.b nB3, $30, sHold, $30
	sStop	

Invincible_FM4:
	sPatFM		$00
	sPan		spRight, $00
	dc.b nRst, $24, nRst, $18, nE4, nB4, nE5, nFs5
	dc.b nCs5, nFs4, nCs4, nRst, nE4, nB4, nE4, nCs4
	dc.b nFs4, nCs5, nFs5, nRst, nE4, nB4, nE5, nFs5
	dc.b nCs5, nFs4, nCs4, nRst, nE4, nB4, nE4, nCs4
	dc.b nFs4, nCs5, nFs5
	saVolFM		$F8
	dc.b nB2, $30, sHold, $30
	sStop	

Invincible_FM3:
	sPatFM		$01
	dc.b nRst, $24, nG2, $12, nB2, nG3, $0C, nG2
	dc.b nB2, nG3, nB2, nA2, $12, nD3, nCs3, $0C
	dc.b nA2, nCs3, nD3, $06, nCs3, $0C, $06, nG2
	dc.b $12, nB2, nG3, $0C, nG2, nB2, nG3, nB2
	dc.b nA2, $12, nD3, nCs3, $0C, nA2, nCs3, nD3
	dc.b nE3, nG2, $12, nB2, nG3, $0C, nG2, nB2
	dc.b nG3, nB2, nA2, $12, nD3, nCs3, $0C, nA2
	dc.b nCs3, nD3, $06, nCs3, $0C, $06, nG2, $12
	dc.b nB2, nG3, $0C, nG2, nB2, nG3, nB2, nA2
	dc.b $12, nD3, nCs3, $0C, nA2, nCs3, nD3, nE3
	dc.b nB2, $30, sHold, $30
	sStop	

Invincible_FM2:
	sPan		spLeft, $00
	dc.b nRst, $24
	sPatFM		$02
	dc.b nA5, $03, nB5, $2D, nA6, $03, nB6, $09
	dc.b nA6, $0C, nE6, nCs6
	sPatFM		$03
	dc.b nE4, $06, nA4, nB4, nE5, nA5, nB5, nE4
	dc.b nA4, nB4, nFs2, nB2, nFs3, nB3, nFs4, nB4
	dc.b nFs5
	sPatFM		$02
	dc.b nA5, $03, nB5, $2D, nA6, $03, nB6, $09
	dc.b nA6, $0C, nE6, nCs6
	sPatFM		$03
	dc.b nE4, $06, nA4, nB4, nE5, nA5, nB5, nE4
	dc.b nA4, nB4, nFs2, nB2, nFs3, nB3, nFs4, nB4
	dc.b nFs5
	sPatFM		$02
	dc.b nA5, $03, nB5, $2D, nA6, $03, nB6, $09
	dc.b nA6, $0C, nE6, nCs6
	sPatFM		$03
	dc.b nB4, $06, nCs4, nCs5, nE5, nG5, nB5, nCs6
	dc.b nG5, nFs4, nG4, nB4, nFs3, nB3, nFs5, nB5
	dc.b nFs6, nFs4, nG4, nB4, nCs5, nE5, nFs5, nG5
	dc.b nB5, nCs6, nE6, nFs6, nG6, nB6, nCs7, nD7
	dc.b nFs7, nCs5, nD5, nCs5, nAb4, nCs6, nD6, nCs6
	dc.b nAb5, nFs6, $03, nG6, nFs6, $06, nD6, nCs6
	dc.b nD5, nFs5, nG5, nCs6
	sPatFM		$04
	saVolFM		$FB
	dc.b nB4, $30, sHold, $30
	sStop	

Invincible_FM1:
	dc.b nRst, $24
	ssModZ80	$08, $02, $02, $02
	sPatFM		$04
	dc.b nA5, $03, nB5, $2D, nA6, $03, nB6, $09
	dc.b nA6, $0C, nE6, nCs6, nA5, $03, nB5, $2D
	dc.b nE6, $03, nCs6, $2D, nA5, $03, nB5, $2D
	dc.b nB4, $03, nCs5, $09, nE5, $0C, nB5, nE6
	dc.b nA6, $03, nB6, $2D, nE6, $03, nFs6, $2D
	dc.b nB4, $06, nRst, nCs6, nB5, nCs7, $30, sHold
	dc.b $0C, nB5, $03, nG5, nFs5, nE5, nCs5, $30
	dc.b sHold, $30, nRst, $18, nD5, nB5, $03, nCs6
	dc.b $09, nB5, $12, nG5, nRst, $18, nB5, nCs6
	dc.b nFs6, nFs6, $30, sHold, $30
	sStop	

Invincible_PSG1:
	sVolEnvPSG	VolEnv_00
	ssModZ80	$18, $02, $02, $02
	dc.b nRst, $24, nA5, $03, nB5, $2D, nA6, $03
	dc.b nB6, $09, nA6, $0C, nE6, nCs6, nA5, $03
	dc.b nB5, $2D, nE6, $03, nCs6, $2D, nA5, $03
	dc.b nB5, $2D, nB4, $03, nCs5, $09, nE5, $0C
	dc.b nB5, nE6, nA6, $03, nB6, $2D, nE6, $03
	dc.b nFs6, $2D, nB4, $06, nRst, nCs6, nB5, nCs7
	dc.b $30, sHold, $0C, nB5, $03, nG5, nFs5, nE5
	dc.b nCs5, $30, sHold, $30, nRst, $18, nD5, nB5
	dc.b $03, nCs6, $09, nB5, $12, nG5, nRst, $18
	dc.b nB5, nCs6, nFs6, nB4, $30, sHold, $30
	sStop	

Invincible_PSG2:
	sVolEnvPSG	VolEnv_00
	ssModZ80	$18, $02, $02, $02
	dc.b nRst, $06
	saDetune	$01
	saVolPSG	$02
	dc.b nRst, $24, nA5, $03, nB5, $2D, nA6, $03
	dc.b nB6, $09, nA6, $0C, nE6, nCs6, nA5, $03
	dc.b nB5, $2D, nE6, $03, nCs6, $2D, nA5, $03
	dc.b nB5, $2D, nB4, $03, nCs5, $09, nE5, $0C
	dc.b nB5, nE6, nA6, $03, nB6, $2D, nE6, $03
	dc.b nFs6, $2D, nB4, $06, nRst, nCs6, nB5, nCs7
	dc.b $30, sHold, $0C, nB5, $03, nG5, nFs5, nE5
	dc.b nCs5, $30, sHold, $30, nRst, $18, nD5, nB5
	dc.b $03, nCs6, $09, nB5, $12, nG5, nRst, $18
	dc.b nB5, nCs6, nFs6, nFs6, $30, sHold, $30
	sStop	

Invincible_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02
	dc.b nRst, $24

Invincible_Loop1:
	dc.b nA5, $0C, $06, nA5, nA5, $0C, $06, nA5
	dc.b nA5, $0C, $06, nA5, nA5, $0C, nA5, $06
	dc.b nA5
	sLoop		$00, $03, Invincible_Loop1
	dc.b nA5, $0C, $06, nA5, nA5, $0C, $06, nA5
	dc.b nA5, $0C, $06, nA5
	sVolEnvPSG	VolEnv_03
	dc.b nA5, $0C
	sVolEnvPSG	VolEnv_02
	dc.b nA5, $06, nA5, nA5, $0C, $06, nA5, nA5
	dc.b $0C, $06, nA5, nA5, $0C, $06, nA5, nA5
	dc.b $0C, $06, nA5, nA5, $0C, $06, nA5, nA5
	dc.b $0C, $06, nA5, nA5, $0C, $06, nA5
	sVolEnvPSG	VolEnv_03
	dc.b nA5, $0C
	sVolEnvPSG	VolEnv_02
	dc.b nA5, $06, nA5, nA5, $0C, $06, nA5, nA5
	dc.b $0C, $06, nA5, nA5, $0C, $06, nA5
	sVolEnvPSG	VolEnv_03
	dc.b nA5, $0C
	sVolEnvPSG	VolEnv_02
	dc.b nA5, $06, nA5
	sVolEnvPSG	VolEnv_01
	dc.b nA5, $18, nA5, nA5, nA5
	sVolEnvPSG	VolEnv_02
	saVolPSG	$FE
	sVolEnvPSG	VolEnv_05
	dc.b nAb5, $4C
	sStop	

Invincible_DAC:
	dc.b dKick, $0C, dSnare, dSnare, $06, dSnare
Invincible_Loop2:
	dc.b dKick, $18, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare
	sLoop		$00, $03, Invincible_Loop2
	dc.b dKick, $18, dSnare, dKick, dSnare, dKick, $01, nRst
	dc.b $05, nRst, $06, nRst, nRst, dSnare, $01, nRst
	dc.b $05, nRst, $06, nRst, nRst, dKick, $01, nRst
	dc.b $05, dHighTom, $03, dHighTom, dMidTom, $01, nRst, $05
	dc.b dLowTom, $03, dLowTom, dSnare, $01, nRst, $05, nRst
	dc.b $06, dSnare, $01, nRst, $05, $01, nRst, $05
	dc.b dSnare, $30
	sStop	

Invincible_Patches:
	; Patch $00
	; $3D
	; $00, $20, $50, $01,	$12, $14, $14, $0F
	; $0A, $05, $05, $05,	$07, $07, $05, $05
	; $26, $28, $28, $18,	$19, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $05, $02, $00
	spMultiple	$00, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $14, $14, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $05, $05, $05
	spSustainRt	$07, $05, $07, $05
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$06, $08, $08, $08
	spTotalLv	$19, $00, $00, $00

	; Patch $01
	; $08
	; $0A, $70, $30, $00,	$1F, $1F, $5F, $5F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $2F, $2F, $2F, $2F,	$24, $2D, $13, $80
	spAlgorithm	$00
	spFeedback	$01
	spDetune	$00, $03, $07, $00
	spMultiple	$0A, $00, $00, $00
	spRateScale	$00, $01, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $0A, $0E, $0A
	spSustainRt	$00, $04, $04, $03
	spSustainLv	$02, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $13, $2D, $00

	; Patch $02
	; $07
	; $05, $00, $01, $02,	$1F, $5F, $DF, $5F
	; $08, $08, $08, $08,	$06, $06, $06, $06
	; $5F, $5F, $5F, $5F,	$88, $88, $88, $88
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$05, $01, $00, $02
	spRateScale	$00, $03, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $08
	spSustainRt	$06, $06, $06, $06
	spSustainLv	$05, $05, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$08, $08, $08, $08

	; Patch $03
	; $29
	; $35, $32, $31, $31,	$DF, $1F, $1F, $DF
	; $04, $05, $04, $01,	$04, $04, $04, $02
	; $F7, $07, $17, $AC,	$A9, $A0, $8F, $80
	spAlgorithm	$01
	spFeedback	$05
	spDetune	$03, $03, $03, $03
	spMultiple	$05, $01, $02, $01
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $05, $01
	spSustainRt	$04, $04, $04, $02
	spSustainLv	$0F, $01, $00, $0A
	spReleaseRt	$07, $07, $07, $0C
	spTotalLv	$29, $0F, $20, $00

	; Patch $04
	; $3D
	; $02, $02, $01, $02,	$14, $0E, $8C, $0E
	; $08, $0A, $07, $0A,	$00, $06, $06, $06
	; $1F, $1F, $1F, $1F,	$1A, $84, $84, $84
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $01, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$14, $0C, $0E, $0E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $07, $0A, $0A
	spSustainRt	$00, $06, $06, $06
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $04, $04, $04
