sfxa4_Header:
	sHeaderInit	; Z80 offset is $F2A1
	sHeaderPatch	sfxa4_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $80, sfxa4_PSG1, $0F, $03
	sHeaderSFX	$80, $A0, sfxa4_PSG2, $11, $04

sfxa4_PSG1:
	dc.b nRst, $03
sfxa4_PSG2:
sfxa4_Loop1:
	dc.b nRst, $03
	sVolEnvPSG	VolEnv_16
	ssModZ80	$03, $01, $ED, $10
	dc.b nD0, $07
	saTranspose	$01
	sLoop		$00, $10, sfxa4_Loop1
	dc.b nRst, $03, nEb0, $05, nRst, $03, nEb0, $05
	sStop	

sfxa4_Patches:
