sfx62_Header:
	sHeaderInit	; Z80 offset is $E64C
	sHeaderPatch	sfx62_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $80, sfx62_PSG1, $00, $00

sfx62_PSG1:
	sVolEnvPSG	VolEnv_0D
	dc.b nF2, $05
	ssModZ80	$02, $01, $F8, $65
	dc.b nBb2, $15
	sStop	

sfx62_Patches:
