sfx9c_Header:
	sHeaderInit	; Z80 offset is $F114
	sHeaderPatch	sfx9c_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx9c_FM5, $F0, $00

sfx9c_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $F7, $EA

sfx9c_Loop1:
	dc.b nAb5, $02, $03, nRst, $02
	saVolFM		$06
	sLoop		$00, $0E, sfx9c_Loop1
	sStop	

sfx9c_Patches:
	; Patch $00
	; $45
	; $3F, $4F, $FF, $4F,	$18, $18, $17, $10
	; $00, $00, $02, $06,	$0B, $1C, $18, $1D
	; $10, $1B, $1B, $02,	$37, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$03, $0F, $04, $04
	spMultiple	$0F, $0F, $0F, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$18, $17, $18, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $02, $00, $06
	spSustainRt	$0B, $18, $1C, $1D
	spSustainLv	$01, $01, $01, $00
	spReleaseRt	$00, $0B, $0B, $02
	spTotalLv	$37, $00, $00, $00
