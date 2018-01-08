sfxb6_Header:
	sHeaderInit	; Z80 offset is $F6D2
	sHeaderPatch	sfxb6_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfxb6_FM5, $00, $06
	sHeaderSFX	$80, $C0, sfxb6_PSG3, $00, $00

sfxb6_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $C5, $1A
	dc.b nE6, $0F
	sStop	

sfxb6_PSG3:
	sVolEnvPSG	VolEnv_1D
	dc.b nRst, $06
	ssModZ80	$01, $02, $05, $FF
	sNoisePSG	$E7
	dc.b nE6, $4F
	sStop	

sfxb6_Patches:
	; Patch $00
	; $3D
	; $09, $03, $00, $00,	$1F, $1F, $1F, $1F
	; $10, $0C, $0C, $0C,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$09, $84, $92, $8E
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$09, $00, $03, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $0C, $0C, $0C
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$09, $12, $04, $0E
