sfxb9_Header:
	sHeaderInit	; Z80 offset is $F76C
	sHeaderPatch	sfx33_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $04, sfxb9_FM4, $00, $05
	sHeaderSFX	$80, $05, sfxb9_FM5, $00, $08

sfxb9_FM4:
	sPatFM		$00
	dc.b nA5, $02, $05, $05, $05, $05, $05, $05
	dc.b $3A
	sStop	

sfxb9_FM5:
	sPatFM		$00
	dc.b nRst, $02, nG5, $02, $05, $15, $02, $05
	dc.b $32
	sStop	
