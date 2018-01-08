sfx58_Header:
	sHeaderInit	; Z80 offset is $E481
	sHeaderPatch	sfx58_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx58_PSG3, $1D, $00

sfx58_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_0F
	dc.b nB3, $02, nRst, $03, nD4, $04
	saVolPSG	$02
	dc.b nD3, $04
	sStop	

sfx58_Patches:
