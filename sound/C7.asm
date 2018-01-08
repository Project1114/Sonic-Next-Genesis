sfxc7_Header:
	sHeaderInit	; Z80 offset is $F9F2
	sHeaderPatch	sfxc7_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxc7_FM3, $07, $04

sfxc7_FM3:
	sPatFM		$00

sfxc7_Loopsfx1:
	dc.b nEb3, $07, $07, $07
	sLoopSFX	sfxc7_Loopsfx1
	dc.b nB2, $08
	sStop	

sfxc7_Patches:
	; Patch $00
	; $33
	; $10, $70, $3C, $3A,	$1F, $1F, $1F, $1F
	; $17, $1F, $1F, $17,	$00, $00, $00, $00
	; $FF, $08, $0F, $FF,	$33, $1B, $33, $80
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$01, $03, $07, $03
	spMultiple	$00, $0C, $00, $0A
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$17, $1F, $1F, $17
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0F, $00, $00, $0F
	spReleaseRt	$0F, $0F, $08, $0F
	spTotalLv	$33, $33, $1B, $00
