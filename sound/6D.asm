sfx6d_Header:
	sHeaderInit	; Z80 offset is $E833
	sHeaderPatch	sfx6d_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx6d_PSG3, $00, $00

sfx6d_PSG3:
	sVolEnvPSG	VolEnv_0D
	sNoisePSG	$E7
	dc.b nA5, $03, nRst, $03, nA5, $01, sHold

sfx6d_Loop1:
	dc.b $01
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $15, sfx6d_Loop1
	sStop	

sfx6d_Patches:
