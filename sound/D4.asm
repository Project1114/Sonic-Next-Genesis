sfxd4_Header:
	sHeaderInit	; Z80 offset is $FC2D
	sHeaderPatch	sfxd4_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxd4_FM3, $00, $00

sfxd4_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $20, $01
	dc.b nF0, $16
	ssModZ80	$00, $00, $00, $00

sfxd4_Loopsfx1:
	dc.b sHold, $16
	sLoopSFX	sfxd4_Loopsfx1
	sStop	

sfxd4_Patches:
	; Patch $00
	; $0A
	; $40, $35, $11, $31,	$1F, $1F, $1B, $0C
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$20, $40, $0E, $80
	spAlgorithm	$02
	spFeedback	$01
	spDetune	$04, $01, $03, $03
	spMultiple	$00, $01, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1B, $1F, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $0E, $40, $00
