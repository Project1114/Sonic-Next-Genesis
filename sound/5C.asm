sfx5c_Header:
	sHeaderInit	; Z80 offset is $E530
	sHeaderPatch	sfx5c_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx5c_FM5, $00, $00

sfx5c_FM5:
	sPatFM		$00
	dc.b nF2, $10
	sStop	

sfx5c_Patches:
	; Patch $00
	; $01
	; $01, $B0, $FC, $40,	$1F, $1F, $1F, $1F
	; $00, $04, $06, $1F,	$0B, $10, $10, $0F
	; $0F, $FF, $FF, $05,	$19, $00, $28, $80
	spAlgorithm	$01
	spFeedback	$00
	spDetune	$00, $0F, $0B, $04
	spMultiple	$01, $0C, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $06, $04, $1F
	spSustainRt	$0B, $10, $10, $0F
	spSustainLv	$00, $0F, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $05
	spTotalLv	$19, $28, $00, $00
