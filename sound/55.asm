sfx55_Header:
	sHeaderInit	; Z80 offset is $E42B
	sHeaderPatch	sfx55_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx55_FM5, $11, $00

sfx55_FM5:
	sPatFM		$00
	dc.b nBb5, $02
	sStop	

sfx55_Patches:
	; Patch $00
	; $24
	; $2A, $05, $02, $01,	$1A, $10, $1F, $1F
	; $0F, $1F, $1F, $1F,	$0C, $11, $0D, $11
	; $0C, $09, $09, $0F,	$0E, $80, $04, $80
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$02, $00, $00, $00
	spMultiple	$0A, $02, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1A, $1F, $10, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $1F, $1F, $1F
	spSustainRt	$0C, $0D, $11, $11
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0C, $09, $09, $0F
	spTotalLv	$0E, $04, $00, $00
