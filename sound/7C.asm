sfx7c_Header:
	sHeaderInit	; Z80 offset is $EAF7
	sHeaderPatch	sfx7c_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx7c_FM5, $F9, $02

sfx7c_FM5:
	sPatFM		$00
	dc.b nEb6, $05

sfx7c_Loop1:
	dc.b nF6, $02
	saVolFM		$03
	sLoop		$00, $0E, sfx7c_Loop1
	sStop	

sfx7c_Patches:
	; Patch $00
	; $83
	; $1F, $17, $1E, $1F,	$1F, $1F, $16, $16
	; $00, $00, $00, $09,	$02, $12, $12, $09
	; $FF, $8F, $FF, $EF,	$0B, $16, $01, $82
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$0F, $0E, $07, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $16, $1F, $16
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $09
	spSustainRt	$02, $12, $12, $09
	spSustainLv	$0F, $0F, $08, $0E
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0B, $01, $16, $02
