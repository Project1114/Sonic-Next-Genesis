sfxb2_Header:
	sHeaderInit	; Z80 offset is $F5D7
	sHeaderPatch	sfxb2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfxb2_FM5, $00, $04

sfxb2_FM5:
	sPatFM		$00
	dc.b nB3, $06, nRst, $06, nB3, $24
	sStop	

sfxb2_Patches:
	; Patch $00
	; $38
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1F, $0C, $17, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $17, $0C, $00
