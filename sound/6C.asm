sfx6c_Header:
	sHeaderInit	; Z80 offset is $E823
	sHeaderPatch	sfx39_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $C0, sfx39_PSG3, $0C, $03
	sHeaderSFX	$80, $05, sfx39_FM5, $00, $06
