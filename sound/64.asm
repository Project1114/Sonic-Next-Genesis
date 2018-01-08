sfx64_Header:
	sHeaderInit	; Z80 offset is $E68C
	sHeaderPatch	sfx64_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx64_PSG3, $00, $00

sfx64_PSG3:
	ssModZ80	$01, $01, $F0, $08
	sNoisePSG	$E7
	dc.b nEb5, $04, nCs6, $04

sfx64_Loop1:
	dc.b nEb5, $01
	saVolPSG	$01
	sLoop		$00, $06, sfx64_Loop1
	sStop	

sfx64_Patches:
