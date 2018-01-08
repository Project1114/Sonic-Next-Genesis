sfxc2_Header:
	sHeaderInit	; Z80 offset is $F907
	sHeaderPatch	sfxc2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfxc2_PSG3, $00, $00

sfxc2_PSG3:
	sNoisePSG	$E7
	dc.b nCs4

sfxc2_Loopsfx1:
	dc.b $04, $04, $04, $04, $03, $03
	sLoopSFX	sfxc2_Loopsfx1
	sStop	

sfxc2_Patches:
