Rabbit_Header:
	sHeaderInit	; Z80 offset is $E7AE
	sHeaderPatch	Rabbit_Patches
	sHeaderCh	$07, $03
	sHeaderTempo	$01, $60
	sHeaderDAC	Rabbit_DAC
	sHeaderFM	Rabbit_FM1, $00, $00
	sHeaderFM	Rabbit_FM2, $00, $15
	sHeaderFM	Rabbit_FM3, $00, $15
	sHeaderFM	Rabbit_FM4, $00, $15
	sHeaderFM	Rabbit_FM5, $00, $1B
	sHeaderPSG	Rabbit_PSG1, $00, $05, $00, VolEnv_00
	sHeaderPSG	Rabbit_PSG2, $00, $05, $00, VolEnv_00
	sHeaderPSG	Rabbit_PSG3, $00, $05, $00, VolEnv_00

Rabbit_FM1:
Rabbit_Loop11:
	dc.b nRst, $48
	sLoop		$00, $06, Rabbit_Loop11
	saVolFM		$24
	sPatFM		$01

Rabbit_Loop12:
	dc.b nC2, $06
	saVolFM		$FD
	sLoop		$00, $0C, Rabbit_Loop12
	sPatFM		$00
	dc.b $18, nRst, $18, nRst, $18

Rabbit_Loop13:
	sPatFM		$00
	dc.b $24, $0C
	saVolFM		$0A
	dc.b $18
	saVolFM		$F6
	sPatFM		$01
	dc.b $06
	saVolFM		$0A
	dc.b $0C
	saVolFM		$05
	dc.b $0C
	saVolFM		$05
	dc.b $12
	saVolFM		$EC
	sPatFM		$00
	dc.b $18
	sLoop		$00, $10, Rabbit_Loop13
	sFade		$89
	sStop	

Rabbit_FM2:
Rabbit_Jump1:
	sPatFM		$04
	ssModZ80	$10, $01, $04, $05
	sCall		Rabbit_Call1
	dc.b nFs4, $18, nB3, nFs4, nA4, $18, nE4, nA4
	dc.b nB3, $18, nEb4, nFs4, nE4, $48

Rabbit_Loop7:
	sCall		Rabbit_Call1
	dc.b nFs4, $18, nB3, $0C, nE4, nFs4, $18, nFs4
	dc.b $18, nB3, $0C, nEb4, nFs4, $18, nAb4, $18
	dc.b nCs4, $0C, nF4, nAb4, $18, nBb4, $30, nA4
	dc.b $0C, nBb4
	sCall		Rabbit_Call1
	dc.b nFs4, $18, nB3, nFs4, nA4, $18, nE4, nA4
	dc.b nB3, $18, nEb4, nFs4, nE4, $48
	sPatFM		$07
	ssModZ80	$15, $01, $17, $04
	sLoop		$00, $02, Rabbit_Loop7

Rabbit_Loop8:
	dc.b nE4, $15, nEb4, $01, sHold, nD4, $01, sHold
	dc.b nCs4
	saVolFM		$0F
	sLoop		$00, $04, Rabbit_Loop8
	sStop	

Rabbit_Call1:
	dc.b nG4, $0C, nB3, nE4, nB3, nG4, nB3, nFs4
	dc.b nB3, nEb4, nB3, nFs4, nB3, nA4, nC4, nE4
	dc.b nC4, nA4, nC4, nG4, nB3, nE4, nB3, nG4
	dc.b nB3
	sRet	
	; Unused
	dc.b $A0, $18, $A9, $AC, $A9, $01, $AA, $01
	dc.b $AB, $2E, $A8, $18, $A7, $01, $E7, $A8
	dc.b $01, $E7, $A9, $46, $A4, $48, $F9

Rabbit_FM3:
	sPatFM		$04
	dc.b nE2, $48, nEb2, nC2, nB1, nB1, $48, nA1
	dc.b nB1, $30, nEb2, $18
	saVolFM		$F0
	sPatFM		$02
	dc.b nE2, $48

Rabbit_Loop10:
	dc.b nE2, $24, $0C, $18, nB1, $30, $18, nA1
	dc.b $24, $0C, $18, nE2, $18, nF2, $01, sHold
	dc.b nFs2, sHold, nG2, $16, nB1, $18, nB1, $24
	dc.b $0C, $18, nB1, $30, $18, nCs2, $24, $0C
	dc.b $18, nBb1, $18, nC2, nD2, nE2, $24, $0C
	dc.b $18, nB1, $30, $18, nA1, $24, $0C, $18
	dc.b nE2, $30, $18, nB1, $24, $0C, $18, nA1
	dc.b $30, $18, nB1, $24, $0C, $18, nE2, $30
	dc.b $18
	sLoop		$00, $02, Rabbit_Loop10
	sStop	

Rabbit_FM4:
Rabbit_Loop9:
	sPatFM		$04
	saDetune	$FB
	ssModZ80	$10, $01, $04, $05
	sCall		Rabbit_Call2
	dc.b nB3, $48, nA3, $48, nB3, $48, nG3, $48
	sLoop		$00, $03, Rabbit_Loop9
	sStop	

Rabbit_Call2:
	dc.b nE4, $18, nG4, nB4, nB3, nFs4, nEb4, nA4
	dc.b nE4, nC4, nE4, nB3, nG3
	sRet	

Rabbit_FM5:
	saDetune	$FB
	dc.b nRst, $0C
	sJump		Rabbit_Jump1
	; Unused
	dc.b $F2

Rabbit_PSG1:
	sVolEnvPSG	VolEnv_04
	ssModZ80	$01, $01, $02, $03
	dc.b nG2, $48, nFs2, nE2, nE2, nB2, $48, nA2
	dc.b nB2, nG2

Rabbit_Loop3:
	dc.b nG2, $48, nFs2, nE2, nE2, nE2, nEb2, nCs2
	dc.b nD2, nG2, $48, nFs2, nE2, nE2, nB2, $48
	dc.b nA2, nB2, nG2
	sLoop		$00, $02, Rabbit_Loop3
	sStop	

Rabbit_PSG2:
	sVolEnvPSG	VolEnv_04
	dc.b nE2, $48, nEb2, nC2, nB1, nFs1, $48, nE1
	dc.b nFs1, nB1

Rabbit_Loop2:
	dc.b nE2, $48, nEb2, nC2, nB1, nB1, nB1, nAb1
	dc.b nBb1, nE2, $48, nEb2, nC2, nB1, nFs1, $48
	dc.b nE1, nFs1, nB1
	sLoop		$00, $02, Rabbit_Loop2
	sStop	

Rabbit_PSG3:
	sVolEnvPSG	VolEnv_04
	dc.b nB2, $48, nB2, nA2, nG2, nEb2, $48, nC2
	dc.b nEb2, nE2

Rabbit_Loop1:
	dc.b nB2, $48, nB2, nA2, nG2, nFs2, nFs2, nAb2
	dc.b nF2, nB2, $48, nB2, nA2, nG2, nEb2, $48
	dc.b nC2, nEb2, nE2
	sLoop		$00, $02, Rabbit_Loop1
	sStop	

Rabbit_DAC:
	sStop	

Rabbit_Patches:
	; Patch $00
	; $34
	; $30, $40, $70, $20,	$1F, $1F, $1F, $1F
	; $17, $1F, $00, $00,	$13, $10, $10, $00
	; $0F, $0F, $0F, $0F,	$10, $80, $10, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $07, $04, $02
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$17, $00, $1F, $00
	spSustainRt	$13, $10, $10, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $10, $00, $00

	; Patch $01
	; $34
	; $56, $77, $21, $21,	$1F, $1F, $1F, $1F
	; $07, $00, $16, $1B,	$00, $10, $10, $15
	; $0F, $0F, $0F, $0F,	$05, $8E, $10, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$05, $02, $07, $02
	spMultiple	$06, $01, $07, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $16, $00, $1B
	spSustainRt	$00, $10, $10, $15
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$05, $10, $0E, $00

	; Patch $02
	; $2B
	; $20, $30, $61, $11,	$1F, $1F, $19, $18
	; $10, $00, $10, $10,	$00, $00, $00, $09
	; $0F, $0F, $1F, $1F,	$20, $20, $30, $80
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$02, $06, $03, $01
	spMultiple	$00, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $19, $1F, $18
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $00, $10
	spSustainRt	$00, $00, $00, $09
	spSustainLv	$00, $01, $00, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $30, $20, $00

	; Patch $03
	; $34
	; $73, $29, $34, $68,	$1A, $18, $0D, $1B
	; $1F, $1F, $1F, $0F,	$06, $0C, $00, $0D
	; $0F, $0F, $0F, $0F,	$18, $82, $0D, $83
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$07, $03, $02, $06
	spMultiple	$03, $04, $09, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1A, $0D, $18, $1B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $1F, $1F, $0F
	spSustainRt	$06, $00, $0C, $0D
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $0D, $02, $03

	; Patch $04
	; $3E
	; $41, $11, $5C, $34,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$80, $80, $80, $80
	; $1F, $1F, $1F, $1F,	$21, $87, $98, $8E
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$04, $05, $01, $03
	spMultiple	$01, $0C, $01, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$80, $80, $80, $80
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $18, $07, $0E

	; Patch $05
	; $22
	; $34, $14, $08, $1C,	$1E, $1F, $1F, $1F
	; $13, $1F, $0B, $1D,	$00, $0F, $00, $11
	; $1C, $1A, $1B, $1F,	$10, $02, $00, $85
	spAlgorithm	$02
	spFeedback	$04
	spDetune	$03, $00, $01, $01
	spMultiple	$04, $08, $04, $0C
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $0B, $1F, $1D
	spSustainRt	$00, $00, $0F, $11
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0B, $0A, $0F
	spTotalLv	$10, $00, $02, $05

	; Patch $06
	; $2B
	; $28, $39, $28, $36,	$1F, $1F, $19, $18
	; $10, $00, $10, $10,	$00, $00, $00, $0A
	; $1F, $1F, $1F, $1F,	$00, $30, $30, $89
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$02, $02, $03, $03
	spMultiple	$08, $08, $09, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $19, $1F, $18
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $00, $10
	spSustainRt	$00, $00, $00, $0A
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $30, $30, $09

	; Patch $07
	; $0A
	; $21, $53, $41, $22,	$13, $1F, $11, $13
	; $10, $00, $10, $10,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$00, $1B, $19, $80
	spAlgorithm	$02
	spFeedback	$01
	spDetune	$02, $04, $05, $02
	spMultiple	$01, $01, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$13, $11, $1F, $13
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $00, $10
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $19, $1B, $00

	; Patch $08
	; $34
	; $73, $29, $34, $68,	$1A, $18, $0D, $1B
	; $1F, $1F, $1F, $0F,	$06, $0C, $00, $0D
	; $0F, $0F, $0F, $0F,	$20, $80, $20, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$07, $03, $02, $06
	spMultiple	$03, $04, $09, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1A, $0D, $18, $1B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $1F, $1F, $0F
	spSustainRt	$06, $00, $0C, $0D
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $20, $00, $00
