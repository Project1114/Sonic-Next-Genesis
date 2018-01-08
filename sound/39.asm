sfx39_Header:
	sHeaderInit	; Z80 offset is $DF2A
	sHeaderPatch	sfx39_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $C0, sfx39_PSG3, $0C, $03
	sHeaderSFX	$80, $05, sfx39_FM5, $00, $06

sfx39_PSG3:
	sVolEnvPSG	VolEnv_0D
	sNoisePSG	$E7
	dc.b nF5, $05, nA5, $05, sHold

sfx39_Loop1:
	dc.b $07
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $0F, sfx39_Loop1
	sStop	

sfx39_FM5:
	sPatFM		$00
	dc.b nCs3, $14
	sStop	

sfx39_Patches:
	; Patch $00
	; $00
	; $00, $03, $02, $00,	$D9, $DF, $1F, $1F
	; $12, $11, $14, $0F,	$0A, $00, $0A, $0D
	; $FF, $FF, $FF, $FF,	$22, $07, $27, $80
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $02, $03, $00
	spRateScale	$03, $00, $03, $00
	spAttackRt	$19, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $14, $11, $0F
	spSustainRt	$0A, $0A, $00, $0D
	spSustainLv	$0F, $0F, $0F, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $27, $07, $00
