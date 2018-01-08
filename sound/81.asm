sfx81_Header:
	sHeaderInit	; Z80 offset is $EBBA
	sHeaderPatch	sfx81_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfx81_FM5, $CC, $00
	sHeaderSFX	$80, $C0, sfx81_PSG3, $00, $02

sfx81_FM5:
sfx81_Loop2:
	sPatFM		$00
	ssModZ80	$02, $01, $99, $E1
	dc.b nCs0, $18
	saVolFM		$0E
	sLoop		$00, $03, sfx81_Loop2
	sStop	

sfx81_PSG3:
sfx81_Loop1:
	sNoisePSG	$E7
	ssModZ80	$01, $01, $04, $01
	dc.b nC0, $0F
	saVolPSG	$05
	sLoop		$00, $03, sfx81_Loop1
	sStop	

sfx81_Patches:
	; Patch $00
	; $F2
	; $2A, $30, $00, $22,	$0E, $11, $15, $1F
	; $05, $00, $11, $02,	$0B, $07, $10, $05
	; $1F, $0F, $4F, $2F,	$33, $10, $00, $80
	spAlgorithm	$02
	spFeedback	$06
	spDetune	$02, $00, $03, $02
	spMultiple	$0A, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0E, $15, $11, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $11, $00, $02
	spSustainRt	$0B, $10, $07, $05
	spSustainLv	$01, $04, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $00, $10, $00
