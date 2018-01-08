AB1_Header:
	sHeaderInit	; Z80 offset is $CAE6
	sHeaderPatch	AB1_Patches
	sHeaderCh	$06, $00
	sHeaderTempo	$02, $12
	sHeaderDAC	AB1_DAC
	sHeaderFM	AB1_FM1, $F4, $15
	sHeaderFM	AB1_FM2, $F4, $0D
	sHeaderFM	AB1_FM3, $F4, $13
	sHeaderFM	AB1_FM4, $F4, $13
	sHeaderFM	AB1_FM5, $F4, $17

AB1_FM1:
	sPatFM		$00
	ssModZ80	$15, $01, $04, $05
	sCall		AB1_Call1

AB1_Jump5:
	sCall		AB1_Call2

AB1_Loop10:
	dc.b nRst, $03, nC7, $09, nC7, $03, nRst, $09
	dc.b nB6, $09, nB6, $03, nRst, $0C, nRst, $30
	sLoop		$00, $02, AB1_Loop10
	dc.b nRst, $03, nCs7, $09, nCs7, $03, nRst, $09
	dc.b nC7, $09, nC7, $03, nRst, $0C, nRst, $30
	dc.b nD7, $12, nCs7, $18
	sPatFM		$03
	dc.b nB6, $03, nBb5, nBb6, nEb6, nBb5, nE6, nBb6
	dc.b nA5, nA6, nRst, $09, nAb5, $03, nAb6, nCs6
	dc.b nD6, nAb6, nG5
	sPatFM		$00
	sJump		AB1_Jump5

AB1_Call2:
	sCall		AB1_Call3
	dc.b nC6, $60, nD6, $60
	sCall		AB1_Call1
	sCall		AB1_Call3
	sRet	

AB1_Call1:
	dc.b nC6, $60, nD6, $30
	sPatFM		$03
	dc.b nBb5, $03, nE6, nBb6, nA5, nA6, nD6, nAb5
	dc.b nG6, nD6, nG5, nFs6, nC6, nFs5, nG4, nC4
	dc.b nRst
	sPatFM		$00
	sRet	

AB1_Call3:
	dc.b nE6, $24, nA6, $0C, nD6, $24, nG6, $06
	dc.b nA6, nF6, $24, nBb6, $06, nC7, nA6, $12
	dc.b nG6, $06, nBb6, $09, nE6, $09, nF6, $06
	dc.b nE6, $24, nA6, $0C, nD6, $24, nG6, $06
	dc.b nA6, nF6, $30, nBb6, $30
	sRet	

AB1_FM2:
	sPatFM		$01
	sCall		AB1_Call9
	sCall		AB1_Call10

AB1_Loop7:
AB1_Jump4:
	sCall		AB1_Call11
	sLoop		$00, $02, AB1_Loop7

AB1_Loop8:
	sCall		AB1_Call9
	sLoop		$00, $03, AB1_Loop8
	sCall		AB1_Call10

AB1_Loop9:
	sCall		AB1_Call11
	sLoop		$00, $02, AB1_Loop9
	sCall		AB1_Call4
	sJump		AB1_Jump4

AB1_Call4:
	dc.b nRst, $03, nCs4, $09, nCs4, $03, nRst, $09
	dc.b nC4, $09, nA3, $03, nG3, nA3, nB3, nA3
	dc.b nG4, nA4, nA3, nA3, $06, nA3, $03, nG3
	dc.b nA3, $06, nA4, $03, nA3, nA3, nD4, nE4
	dc.b nG4, nA4, nRst, $03, nCs4, $09, nCs4, $03
	dc.b nRst, $09, nC4, $09, nC4, $03, nG4, $02
	dc.b nG4, nG5, nFs4, nFs4, nFs5, nF5, $03, $FF
	dc.b $0A, $02, nF4, nF4, $FF, $0A, $00, nF5
	dc.b $06, nF3, $03, nF4, nG3, $06, nG3, $03
	dc.b nG4, nF3, nF3, $06, nA3, $03, nF3, nRst
	dc.b $03, nD4, $09, nD4, $03, nRst, $09, nCs4
	dc.b $09, nCs4, $03, nAb3, nBb3, $06, nBb3, $03
	dc.b nA4, nA5, nA4, nA4, nAb5, nAb4, nAb4, nG5
	dc.b nG4, nFs5, nBb3, $06, nAb3, $03, nBb3, nCs4
	dc.b nBb3, nEb4, $12, nD4, $18, nB5, $03, nBb4
	dc.b nBb5, nEb5, nBb4, nE5, nBb5, nA4, nA5, nRst
	dc.b $09, nAb4, $03, nAb5, nCs5, nD5, nAb5, nG4
	sRet	

AB1_Call9:
	dc.b nC5, $03, nA3, $06, nA3, $03, nG4, nA4
	dc.b nD4, nE4, nA3, nA3, $06, nA3, $03, nA4
	dc.b nA3, nC4, nA3, nA3, nA3, nG4, nA4, nA3
	dc.b nD4, nE4, nA3, nC4, nD4, nA3, nE4, nF4
	dc.b nA3, nG4, nB4
	sRet	

AB1_Call10:
	dc.b nC5, $03, nA3, $06, nA3, $03, nG4, nA4
	dc.b nD4, nE4, nA3, nA3, $06, nA3, $03, nA4
	dc.b nA3, nC4, nA3, nBb4, nE5, nBb5, nA4, nA5
	dc.b nD5, nAb4, nG5, nD5, nG4, nFs5, nC5, nFs4
	dc.b nA4, nD4, nRst
	sRet	

AB1_Call11:
	dc.b nA3, $03, nA3, $06, nA3, nA3, $03, nG4
	dc.b nA4, nA3, nA3, $06, nA3, $03, nA3, nG4
	dc.b nA4, nA3, nA3, $09, nA3, $06, nA3, $03
	dc.b nG4, nA4, nFs3, $06, nFs4, $03, nFs3, nG3
	dc.b nG4, nG3, nC4, nG3, nG3, $06, nG3, nG3
	dc.b $03, nF4, nG4, nG3, nG3, $06, nG3, $03
	dc.b nG3, nF4, nG4, nG3, nG3, $09, nG3, $06
	dc.b nG3, $03, nF4, nG4, nE3, $06, nE4, $03
	dc.b nE3, nF3, nF4, nF3, nBb3
	sRet	

AB1_FM3:
	sPan		spLeft, $00
	sPatFM		$02
	sCall		AB1_Call7

AB1_Loop4:
AB1_Jump3:
	sCall		AB1_Call8
	sLoop		$00, $02, AB1_Loop4
	dc.b nA5, $60, nA5, $60
	sCall		AB1_Call7

AB1_Loop5:
	sCall		AB1_Call8
	sLoop		$00, $02, AB1_Loop5

AB1_Loop6:
	dc.b nRst, $03, nA6, $09, nA6, $03, nRst, $09
	dc.b nAb6, $09, nAb6, $03, nRst, $0C, nRst, $30
	sLoop		$00, $02, AB1_Loop6
	dc.b nRst, $03, nBb6, $09, nBb6, $03, nRst, $09
	dc.b nA6, $09, nA6, $03, nRst, $0C, nRst, $30
	dc.b nB6, $12, nBb6, $18
	sPatFM		$03
	dc.b nE7, $03, nEb6, nEb7, nAb6, nEb6, nA6, nEb7
	dc.b nD6, nD7, nRst, $09, nCs6, $03, nCs7, nFs6
	dc.b nG6, nCs7, nCs6
	sPatFM		$02
	sJump		AB1_Jump3

AB1_Call7:
	dc.b nA5, $60, nA5, $30
	sPatFM		$03
	dc.b nEb6, $03, nA6, nEb7, nD6, nD7, nG6, nCs6
	dc.b nC7, nG6, nC6, nB6, nF6, nB5, nC5, nF4
	dc.b nRst
	sPatFM		$02
	sRet	

AB1_Call8:
	dc.b nB6, $30, nB6, $12, nC6, $0F, nE6, $0F
	dc.b nBb5, $30, nG5, $12, nBb5, $0F, nE6, $0F
	sRet	

AB1_FM4:
	sPan		spRight, $00
	sPatFM		$02
	sCall		AB1_Call5

AB1_Loop1:
AB1_Jump2:
	sCall		AB1_Call6
	sLoop		$00, $02, AB1_Loop1
	dc.b nG5, $60, nFs5, $60
	sCall		AB1_Call5

AB1_Loop2:
	sCall		AB1_Call6
	sLoop		$00, $02, AB1_Loop2

AB1_Loop3:
	dc.b nRst, $03, nCs6, $09, nCs6, $03, nRst, $09
	dc.b nC6, $09, nC6, $03, nRst, $0C, nRst, $30
	sLoop		$00, $02, AB1_Loop3
	dc.b nRst, $03, nD6, $09, nD6, $03, nRst, $09
	dc.b nCs6, $09, nCs6, $03, nRst, $0C, nRst, $30
	dc.b nEb6, $12, nD6, $18
	sPatFM		$03
	dc.b nG6, $03, nFs5, nFs6, nB5, nFs5, nC6, nFs6
	dc.b nF5, nF6, nRst, $09, nE5, $03, nE6, nA5
	dc.b nBb5, nE6, nEb5
	sPatFM		$02
	sJump		AB1_Jump2

AB1_Call5:
	dc.b nG5, $60, nFs5, $30
	sPatFM		$03
	dc.b nFs5, $03, nC6, nFs6, nF5, nF6, nBb5, nE5
	dc.b nEb6, nBb5, nEb5, nD6, nAb5, nD5, nEb4, nAb3
	dc.b nRst
	sPatFM		$02
	sRet	

AB1_Call6:
	dc.b nC6, $39, nG6, $0F, nA5, $12, nC6, $06
	dc.b nA6, $39, nG6, $0F, nCs6, $12, nBb6, $06
	sRet	

AB1_FM5:
	sPatFM		$02
	dc.b nRst, $02
	sCall		AB1_Call1

AB1_Jump1:
	sCall		AB1_Call2
	sPatFM		$01
	sCall		AB1_Call4
	sPatFM		$00
	sJump		AB1_Jump1

AB1_DAC:
	sCall		AB1_Call12

AB1_Loop11:
AB1_Jump6:
	sCall		AB1_Call13
	sLoop		$00, $03, AB1_Loop11
	sCall		AB1_Call12

AB1_Loop12:
	sCall		AB1_Call13
	sLoop		$00, $02, AB1_Loop12

AB1_Loop13:
	dc.b dSnare, $03, dKick, $09, dKick, $06, dSnare, $06
	dc.b dKick, $09, dKick, $06, dKick, $06, dKick, $03
	dc.b dKick, $0C, dSnare, $0C, dKick, $09, dKick, $03
	dc.b dSnare, dKick, $06, dKick, $03
	sLoop		$00, $03, AB1_Loop13
	dc.b dSnare, $03, dKick, $09, dKick, $06, dSnare, $06
	dc.b dKick, $09, dKick, $03, dKick, dKick, dSnare, dKick
	dc.b dKick, dSnare, dKick, dKick, dSnare, dKick, dSnare, $0C
	dc.b dKick, $03, dKick, dKick, dSnare, dKick, dSnare
	sJump		AB1_Jump6

AB1_Call12:
	dc.b dKick, $09, dKick, $03, dSnare, $06, dKick, dKick
	dc.b $03, dKick, $06, dKick, $03, dSnare, $06, dKick
	dc.b dKick, $03, dKick, $09, dSnare, $0C, dKick, $03
	dc.b dKick, $06, dKick, $03, dSnare, dSnare, $06, dKick
	dc.b $03, dKick, $0C, dSnare, $0C, dKick, $03, dKick
	dc.b $06, dSnare, $03, dKick, $06, dKick, dKick, $03
	dc.b dKick, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare
	dc.b dKick, dKick, dSnare, dSnare, dSnare, dSnare, $06
	sRet	

AB1_Call13:
	dc.b dKick, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b dKick, $09, dKick, $03, dSnare, dKick, dKick, $06
	dc.b dKick, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b dKick, $03, dKick, nRst, dKick, dSnare, $06, dKick
	dc.b $06, dKick, $09, dKick, $03, dSnare, $06, dKick
	dc.b $06, dKick, $09, dKick, $03, dSnare, dKick, dKick
	dc.b $06, dKick, $09, dKick, $03, dSnare, $06, dKick
	dc.b $09, dKick, $03, dKick, dKick, dSnare, $06, dKick
	dc.b $06
	sRet	

AB1_Patches:
	; Patch $00
	; $3C
	; $01, $32, $00, $01,	$52, $53, $52, $53
	; $08, $02, $08, $02,	$04, $03, $04, $03
	; $1F, $0F, $1F, $0F,	$1A, $80, $16, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $03, $00
	spMultiple	$01, $00, $02, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$12, $12, $13, $13
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $02, $02
	spSustainRt	$04, $04, $03, $03
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $16, $00, $00

	; Patch $01
	; $12
	; $00, $0D, $00, $01,	$1F, $1F, $1F, $1F
	; $1F, $0C, $0E, $0B,	$00, $0C, $0A, $09
	; $0A, $8B, $38, $1C,	$10, $2B, $15, $87
	spAlgorithm	$02
	spFeedback	$02
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $0D, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $0E, $0C, $0B
	spSustainRt	$00, $0A, $0C, $09
	spSustainLv	$00, $03, $08, $01
	spReleaseRt	$0A, $08, $0B, $0C
	spTotalLv	$10, $15, $2B, $07

	; Patch $02
	; $3C
	; $31, $52, $50, $31,	$1B, $1F, $1B, $1F
	; $04, $06, $04, $06,	$04, $04, $04, $04
	; $1F, $0F, $1F, $1F,	$1A, $80, $16, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $05, $05, $03
	spMultiple	$01, $00, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1B, $1B, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $06, $06
	spSustainRt	$04, $04, $04, $04
	spSustainLv	$01, $01, $00, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $16, $00, $00

	; Patch $03
	; $1B
	; $00, $00, $10, $51,	$D7, $49, $59, $99
	; $0A, $07, $02, $05,	$06, $06, $03, $08
	; $1F, $7F, $8F, $6F,	$15, $04, $17, $82
	spAlgorithm	$03
	spFeedback	$03
	spDetune	$00, $01, $00, $05
	spMultiple	$00, $00, $00, $01
	spRateScale	$03, $01, $01, $02
	spAttackRt	$17, $19, $09, $19
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $02, $07, $05
	spSustainRt	$06, $03, $06, $08
	spSustainLv	$01, $08, $07, $06
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $17, $04, $02
