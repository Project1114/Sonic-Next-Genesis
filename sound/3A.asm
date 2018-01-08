sfx3a_Header:
	sHeaderInit	; Z80 offset is $DF6B
	sHeaderPatch	sfx3a_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx3a_FM5, $0C, $00

sfx3a_FM5:
	sPatFM		$00
	dc.b nBb2, $05, sHold, nB2, $26
	sStop	

sfx3a_Patches:
	; Patch $00
	; $30
	; $30, $30, $30, $30,	$9E, $A8, $AC, $DC
	; $0E, $0A, $04, $05,	$08, $08, $08, $08
	; $BF, $BF, $BF, $BF,	$04, $2C, $14, $80
	spAlgorithm	$00
	spFeedback	$06
	spDetune	$03, $03, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$02, $02, $02, $03
	spAttackRt	$1E, $0C, $08, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $04, $0A, $05
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$0B, $0B, $0B, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$04, $14, $2C, $00
