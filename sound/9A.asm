sfx9a_Header:
	sHeaderInit	; Z80 offset is $F090
	sHeaderPatch	sfx9a_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx9a_PSG3, $FF, $00

sfx9a_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_15
	ssModZ80	$01, $01, $DD, $02
	dc.b nE5, $04

sfx9a_Loop1:
	dc.b nG6, $01
	saVolPSG	$01
	sLoop		$00, $0C, sfx9a_Loop1
	sStop	

sfx9a_Patches:
