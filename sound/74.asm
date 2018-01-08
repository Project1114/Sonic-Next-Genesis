sfx74_Header:
	sHeaderInit	; Z80 offset is $E94B
	sHeaderPatch	sfx74_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx74_FM5, $FE, $02

sfx74_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $04, $05
	dc.b nG1, $36
	sStop	

sfx74_Patches:
	; Patch $00
	; $3C
	; $01, $06, $0A, $0E,	$16, $0F, $1C, $10
	; $0E, $11, $11, $11,	$09, $0A, $06, $0A
	; $4F, $3F, $3F, $3F,	$17, $80, $20, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $0A, $06, $0E
	spRateScale	$00, $00, $00, $00
	spAttackRt	$16, $1C, $0F, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $11, $11, $11
	spSustainRt	$09, $06, $0A, $0A
	spSustainLv	$04, $03, $03, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $20, $00, $00
