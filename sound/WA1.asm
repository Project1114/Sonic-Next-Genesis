WA1_Header:
	sHeaderInit	; Z80 offset is $B53F
	sHeaderPatch	WA1_Patches
	sHeaderCh	$06, $02
	sHeaderTempo	$02, $40
	sHeaderDAC	WA1_DAC
	sHeaderFM	WA1_FM1, $F4, $10
	sHeaderFM	WA1_FM2, $F4, $0A
	sHeaderFM	WA1_FM3, $F4, $10
	sHeaderFM	WA1_FM4, $F4, $10
	sHeaderFM	WA1_FM5, $F4, $19
	sHeaderPSG	WA1_PSG1, $DC, $05, $00, VolEnv_00
	sHeaderPSG	WA1_PSG2, $DC, $05, $00, VolEnv_00

WA1_FM5:
	dc.b nRst, $06
	sJump		WA1_Jump5

WA1_FM1:
	ssModZ80	$0B, $01, $04, $05

WA1_Jump5:
	sPatFM		$00
	dc.b nRst, $2D

WA1_Loop5:
WA1_Jump6:
	sCall		WA1_Call1
	sLoop		$00, $02, WA1_Loop5
	sCall		WA1_Call2
	sCall		WA1_Call1
	sCall		WA1_Call2

WA1_Loop6:
	dc.b nE6, $09, nB5, $09, nD6, $09, nE6, $09
	dc.b nA6, $09, nAb6, $06, nE6, $0F, nB6, $06
	dc.b nA6, $06, nD7, $09, nCs7, $03, nA6, nB6
	dc.b nE6, nA6, nD6, nAb6, nCs6, nFs6, nB5, nE6
	dc.b nCs6, nD6, $06, nE6, nRst, $03, nA6, nFs6
	dc.b nRst, nCs6, nRst, nD6, $06, nE6, nAb5, nB5
	dc.b $03, nFs5, $06, nAb5, nE5
	sLoop		$00, $02, WA1_Loop6
	sJump		WA1_Jump6

WA1_Call1:
	dc.b nG5, $24, nFs5, $0C, nC5, $18, nD5
	sRet	

WA1_Call2:
	dc.b nG5, $09, nA5, nE6, $06, nD6, $12, nE6
	dc.b $06, nG6, $09, nFs6, $21, nE6, $03, nFs6
	dc.b nB5, $09, nC6, nA6, $06, nG6, $12, nB6
	dc.b $06, nC7, $09, nB6, nG6, $03, nA6, nFs6
	dc.b $09, nG6, $06, nD6, nB5, $03
	sRet	

WA1_FM2:
	sPatFM		$01
	dc.b nA3, $06, nG3, $03, nA3, nRst, $06, nA3
	dc.b $03, nRst, $06, nA3, $03, nRst, $06, nA3
	dc.b $03, nRst, nA3

WA1_Loop7:
WA1_Jump7:
	dc.b nA3, $03, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b nA3, nA3, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b nG3, nA3, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b nA3, nA3, nD4, nRst, nD4, nRst, nD4, nG3
	dc.b nA3
	sLoop		$00, $07, WA1_Loop7

WA1_Loop8:
	dc.b nE3, $03, nRst, nE3, nRst, nE4, nE3, nRst
	dc.b $06, nE3, $03, nRst, $06, nE3, $03, nRst
	dc.b nE4, nRst, nE3, nRst, $06, nE3, $03, nRst
	dc.b nE3, nE4, nRst, $06, nE3, $03, nRst, $06
	dc.b nE4, $03, nRst, nE3, nRst, nE3
	sLoop		$00, $04, WA1_Loop8
	sJump		WA1_Jump7

WA1_PSG1:
	sJump		WA1_Jump3

WA1_FM3:
	sPan		spLeft, $00
	ssModZ80	$0B, $01, $01, $05
	sPatFM		$02

WA1_Jump3:
	dc.b nRst, $2D
WA1_Loop3:
WA1_Jump4:
	dc.b nC6, $06, nE5, $03, nD6, $09, nC6, $03
	dc.b nD6, nE5, nC6, nRst, nC6, $09, nB5, $03
	dc.b nC6, nE5, nA6, nE5, nD6, $09, nC6, $03
	dc.b nD6, nE5, nG6, nRst, nG6, $09, nFs6, $03
	dc.b nB5
	sLoop		$00, $07, WA1_Loop3

WA1_Loop4:
	dc.b nE6, $03, nRst, nD6, nRst, nD6, nE6, nRst
	dc.b $06, nE6, $03, nRst, $06, nD6, $03, nRst
	dc.b nE6, nRst, nE6, nRst, $06, nD6, $03, nRst
	dc.b nD6, nE6, nRst, $06, nE6, $03, nRst, $06
	dc.b nE6, $03, nRst, nD6, nRst, nD6
	sLoop		$00, $04, WA1_Loop4
	sJump		WA1_Jump4

