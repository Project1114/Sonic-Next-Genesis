sfx98_Header:
	sHeaderInit	; Z80 offset is $F01C
	sHeaderPatch	sfx98_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfx98_FM5, $00, $06
	sHeaderSFX	$80, $C0, sfx98_PSG3, $F0, $04

sfx98_FM5:
sfx98_Loop2:
	sPatFM		$00
	ssModZ80	$01, $01, $B2, $11
	dc.b nC0, $03, $09
	saVolFM		$15
	sLoop		$00, $03, sfx98_Loop2
	sStop	

sfx98_PSG3:
sfx98_Loop1:
	sNoisePSG	$E7
	ssModZ80	$01, $01, $04, $01
	dc.b nC0, $0F
	saVolPSG	$05
	sLoop		$00, $03, sfx98_Loop1
	sStop	

sfx98_Patches:
	; Patch $00
	; $02
	; $10, $10, $10, $11,	$18, $18, $1A, $1F
	; $00, $05, $17, $10,	$00, $08, $0D, $00
	; $00, $0F, $0F, $1D,	$10, $00, $00, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$00, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$18, $1A, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $17, $05, $10
	spSustainRt	$00, $0D, $08, $00
	spSustainLv	$00, $00, $00, $01
	spReleaseRt	$00, $0F, $0F, $0D
	spTotalLv	$10, $00, $00, $00
