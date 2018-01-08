sfxa9_Header:
	sHeaderInit	; Z80 offset is $F365
	sHeaderPatch	sfxa9_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfxa9_FM5, $0C, $08

sfxa9_FM5:
	sPatFM		$00
	dc.b nA4, $08, nA4, $25
	sStop	

sfxa9_Patches:
	; Patch $00
	; $14
	; $25, $33, $36, $11,	$1F, $1F, $1F, $1F
	; $15, $18, $1C, $13,	$0B, $08, $0D, $09
	; $0F, $9F, $8F, $0F,	$24, $05, $0A, $80
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$02, $03, $03, $01
	spMultiple	$05, $06, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$15, $1C, $18, $13
	spSustainRt	$0B, $0D, $08, $09
	spSustainLv	$00, $08, $09, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $0A, $05, $00
