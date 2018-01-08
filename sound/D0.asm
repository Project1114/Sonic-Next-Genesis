sfxd0_Header:
	sHeaderInit	; Z80 offset is $FB6A
	sHeaderPatch	sfxd0_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxd0_FM3, $F3, $07

sfxd0_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $03, $CA
	dc.b nCs3, $61
	ssModZ80	$01, $01, $DF, $05

sfxd0_Loopsfx1:
	dc.b sHold, $16
	sLoopSFX	sfxd0_Loopsfx1
	sStop	

sfxd0_Patches:
	; Patch $00
	; $35
	; $06, $07, $03, $05,	$11, $07, $0B, $EE
	; $0C, $15, $03, $06,	$0C, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$2E, $8D, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$06, $03, $07, $05
	spRateScale	$00, $00, $00, $03
	spAttackRt	$11, $0B, $07, $0E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0C, $03, $15, $06
	spSustainRt	$0C, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2E, $00, $0D, $00
