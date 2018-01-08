Menu_Header:
	sHeaderInit	; Z80 offset is $84A3
	sHeaderPatch	Menu_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $78
	sHeaderDAC	Menu_DAC
	sHeaderFM	Menu_FM1, $F6, $14
	sHeaderFM	Menu_FM2, $EA, $08
	sHeaderFM	Menu_FM3, $F6, $10
	sHeaderFM	Menu_FM4, $F6, $10
	sHeaderFM	Menu_FM5, $F6, $14
	sHeaderPSG	Menu_PSG1, $D2, $02, $00, VolEnv_00
	sHeaderPSG	Menu_PSG1, $D2, $06, $00, VolEnv_00
	sHeaderPSG	Menu_PSG2, $05, $04, $00, VolEnv_00

Menu_FM1:
	ssModZ80	$09, $01, $07, $03
	sPatFM		$01
	dc.b nRst, $03, nA4, $30, nB4, $18, nA4, $18
	dc.b nAb4, $48, nFs4, $18, nF4, $30, nF5, $30
	dc.b nA4, $18, nF4, $18, nE4, $15
	saVolFM		$FB
	sPatFM		$02
	dc.b nA4, $03, nBb4, $03, nC5, $03, nCs5, $03
	dc.b nEb5, $03, nE5, $03, nF5, $03, nFs5, $03

Menu_Jump6:
	dc.b nG5, $54, nG5, $06, nAb5, $06, nBb5, $30
	dc.b nBb4, $08, nB4, $08, nC5, $08, nG5, $08
	dc.b nF5, $08, nEb5, $08, nD5, $54, nC5, $06
	dc.b nD5, $06, nE5, $24, nE5, $06, nF5, $06
	dc.b nD5, $24, nCs5, $06, nEb5, $06
	saTranspose	$01
	dc.b nG5, $54, nG5, $06, nAb5, $06, nBb5, $30
	dc.b nBb4, $08, nB4, $08, nC5, $08, nG5, $08
	dc.b nF5, $08, nEb5, $08, nD5, $54, nC5, $06
	dc.b nD5, $06, nE5, $24, nE5, $06, nF5, $06
	dc.b nD5, $24, nC5, $06, nD5, $06
	saTranspose	$FF
	sJump		Menu_Jump6

Menu_FM2:
	sPatFM		$00

Menu_Loop1:
	sCall		Menu_Call1
	sLoop		$00, $02, Menu_Loop1

Menu_Jump5:
	saTranspose	$01
	sCall		Menu_Call1
	saTranspose	$FF
	sCall		Menu_Call1
	sJump		Menu_Jump5

Menu_Call1:
	dc.b nF3, $06, nF3, $06, nRst, $1E, nF3, $06
	dc.b nRst, $06, nF3, $06, nF3, $06, nRst, $1E
	dc.b nBb3, $06, nBb3, $06, nRst, $1E, nBb3, $06
	dc.b nRst, $06, nBb3, $06, nBb3, $06, nRst, $06
	dc.b nAb3, $18, nEb3, $06, nEb3, $06, nRst, $1E
	dc.b nEb3, $06, nRst, $06, nEb3, $06, nEb3, $06
	dc.b nRst, $1E, nD3, $06, nD3, $06, nRst, $0C
	dc.b nG3, $18, nC3, $06, nC3, $06, nRst, $0C
	dc.b nF3, $18
	sRet	

Menu_FM3:
	sPatFM		$01
	ssModZ80	$0F, $01, $04, $04
	dc.b nA4, $30, nB4, $18, nA4, $18, nAb4, $48
	dc.b nFs4, $18, nF4, $30, nF5, $30, nA4, $18
	dc.b nF4, $18, nE4, $18, nG4, $18

Menu_Jump4:
	dc.b nA4, $30, nB4, $18, nA4, $18, nAb4, $48
	dc.b nFs4, $18, nF4, $30, nF5, $30, nA4, $18
	dc.b nF4, $18, nE4, $18, nG4, $18
	saTranspose	$01
	dc.b nA4, $30, nB4, $18, nA4, $18, nAb4, $48
	dc.b nFs4, $18, nF4, $30, nF5, $30, nA4, $18
	dc.b nF4, $18, nE4, $18, nG4, $18
	saTranspose	$FF
	sJump		Menu_Jump4

Menu_FM4:
	sPatFM		$01
	ssModZ80	$0F, $01, $04, $04
	dc.b nC5, $60, nC5, $48, nBb4, $18, nBb4, $60
	dc.b nF4, $18, nAb4, $18, nG4, $18, nEb4, $18

Menu_Jump3:
	dc.b nC5, $60, nC5, $48, nBb4, $18, nBb4, $60
	dc.b nF4, $18, nAb4, $18, nG4, $18, nEb4, $18
	saTranspose	$01
	dc.b nC5, $60, nC5, $48, nBb4, $18, nBb4, $60
	dc.b nF4, $18, nAb4, $18, nG4, $18, nEb4, $18
	saTranspose	$FF
	sJump		Menu_Jump3

Menu_FM5:
	ssModZ80	$09, $01, $07, $03
	sPatFM		$01
	dc.b nRst, $03, nC5, $60, nC5, $48, nBb4, $18
	dc.b nBb4, $60, nF4, $18, nAb4, $18, nG4, $18
	ssModZ80	$20, $01, $08, $05
	saVolFM		$05
	dc.b nA4, $03, nBb4, $03, nC5, $03, nCs5, $03
	dc.b nEb5, $03, nE5, $03, nF5, $03, nFs5, $03

Menu_Jump2:
	dc.b nG5, $54, nG5, $06, nAb5, $06, nBb5, $30
	dc.b nBb4, $08, nB4, $08, nC5, $08, nG5, $08
	dc.b nF5, $08, nEb5, $08, nD5, $54, nC5, $06
	dc.b nD5, $06, nE5, $24, nE5, $06, nF5, $06
	dc.b nD5, $24, nCs5, $06, nEb5, $06
	saTranspose	$01
	dc.b nG5, $54, nG5, $06, nAb5, $06, nBb5, $30
	dc.b nBb4, $08, nB4, $08, nC5, $08, nG5, $08
	dc.b nF5, $08, nEb5, $08, nD5, $54, nC5, $06
	dc.b nD5, $06, nE5, $24, nE5, $06, nF5, $06
	dc.b nD5, $24, nC5, $06, nD5, $06
	saTranspose	$FF
	sJump		Menu_Jump2

Menu_PSG1:
	sStop	

Menu_PSG2:
	sNoisePSG	$E7

Menu_Jump1:
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $06, $06
	sVolEnvPSG	VolEnv_01
	dc.b $06
	sVolEnvPSG	VolEnv_02
	dc.b $06
	sJump		Menu_Jump1

Menu_DAC:
	saVolFM		$00

Menu_Loop2:
	dc.b dKick, $06, dKick, $06, nRst, $06, nRst, $06
	dc.b nRst, $06, nRst, $06, nRst, $06, dKick, $06
	dc.b nRst, $06, dKick, $06, dKick, $06, nRst, $06
	dc.b dSnare, $06, nRst, $06, nRst, $06, nRst, $06
	sLoop		$00, $07, Menu_Loop2
	dc.b dKick, $06, dKick, $06, nRst, $06, nRst, $06
	dc.b dKick, $06, nRst, $06, nRst, $06, nRst, $06
	dc.b dKick, $06, dKick, $06, nRst, $06, nRst, $06
	dc.b dSnare, $06, nRst, $06, nRst, $06, nRst, $06
	sLoop		$01, $02, Menu_Loop2

Menu_Loop3:
Menu_Jump7:
	dc.b dKick, $06, dKick, $06, nRst, $06, nRst, $06
	dc.b dSnare, $06, nRst, $06, nRst, $06, dKick, $06
	dc.b nRst, $06, dKick, $06, dKick, $06, nRst, $06
	dc.b dSnare, $06, nRst, $06, nRst, $06, nRst, $06
	sLoop		$00, $07, Menu_Loop3
	dc.b dKick, $06, dKick, $06, nRst, $06, nRst, $06
	dc.b dSnare, $06, nRst, $06, nRst, $06, nRst, $06
	dc.b dKick, $06, dKick, $06, nRst, $06, nRst, $06
	dc.b dSnare, $06, nRst, $06, nRst, $06, nRst, $06
	sJump		Menu_Jump7

Menu_Patches:
	; Patch $00
	; $3B
	; $22, $31, $11, $71,	$1F, $1F, $1F, $1F
	; $0A, $0B, $08, $0A,	$0E, $08, $07, $02
	; $0F, $0C, $0A, $0F,	$1A, $22, $1F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$02, $01, $03, $07
	spMultiple	$02, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $08, $0B, $0A
	spSustainRt	$0E, $07, $08, $02
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0A, $0C, $0F
	spTotalLv	$1A, $1F, $22, $00

	; Patch $01
	; $34
	; $38, $52, $21, $22,	$1B, $1B, $1B, $1B
	; $09, $03, $09, $08,	$09, $03, $08, $06
	; $09, $09, $09, $09,	$18, $86, $1E, $86
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $02, $05, $02
	spMultiple	$08, $01, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1B, $1B, $1B, $1B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $09, $03, $08
	spSustainRt	$09, $08, $03, $06
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$09, $09, $09, $09
	spTotalLv	$18, $1E, $06, $06

	; Patch $02
	; $3D
	; $01, $01, $02, $01,	$4C, $0F, $50, $12
	; $0B, $05, $01, $02,	$01, $00, $00, $00
	; $2F, $2F, $2F, $1F,	$1C, $80, $86, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $01, $01
	spRateScale	$01, $01, $00, $00
	spAttackRt	$0C, $10, $0F, $12
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $01, $05, $02
	spSustainRt	$01, $00, $00, $00
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $06, $00, $00
