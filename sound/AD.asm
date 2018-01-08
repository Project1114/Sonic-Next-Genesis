sfxad_Header:
	sHeaderInit	; Z80 offset is $F49C
	sHeaderPatch	sfxA7_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, sfxad_FM4, $17, $0C

sfxad_FM4:
	sPatFM		$00
	dc.b nB4, $48
	sStop	
