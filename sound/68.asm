sfx68_Header:
	sHeaderInit	; Z80 offset is $E75C
	sHeaderPatch	sfx68_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $02, sfx68_FM3, $00, $00
	sHeaderSFX	$80, $04, sfx68_FM4, $00, $00
	sHeaderSFX	$80, $05, sfx68_FM5, $00, $00

sfx68_FM3:
	sPatFM		$00
	saDetune	$01
	dc.b nC4, $12, nE4, nG4, nB4, $60
	sStop	

sfx68_FM4:
	sPatFM		$00
	saDetune	$02
	dc.b nRst, $06, nE4, $12, nG4, nB4, nD5, $5A
	sStop	

sfx68_FM5:
	sPatFM		$00
	saDetune	$04
	dc.b nRst, $0C, nG4, $12, nB4, nD5, nF5, $54
	sStop	

sfx68_Patches:
	; Patch $00
	; $05
	; $19, $0A, $2C, $78,	$5F, $5F, $5F, $5F
	; $06, $00, $00, $00,	$00, $09, $09, $0A
	; $FF, $0F, $0F, $0F,	$20, $90, $90, $90
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$01, $02, $00, $07
	spMultiple	$09, $0C, $0A, $08
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $00, $00, $00
	spSustainRt	$00, $09, $09, $0A
	spSustainLv	$0F, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $10, $10, $10
