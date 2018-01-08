sfx80_Header:
	sHeaderInit	; Z80 offset is $EB8B
	sHeaderPatch	sfx80_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx80_FM5, $00, $00

sfx80_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $69, $70
	dc.b nB5, $06, nD6, $07
	sStop	

sfx80_Patches:
	; Patch $00
	; $43
	; $38, $4F, $F7, $44,	$9F, $1F, $1F, $1F
	; $0B, $09, $08, $0B,	$0A, $12, $04, $0C
	; $10, $01, $14, $19,	$2D, $80, $08, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$03, $0F, $04, $04
	spMultiple	$08, $07, $0F, $04
	spRateScale	$02, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $08, $09, $0B
	spSustainRt	$0A, $04, $12, $0C
	spSustainLv	$01, $01, $00, $01
	spReleaseRt	$00, $04, $01, $09
	spTotalLv	$2D, $08, $00, $00
