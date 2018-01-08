sfxa6_Header:
	sHeaderInit	; Z80 offset is $F2FB
	sHeaderPatch	sfxa6_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfxa6_PSG3, $02, $00

sfxa6_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_1D
	ssModZ80	$01, $01, $E0, $CA
	dc.b nF4, $03, nFs4, $0D
	sStop	

sfxa6_Patches:
