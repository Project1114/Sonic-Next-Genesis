sfxa2_Header:
	sHeaderInit	; Z80 offset is $F23C
	sHeaderPatch	sfxa2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfxa2_FM5, $00, $02

sfxa2_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $85, $32
	dc.b nD0, $03

sfxa2_Loop1:
	dc.b nC3, $0D, nRst, $02
	saVolFM		$18
	sLoop		$00, $04, sfxa2_Loop1
	sStop	

sfxa2_Patches:
	; Patch $00
	; $02
	; $12, $14, $28, $12,	$11, $1C, $1C, $14
	; $00, $10, $00, $00,	$02, $02, $02, $02
	; $2F, $2F, $FF, $3F,	$05, $00, $0B, $85
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$01, $02, $01, $01
	spMultiple	$02, $08, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$11, $1C, $1C, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $10, $00
	spSustainRt	$02, $02, $02, $02
	spSustainLv	$02, $0F, $02, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$05, $0B, $00, $05
