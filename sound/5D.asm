sfx5d_Header:
	sHeaderInit	; Z80 offset is $E558
	sHeaderPatch	sfx5d_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx5d_FM5, $F3, $00

sfx5d_FM5:
	sPatFM		$00
	dc.b nCs1, $05, nEb1
	sStop	

sfx5d_Patches:
	; Patch $00
	; $20
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $00, $11, $00, $00,	$00, $00, $00, $09
	; $0F, $FF, $FF, $0F,	$03, $10, $1A, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $11, $00
	spSustainRt	$00, $00, $00, $09
	spSustainLv	$00, $0F, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$03, $1A, $10, $00
