sfxdb_Header:
	sHeaderInit	; Z80 offset is $FD94
	sHeaderPatch	sfxdb_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, sfxdb_PSG3, $00, $00

sfxdb_PSG3:
	sNoisePSG	$E7
	dc.b nA6, $05

sfxdb_Loopsfx1:
	dc.b sHold, nB6, $16
	sLoopSFX	sfxdb_Loopsfx1
	sStop	

sfxdb_Patches:
