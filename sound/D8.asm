sfxd8_Header:
	sHeaderInit	; Z80 offset is $FCFF
	sHeaderPatch	sfxd8_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxd8_FM3, $00, $05

sfxd8_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $01, $83
	dc.b nFs2, $16

sfxd8_Loopsfx1:
	dc.b sHold, nFs2, $16
	sLoopSFX	sfxd8_Loopsfx1
	sStop	

sfxd8_Patches:
	; Patch $00
	; $82
	; $1F, $18, $14, $1F,	$0D, $1F, $12, $0C
	; $00, $00, $00, $00,	$02, $02, $02, $02
	; $2F, $2F, $FF, $3F,	$22, $16, $11, $82
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$0F, $04, $08, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0D, $12, $1F, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$02, $02, $02, $02
	spSustainLv	$02, $0F, $02, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $11, $16, $02
