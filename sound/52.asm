sfx52_Header:
	sHeaderInit	; Z80 offset is $E38B
	sHeaderPatch	sfx52_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx52_PSG3, $00, $03

sfx52_PSG3:
	ssModZ80	$01, $01, $F0, $08
	sNoisePSG	$E7
	dc.b nE5, $07

sfx52_Loop1:
	dc.b nG6, $01
	saVolPSG	$01
	sLoop		$00, $0C, sfx52_Loop1
	sStop	

sfx52_Patches:
