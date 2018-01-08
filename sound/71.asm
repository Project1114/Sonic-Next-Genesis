sfx71_Header:
	sHeaderInit	; Z80 offset is $E8E0
	sHeaderPatch	sfx3A_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx3A_FM5, $0C, $00
