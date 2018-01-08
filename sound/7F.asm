sfx7f_Header:
	sHeaderInit	; Z80 offset is $EB6D
	sHeaderPatch	sfx7f_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx7f_PSG3, $E5, $01

sfx7f_PSG3:
	sNoisePSG	$E7
	dc.b nF5, $05
	ssModZ80	$02, $03, $F5, $0A
	dc.b nEb6, $06, nE6, $05, nB4, $03, nE6, $05
	dc.b nB4, $03
	sStop	

sfx7f_Patches:
