sfx47_Header:
	sHeaderInit	; Z80 offset is $E1A4
	sHeaderPatch	sfx47_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx47_PSG3, $00, $00

sfx47_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_0D
	dc.b nB6, $02, sHold, nBb6, sHold, nA6, sHold, nAb6

sfx47_Loop1:
	dc.b sHold, nG6
	saVolPSG	$01
	sLoop		$00, $0A, sfx47_Loop1
	sStop	

sfx47_Patches:
