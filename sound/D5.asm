sfxd5_Header:
	sHeaderInit	; Z80 offset is $FC64
	sHeaderPatch	sfxd5_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $02, sfxd5_FM3, $00, $10
	sHeaderSFX	$80, $04, sfxd5_FM4, $00, $0C

sfxd5_FM3:
	dc.b nRst, $04
sfxd5_FM4:
	sPatFM		$00
	ssModZ80	$01, $01, $AC, $2E

sfxd5_Loopsfx1:
	dc.b nFs0, $08, nE0
	sLoopSFX	sfxd5_Loopsfx1
	sStop	

sfxd5_Patches:
	; Patch $00
	; $33
	; $11, $10, $10, $11,	$05, $1F, $04, $1F
	; $1F, $01, $05, $00,	$10, $09, $08, $00
	; $06, $03, $01, $1A,	$0B, $01, $10, $80
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$01, $01, $01, $01
	spMultiple	$01, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$05, $04, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $05, $01, $00
	spSustainRt	$10, $08, $09, $00
	spSustainLv	$00, $00, $00, $01
	spReleaseRt	$06, $01, $03, $0A
	spTotalLv	$0B, $10, $01, $00
