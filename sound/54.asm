sfx54_Header:
	sHeaderInit	; Z80 offset is $E3E8
	sHeaderPatch	sfx54_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $02, sfx54_FM3, $00, $03
	sHeaderSFX	$80, $C0, sfx54_PSG3, $00, $00

sfx54_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $FA, $00
	dc.b nC1, $50
	sStop	

sfx54_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_0D
	dc.b nEb5, $08

sfx54_Loop1:
	dc.b sHold, $08
	saVolPSG	$01
	sLoop		$00, $0A, sfx54_Loop1
	sStop	

sfx54_Patches:
	; Patch $00
	; $38
	; $01, $33, $33, $02,	$1F, $1F, $1F, $1F
	; $11, $00, $10, $00,	$00, $00, $00, $06
	; $FF, $0F, $1F, $0F,	$00, $13, $10, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $03, $03, $00
	spMultiple	$01, $03, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$11, $10, $00, $00
	spSustainRt	$00, $00, $00, $06
	spSustainLv	$0F, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $10, $13, $00
