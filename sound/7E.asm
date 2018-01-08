sfx7e_Header:
	sHeaderInit	; Z80 offset is $EB55
	sHeaderPatch	sfx7e_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx7e_PSG3, $00, $03

sfx7e_PSG3:
	sNoisePSG	$E7
	ssModZ80	$01, $01, $01, $01
	dc.b nB6, $09
	saVolPSG	$04
	dc.b nG6, $06
	sStop	

sfx7e_Patches:
