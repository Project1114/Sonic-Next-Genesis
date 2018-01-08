Bonus_Header:
	sHeaderInit	; Z80 offset is $C58B
	sHeaderPatch	Bonus_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$03, $00
	sHeaderDAC	Bonus_DAC
	sHeaderFM	Bonus_FM1, $0C, $14
	sHeaderFM	Bonus_FM2, $0C, $0A
	sHeaderFM	Bonus_FM3, $0C, $11
	sHeaderFM	Bonus_FM4, $0C, $1C
	sHeaderFM	Bonus_FM5, $0C, $17
	sHeaderPSG	Bonus_PSG1, $00, $09, $00, VolEnv_00
	sHeaderPSG	Bonus_PSG1, $00, $03, $00, VolEnv_00
	sHeaderPSG	Bonus_PSG1, $00, $03, $00, VolEnv_00

Bonus_DAC:
Bonus_Loop4:
Bonus_Jump6:
	dc.b dKick, $02, nRst, dKick, dKick, dKick, nRst, dKick
	dc.b dKick, dKick, nRst, dKick, dKick, dKick, nRst, dKick
	dc.b dKick, dKick, $02, nRst, dKick, dKick, dKick, nRst
	dc.b dKick, dKick, dKick, nRst, dKick, dKick, dKick, nRst
	dc.b dKick, dKick
	sLoop		$00, $04, Bonus_Loop4
	dc.b dKick, $02, nRst, dKick, dKick, dSnare, nRst, dKick
	dc.b dKick, dKick, nRst, dKick, dKick, dSnare, nRst, dKick
	dc.b dKick, dKick, $02, nRst, dKick, dKick, dSnare, nRst
	dc.b dKick, dKick, dKick, nRst, dKick, dKick, dSnare, nRst
	dc.b dKick, dKick, dKick, $02, nRst, dKick, dKick, dSnare
	dc.b nRst, dKick, dKick, dKick, nRst, dKick, dKick, dSnare
	dc.b nRst, dKick, dKick, dKick, $02, nRst, dKick, dKick
	dc.b dSnare, nRst, dKick, dKick, dKick, dKick, dKick, dKick
	saVolFM		$FE
	dc.b dSnare, dSnare, dSnare, dKick
	saVolFM		$02
	dc.b dKick, $02, nRst, dKick, dKick, dSnare, nRst, dKick
	dc.b dKick, dKick, nRst, dKick, dKick, dSnare, nRst, dKick
	dc.b dKick, dKick, $02, nRst, dKick, dKick, dSnare, nRst
	dc.b dKick, dKick, dKick, nRst, dKick, dKick, dSnare, nRst
	dc.b dKick, dKick, dKick, $02, nRst, dKick, dKick, dSnare
	dc.b nRst, dKick, dKick, dKick, nRst, dKick, dKick, dSnare
	dc.b nRst, dKick, dKick, dKick, $02, nRst, dKick, dKick
	dc.b dSnare, nRst, dKick, dKick, dKick, dKick, dKick, nRst
	saVolFM		$FE
	dc.b dSnare, dSnare, dSnare, dSnare
	saVolFM		$02
	sJump		Bonus_Jump6
	; Unused
	dc.b $F2

Bonus_FM1:
Bonus_Jump5:
	sPatFM		$00
	ssModZ80	$1C, $01, $05, $05
	dc.b nEb3, $10, sHold, $04, nE3, $04, nAb3, nB3
	dc.b nEb4, $08, nB3, nAb3, nE3, nCs4, $10, sHold
	dc.b $08, nA3, $04, nFs3, $18, sHold, $04, nFs3
	dc.b $04, nG3, nAb3, $10, sHold, $04, nAb3, $04
	dc.b nFs3, nAb3, nE3, $08, nAb3, nB3, nEb4, nE4
	dc.b $18, nE4, $02, nEb4, nD4, nCs4, $18, sHold
	dc.b $02, nB3, $04, nCs4, nEb4, $10, sHold, $04
	dc.b nB3, $04, nB3, nCs4, nEb4, $20, sHold, $08
	dc.b nCs4, $04, nEb4, nE4, $08, nFs4, nCs4, $0C
	dc.b nAb4, nFs4, $04, nE4, nEb4, $0C, nB3, $20
	dc.b sHold, $04, nCs4, $04, nEb4, nE4, nFs4, nEb4
	dc.b $0C, nAb4, $20, sHold, $08, sHold, $04, nCs3
	dc.b $04, nD3
	sJump		Bonus_Jump5
	; Unused
	dc.b $F2

Bonus_FM2:
Bonus_Loop3:
Bonus_Jump4:
	sPatFM		$01
	saTranspose	$F4
	saVolFM		$FF
	dc.b nCs2, $02, nCs2, nCs2, nCs4, nRst, nCs4, nCs2
	dc.b nCs2, nCs2, $02, nCs2, nCs2, nCs4, nRst, nCs4
	dc.b nCs2, nCs2, nCs2, $02, nCs2, nCs2, nCs4, nRst
	dc.b nCs4, nCs2, nCs2, nCs2, $02, nCs2, nCs2, nCs4
	dc.b nCs2, nCs3, nCs3, nCs3, nD2, $02, nD2, nD2
	dc.b nD4, nRst, nD4, nD2, nD2, nD2, $02, nD2
	dc.b nD2, nD4, nRst, nD4, nD2, nD2, nD2, $02
	dc.b nD2, nD2, nD4, nRst, nD4, nD2, nD2, nD2
	dc.b $02, nD2, nD2, nD4, nD2, nD4, nD3, nD3
	saVolFM		$01
	saTranspose	$0C
	sLoop		$00, $02, Bonus_Loop3
	dc.b nCs2, $02, nCs2, nCs3, nCs2, nCs2, $02, nCs2
	dc.b nCs3, nCs2, nCs2, $02, nCs2, nCs3, nCs2, nCs2
	dc.b $02, nCs2, nCs3, nCs2, nB1, $02, nB1, nB2
	dc.b nB1, nB1, $02, nB1, nB2, nB1, nB1, $02
	dc.b nB1, nB2, nB1, nB1, $02, nB1, nB2, $01
	dc.b nRst, nB2, nRst, nBb1, $02, nBb1, nBb2, nBb1
	dc.b nBb1, $02, nBb1, nBb2, nBb1, nBb1, $02, nBb1
	dc.b nBb2, nBb1, nBb1, $02, nBb1, nBb2, nBb1, nA1
	dc.b $02, nA1, nA2, nA1, nA1, $02, nA1, nA2
	dc.b nA1, nA1, $02, nA1, nA2, nA1, nA1, $02
	dc.b nA1, nA2, $01, nRst, nA2, nRst, nAb1, $02
	dc.b nAb1, nAb2, nAb1, nAb1, $02, nAb1, nAb2, nAb1
	dc.b nAb1, $02, nAb1, nAb2, nAb1, nAb1, $02, nAb1
	dc.b nAb2, nAb1, nA1, $02, nA1, nA2, nA1, nA1
	dc.b $02, nA1, nA2, nA1, nA1, $02, nA1, nA2
	dc.b nA1, nA1, $02, nA1, nA2, $01, nRst, nA2
	dc.b nRst, nB1, $02, nB1, nB2, nB1, nB1, $02
	dc.b nB1, nB2, nB1, nB1, $02, nB1, nB2, nB1
	dc.b nB1, $02, nB1, nB2, nB1, nC2, $02, nC2
	dc.b nC3, nC2, nC2, $02, nC2, nC3, nC2, nC2
	dc.b $02, nC2, nC3, nC2, nC2, $02, nC2, nC3
	dc.b $01, nRst, nC3, nRst
	sJump		Bonus_Jump4
	; Unused
	dc.b $F2

Bonus_FM3:
Bonus_Loop2:
Bonus_Jump3:
	sPatFM		$02
	dc.b nEb3, $04, nEb3, nEb3, $01, nRst, nEb3, nRst
	dc.b nEb3, nRst, nEb3, $04, nEb3, $02, nEb3, $04
	dc.b nEb3, $01, nRst, nEb3, nRst, nEb3, nRst, nEb3
	dc.b nRst, nEb3, $04, nEb3, nEb3, $01, nRst, nEb3
	dc.b nRst, nEb3, nRst, nEb3, $04, nEb3, $02, nEb3
	dc.b $04, nEb3, $01, nRst, nEb3, nRst, nEb3, nRst
	dc.b nEb3, nRst, nE3, $04, nE3, nE3, $01, nRst
	dc.b nE3, nRst, nE3, nRst, nE3, $04, nE3, $02
	dc.b nE3, $04, nE3, $01, nRst, nE3, nRst, nE3
	dc.b nRst, nE3, nRst, nE3, $04, nE3, nE3, $01
	dc.b nRst, nE3, nRst, nE3, nRst, nE3, $04, nE3
	dc.b $02, nE3, $04, nE3, $01, nRst, nE3, nRst
	dc.b nE3, nRst, nE3, nRst
	sLoop		$00, $02, Bonus_Loop2
	dc.b nEb3, $04, nEb3, nEb3, nEb3, $02, nEb3, $04
	dc.b nEb3, nEb3, $02, nEb3, $04, nEb3, nEb3, $04
	dc.b nEb3, nEb3, nEb3, $02, nEb3, $04, nEb3, nEb3
	dc.b $02, nEb3, $04, nEb3, nCs3, $04, nCs3, nCs3
	dc.b nCs3, $02, nCs3, $04, nCs3, nCs3, $02, nCs3
	dc.b $04, nCs3, nCs3, $04, nCs3, nCs3, nCs3, $02
	dc.b nCs3, $04, nCs3, nCs3, $02, nCs3, $04, nCs3
	dc.b nB2, $04, nB2, nB2, nB2, $02, nB2, $04
	dc.b nB2, nB2, $02, nB2, $04, nB2, nCs3, $04
	dc.b nCs3, nCs3, nCs3, $02, nCs3, $04, nCs3, nCs3
	dc.b $02, nCs3, $04, nCs3, nEb3, $04, nEb3, nEb3
	dc.b nEb3, $02, nEb3, $04, nEb3, nEb3, $02, nEb3
	dc.b $04, nEb3, nEb3, $04, nEb3, nEb3, nEb3, $02
	dc.b nEb3, $04, nEb3, nEb3, $02
	saVolFM		$FC
	dc.b nEb3, $01, nRst, nEb3, nRst, nEb3, nRst, nEb3
	dc.b nRst
	saVolFM		$04
	sJump		Bonus_Jump3
	; Unused
	dc.b $F2

Bonus_FM4:
Bonus_Jump2:
	sPatFM		$00
	ssModZ80	$1C, $01, $05, $05
	saDetune	$03
	dc.b nRst, $04, nEb3, $10, sHold, $04, nE3, $04
	dc.b nAb3, nB3, nEb4, $08, nB3, nAb3, nE3, nCs4
	dc.b $10, sHold, $08, nA3, $04, nFs3, $18, sHold
	dc.b $04, nFs3, $04, nG3, nAb3, $10, sHold, $04
	dc.b nAb3, $04, nFs3, nAb3, nE3, $08, nAb3, nB3
	dc.b nEb4, nE4, $18, nE4, $02, nEb4, nD4, nCs4
	dc.b $18, sHold, $02, nB3, $04, nCs4, nEb4, $10
	dc.b sHold, $04, nB3, $04, nB3, nCs4, nEb4, $20
	dc.b sHold, $08, nCs4, $04, nEb4, nE4, $08, nFs4
	dc.b nCs4, $0C, nAb4, nFs4, $04, nE4, nEb4, $0C
	dc.b nB3, $20, sHold, $04, nCs4, $04, nEb4, nE4
	dc.b nFs4, nEb4, $0C, nAb4, $20, sHold, $08, nCs3
	dc.b $04, nD3
	sJump		Bonus_Jump2
	; Unused
	dc.b $F2

Bonus_FM5:
Bonus_Loop1:
Bonus_Jump1:
	sPatFM		$02
	dc.b nB2, $04, nB2, nB2, $01, nRst, nB2, nRst
	dc.b nB2, nRst, nB2, $04, nB2, $02, nB2, $04
	dc.b nB2, $01, nRst, nB2, nRst, nB2, nRst, nB2
	dc.b nRst, nB2, $04, nB2, nB2, $01, nRst, nB2
	dc.b nRst, nB2, nRst, nB2, $04, nB2, $02, nB2
	dc.b $04, nB2, $01, nRst, nB2, nRst, nB2, nRst
	dc.b nB2, nRst, nA2, $04, nA2, nA2, $01, nRst
	dc.b nA2, nRst, nA2, nRst, nA2, $04, nA2, $02
	dc.b nA2, $04, nA2, $01, nRst, nA2, nRst, nA2
	dc.b nRst, nA2, nRst, nA2, $04, nA2, nA2, $01
	dc.b nRst, nA2, nRst, nA2, nRst, nA2, $04, nA2
	dc.b $02, nA2, $04, nA2, $01, nRst, nA2, nRst
	dc.b nA2, nRst, nA2, nRst
	sLoop		$00, $02, Bonus_Loop1
	dc.b nB2, $04, nB2, nB2, nB2, $02, nB2, $04
	dc.b nB2, nB2, $02, nB2, $04, nB2, nB2, $04
	dc.b nB2, nB2, nB2, $02, nB2, $04, nB2, nB2
	dc.b $02, nB2, $04, nB2, nAb3, $04, nAb3, nAb3
	dc.b nAb3, $02, nAb3, $04, nAb3, nAb3, $02, nAb3
	dc.b $04, nAb3, nAb3, $04, nAb3, nAb3, nAb3, $02
	dc.b nAb3, $04, nAb3, nAb3, $02, nAb3, $04, nAb3
	saTranspose	$0C
	dc.b nEb2, $04, nEb2, nEb2, nEb2, $02, nEb2, $04
	dc.b nEb2, nEb2, $02, nEb2, $04, nEb2, nE2, $04
	dc.b nE2, nE2, nE2, $02, nE2, $04, nE2, nE2
	dc.b $02, nE2, $04, nE2, nFs2, $04, nFs2, nFs2
	dc.b nFs2, $02, nFs2, $04, nFs2, nFs2, $02, nFs2
	dc.b $04, nFs2, $02, nFs2, nFs2, $04, nFs2, nFs2
	dc.b nFs2, $02, nFs2, $04, nFs2, nFs2, $02
	saVolFM		$FC
	dc.b nFs2, $01, nRst, nFs2, nRst, nFs2, nRst, nFs2
	dc.b nRst
	saVolFM		$04
	saTranspose	$F4
	sJump		Bonus_Jump1
	; Unused
	dc.b $F2

Bonus_PSG1:
	sStop	

Bonus_Patches:
	; Patch $00
	; $38
	; $33, $01, $51, $01,	$10, $13, $1A, $1B
	; $0F, $1F, $1F, $1F,	$01, $01, $01, $01
	; $33, $03, $03, $08,	$19, $1B, $1A, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$03, $05, $00, $00
	spMultiple	$03, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $1A, $13, $1B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $1F, $1F, $1F
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$03, $00, $00, $00
	spReleaseRt	$03, $03, $03, $08
	spTotalLv	$19, $1A, $1B, $00

	; Patch $01
	; $3A
	; $70, $76, $30, $71,	$1F, $95, $1F, $1F
	; $0E, $0F, $05, $10,	$07, $06, $06, $1F
	; $28, $47, $17, $F7,	$1D, $11, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $07, $07
	spMultiple	$00, $00, $06, $01
	spRateScale	$00, $00, $02, $00
	spAttackRt	$1F, $1F, $15, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $05, $0F, $10
	spSustainRt	$07, $06, $06, $1F
	spSustainLv	$02, $01, $04, $0F
	spReleaseRt	$08, $07, $07, $07
	spTotalLv	$1D, $28, $11, $00

	; Patch $02
	; $3A
	; $0C, $1A, $01, $53,	$1F, $1F, $1F, $1F
	; $0F, $02, $0A, $10,	$04, $04, $04, $1F
	; $1A, $A6, $36, $F8,	$16, $2E, $1A, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $01, $05
	spMultiple	$0C, $01, $0A, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0A, $02, $10
	spSustainRt	$04, $04, $04, $1F
	spSustainLv	$01, $03, $0A, $0F
	spReleaseRt	$0A, $06, $06, $08
	spTotalLv	$16, $1A, $2E, $00
