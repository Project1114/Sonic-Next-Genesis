sfxc6_Header:
	sHeaderInit	; Z80 offset is $F9B7
	sHeaderPatch	sfxc6_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxc6_FM3, $E0, $10

sfxc6_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $30, $10
	dc.b nEb5, $16

sfxc6_Loopsfx1:
	dc.b sHold, $10
	sLoopSFX	sfxc6_Loopsfx1

sfxc6_Loop1:
	dc.b sHold, $02
	saVolFM		$04
	sLoop		$00, $10, sfxc6_Loop1
	sStop	

sfxc6_Patches:
	; Patch $00
	; $05
	; $07, $37, $16, $25,	$07, $0D, $0F, $08
	; $04, $00, $00, $00,	$00, $00, $00, $00
	; $3F, $0F, $0F, $0F,	$28, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $01, $03, $02
	spMultiple	$07, $06, $07, $05
	spRateScale	$00, $00, $00, $00
	spAttackRt	$07, $0F, $0D, $08
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$03, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $00, $00, $00
