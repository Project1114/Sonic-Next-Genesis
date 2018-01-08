sfxb8_Header:
	sHeaderInit	; Z80 offset is $F745
	sHeaderPatch	sfxb8_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, sfxb8_PSG2, $00, $00

sfxb8_PSG2:
	sVolEnvPSG	VolEnv_03

sfxb8_Loop1:
	dc.b nD5, $04, nE5, nFs5
	saVolPSG	$01
	saTranspose	$FF
	sLoop		$00, $05, sfxb8_Loop1

sfxb8_Loop2:
	dc.b nD5, $04, nE5, nFs5
	saVolPSG	$01
	saTranspose	$01
	sLoop		$00, $07, sfxb8_Loop2
	sStop	

sfxb8_Patches:
