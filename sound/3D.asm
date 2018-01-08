sfx3d_Header:
	sHeaderInit	; Z80 offset is $E023
	sHeaderPatch	sfx3d_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfx3d_FM5, $00, $00
	sHeaderSFX	$80, $C0, sfx3d_PSG3, $0C, $02

sfx3d_FM5:
	ssModZ80	$03, $01, $72, $0B
	sPatFM		$00
	dc.b nA4, $16
	sStop	

sfx3d_PSG3:
	sVolEnvPSG	VolEnv_0E
	sNoisePSG	$E7
	dc.b nB3, $1B
	sStop	

sfx3d_Patches:
	; Patch $00
	; $3C
	; $0F, $01, $03, $01,	$1F, $1F, $1F, $1F
	; $19, $12, $19, $0E,	$05, $12, $00, $0F
	; $0F, $7F, $FF, $FF,	$00, $80, $00, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $03, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$19, $19, $12, $0E
	spSustainRt	$05, $00, $12, $0F
	spSustainLv	$00, $0F, $07, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
