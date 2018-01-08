sfx9f_Header:
	sHeaderInit	; Z80 offset is $F1C0
	sHeaderPatch	sfx9f_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfx9f_FM5, $F8, $08
	sHeaderSFX	$80, $04, sfx9f_FM4, $F1, $0F

sfx9f_FM4:
	dc.b nRst, $03
sfx9f_FM5:
sfx9f_Loop1:
	sPatFM		$00
	ssModZ80	$01, $01, $F8, $04
	dc.b nA3, $13
	saVolFM		$14
	sLoop		$00, $05, sfx9f_Loop1
	sStop	

sfx9f_Patches:
	; Patch $00
	; $7A
	; $1F, $1F, $04, $1F,	$10, $1F, $18, $10
	; $10, $16, $0C, $00,	$02, $02, $02, $02
	; $2F, $2F, $FF, $3F,	$42, $16, $11, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$01, $00, $01, $01
	spMultiple	$0F, $04, $0F, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $18, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $0C, $16, $00
	spSustainRt	$02, $02, $02, $02
	spSustainLv	$02, $0F, $02, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$42, $11, $16, $00
