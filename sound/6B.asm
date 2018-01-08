sfx6b_Header:
	sHeaderInit	; Z80 offset is $E811
	sHeaderPatch	sfx6b_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, sfx6b_PSG2, $0C, $00

sfx6b_PSG2:
	ssModZ80	$01, $01, $E6, $35
	dc.b nCs1, $06
	sStop	

sfx6b_Patches:
