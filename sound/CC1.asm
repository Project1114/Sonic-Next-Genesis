CC1_Header:
	sHeaderInit	; Z80 offset is $B810
	sHeaderPatch	CC1_Patches
	sHeaderCh	$06, $02
	sHeaderTempo	$02, $40
	sHeaderDAC	CC1_DAC
	sHeaderFM	CC1_FM1, $F4, $11
	sHeaderFM	CC1_FM2, $F4, $0D
	sHeaderFM	CC1_FM3, $F4, $13
	sHeaderFM	CC1_FM4, $F4, $13
	sHeaderFM	CC1_FM5, $F4, $17
	sHeaderPSG	CC1_PSG1, $DC, $05, $00, VolEnv_00
	sHeaderPSG	CC1_PSG2, $DC, $05, $00, VolEnv_00

CC1_FM5:
	dc.b nRst, $06
	sJump		CC1_Jump3

CC1_FM1:
	ssModZ80	$2B, $01, $04, $05

CC1_Jump3:
	sPatFM		$00

CC1_Loop5:
	dc.b nA3, $0C, nA3, nA3, nA3, nA3, nA3, nA3
	dc.b $06, nE7, $03, nE7, nA3, $0C, nA3, nA3
	dc.b nA3, nA3, $06, nE7, $03, nE7, nA3, $0C
	dc.b nA3, nA3, nE7, $03, nD7, nEb7, nC7
	sLoop		$00, $02, CC1_Loop5

CC1_Loop6:
	dc.b nAb5, $12, nFs6, $0C, nC7, $3C, nCs7, $03
	dc.b nD7, nG6, $2A, nAb6, $03, nA6, nEb6, $09
	dc.b nD6, $09, nCs6, $0C, nC6, $12
	sLoop		$00, $02, CC1_Loop6

CC1_Loop7:
	dc.b nRst, $0C, nCs7, $03, nA6, nE6, nD6, nA5
	dc.b nAb5, nRst, $12, nRst, $0C, nG5, $03, nA5
	dc.b $09, nG5, $03, nA5, nD6, nE6, nA6, nBb5
	dc.b nB5, nC6, nF6, nG6, $06, nD7, $0F, nEb7
	dc.b $09, nE7, $09, nF7, $06
	sLoop		$00, $02, CC1_Loop7
	dc.b nRst, $03, nCs7, $09, nA6, $06, nBb6, $36
	dc.b nRst, $18
	sJump		CC1_Jump3

CC1_FM2:
CC1_Jump4:
	sPatFM		$01

CC1_Loop8:
	dc.b nA3, $0C, nA3, nA3, nA3
	sLoop		$00, $10, CC1_Loop8

CC1_Loop9:
	dc.b nEb4, $03, nD4, nBb3, nB3, nEb4, nD4, nBb3
	dc.b nB3, nEb4, nD4, nBb3, nB3, nEb4, $03, nD4
	dc.b nBb3, nB3
	sLoop		$00, $05, CC1_Loop9
	dc.b nEb4, $03, nD4, nBb3, nB3, nEb4, nD4, $06
	dc.b nB3, nD4, $03, nBb3, $06, nEb4, $03, nD4
	dc.b nBb3, nB3, $06, nD4, $06, nB3, nD4, $03
	dc.b nA3, $06, nEb4, nA3, $06, nEb4, $03, nA3
	dc.b $09, nA3, $03, nA3, $06, nA3, $09, nA3
	dc.b $0C, nA3, $0F, nRst, $03
	sJump		CC1_Jump4

CC1_PSG1:
	sJump		CC1_Jump2

CC1_FM3:
	sPatFM		$02
	ssModZ80	$0B, $01, $01, $04
	sPan		spLeft, $00

CC1_Jump2:
CC1_Loop3:
	dc.b nC6, $4E, nE7, $03, nE7, nF6, $36, nE7
	dc.b $03, nE7, nBb5, $12, nA5, $12, nE7, $03
	dc.b nD7, nEb7, nC7
	sLoop		$00, $04, CC1_Loop3

CC1_Loop4:
	dc.b nA6, $03, nA6, nF5, nG5, nG6, nRst, $21
	dc.b nG5, $03, nA6, nA6, nF5, nG5, nG6, nE5
	dc.b nRst, $18, nA5, $03, nB6, nB6, nD6, nA5
	dc.b nA6, nB5, nB6, nB6, nRst, nD6, nBb6, nE6
	dc.b nC7, nC7, nC7, nBb5
	sLoop		$00, $02, CC1_Loop4
	dc.b nRst, $03, nA6, $09, nF6, $06, nFs6, $36
	dc.b nRst, $18
	sJump		CC1_Jump2

CC1_PSG2:
	sJump		CC1_Jump1

CC1_FM4:
	sPatFM		$02
	sPan		spRight, $00
	ssModZ80	$0B, $01, $08, $03

CC1_Jump1:
CC1_Loop1:
	dc.b nFs5, $4E, nB6, $03, nB6, nB5, $36, nB6
	dc.b $03, nB6, nE5, $12, nEb5, $12, nB6, $03
	dc.b nAb6, nB6, nFs6
	sLoop		$00, $04, CC1_Loop1

CC1_Loop2:
	dc.b nE6, $03, nE6, nE5, nE5, nD6, nRst, $21
	dc.b nE5, $03, nE6, nE6, nEb5, nEb5, nD6, nD5
	dc.b nRst, $18, nFs5, $03, nF6, nF6, nG5, nFs5
	dc.b nE6, nF5, nE6, nFs6, nRst, nC6, nAb6, nB5
	dc.b nAb6, nAb6, nAb6, nAb5
	sLoop		$00, $02, CC1_Loop2
	dc.b nRst, $03, nE6, $09, nD6, $06, nC6, $36
	dc.b nRst, $18
	sJump		CC1_Jump1

CC1_DAC:
CC1_Loop10:
CC1_Jump5:
	dc.b dKick, $21, dKick, $03, dKick, dKick, $09
	sLoop		$00, $10, CC1_Loop10

CC1_Loop11:
	dc.b nRst, $03, dKick, dKick, nRst, dKick, dKick, nRst
	dc.b dKick, dKick, nRst, dKick, dKick, nRst, dKick, dKick
	dc.b nRst
	sLoop		$00, $05, CC1_Loop11
	dc.b nRst, $03, dKick, $03, dKick, $06, dKick, $03
	dc.b dKick, $06, dKick, $03, dKick, $06, dKick, $09
	dc.b dKick, $03, dKick, dKick, $06, dKick, $03, dKick
	dc.b $06, dKick, $0C, dKick, $0C, dKick, $03, dKick
	dc.b $09, dKick, $03, dKick, $06, dKick, $09, dKick
	dc.b $0C, dKick, $12
	sJump		CC1_Jump5

CC1_Patches:
	; Patch $00
	; $FC
	; $61, $31, $30, $60,	$10, $10, $10, $10
	; $01, $04, $01, $04,	$00, $06, $00, $06
	; $2A, $2A, $4A, $29,	$1E, $81, $95, $81
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$06, $03, $03, $06
	spMultiple	$01, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $10, $10, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$01, $01, $04, $04
	spSustainRt	$00, $00, $06, $06
	spSustainLv	$02, $04, $02, $02
	spReleaseRt	$0A, $0A, $0A, $09
	spTotalLv	$1E, $15, $01, $01

	; Patch $01
	; $33
	; $10, $01, $01, $00,	$1F, $1F, $14, $16
	; $05, $0F, $0B, $0A,	$00, $07, $06, $00
	; $19, $39, $29, $09,	$19, $10, $17, $82
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$01, $00, $00, $00
	spMultiple	$00, $01, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $14, $1F, $16
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $0B, $0F, $0A
	spSustainRt	$00, $06, $07, $00
	spSustainLv	$01, $02, $03, $00
	spReleaseRt	$09, $09, $09, $09
	spTotalLv	$19, $17, $10, $02

	; Patch $02
	; $F8
	; $61, $31, $60, $00,	$1F, $1F, $1F, $5D
	; $0E, $04, $02, $06,	$00, $00, $00, $02
	; $54, $55, $40, $06,	$28, $18, $13, $92
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$06, $06, $03, $00
	spMultiple	$01, $00, $01, $00
	spRateScale	$00, $00, $00, $01
	spAttackRt	$1F, $1F, $1F, $1D
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $02, $04, $06
	spSustainRt	$00, $00, $00, $02
	spSustainLv	$05, $04, $05, $00
	spReleaseRt	$04, $00, $05, $06
	spTotalLv	$28, $13, $18, $12
