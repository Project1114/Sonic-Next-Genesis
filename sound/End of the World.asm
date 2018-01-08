Cat_Header:
	sHeaderInit	; Z80 offset is $CFF6
	sHeaderPatch	Cat_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $30
	sHeaderDAC	Cat_DAC
	sHeaderFM	Cat_FM2, $00, $12
	sHeaderFM	Cat_FM3, $00, $02
	sHeaderFM	Cat_FM4, $00, $16
	sHeaderFM	Cat_FM5, $00, $05
	sHeaderFM	Cat_FM6, $00, $17
	sHeaderPSG	Cat_PSG1, $00, $05, $00, VolEnv_00
	sHeaderPSG	Cat_PSG2, $00, $05, $00, VolEnv_00
	sHeaderPSG	Cat_PSG3, $00, $05, $00, VolEnv_00

Cat_DAC:
	dc.b nRst, $01

Cat_Loop28:
Cat_Jump8:
	sCall		Cat_Call9
	sCall		Cat_Call10
	sLoop		$00, $07, Cat_Loop28
	sCall		Cat_Call9
	dc.b dKick, $18, nRst, $24, dKick, $06, $06
	dc.b dSnare, $18
	dc.b dKick, $60, $30

Cat_Loop29:
	sPan		spLeft, $00
	dc.b dMuffledSnare, $06
	sPan		spRight, $00
	dc.b $06
	sLoop		$00, $04, Cat_Loop29
	sPan		spCenter, $00

Cat_Loop30:
	sCall		Cat_Call9
	sCall		Cat_Call10
	sLoop		$00, $0E, Cat_Loop30
	sCall		Cat_Call9
	sCall		Cat_Call11
	sJump		Cat_Jump8

Cat_Call9:
	dc.b dKick, $06
	dc.b $06
	dc.b $06
	dc.b $06
	dc.b dSnare, $06
	dc.b $06
	dc.b $06
	dc.b dMuffledSnare, $0C, $06
	dc.b dKick, $06
	dc.b $06
	dc.b dSnare, $06
	dc.b $06
	dc.b dKick, $06
	dc.b $03
	dc.b $03
	sRet	

Cat_Call10:
	dc.b dKick, $06
	dc.b $06
	dc.b $06
	dc.b $06
	dc.b dSnare, $06
	dc.b $06
	dc.b $06
	dc.b $06
	dc.b dKick, $06
	dc.b dMuffledSnare, $06
	dc.b dKick, $06
	dc.b $06
	dc.b dSnare, $06
	dc.b $06
	dc.b dKick, $0C
	sRet	

Cat_Call11:
Cat_Loop31:
	dc.b dSnare, $03, $03
	dc.b $03, $03, $06, $06
	sLoop		$00, $04, Cat_Loop31
	sRet	

Cat_FM2:
Cat_Jump6:
	sPatFM		$03
	ssModZ80	$30, $01, $17, $04

Cat_Loop24:
Cat_Jump7:
	dc.b nCs2, $01, sHold, nD2, $5F, nCs2, $30, nD2
	dc.b $01, sHold, nEb2, sHold, nE2, sHold, nF2, sHold
	dc.b nFs2, sHold, nG2, sHold, nAb2, sHold, nA2, $29
	dc.b nFs2, $5B, sHold, nF2, $01, nE2, nEb2, nD2
	dc.b nCs2
Cat_Loop23:
	saVolFM		$04
	dc.b nFs2, $0D, nF2, $01, nE2, $01, nEb2, $01
	dc.b nD2, $01, nCs2, $01
	sLoop		$01, $05, Cat_Loop23
	saVolFM		$EC
	dc.b nRst, $06, nCs2, $01, nD2, $5F, nCs2, $30
	dc.b nD2, $01, sHold, nEb2, $01, sHold, nE2, $01
	dc.b sHold, nF2, $01, sHold, nFs2, $01, sHold, nG2
	dc.b $13, nG2, $01, nAb2, $02, nA2, $15, nF2
	dc.b $01, nFs2, $5F, nE2, $30, nCs2, $30, nD2
	dc.b $2E, nD2, $01, nEb2, $01, nE2, $30, nFs2
	dc.b nE2, nD2, nCs2, nB1, nCs2, nD2, $30, nE2
	dc.b nFs2, nE2, nD2, nCs2, nB1, $58, sHold, nBb1
	dc.b $02, sHold, nA1, sHold, nAb1, sHold, nG1
	sLoop		$00, $02, Cat_Loop24
	saVolFM		$07

Cat_Loop25:
	sCall		Cat_Call6
	sCall		Cat_Call7
	sLoop		$00, $04, Cat_Loop25
	saVolFM		$F9
	sPatFM		$08
	sPan		spCenter, $00
	sPatFM		$03
	ssModZ80	$31, $01, $17, $04
	saVolFM		$FD

Cat_Loop26:
	dc.b nD3, $06, nE3, nFs3
	sLoop		$00, $05, Cat_Loop26
	dc.b nB3
	sLoop		$01, $06, Cat_Loop26
	dc.b nD3, $06, nE3, nFs3, nCs3, nD3, nA2, nCs3
	dc.b nD3, nCs3, nB2, nFs2, nB2, nFs2, nD2, nD2
	dc.b nCs2, nD2, nE2, nFs2, nB2, nCs3, nD3, nFs3
	dc.b nCs3, sHold, nB3, $13, nBb3, $01, nA3, nAb3
	dc.b nG3, nFs3

Cat_Loop27:
	dc.b nB3, $07, nBb3, $01, nA3, nAb3, nG3, nFs3
	saVolFM		$05
	sLoop		$00, $02, Cat_Loop27
	saVolFM		$F6
	saVolFM		$03
	sJump		Cat_Jump7
	; Unused
	dc.b $F2

Cat_FM6:
Cat_Loop15:
Cat_Jump4:
	sCall		Cat_Call6
	sCall		Cat_Call7
	sLoop		$00, $07, Cat_Loop15
	sCall		Cat_Call6
	dc.b nRst, $60
	sPatFM		$03
	sPan		spLeft, $00
	dc.b nB1, $60, nA1

Cat_Loop16:
	sCall		Cat_Call6
	sCall		Cat_Call7
	sLoop		$00, $07, Cat_Loop16
	saVolFM		$04

Cat_Loop17:
	sCall		Cat_Call6
	sCall		Cat_Call7
	sLoop		$00, $04, Cat_Loop17
	saVolFM		$FC

Cat_Loop18:
	sCall		Cat_Call6
	sCall		Cat_Call7
	sLoop		$00, $04, Cat_Loop18
	sJump		Cat_Jump4
	; Unused
	dc.b $F2

Cat_FM3:
Cat_Jump1:
Cat_Loop1:
	sCall		Cat_Call1
	sCall		Cat_Call2
	sLoop		$00, $07, Cat_Loop1
	sCall		Cat_Call1
	dc.b nA1, $60, nB1, $60, nA1, $30, nCs2, $30

Cat_Loop2:
	sCall		Cat_Call1
	sCall		Cat_Call2
	sLoop		$00, $07, Cat_Loop2

Cat_Loop3:
	dc.b nRst, $60
	sLoop		$00, $08, Cat_Loop3

Cat_Loop4:
	sCall		Cat_Call1
	sCall		Cat_Call2
	sLoop		$00, $04, Cat_Loop4
	sJump		Cat_Jump1
	; Unused
	dc.b $F2

Cat_FM4:
	saDetune	$FB
	dc.b nRst, $0A
	sJump		Cat_Jump6
	; Unused
	dc.b $F2

Cat_PSG1:
Cat_Loop11:
Cat_Jump3:
	sVolEnvPSG	VolEnv_0D
	sCall		Cat_Call5
	sLoop		$00, $0F, Cat_Loop11
	dc.b nRst, $60, nRst, $60, $60

Cat_Loop12:
	sCall		Cat_Call5
	sLoop		$00, $0E, Cat_Loop12

Cat_Loop13:
	dc.b nRst, $60
	sLoop		$00, $08, Cat_Loop13

Cat_Loop14:
	sCall		Cat_Call5
	sLoop		$00, $08, Cat_Loop14
	sJump		Cat_Jump3
	; Unused
	dc.b $F2

Cat_Call5:
	dc.b nRst, $0C, nCs2, $06, $06, $06, $06
	saVolPSG	$02
	dc.b nCs2, $06
	saVolPSG	$02
	dc.b $06
	saVolPSG	$FC
	dc.b $06, $06, $06, $06
	saVolPSG	$02
	dc.b nCs2, $06
	saVolPSG	$02
	dc.b $06
	saVolPSG	$02
	dc.b $06
	saVolPSG	$02
	dc.b $06
	saVolPSG	$F8
	sRet	

Cat_PSG2:
	sPatFM		$04
	sVolEnvPSG	VolEnv_04

Cat_Loop7:
	sCall		Cat_Call3
	sCall		Cat_Call4
	sLoop		$00, $07, Cat_Loop7
	sCall		Cat_Call3
	dc.b nRst, $60, nRst, $60, nRst, $60

Cat_Loop8:
	sCall		Cat_Call3
	sCall		Cat_Call4
	sLoop		$00, $07, Cat_Loop8

Cat_Loop9:
	dc.b nRst, $60
	sLoop		$00, $08, Cat_Loop9

Cat_Loop10:
Cat_Jump2:
	sCall		Cat_Call3
	sCall		Cat_Call4
	sLoop		$00, $04, Cat_Loop10
	sJump		Cat_Jump2
	; Unused
	dc.b $F2

Cat_Call3:
Cat_Loop5:
	dc.b nCs4, $06, nFs4, nD4, nB4
	sLoop		$01, $04, Cat_Loop5
	sRet	

Cat_Call4:
Cat_Loop6:
	dc.b nB3, $06, nE4, nCs4, nA4
	sLoop		$01, $04, Cat_Loop6
	sRet	
	; Unused
	dc.b $F2

Cat_PSG3:
	sVolEnvPSG	VolEnv_0D
	sJump		Cat_Jump1
	; Unused
	dc.b $F2

Cat_FM5:
	saTranspose	$01

Cat_Loop19:
Cat_Jump5:
	sCall		Cat_Call8
	sLoop		$00, $10, Cat_Loop19
	dc.b nC6, $60, $30, $30

Cat_Loop20:
	sCall		Cat_Call8
	sLoop		$00, $0E, Cat_Loop20

Cat_Loop21:
	dc.b nRst, $60
	sLoop		$00, $08, Cat_Loop21

Cat_Loop22:
	sCall		Cat_Call8
	sLoop		$00, $08, Cat_Loop22
	sJump		Cat_Jump5
	; Unused
	dc.b $F2

Cat_Patches:
	; Patch $00
	; $34
	; $30, $40, $70, $20,	$1F, $1F, $1F, $1F
	; $17, $1F, $00, $00,	$10, $10, $10, $00
	; $0F, $0F, $0F, $0F,	$10, $80, $08, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $07, $04, $02
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$17, $00, $1F, $00
	spSustainRt	$10, $10, $10, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $08, $00, $00

	; Patch $01
	; $34
	; $56, $77, $21, $21,	$1F, $1F, $1F, $1F
	; $07, $00, $16, $1B,	$04, $0F, $10, $15
	; $0F, $0F, $0F, $0F,	$05, $84, $10, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$05, $02, $07, $02
	spMultiple	$06, $01, $07, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $16, $00, $1B
	spSustainRt	$04, $10, $0F, $15
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$05, $10, $04, $00

	; Patch $02
	; $3A
	; $22, $40, $70, $21,	$1F, $1F, $1F, $1F
	; $1F, $1F, $1F, $1F,	$09, $10, $10, $00
	; $18, $1A, $0B, $19,	$20, $15, $13, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $07, $04, $02
	spMultiple	$02, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $1F, $1F, $1F
	spSustainRt	$09, $10, $10, $00
	spSustainLv	$01, $00, $01, $01
	spReleaseRt	$08, $0B, $0A, $09
	spTotalLv	$20, $13, $15, $00

	; Patch $03
	; $0A
	; $22, $58, $42, $24,	$13, $0F, $11, $13
	; $10, $00, $10, $10,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$00, $14, $17, $80
	spAlgorithm	$02
	spFeedback	$01
	spDetune	$02, $04, $05, $02
	spMultiple	$02, $02, $08, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$13, $11, $0F, $13
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $00, $10
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $17, $14, $00

	; Patch $04
	; $3D
	; $44, $74, $34, $54,	$1F, $1F, $1F, $1F
	; $1F, $1F, $1F, $1F,	$05, $08, $0C, $0D
	; $0F, $0F, $0F, $0F,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $03, $07, $05
	spMultiple	$04, $04, $04, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $1F, $1F, $1F
	spSustainRt	$05, $0C, $08, $0D
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $00, $00, $00

	; Patch $05
	; $22
	; $34, $14, $08, $1C,	$1E, $1F, $1F, $1F
	; $13, $1F, $0B, $1D,	$00, $0F, $00, $10
	; $1C, $1A, $1B, $19,	$10, $06, $00, $82
	spAlgorithm	$02
	spFeedback	$04
	spDetune	$03, $00, $01, $01
	spMultiple	$04, $08, $04, $0C
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $0B, $1F, $1D
	spSustainRt	$00, $00, $0F, $10
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0B, $0A, $09
	spTotalLv	$10, $00, $06, $02

	; Patch $06
	; $22
	; $34, $14, $08, $1C,	$1F, $1F, $1F, $1F
	; $13, $1F, $0B, $1F,	$00, $00, $00, $0C
	; $2C, $2A, $2B, $29,	$10, $00, $00, $80
	spAlgorithm	$02
	spFeedback	$04
	spDetune	$03, $00, $01, $01
	spMultiple	$04, $08, $04, $0C
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $0B, $1F, $1F
	spSustainRt	$00, $00, $00, $0C
	spSustainLv	$02, $02, $02, $02
	spReleaseRt	$0C, $0B, $0A, $09
	spTotalLv	$10, $00, $00, $00

	; Patch $07
	; $34
	; $54, $55, $21, $21,	$1F, $1F, $1F, $1F
	; $07, $00, $16, $1B,	$00, $11, $10, $15
	; $0F, $0F, $0F, $0F,	$05, $88, $10, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$05, $02, $05, $02
	spMultiple	$04, $01, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $16, $00, $1B
	spSustainRt	$00, $10, $11, $15
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$05, $10, $08, $00

	; Patch $08
	; $00
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $00, $00, $00, $00,	$00, $00, $00, $00
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$00, $00, $00, $00
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $00
	spTotalLv	$00, $00, $00, $00

Cat_Call8:
	sPatFM		$05
	dc.b nC6, $0C
	sPatFM		$06
	dc.b $0C
	sPatFM		$05
	saVolFM		$05
	dc.b $0C
	saVolFM		$FB
	dc.b $0C
	saVolFM		$05
	dc.b $0C
	saVolFM		$FB
	dc.b $0C
	saVolFM		$05
	dc.b $0C
	saVolFM		$FB
	sPatFM		$06
	dc.b $0C
	sRet	

Cat_Call1:
	sPatFM		$02
	dc.b nB1, $06
	saVolFM		$05
	dc.b nA1, $06
	saVolFM		$FB
	dc.b nB1, $0C
	saVolFM		$05
	dc.b nB1, $06
	saVolFM		$FB
	dc.b nA1, $0C
	saVolFM		$05
	dc.b nB1, $0C
	saVolFM		$FB
	dc.b nC2, $0C
	saVolFM		$05
	dc.b nD2, $06
	saVolFM		$FB
	dc.b nC2, $0C
	saVolFM		$05
	dc.b nB1, $0C
	saVolFM		$FB
	sRet	

Cat_Call2:
	sPatFM		$02
	dc.b nB1, $06
	saVolFM		$05
	dc.b nA1, $06
	saVolFM		$FB
	dc.b nB1, $0C
	saVolFM		$05
	dc.b nB1, $06
	saVolFM		$FB
	dc.b nA1, $0C
	saVolFM		$05
	dc.b nB1, $06
	saVolFM		$FB
	dc.b nA1, $0C, nB1, nC2, $06, nD2, nC2, nA1
	sRet	

Cat_Call6:
	sModEnv		ModEnv_00
	sPatFM		$04
	ssModZ80	$01, $01, $06, $02
	sPan		spCenter, $00
	dc.b nFs3, $06
	saVolFM		$05
	sPan		spLeft, $00
	dc.b $06
	saVolFM		$FB
	sPan		spRight, $00
	dc.b nB2, $06
	saVolFM		$05
	sPan		spCenter, $00
	dc.b $06
	saVolFM		$FB
	sPan		spRight, $00
	dc.b nD3, $0C
	sPan		spLeft, $00
	dc.b nB2, $06
	sPan		spLeft, $00
	dc.b nFs3, $0C
	sPan		spRight, $00
	dc.b nFs3, $06
	sPan		spCenter, $00
	saVolFM		$05
	sPan		spRight, $00
	dc.b $06
	saVolFM		$FB
	sPan		spLeft, $00
	dc.b nB2, $06
	sPan		spCenter, $00
	dc.b nD3, $06
	sPan		spLeft, $00
	saVolFM		$05
	sPan		spCenter, $00
	dc.b $06
	saVolFM		$FB
	sPan		spRight, $00
	dc.b nB2, $06
	saVolFM		$05
	sPan		spLeft, $00
	dc.b $06
	saVolFM		$FB
	sRet	

Cat_Call7:
	sModEnv		ModEnv_00
	sPatFM		$04
	ssModZ80	$01, $01, $06, $02
	sPan		spCenter, $00
	dc.b nE3, $06
	saVolFM		$05
	sPan		spRight, $00
	dc.b $06
	saVolFM		$FB
	sPan		spCenter, $00
	dc.b nA2, $06
	saVolFM		$05
	sPan		spLeft, $00
	dc.b $06
	saVolFM		$FB
	sPan		spRight, $00
	dc.b nCs3, $0C
	sPan		spLeft, $00
	dc.b nA2, $06
	sPan		spCenter, $00
	dc.b nE3, $0C
	sPan		spRight, $00
	dc.b nE3, $06
	saVolFM		$05
	sPan		spCenter, $00
	dc.b $06
	saVolFM		$FB
	sPan		spRight, $00
	dc.b nCs3, $06
	sPan		spLeft, $00
	dc.b nCs3, $06
	saVolFM		$05
	dc.b $06
	sPan		spCenter, $00
	saVolFM		$FB
	dc.b nA2, $06
	saVolFM		$05
	sPan		spLeft, $00
	dc.b $04, nRst, $02
	saVolFM		$FB
	sRet	
