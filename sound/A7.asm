sfxa7_Header:
	sHeaderInit	; Z80 offset is $F313
	sHeaderPatch	sfxa7_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxa7_FM3, $0B, $10

sfxa7_FM3:
	sPatFM		$00
	dc.b nB4, $17
	sStop	

sfxa7_Patches:
	; Patch $00
	; $07
	; $30, $70, $10, $20,	$17, $19, $14, $14
	; $00, $00, $00, $00,	$0C, $0C, $0C, $0C
	; $0F, $0F, $0F, $0F,	$80, $80, $80, $80
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$03, $01, $07, $02
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $14, $19, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $0C, $0C
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
