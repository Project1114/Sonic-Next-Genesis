sfx69_Header:
	sHeaderInit	; Z80 offset is $E7B0
	sHeaderPatch	sfx69_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, sfx69_FM4, $00, $06

sfx69_FM4:
	sPatFM		$00
	dc.b nD1, $07, nRst, $02, nD1, $06, nRst
	sStop	

sfx69_Patches:
	; Patch $00
	; $FA
	; $21, $30, $10, $32,	$1F, $1F, $1F, $1F
	; $05, $18, $09, $02,	$06, $0F, $06, $02
	; $1F, $2F, $4F, $2F,	$0F, $0E, $0E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$01, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $02
	spSustainRt	$06, $06, $0F, $02
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0F, $0E, $0E, $00
