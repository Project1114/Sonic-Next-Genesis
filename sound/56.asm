sfx56_Header:
	sHeaderInit	; Z80 offset is $E453
	sHeaderPatch	sfx4C_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx56_FM5, $EE, $00

sfx56_FM5:
	sPatFM		$00
	dc.b nB2, $06, nEb3
	sStop	
