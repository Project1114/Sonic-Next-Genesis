sfx36_Header:
	sHeaderInit	; Z80 offset is $DEA1
	sHeaderPatch	sfx36_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $A0, sfx36_PSG2, $00, $00
	sHeaderSFX	$80, $80, sfx36_PSG1, $FE, $00

sfx36_PSG1:
	dc.b nRst, $01
sfx36_PSG2:
	sVolEnvPSG	VolEnv_0D
	dc.b nBb3, $01, nRst, nBb3, nRst, $03

sfx36_Loop1:
	dc.b nBb3, $01, nRst, $01
	sLoop		$00, $0B, sfx36_Loop1
	sStop	

sfx36_Patches:
