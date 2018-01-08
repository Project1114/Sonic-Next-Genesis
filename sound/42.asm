sfx42_Header:
	sHeaderInit	; Z80 offset is $E0F1
	sHeaderPatch	sfx42_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx42_PSG3, $10, $00

sfx42_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_17
	dc.b nCs6, $04
	ssModZ80	$02, $01, $06, $07
	dc.b nE5, $10
	sStop	

sfx42_Patches:
