sfx97_Header:
	sHeaderInit	; Z80 offset is $F009
	sHeaderPatch	sfx97_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx97_PSG3, $14, $02

sfx97_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_11
	dc.b nCs6, $04, nEb5, $7F
	sStop	

sfx97_Patches:
