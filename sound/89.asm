sfx89_Header:
	sHeaderInit	; Z80 offset is $ED68
	sHeaderPatch	sfx89_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, sfx89_PSG2, $FB, $02

sfx89_PSG2:
	dc.b nD4, $05
	sStop	

sfx89_Patches:
