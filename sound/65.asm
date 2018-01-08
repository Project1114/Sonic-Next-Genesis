sfx65_Header:
	sHeaderInit	; Z80 offset is $E6AB
	sHeaderPatch	sfx65_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx65_FM5, $F4, $05

sfx65_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $41, $00
	dc.b nEb5, $08
	saVolFM		$05
	ssModZ80	$01, $01, $D0, $00
	dc.b nEb5, $08
	sStop	

sfx65_Patches:
	; Patch $00
	; $05
	; $07, $12, $22, $32,	$0A, $0F, $0F, $0F
	; $00, $00, $00, $00,	$00, $10, $10, $10
	; $0F, $0F, $0F, $0F,	$21, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $02, $01, $03
	spMultiple	$07, $02, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0A, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $10, $10, $10
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $00, $00, $00