WA1_PSG2:
	sJump		WA1_Jump1

WA1_FM4:
	sPan		spRight, $00
	ssModZ80	$0B, $01, $01, $04
	sPatFM		$02

WA1_Jump1:
	dc.b nRst, $2D
WA1_Loop1:
WA1_Jump2:
	dc.b nG5, $06, nC5, $03, nG5, $09, nG5, $03
	dc.b nG5, nC5, nG5, nRst, nG5, $09, nG5, $06
	dc.b nC5, $03, nE6, nC5, nA5, $09, nA5, $03
	dc.b nA5, nC5, nD6, nRst, nD6, $09, nD6, $03
	dc.b nE5
	sLoop		$00, $07, WA1_Loop1

WA1_Loop2:
	dc.b nAb5, $03, nRst, nFs5, nRst, nFs5, nAb5, nRst
	dc.b $06, nAb5, $03, nRst, $06, nFs5, $03, nRst
	dc.b nAb5, nRst, nAb5, nRst, $06, nFs5, $03, nRst
	dc.b nFs5, nAb5, nRst, $06, nAb5, $03, nRst, $06
	dc.b nAb5, $03, nRst, nFs5, nRst, nAb5
	sLoop		$00, $04, WA1_Loop2
	sJump		WA1_Jump2

WA1_DAC:
	dc.b dKick, $06, dKick, $03, dKick, $09, dKick, $09
	dc.b dKick, $09, dSnare, $06, dKick, $03
WA1_Loop9:
WA1_Jump8:
	sCall		WA1_Call3
	sLoop		$00, $02, WA1_Loop9

WA1_Loop10:
	sCall		WA1_Call4
	sLoop		$00, $02, WA1_Loop10
	sCall		WA1_Call3

WA1_Loop11:
	sCall		WA1_Call4
	sLoop		$00, $02, WA1_Loop11

WA1_Loop12:
	dc.b dSnare, $03, dKick, $06, dKick, $03, dSnare, dKick
	dc.b $09, dSnare, $03, dKick, $06, dSnare, $06, dKick
	dc.b $06, dSnare, $09, dKick, $06, dKick, $03, dSnare
	dc.b dKick, $06, dSnare, $03, dKick, dKick, dSnare, dKick
	dc.b dSnare, $06, dKick, $03
	sLoop		$00, $04, WA1_Loop12
	sJump		WA1_Jump8

WA1_Call3:
	dc.b dSnare, $03, dKick, $06, dKick, $03, dSnare, dKick
	dc.b $06, dKick, $03, dSnare, dKick, $06, dKick, $03
	dc.b dSnare, dKick, $06, dKick, $03, dSnare, dKick, $06
	dc.b dKick, $03, dSnare, dKick, $06, dKick, $03, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	sRet	

WA1_Call4:
	dc.b dSnare, $03, dKick, dSnare, dKick, $06, dKick, $03
	dc.b dSnare, dKick, $06, dKick, $03, dSnare, dKick, $06
	dc.b dKick, $03, dSnare, $03, dKick, $06, dKick, $03
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, dSnare
	dc.b dKick, dSnare, dKick, dSnare, dKick, dSnare
	sRet	

WA1_Patches:
	; Patch $00
	; $FC
	; $61, $31, $30, $60,	$1F, $1F, $1F, $1F
	; $01, $01, $01, $01,	$00, $06, $00, $06
	; $2F, $2F, $4F, $1F,	$1E, $81, $95, $81
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$06, $03, $03, $06
	spMultiple	$01, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$01, $01, $01, $01
	spSustainRt	$00, $00, $06, $06
	spSustainLv	$02, $04, $02, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $15, $01, $01

	; Patch $01
	; $18
	; $37, $30, $30, $31,	$9E, $DC, $1C, $9C
	; $0D, $06, $04, $01,	$08, $0A, $03, $05
	; $BF, $BF, $3F, $2F,	$2C, $22, $14, $80
	spAlgorithm	$00
	spFeedback	$03
	spDetune	$03, $03, $03, $03
	spMultiple	$07, $00, $00, $01
	spRateScale	$02, $00, $03, $02
	spAttackRt	$1E, $1C, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0D, $04, $06, $01
	spSustainRt	$08, $03, $0A, $05
	spSustainLv	$0B, $03, $0B, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2C, $14, $22, $00

	; Patch $02
	; $18
	; $28, $72, $31, $12,	$1F, $1F, $1F, $1F
	; $12, $0B, $0C, $0D,	$01, $05, $05, $06
	; $5F, $0F, $1F, $1F,	$24, $20, $19, $80
	spAlgorithm	$00
	spFeedback	$03
	spDetune	$02, $03, $07, $01
	spMultiple	$08, $01, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $0C, $0B, $0D
	spSustainRt	$01, $05, $05, $06
	spSustainLv	$05, $01, $00, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $19, $20, $00
