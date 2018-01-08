sfxce_Header:
	sHeaderInit	; Z80 offset is $FB45
	sHeaderPatch	sfxce_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfxce_PSG3, $E1, $05

sfxce_PSG3:
	sNoisePSG	$E7
	ssModZ80	$0F, $01, $FF, $47
	sVolEnvPSG	VolEnv_00

sfxce_Loopsfx1:
	dc.b nA7, $16, sHold
	sLoopSFX	sfxce_Loopsfx1
	dc.b $01
	sStop	

sfxce_Patches:
