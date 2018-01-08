sfx34_Header:
	sHeaderInit	; Z80 offset is $DE5E
	sHeaderPatch	sfx33_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx34_FM5, $00, $05

sfx34_FM5:
	sPatFM		$00
	sPan		spLeft, $00
	sJump		sfx34_Jump1
