sfx3e_Header:
	sHeaderInit	; Z80 offset is $E05D
	sHeaderPatch	sfx3e_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx3e_FM5, $E8, $00

sfx3e_FM5:
	sPatFM		$00
	dc.b nBb2, $05, sHold, nB2, $26
	sStop	

sfx3e_Patches:
	; Patch $00
	; $0C
	; $01, $21, $31, $31,	$1E, $0C, $0E, $1C
	; $0A, $00, $04, $00,	$08, $12, $08, $0C
	; $FF, $0F, $BF, $0F,	$03, $80, $0D, $80
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$00, $03, $02, $03
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $0E, $0C, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $04, $00, $00
	spSustainRt	$08, $08, $12, $0C
	spSustainLv	$0F, $0B, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$03, $0D, $00, $00
