sfx7a_Header:
	sHeaderInit	; Z80 offset is $EA93
	sHeaderPatch	sfx7a_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx7a_FM5, $00, $04

sfx7a_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01

sfx7a_Loop1:
	dc.b nC0, $0A
	saVolFM		$07
	sLoop		$00, $06, sfx7a_Loop1
	sStop	

sfx7a_Patches:
	; Patch $00
	; $F1
	; $21, $30, $11, $33,	$1F, $1F, $1F, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$02, $01, $03, $03
	spMultiple	$01, $01, $00, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $02
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $04, $07, $00
