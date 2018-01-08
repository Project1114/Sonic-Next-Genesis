BossE_Header:
	sHeaderInit	; Z80 offset is $D89A
	sHeaderPatch	BossE_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$02, $30
	sHeaderDAC	BossE_DAC
	sHeaderFM	BossE_FM1, $E5, $11
	sHeaderFM	BossE_FM2, $F1, $08
	sHeaderFM	BossE_FM3, $F1, $17
	sHeaderFM	BossE_FM4, $F1, $17
	sHeaderFM	BossE_FM5, $E5, $17
	sHeaderPSG	BossE_PSG1, $00, $08, $00, VolEnv_00
	sHeaderPSG	BossE_PSG2, $00, $08, $00, VolEnv_00
	sHeaderPSG	BossE_PSG3, $F4, $03, $00, VolEnv_00

BossE_FM1:
	saTranspose	$0C

BossE_Jump2:
BossE_Loop1:
	sPatFM		$01
	sCall		BossE_Call1
	sLoop		$00, $02, BossE_Loop1
	sPatFM		$02
	dc.b nC7, $12, nB6, $02, nC7, nB6, nF6, $18
	saTranspose	$F4
	sPatFM		$03
	dc.b nRst, $0C, nA5, $06, nC6, nEb6, nD6, nC6
	dc.b $02, nD6, nC6, nB5, $06
	saTranspose	$0C
	sPatFM		$02
	dc.b nC7, $12, nB6, $02, nC7, nB6, nE6, $18
	saTranspose	$F4
	sPatFM		$03
	dc.b nE5, $06, nF5, nAb5, nA5, nB5, nA5, nAb5
	dc.b $02, nA5, nAb5, nF5, $06
	saTranspose	$0C
	sPatFM		$02
	dc.b nC7, $12, nB6, $02, nC7, nB6, nF6, $18
	saVolFM		$FE
	dc.b sHold, $0C, nA6, $06, nB6, nC7, nB6, nC7
	dc.b nD7
	saVolFM		$FE
	dc.b nE7, $10, nD7, $04, nE7, nF7, $10, nE7
	dc.b $04, nD7
	saVolFM		$FE
	dc.b nC7, $08, nB6, nAb6, nF6, $04, nD6, nB5
	dc.b nC6, $02, nD6, nE6, nF6, nAb6, nB6
	saVolFM		$06
	sJump		BossE_Jump2

BossE_Call1:
	dc.b nE7, $18, nD7, nB6, $0C, nA6, $06, nB6
	dc.b nC7, nB6, nA6, $02, nB6, nAb6, nF6, $06
	dc.b nE6, $24, nF6, $02, nAb6, nF6, nD6, $06
	dc.b nC6, $12, nD6, $02, nE6, nC6, nB5, $12
	dc.b nC6, $02, nD6, nB5, nA5, $12, nB5, $02
	dc.b nC6, nA5, nAb5, $18, nC6, $0C, nEb6, nA6
	dc.b nEb7, nF7, nD7, nF6, nD6, $02, nF6, nD6
	dc.b nB5, $06, nE6, $30
	sRet	

BossE_FM2:
	sPatFM		$00

BossE_Loop4:
BossE_Jump5:
	sCall		BossE_Call5
	sLoop		$00, $04, BossE_Loop4
	dc.b nD4, $06, nRst, nD4, nRst, nD4, nRst, nD4
	dc.b nRst, nEb4, nRst, nEb4, nRst, nEb4, nRst, nEb4
	dc.b nRst, nA3, nRst, nA3, nRst, nA3, nRst, nA3
	dc.b nRst, nE4, nRst, nE4, nRst, nE4, nRst, nE4
	dc.b nRst, nD4, $06, nRst, nD4, nRst, nD4, nRst
	dc.b nD4, nRst, nEb4, nRst, nEb4, nRst, nEb4, nRst
	dc.b nEb4, nRst

BossE_Loop5:
	dc.b nE4, nRst, nE4, nRst
	saVolFM		$FE
	sLoop		$00, $04, BossE_Loop5
	saVolFM		$08
	sJump		BossE_Jump5

BossE_Call5:
	dc.b nA3, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03, $06, $03, $03, nEb4, $06, $03
	dc.b $03, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03, nD4, $06, $03, $03, $06, $03
	dc.b $03, $06, $03, $03, $06, $03, $03, nE4
	dc.b $06, $03, $03, $06, $03, $03, $06, $03
	dc.b $03, $06, $03, $03
	sRet	

BossE_FM3:
	sPatFM		$02

BossE_Loop3:
BossE_Jump4:
	sPan		spCenter, $00
	sCall		BossE_Call4
	sLoop		$00, $04, BossE_Loop3
	sPan		spLeft, $00
	dc.b nC6, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	dc.b nEb5, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	dc.b nC6, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	dc.b nF5, $06
	sCall		BossE_Call3
	dc.b nAb5, $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nC6, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nB5, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nD6, $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nC6, $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nB5, $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$0C
	sJump		BossE_Jump4

BossE_Call4:
	dc.b nA4, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03, $06, $03, $03, $06, $03, $03
	dc.b $06, $03, $03, $06, $03, $03, $06, $03
	dc.b $03, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03, $06, $03, $03, nB4, $06, $03
	dc.b $03, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03
	sRet	

BossE_Call3:
	dc.b $03, $03, $06, $03, $03
	sRet	

BossE_FM4:
	sPatFM		$02

BossE_Loop2:
BossE_Jump3:
	sPan		spCenter, $00
	sCall		BossE_Call2
	sLoop		$00, $04, BossE_Loop2
	sPan		spRight, $00
	dc.b nF5, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	dc.b nA4, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	dc.b nE5, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	dc.b nB4, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nF5, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nEb5, $06
	sCall		BossE_Call3
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nF5, $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b $06
	sCall		BossE_Call3
	saVolFM		$FE
	dc.b nAb5, $06
	sCall		BossE_Call3
	saVolFM		$0C
	sJump		BossE_Jump3

BossE_Call2:
	dc.b nE5, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03, $06, $03, $03, nEb5, $06, $03
	dc.b $03, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03, nF5, $06, $03, $03, $06, $03
	dc.b $03, $06, $03, $03, $06, $03, $03, $06
	dc.b $03, $03, $06, $03, $03, nAb5, $06, $03
	dc.b $03, $06, $03, $03
	sRet	

BossE_FM5:
	ssModZ80	$04, $01, $04, $05
	saTranspose	$0C
	sJump		BossE_Jump2

BossE_PSG1:
	sStop	

BossE_PSG2:
	sStop	

BossE_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02

BossE_Jump1:
	dc.b nF6, $03
	saVolPSG	$02
	dc.b $03, $03, $03
	saVolPSG	$FE
	dc.b $03
	saVolPSG	$02
	dc.b $03, $02, $02, $02
	saVolPSG	$FE
	sJump		BossE_Jump1

BossE_DAC:
BossE_Jump6:
	dc.b dLowTimpani, $06, $03, $03
	sJump		BossE_Jump6

BossE_Patches:
	; Patch $00
	; $24
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $1F, $1D, $18, $17,	$0A, $0A, $0A, $0A
	; $09, $09, $0A, $0A,	$12, $85, $18, $80
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $18, $1D, $17
	spSustainRt	$0A, $0A, $0A, $0A
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$09, $0A, $09, $0A
	spTotalLv	$12, $18, $05, $00

	; Patch $01
	; $3D
	; $01, $02, $02, $02,	$1F, $08, $8A, $0A
	; $08, $08, $08, $08,	$00, $01, $00, $00
	; $0F, $1F, $1F, $1F,	$1F, $88, $88, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $0A, $08, $0A
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $08
	spSustainRt	$00, $00, $01, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $08, $08, $07

	; Patch $02
	; $3D
	; $01, $01, $01, $01,	$8E, $52, $14, $4C
	; $06, $08, $0F, $03,	$00, $10, $10, $10
	; $3F, $1F, $1F, $1F,	$1B, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $0F, $08, $03
	spSustainRt	$00, $10, $10, $10
	spSustainLv	$03, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $00, $00, $00

	; Patch $03
	; $3E
	; $38, $72, $11, $26,	$1F, $14, $14, $14
	; $14, $02, $02, $02,	$00, $01, $01, $01
	; $0F, $3F, $3F, $3F,	$24, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$03, $01, $07, $02
	spMultiple	$08, $01, $02, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $14, $14, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$14, $02, $02, $02
	spSustainRt	$00, $01, $01, $01
	spSustainLv	$00, $03, $03, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $00, $00, $00

	; Patch $04
	; $24
	; $01, $01, $00, $00,	$05, $05, $0A, $0A
	; $0F, $0D, $08, $07,	$09, $09, $05, $05
	; $09, $09, $03, $03,	$12, $85, $18, $82
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$05, $0A, $05, $0A
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $08, $0D, $07
	spSustainRt	$09, $05, $09, $05
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$09, $03, $09, $03
	spTotalLv	$12, $18, $05, $02
