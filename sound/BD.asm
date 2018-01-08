sfxbd_Header:
	sHeaderInit	; Z80 offset is $F7F9
	sHeaderPatch	sfxbd_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $02, sfxbd_FM3, $00, $00
	sHeaderSFX	$80, $04, sfxbd_FM4, $02, $00

sfxbd_FM4:
	saDetune	$90

sfxbd_FM3:
sfxbd_Loopsfx1:
	sPatFM		$00
	dc.b nEb1, $34, sHold
	sLoopSFX	sfxbd_Loopsfx1

sfxbd_Loop1:
	dc.b $03, sHold
	saVolFM		$01
	sLoop		$00, $30, sfxbd_Loop1
	dc.b $01
	sStop	

sfxbd_Patches:
	; Patch $00
	; $2F
	; $32, $04, $02, $34,	$08, $08, $08, $08
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$80, $80, $80, $80
	spAlgorithm	$07
	spFeedback	$05
	spDetune	$03, $00, $00, $03
	spMultiple	$02, $02, $04, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$08, $08, $08, $08
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
