sfxaa_Header:
	sHeaderInit	; Z80 offset is $F38F
	sHeaderPatch	sfxaa_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $05, sfxaa_FM5, $00, $00
	sHeaderSFX	$80, $04, sfxaa_FM4, $00, $00
	sHeaderSFX	$80, $02, sfxaa_FM3, $00, $02

sfxaa_FM5:
	sPatFM		$00
	sJump		sfxaa_Jump1

sfxaa_FM4:
	sPatFM		$00
	saDetune	$07
	dc.b nRst, $01

sfxaa_Jump1:
	dc.b nA4, $20
	sStop	

sfxaa_FM3:
	sPatFM		$01
	dc.b nCs2, $03
	sStop	

sfxaa_Patches:
	; Patch $00
	; $3C
	; $05, $01, $0A, $01,	$56, $5C, $5C, $5C
	; $0E, $11, $11, $11,	$09, $0A, $06, $0A
	; $4F, $3F, $3F, $3F,	$1F, $80, $2B, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$05, $0A, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$16, $1C, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $11, $11, $11
	spSustainRt	$09, $06, $0A, $0A
	spSustainLv	$04, $03, $03, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $2B, $00, $00

	; Patch $01
	; $05
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $12, $0C, $0C, $0C,	$12, $08, $08, $08
	; $1F, $5F, $5F, $5F,	$07, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $0C, $0C, $0C
	spSustainRt	$12, $08, $08, $08
	spSustainLv	$01, $05, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$07, $00, $00, $00
