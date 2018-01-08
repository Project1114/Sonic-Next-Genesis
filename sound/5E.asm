sfx5e_Header:
	sHeaderInit	; Z80 offset is $E581
	sHeaderPatch	sfx5e_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx5e_FM5, $00, $03

sfx5e_FM5:
	sPatFM		$00
	dc.b nBb5, $18

sfx5e_Loop1:
	dc.b sHold, $03
	saVolFM		$03
	sLoop		$00, $10, sfx5e_Loop1
	sStop	

sfx5e_Patches:
	; Patch $00
	; $00
	; $53, $03, $1F, $20,	$1F, $1F, $1F, $10
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $00, $00, $00, $0F,	$10, $23, $10, $80
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$05, $01, $00, $02
	spMultiple	$03, $0F, $03, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $0F
	spTotalLv	$10, $10, $23, $00
