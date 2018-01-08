sfx4b_Header:
	sHeaderInit	; Z80 offset is $E22E
	sHeaderPatch	sfx4b_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfx4b_FM5, $00, $06
	sHeaderSFX	$80, $C0, sfx4b_PSG3, $00, $00

sfx4b_FM5:
	sPatFM		$00
	dc.b nEb5, $06, sHold, nG6, $05

sfx4b_Loop2:
	dc.b sHold
	saVolFM		$02
	dc.b $05
	sLoop		$00, $0A, sfx4b_Loop2
	sStop	

sfx4b_PSG3:
	sNoisePSG	$E7
	dc.b nBb5, $10

sfx4b_Loop1:
	dc.b sHold
	saVolPSG	$01
	saTranspose	$FF
	dc.b $05
	sLoop		$00, $0A, sfx4b_Loop1
	sStop	

sfx4b_Patches:
	; Patch $00
	; $00
	; $10, $0F, $10, $0F,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $04
	; $0F, $0F, $0F, $0F,	$00, $00, $00, $80
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$01, $01, $00, $00
	spMultiple	$00, $00, $0F, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $04
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
