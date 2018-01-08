sfx41_Header:
	sHeaderInit	; Z80 offset is $E0CE
	sHeaderPatch	sfx41_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx3e_FM5, $0A, $00

sfx41_Patches:
	; Patch $00
	; $36
	; $07, $10, $0E, $0C,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $0D, $0D, $0E
	; $0F, $0F, $0F, $0F,	$17, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$00, $00, $01, $00
	spMultiple	$07, $0E, $00, $0C
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $0D, $0D, $0E
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $00, $00, $00
