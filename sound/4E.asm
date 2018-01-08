sfx4e_Header:
	sHeaderInit	; Z80 offset is $E2CF
	sHeaderPatch	sfx4e_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $C0, sfx4e_PSG3, $00, $00
	sHeaderSFX	$80, $05, sfx4e_FM5, $00, $10

sfx4e_PSG3:
	sNoisePSG	$E7
	dc.b nBb6, $06

sfx4e_Loop1:
	dc.b nEb6, $06
	saTranspose	$FE
	sLoop		$00, $08, sfx4e_Loop1

sfx4e_Loop2:
	dc.b nEb6
	saVolPSG	$01
	sLoop		$00, $0E, sfx4e_Loop2
	sStop	

sfx4e_FM5:
	sPatFM		$00
	dc.b nC2, $68
	sStop	

sfx4e_Patches:
	; Patch $00
	; $3D
	; $00, $10, $20, $00,	$1F, $1F, $1F, $1F
	; $09, $00, $00, $00,	$00, $0C, $0A, $0A
	; $FF, $0F, $0F, $0F,	$06, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $02, $01, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $00, $00, $00
	spSustainRt	$00, $0A, $0C, $0A
	spSustainLv	$0F, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$06, $00, $00, $00
