sfx43_Header:
	sHeaderInit	; Z80 offset is $E109
	sHeaderPatch	sfx43_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfx43_PSG3, $00, $00

sfx43_PSG3:
	sNoisePSG	$E7
	dc.b nD3, $15, sHold

sfx43_Loop1:
	dc.b $02
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $10, sfx43_Loop1
	sStop	

sfx43_Patches:
