sfx99_Header:
	sHeaderInit	; Z80 offset is $F068
	sHeaderPatch	sfx99_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfx99_FM3, $07, $00

sfx99_FM3:
	sPatFM		$00
	dc.b nG2, $48
	sStop	

sfx99_Patches:
	; Patch $00
	; $03
	; $10, $70, $00, $3F,	$1F, $1F, $1F, $1F
	; $17, $1F, $00, $15,	$00, $00, $00, $00
	; $FF, $0F, $0F, $FF,	$03, $1B, $2C, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$01, $00, $07, $03
	spMultiple	$00, $00, $00, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$17, $00, $1F, $15
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0F, $00, $00, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$03, $2C, $1B, $00
