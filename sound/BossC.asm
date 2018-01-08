BossC_Header:
	sHeaderInit	; Z80 offset is $DBEC
	sHeaderPatch	BossC_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $0D
	sHeaderDAC	BossC_DAC
	sHeaderFM	BossC_FM1, $00, $03
	sHeaderFM	BossC_FM2, $0C, $17
	sHeaderFM	BossC_FM3, $F4, $08
	sHeaderFM	BossC_FM4, $00, $15
	sHeaderFM	BossC_FM5, $00, $09
	sHeaderPSG	BossC_PSG1, $00, $01, $00, VolEnv_00
	sHeaderPSG	BossC_PSG2, $00, $01, $00, VolEnv_00
	sHeaderPSG	BossC_PSG3, $00, $02, $00, VolEnv_00

BossC_FM1:
BossC_Loop18:
	sCall		BossC_Call1
	sLoop		$00, $04, BossC_Loop18

BossC_Loop19:
BossC_Jump5:
	sCall		BossC_Call5
	sLoop		$00, $03, BossC_Loop19
	sCall		BossC_Call6

BossC_Loop21:
	sCall		BossC_Call7
	sCall		BossC_Call8
	sLoop		$00, $07, BossC_Loop21
	sCall		BossC_Call7
	sPatFM		$00
	dc.b nC2, $18, nRst, $24, $06, nC2, $06
	sPatFM		$01
	dc.b $18

BossC_Loop22:
	sCall		BossC_Call7
	sCall		BossC_Call8
	sLoop		$00, $04, BossC_Loop22

BossC_Loop23:
	sCall		BossC_Call5
	sLoop		$00, $07, BossC_Loop23
	sCall		BossC_Call6

BossC_Loop24:
	sCall		BossC_Call7
	sCall		BossC_Call8
	sLoop		$00, $03, BossC_Loop24
	sCall		BossC_Call7
	sCall		BossC_Call9
	sJump		BossC_Jump5

BossC_Call7:
	sPatFM		$00
	dc.b nC2, $0C
	saVolFM		$05
	dc.b $0C
	saVolFM		$FB
	sPatFM		$01
	dc.b $12
	sPatFM		$07
	dc.b $06
	sPatFM		$00
	dc.b $06
	sPatFM		$07
	dc.b $06
	sPatFM		$00
	dc.b $0C
	sPatFM		$01
	dc.b $0C
	sPatFM		$07
	saVolFM		$0A
	dc.b $06
	saVolFM		$F6
	dc.b $06
	sRet	

BossC_Call8:
	sPatFM		$00
	dc.b nC2, $06
	sPatFM		$07
	dc.b $06
	sPatFM		$00
	dc.b $0C
	sPatFM		$01
	dc.b $0C
	sPatFM		$07
	dc.b $06, $06
	sPatFM		$00
	dc.b $06
	sPatFM		$01
	dc.b $0C
	sPatFM		$00
	dc.b $06
	sPatFM		$01
	dc.b $0C
	sPatFM		$00
	dc.b $0C
	sRet	

BossC_Call1:
	sPatFM		$00

BossC_Loop2:
	dc.b nC2, $0C
	saVolFM		$12
	dc.b nC2, $0C
	saVolFM		$EE
	sLoop		$01, $04, BossC_Loop2
	sRet	

BossC_Call6:
	sPatFM		$01

BossC_Loop20:
	dc.b nC2, $06
	saVolFM		$02
	dc.b $06, $06, $06
	saVolFM		$FE
	sLoop		$01, $04, BossC_Loop20
	sRet	

BossC_Call9:
	sPatFM		$00
	dc.b nC2, $18, nRst, $24, $0C
	sPatFM		$01
	dc.b $18
	sRet	

BossC_Call5:
	sPatFM		$07
	dc.b nC2, $06
	saVolFM		$0A
	dc.b $06
	saVolFM		$F6
	dc.b $06
	saVolFM		$0A
	dc.b $06, $06
	saVolFM		$F6
	dc.b $06
	saVolFM		$0A
	dc.b $06, $06
	saVolFM		$F6
	dc.b $06
	saVolFM		$0A
	dc.b $06, $06
	saVolFM		$F6
	dc.b $06
	saVolFM		$0A
	dc.b $06, $06
	saVolFM		$F6
	dc.b $06
	saVolFM		$0A
	dc.b $06
	saVolFM		$F6
	sRet	

BossC_FM2:
	ssModZ80	$09, $01, $15, $03
	sPatFM		$03
	sJump		BossC_Jump4

BossC_FM3:
	sPatFM		$06
	ssModZ80	$01, $01, $70, $02
	saVolFM		$FB

BossC_Loop13:
	dc.b nD1, $60, sHold, $60
	sLoop		$00, $02, BossC_Loop13
	saVolFM		$05
	sModEnv		ModEnv_00
	sPatFM		$02

BossC_Loop14:
BossC_Jump3:
	sCall		BossC_Call4
	sLoop		$00, $02, BossC_Loop14

BossC_Loop15:
	sCall		BossC_Call4
	sLoop		$00, $0C, BossC_Loop15
	sPatFM		$06
	ssModZ80	$01, $01, $70, $02
	saVolFM		$FB

BossC_Loop16:
	dc.b nD1, $60, sHold, $60
	sLoop		$00, $04, BossC_Loop16
	saVolFM		$05
	sPatFM		$02
	ssModZ80	$01, $01, $10, $04

BossC_Loop17:
	sCall		BossC_Call4
	sLoop		$00, $04, BossC_Loop17
	sJump		BossC_Jump3

BossC_Call4:
	dc.b nD2, $18, nD2, $12, nD2, $06, nF2, $0C
	dc.b nD2, nG2, nD2, sHold, nD2, nA2, nG2, nF2
	dc.b $18, nD2, $0C, nF2, nD2
	sRet	

BossC_FM4:
	ssModZ80	$01, $01, $05, $04
	sPatFM		$08

BossC_Loop8:
BossC_Jump4:
	dc.b nRst, $60
	sLoop		$00, $04, BossC_Loop8

BossC_Loop9:
BossC_Jump2:
	dc.b nRst, $60
	sLoop		$00, $04, BossC_Loop9

BossC_Loop10:
	sCall		BossC_Call3
	sLoop		$00, $08, BossC_Loop10

BossC_Loop11:
	dc.b nRst, $60
	sLoop		$00, $08, BossC_Loop11

BossC_Loop12:
	sCall		BossC_Call3
	sLoop		$00, $08, BossC_Loop12
	sJump		BossC_Jump2

BossC_Call3:
	dc.b nG2, $01, sHold, nAb2, sHold, nA2, $04
	saVolFM		$14
	dc.b $06
	saVolFM		$EC
	dc.b nD2, $06
	saVolFM		$14
	dc.b $06
	saVolFM		$EC
	dc.b nEb2, $01, sHold, nE2, sHold, nF2, $10, nD2
	dc.b $06, nE2, $02, nF2, $02, nG2, $0E, nC2
	dc.b $06, nRst, $06, nRst, $06, nAb1, $01, nA2
	dc.b $0B, sHold, nA2, $0C, nD2
	saVolFM		$05
	dc.b nF2, $0C
	saVolFM		$FB
	dc.b nBb2, $01, nB2, $17
	saVolFM		$05
	dc.b nD2, $0C
	saVolFM		$FB
	dc.b nG2, $16, sHold, nFs2, $01, sHold, nF2
	sRet	

BossC_FM5:
BossC_Loop1:
	dc.b nRst, $60
	sLoop		$00, $04, BossC_Loop1
	sPatFM		$00

BossC_Loop3:
BossC_Jump1:
	sCall		BossC_Call1
	sLoop		$00, $04, BossC_Loop3
	sPatFM		$05

BossC_Loop4:
	sCall		BossC_Call2
	sLoop		$00, $0F, BossC_Loop4
	dc.b nRst, $60

BossC_Loop5:
	sCall		BossC_Call2
	sLoop		$00, $08, BossC_Loop5

BossC_Loop6:
	dc.b nRst, $60
	sLoop		$00, $08, BossC_Loop6

BossC_Loop7:
	sCall		BossC_Call2
	sLoop		$00, $08, BossC_Loop7
	sJump		BossC_Jump1

BossC_Call2:
	dc.b nCs6, $06
	saVolFM		$0A
	dc.b $06
	saVolFM		$F6
	dc.b $0C, $0C
	saVolFM		$0A
	dc.b $06
	saVolFM		$F6
	dc.b $06, $0C
	saVolFM		$0A
	dc.b $0C
	saVolFM		$F6
	dc.b $0C
	saVolFM		$0A
	dc.b $06
	saVolFM		$F6
	dc.b $06
	sRet	

BossC_PSG1:
	sStop	

BossC_PSG2:
	sStop	

BossC_PSG3:
	sStop	

BossC_DAC:
	dc.b nRst, $60, nRst, $54
	sPan		spCenter, $00
	dc.b nRst, $6C, nRst, $60

BossC_Jump6:
	sPan		spCenter, $00
	dc.b nRst, $60, nRst, $60, nRst, $60

BossC_Loop25:
	sPan		spCenter, $00
	dc.b nRst, $18
	sLoop		$00, $03, BossC_Loop25
	sPan		spCenter, $00
	dc.b nRst, $18
	sPan		spCenter, $00

BossC_Loop26:
	dc.b nRst, $54
	sPan		spCenter, $00
	dc.b nRst, $0C, nRst, $5F, nRst, $01
	sLoop		$00, $07, BossC_Loop26
	dc.b nRst, $60
	sPan		spCenter, $00
	dc.b nRst, $60

BossC_Loop27:
	dc.b nRst, $18
	sPan		spCenter, $00
	dc.b nRst, $12
	sPan		spCenter, $00
	dc.b nRst, $06, nRst, $18
	sPan		spCenter, $00
	dc.b nRst, $18
	sLoop		$00, $03, BossC_Loop27
	dc.b nRst, $18
	sPan		spCenter, $00
	dc.b nRst, $24
	sPan		spLeft, $00
	dc.b nRst, $0C
	sPan		spCenter, $00
	dc.b nRst, $18
	sLoop		$01, $02, BossC_Loop27
	sPan		spRight, $00
	dc.b nRst, $60, nRst, $60, nRst, $60, nRst, $60
	sPan		spLeft, $00
	dc.b nRst, $60, nRst, $60, nRst, $60, nRst, $60
	sPan		spCenter, $00

BossC_Loop28:
	dc.b nRst, $18
	sPan		spCenter, $00
	dc.b nRst, $18, nRst, $18
	sPan		spCenter, $00
	dc.b nRst, $18
	sLoop		$00, $08, BossC_Loop28
	sJump		BossC_Jump6

BossC_Patches:
	; Patch $00
	; $04
	; $30, $40, $70, $20,	$1F, $1F, $1F, $1F
	; $17, $1F, $00, $00,	$13, $10, $10, $00
	; $0F, $0F, $0F, $0F,	$10, $80, $09, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$03, $07, $04, $02
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$17, $00, $1F, $00
	spSustainRt	$13, $10, $10, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $09, $00, $00

	; Patch $01
	; $34
	; $55, $76, $21, $21,	$1F, $1F, $1F, $1F
	; $07, $00, $16, $1B,	$00, $0D, $10, $15
	; $0F, $0F, $0F, $0F,	$05, $86, $10, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$05, $02, $07, $02
	spMultiple	$05, $01, $06, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $16, $00, $1B
	spSustainRt	$00, $10, $0D, $15
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$05, $10, $06, $00

	; Patch $02
	; $3C
	; $21, $33, $21, $32,	$1F, $1F, $19, $18
	; $10, $00, $10, $10,	$00, $08, $00, $0D
	; $0F, $0F, $1F, $1F,	$20, $80, $16, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$02, $02, $03, $03
	spMultiple	$01, $01, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $19, $1F, $18
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $00, $10
	spSustainRt	$00, $00, $08, $0D
	spSustainLv	$00, $01, $00, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $16, $00, $00

	; Patch $03
	; $3C
	; $44, $14, $54, $28,	$1F, $1F, $1F, $1F
	; $1F, $0A, $1F, $0A,	$06, $06, $00, $06
	; $0F, $0F, $0F, $0F,	$13, $86, $14, $86
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$04, $05, $01, $02
	spMultiple	$04, $04, $04, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $1F, $0A, $0A
	spSustainRt	$06, $00, $06, $06
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$13, $14, $06, $06

	; Patch $04
	; $3D
	; $40, $53, $61, $12,	$1F, $1F, $1F, $1F
	; $10, $0F, $0F, $1F,	$1D, $17, $10, $11
	; $1F, $1F, $1F, $1F,	$06, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $06, $05, $01
	spMultiple	$00, $01, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $0F, $0F, $1F
	spSustainRt	$1D, $10, $17, $11
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$06, $00, $00, $00

	; Patch $05
	; $22
	; $34, $14, $0C, $1C,	$1E, $1F, $1F, $1F
	; $13, $1F, $0B, $1D,	$00, $0F, $00, $0E
	; $1C, $1A, $1B, $19,	$00, $02, $00, $80
	spAlgorithm	$02
	spFeedback	$04
	spDetune	$03, $00, $01, $01
	spMultiple	$04, $0C, $04, $0C
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $0B, $1F, $1D
	spSustainRt	$00, $00, $0F, $0E
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0B, $0A, $09
	spTotalLv	$00, $00, $02, $00

	; Patch $06
	; $2B
	; $28, $39, $28, $36,	$1F, $1F, $19, $18
	; $10, $00, $10, $10,	$00, $00, $00, $0A
	; $1F, $1F, $1F, $1F,	$00, $30, $30, $80
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
	spTotalLv	$00, $30, $30, $00

	; Patch $07
	; $34
	; $54, $53, $21, $22,	$1F, $1F, $1F, $1F
	; $07, $00, $16, $1B,	$00, $0F, $10, $15
	; $0F, $0F, $0F, $0F,	$05, $8D, $10, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$05, $02, $05, $02
	spMultiple	$04, $01, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $16, $00, $1B
	spSustainRt	$00, $10, $0F, $15
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$05, $10, $0D, $00

	; Patch $08
	; $35
	; $72, $23, $34, $68,	$1F, $1F, $1F, $1F
	; $1F, $1F, $1F, $0F,	$06, $0C, $00, $0D
	; $0F, $0F, $0F, $0F,	$17, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$07, $03, $02, $06
	spMultiple	$02, $04, $03, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $1F, $1F, $0F
	spSustainRt	$06, $00, $0C, $0D
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $00, $00, $00
