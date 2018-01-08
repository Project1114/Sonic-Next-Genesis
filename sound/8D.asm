sfx8d_Header:
	sHeaderInit	; Z80 offset is $EE10
	sHeaderPatch	sfx8d_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx8d_PSG3, $1F, $05

sfx8d_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_16
	ssModZ80	$01, $01, $F0, $17
	dc.b nD4, $03, $03, $03, $03, $04
	sStop	

sfx8d_Patches:
