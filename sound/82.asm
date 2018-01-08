sfx82_Header:
	sHeaderInit	; Z80 offset is $EC05
	sHeaderPatch	sfx82_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx82_FM5, $1E, $00

sfx82_FM5:
	sPatFM		$00
	ssModZ80	$02, $01, $09, $06
	dc.b nA2, $30
	sStop	

sfx82_Patches:
	; Patch $00
	; $38
	; $0A, $0A, $0A, $07,	$1F, $1F, $1F, $12
	; $00, $00, $00, $00,	$00, $00, $00, $0C
	; $00, $00, $00, $0F,	$00, $00, $00, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0A, $0A, $0A, $07
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $12
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $0C
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $0F
	spTotalLv	$00, $00, $00, $00
