sfxa0_Header:
	sHeaderInit	; Z80 offset is $F1FC
	sHeaderPatch	sfxa0_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfxa0_PSG3, $00, $00

sfxa0_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_1D
	ssModZ80	$01, $01, $FE, $53
	dc.b nAb6, $06, nEb5, $38
	sStop	

sfxa0_Patches:
