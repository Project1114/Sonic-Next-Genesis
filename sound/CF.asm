sfxcf_Header:
	sHeaderInit	; Z80 offset is $FB60
	sHeaderPatch	sfxcf_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfxCE_PSG3, $E1, $00

sfxcf_Patches:
