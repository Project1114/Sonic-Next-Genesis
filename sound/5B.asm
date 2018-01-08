sfx5b_Header:
	sHeaderInit	; Z80 offset is $E523
	sHeaderPatch	sfx5b_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, sfx5b_PSG2, $00, $00

sfx5b_PSG2:
	dc.b nA5, $02
	sStop	

sfx5b_Patches:
