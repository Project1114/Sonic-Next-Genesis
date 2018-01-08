sfx48_Header:
	sHeaderInit	; Z80 offset is $E1C4
	sHeaderPatch	sfx48_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx48_PSG3, $00, $00

sfx48_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_0D
	dc.b nFs4, $04

sfx48_Loop1:
	dc.b sHold, $0F
	saVolPSG	$01
	sLoop		$00, $04, sfx48_Loop1
	sStop	

sfx48_Patches:
