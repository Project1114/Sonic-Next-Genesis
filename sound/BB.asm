sfxbb_Header:
	sHeaderInit	; Z80 offset is $F7BE
	sHeaderPatch	sfxBA_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, sfxbb_FM4, $FA, $0B

sfxbb_FM4:
	sPatFM		$00
	dc.b nE2, $08, $08
	sStop	
