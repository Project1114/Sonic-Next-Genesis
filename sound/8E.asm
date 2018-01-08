sfx8e_Header:
	sHeaderInit	; Z80 offset is $EE2A
	sHeaderPatch	sfx8e_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx8e_FM5, $B0, $04

sfx8e_FM5:
	sPatFM		$00
	ssModZ80	$02, $01, $0B, $D5
	dc.b nF4, $06
	saVolFM		$09
	dc.b nF4, $3A
	sStop	

sfx8e_Patches:
	; Patch $00
	; $D2
	; $11, $92, $6F, $0F,	$19, $1D, $1C, $12
	; $02, $04, $03, $0C,	$17, $02, $06, $03
	; $07, $0F, $0F, $0F,	$0A, $15, $11, $80
	spAlgorithm	$02
	spFeedback	$02
	spDetune	$01, $06, $09, $00
	spMultiple	$01, $0F, $02, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$19, $1C, $1D, $12
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$02, $03, $04, $0C
	spSustainRt	$17, $06, $02, $03
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$07, $0F, $0F, $0F
	spTotalLv	$0A, $11, $15, $00
