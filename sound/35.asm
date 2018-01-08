sfx35_Header:
	sHeaderInit	; Z80 offset is $DE6F
	sHeaderPatch	sfx35_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx35_FM5, $F4, $00

sfx35_FM5:
	sPatFM		$00
	dc.b nB3, $07, sHold, nAb3

sfx35_Loop1:
	dc.b $01
	saVolFM		$01
	sLoop		$00, $2F, sfx35_Loop1
	sStop	

sfx35_Patches:
	; Patch $00
	; $30
	; $30, $30, $30, $30,	$9E, $D8, $DC, $DC
	; $0E, $0A, $04, $05,	$08, $08, $08, $08
	; $BF, $BF, $BF, $BF,	$14, $3C, $14, $80
	spAlgorithm	$00
	spFeedback	$06
	spDetune	$03, $03, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$02, $03, $03, $03
	spAttackRt	$1E, $1C, $18, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $04, $0A, $05
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$0B, $0B, $0B, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$14, $14, $3C, $00
