sfx4c_Header:
	sHeaderInit	; Z80 offset is $E278
	sHeaderPatch	sfx4c_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx4c_FM5, $F8, $00

sfx4c_FM5:
	sPatFM		$00
	dc.b nG2, $03, nB2, $07
	sStop	

sfx4c_Patches:
	; Patch $00
	; $3C
	; $00, $0A, $00, $00,	$1F, $1F, $1F, $0F
	; $00, $16, $15, $0F,	$00, $00, $00, $00
	; $0F, $AF, $FF, $FF,	$00, $80, $04, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $0A, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $15, $16, $0F
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $0F, $0A, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $04, $00, $00
