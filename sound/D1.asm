sfxd1_Header:
	sHeaderInit	; Z80 offset is $FBA1
	sHeaderPatch	sfxd1_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfxd1_PSG3, $1F, $05

sfxd1_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_16
	ssModZ80	$01, $01, $F0, $17

sfxd1_Loopsfx1:
	dc.b nD4, $03, $03, $03, $03, $04
	sLoopSFX	sfxd1_Loopsfx1
	sStop	

sfxd1_Patches:
