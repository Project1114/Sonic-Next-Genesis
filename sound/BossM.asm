BossM_Header:
	sHeaderInit	; Z80 offset is $DFB5
	sHeaderPatch	BossM_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$02, $30
	sHeaderDAC	BossM_DAC
	sHeaderFM	BossM_FM1, $F4, $0D
	sHeaderFM	BossM_FM2, $F4, $10
	sHeaderFM	BossM_FM3, $F4, $18
	sHeaderFM	BossM_FM4, $F4, $18
	sHeaderFM	BossM_FM5, $F4, $19
	sHeaderPSG	BossM_PSG1, $EE, $09, $00, VolEnv_03
	sHeaderPSG	BossM_PSG1, $EF, $09, $00, VolEnv_03
	sHeaderPSG	BossM_PSG2, $00, $06, $00, VolEnv_04

BossM_FM1:
	sPatFM		$00
	dc.b nRst, $60, nRst
	ssModZ80	$05, $01, $03, $04

BossM_Jump6:
	dc.b nE3, $09, nE3, $03, nRst, $0C, nA3, $03
	dc.b nB3, $06, nB3, $06, nB3, $03, nA3, $06
	dc.b nE3, $09, nE3, $03, nRst, $0C, nB3, $03
	dc.b nA3, $03, nG3, $03, nA3, $06, nB3, $03
	dc.b nG3, $06, nD3, $09, nD3, $03, nRst, $0C
	dc.b nA3, $03, nB3, $06, nB3, $06, nB3, $03
	dc.b nA3, $06, nE3, $09, nE3, $03, sHold, $24
	dc.b nE3, $09, nE3, $03, nRst, $0C, nA3, $03
	dc.b nB3, $06, nB3, $06, nB3, $03, nA3, $06
	dc.b nE3, $09, nE3, $03, nRst, $0C, nB3, $03
	dc.b nA3, $03, nG3, $03, nA3, $06, nB3, $03
	dc.b nG3, $06, nD3, $09, nD3, $03, nRst, $0C
	dc.b nA3, $03, nB3, $06, nB3, $06, nB3, $03
	dc.b nA3, $06, nD3, $09, nD3, $03, sHold, $24
	dc.b nA3, $09, nA3, $03, nRst, $0C, nG3, $03
	dc.b nA3, $06, nA3, $06, nA3, $03, nG3, $06
	dc.b nA3, $09, nA3, $03, nRst, $0C, nB3, $03
	dc.b nA3, $03, nG3, $03, nA3, $06, nB3, $03
	dc.b nA3, $06, nD3, $09, nD3, $03, nRst, $0C
	dc.b nG3, $03, nA3, $06, nA3, $06, nA3, $03
	dc.b nG3, $06, nD3, $09, nD3, $15, nE3, $12
	dc.b nA3, $09, nA3, $03, nRst, $0C, nG3, $03
	dc.b nA3, $06, nA3, $06, nA3, $03, nG3, $06
	dc.b nA3, $09, nA3, $03, nRst, $0F, nB3, $03
	dc.b nG3, $03, nA3, $06, nB3, $03, nG3, $06
	dc.b nD3, $09, nD3, $03, nRst, $0C, nG3, $03
	dc.b nA3, $06, nA3, $06, nA3, $03, nG3, $06
	dc.b nE3, $09, nE3, $15, nC4, $12, nE3, $09
	dc.b nE3, $03, nRst, $06, nA3, $03, nB3, $06
	dc.b nB3, $06, nB3, $03, nB3, $06, nA3, $06
	dc.b nE3, $09, nE3, $03, nRst, $06, nE4, $03
	dc.b nE4, $1B, nE3, $09, nE3, $03, nRst, $06
	dc.b nG3, $03, nA3, $06, nA3, $06, nA3, $06
	dc.b nA3, $03, nG3, $06, nE3, $09, nC3, $15
	dc.b nE4, $0C, nE4, $06, nE3, $09, nE3, $03
	dc.b nRst, $06, nA3, $03, nB3, $06, nB3, $06
	dc.b nB3, $06, nB3, $03, nA3, $06, nE3, $09
	dc.b nE3, $15, nA3, $06, nAb3, $06, nG3, $06
	dc.b nE3, $09, nE3, $03, nRst, $06, nG3, $03
	dc.b nA3, $06, nA3, $06, nA3, $03, nA3, $06
	dc.b nG3, $06, nE3, $09, nE3, $15, nE4, $12
	sJump		BossM_Jump6

BossM_FM5:
	dc.b nRst, $03
	saDetune	$0A
	dc.b nRst, $60, nRst
	sJump		BossM_Jump2

BossM_FM2:
	sPatFM		$02
	sPan		spRight, $00
	saVolFM		$08
	dc.b nB6, $06, nB6, nB6, nB6, nB6, nB6, nB6
	dc.b nB6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nA6, nA6, nA6, nA6, nA6, nA6, nA6
	dc.b nA6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFM		$F8
	sPan		spCenter, $00

BossM_Jump2:
	ssModZ80	$0A, $01, $02, $04
	sPatFM		$01

BossM_Jump3:
	dc.b nG6, $24, nA6, $09, nFs6, $03, sHold, $24
	dc.b nC6, $09, nE6, $03, sHold, $24, nG6, $09
	dc.b nFs6, $03, sHold, $30, nG6, $24, nA6, $09
	dc.b nFs6, $03, sHold, $24, nC6, $09, nE6, $03
	dc.b sHold, $24, nB6, $09, nA6, $03, sHold, $30
	dc.b nA6, $24, nB6, $09, nG6, $03, sHold, $24
	dc.b nE6, $09, nFs6, $03, sHold, $24, nG6, $09
	dc.b nFs6, $03, sHold, $30, nA6, $24, nB6, $09
	dc.b nG6, $03, sHold, $24, nE6, $09, nFs6, $03
	dc.b sHold, $24, nD7, $09, nC7, $03, sHold, $30
	dc.b nE6, $06, nA6, $06, nD7, $06, nE6, $06
	dc.b nA6, $06, nD7, $06, nE6, $06, nA6, $06
	dc.b nD7, $06, nE6, $06, nA6, $06, nD7, $06
	dc.b nE6, $06, nA6, $06, nD7, $0C, nE6, $06
	dc.b nAb6, $06, nD7, $06, nE6, $06, nAb6, $06
	dc.b nD7, $06, nE6, $06, nAb6, $06, nD7, $06
	dc.b nE6, $06, nAb6, $06, nD7, $06, nE6, $06
	dc.b nAb6, $06, nD7, $0C, nE6, $06, nG6, $06
	dc.b nD7, $06, nE6, $06, nG6, $06, nD7, $06
	dc.b nE6, $06, nG6, $06, nD7, $06, nE6, $06
	dc.b nG6, $06, nD7, $06, nE6, $06, nG6, $06
	dc.b nD7, $0C, nE6, $06, nFs6, $06, nD7, $06
	dc.b nE6, $06, nFs6, $06, nD7, $06, nE6, $06
	dc.b nFs6, $06, nD7, $06, nE6, $06, nFs6, $06
	dc.b nD7, $06, nE6, $06, nFs6, $06
	ssModZ80	$08, $01, $06, $03
	dc.b nD7, $0C
	sModOff	
	ssModZ80	$0A, $01, $02, $04
	sJump		BossM_Jump3

BossM_FM3:
	sPan		spLeft, $00
	sPatFM		$02
	dc.b nRst, $01

BossM_Loop3:
	dc.b nE6, $06, nE6, nE6, nE6, nE6, nE6, nE6
	dc.b nE6
	sLoop		$00, $04, BossM_Loop3

BossM_Loop4:
BossM_Jump5:
	dc.b nE6, $06, nE6, nE6, nE6, nE6, nE6, nE6
	dc.b nE6
	sLoop		$00, $04, BossM_Loop4
	sLoop		$01, $02, BossM_Loop4

BossM_Loop5:
	dc.b nD6, $06, nD6, nD6, nD6, nD6, nD6, nD6
	dc.b nD6
	sLoop		$00, $04, BossM_Loop5
	sLoop		$01, $02, BossM_Loop5

BossM_Loop6:
	dc.b nE6, $06, nE6, nE6, nE6, nE6, nE6, nE6
	dc.b nE6
	sLoop		$00, $08, BossM_Loop6
	sJump		BossM_Jump5

BossM_FM4:
	sPan		spRight, $00
	sPatFM		$02
	dc.b nRst, $60, nRst

BossM_Loop1:
BossM_Jump4:
	dc.b nB6, $06, nB6, nB6, nB6, nB6, nB6, nB6
	dc.b nB6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nA6, nA6, nA6, nA6, nA6, nA6, nA6
	dc.b nA6, nB6, nB6, nB6, nB6, nB6, nB6, nB6
	dc.b nB6
	sLoop		$00, $02, BossM_Loop1

BossM_Loop2:
	dc.b nA6, $06, nA6, nA6, nA6, nA6, nA6, nA6
	dc.b nA6, nG6, nG6, nG6, nG6, nG6, nG6, nG6
	dc.b nG6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6
	dc.b nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6
	dc.b nFs6
	sLoop		$00, $02, BossM_Loop2
	dc.b nA6, $06, nA6, nA6, nA6, nA6, nA6, nA6
	dc.b nA6, nA6, nA6, nA6, nA6, nA6, nA6, nA6
	dc.b nA6, nAb6, nAb6, nAb6, nAb6, nAb6, nAb6, nAb6
	dc.b nAb6, nAb6, nAb6, nAb6, nAb6, nAb6, nAb6, nAb6
	dc.b nAb6, nG6, $06, nG6, nG6, nG6, nG6, nG6
	dc.b nG6, nG6, nG6, nG6, nG6, nG6, nG6, nG6
	dc.b nG6, nG6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6
	dc.b nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6
	dc.b nFs6, nFs6
	sJump		BossM_Jump4

BossM_PSG2:
	sNoisePSG	$E7

BossM_PSG1:
	sCall		BossM_Call1
	sCall		BossM_Call1
	sCall		BossM_Call1
	sCall		BossM_Call1

BossM_Jump1:
	sCall		BossM_Call1
	sCall		BossM_Call2
	sCall		BossM_Call1
	sCall		BossM_Call1
	sJump		BossM_Jump1

BossM_Call1:
	dc.b nA5, $06, nA5
	saVolPSG	$FD
	dc.b nA5
	saVolPSG	$03
	dc.b nA5, nA5, $06, nA5
	saVolPSG	$FD
	dc.b nA5
	saVolPSG	$03
	dc.b nA5
	sRet	

BossM_Call2:
	dc.b nA5, $06, nA5, nA5
	saVolPSG	$FD
	dc.b nA5, nA5, $03, nA5, nA5, nA5, nA5, nA5
	dc.b nA5, $06
	saVolPSG	$03
	sRet	

BossM_DAC:
	dc.b nRst, $60
BossM_Loop7:
	dc.b dKick, $0C, dClap, dKick, $06, dKick, dClap, $0C
	sLoop		$00, $02, BossM_Loop7

BossM_Loop8:
BossM_Jump7:
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, $0C
	dc.b dKick, $0C, dSnare, $06, dKick, dKick, dKick, dSnare
	dc.b $0C, dKick, $0C, dSnare, dKick, $06, dKick, dSnare
	dc.b $0C, dKick, $0C, dSnare, dSnare, $06, dSnare, dSnare
	dc.b dSnare
	sLoop		$00, $04, BossM_Loop8

BossM_Loop9:
	dc.b dKick, $0C, dSnare, $0C, dHighMetalHit, $03, dHighMetalHit, dClap
	dc.b dHighMetalHit, dHighMetalHit, dClap, dHighMetalHit, dHighMetalHit, dKick, $0C, dSnare
	dc.b dKick, $06, dKick, dSnare, $0C
	sLoop		$00, $03, BossM_Loop9
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, $0C
	dc.b dKick, $0C, dSnare, dSnare, $06, dSnare, dSnare, dSnare
	sJump		BossM_Jump7

BossM_Patches:
	; Patch $00
	; $28
	; $39, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $0C, $07, $06, $06,	$07, $07, $01, $01
	; $2F, $1F, $1F, $FF,	$17, $32, $14, $80
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$03, $03, $03, $03
	spMultiple	$09, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0C, $06, $07, $06
	spSustainRt	$07, $01, $07, $01
	spSustainLv	$02, $01, $01, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $14, $32, $00

	; Patch $01
	; $3C
	; $31, $52, $50, $30,	$52, $53, $52, $53
	; $08, $00, $08, $00,	$04, $00, $04, $00
	; $1F, $0F, $1F, $0F,	$1A, $80, $16, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $05, $05, $03
	spMultiple	$01, $00, $02, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$12, $12, $13, $13
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $00, $00
	spSustainRt	$04, $04, $00, $00
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $16, $00, $00

	; Patch $02
	; $2C
	; $21, $F2, $30, $32,	$5F, $94, $5F, $94
	; $05, $05, $05, $07,	$06, $06, $04, $02
	; $1F, $6F, $1F, $AF,	$1E, $80, $0E, $80
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$02, $03, $0F, $03
	spMultiple	$01, $00, $02, $02
	spRateScale	$01, $01, $02, $02
	spAttackRt	$1F, $1F, $14, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $05, $05, $07
	spSustainRt	$06, $04, $06, $02
	spSustainLv	$01, $01, $06, $0A
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $0E, $00, $00
