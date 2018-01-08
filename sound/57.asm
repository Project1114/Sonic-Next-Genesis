sfx57_Header:
	sHeaderInit	; Z80 offset is $E463
	sHeaderPatch	sfx39_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $C0, sfx57_PSG3, $00, $00
	sHeaderSFX	$80, $05, sfx39_FM5, $00, $00

sfx57_PSG3:
	sNoisePSG	$E7
	dc.b nB4, $0B

sfx57_Loop1:
	dc.b nAb6
	saVolPSG	$01
	sLoop		$00, $0A, sfx57_Loop1
	dc.b $10
	sStop	
