sfx3f_Header:
	sHeaderInit	; Z80 offset is $E088
	sHeaderPatch	sfx3f_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx3e_FM5, $F6, $0A

sfx3f_Patches:
	; Patch $00
	; $05
	; $11, $02, $23, $31,	$0B, $0C, $0E, $1C
	; $0A, $00, $04, $00,	$08, $06, $09, $0B
	; $FF, $0F, $BF, $0F,	$09, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$01, $02, $00, $03
	spMultiple	$01, $03, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0B, $0E, $0C, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $04, $00, $00
	spSustainRt	$08, $09, $06, $0B
	spSustainLv	$0F, $0B, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$09, $00, $00, $00
