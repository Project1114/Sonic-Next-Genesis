sfxda_Header:
	sHeaderInit	; Z80 offset is $FD62
	sHeaderPatch	sfxda_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxda_FM3, $03, $00

sfxda_FM3:
	sPatFM		$00
	ssModZ80	$03, $01, $FD, $02

sfxda_Loopsfx1:
	dc.b nE1, $16, sHold
	sLoopSFX	sfxda_Loopsfx1
	dc.b $01
	sStop	

sfxda_Patches:
	; Patch $00
	; $FA
	; $21, $47, $20, $30,	$04, $08, $07, $12
	; $06, $0E, $09, $02,	$00, $10, $01, $01
	; $00, $00, $00, $FE,	$37, $4C, $00, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $02, $04, $03
	spMultiple	$01, $00, $07, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$04, $07, $08, $12
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $09, $0E, $02
	spSustainRt	$00, $01, $10, $01
	spSustainLv	$00, $00, $00, $0F
	spReleaseRt	$00, $00, $00, $0E
	spTotalLv	$37, $00, $4C, $00
