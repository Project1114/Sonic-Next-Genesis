sfx4f_Header:
	sHeaderInit	; Z80 offset is $E313
	sHeaderPatch	sfx4f_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx4f_PSG3, $00, $03

sfx4f_PSG3:
	sNoisePSG	$E7
	dc.b nG3, $10
	sStop	

sfx4f_Patches:
