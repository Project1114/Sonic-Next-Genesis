sfx4a_Header:
	sHeaderInit	; Z80 offset is $E206
	sHeaderPatch	sfx4a_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx4a_FM5, $05, $00

sfx4a_FM5:
	sPatFM		$00
	dc.b nE2, $06
	sStop	

sfx4a_Patches:
	; Patch $00
	; $3C
	; $00, $01, $01, $00,	$1F, $12, $1A, $1F
	; $10, $00, $1F, $00,	$09, $13, $0A, $12
	; $FF, $0F, $FF, $0F,	$00, $80, $00, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $01, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1A, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $1F, $00, $00
	spSustainRt	$09, $0A, $13, $12
	spSustainLv	$0F, $0F, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
