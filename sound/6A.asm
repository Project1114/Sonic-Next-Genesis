sfx6a_Header:
	sHeaderInit	; Z80 offset is $E7DD
	sHeaderPatch	sfx6a_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx6a_FM5, $F2, $04

sfx6a_FM5:
	sPatFM		$00
	dc.b nCs3

sfx6a_Loop1:
	dc.b $02, sHold, nB2, $01, sHold
	saTranspose	$02
	sLoop		$00, $26, sfx6a_Loop1
	dc.b $01
	sStop	

sfx6a_Patches:
	; Patch $00
	; $3B
	; $3C, $39, $30, $31,	$DF, $1F, $1F, $DF
	; $04, $05, $04, $01,	$04, $04, $04, $02
	; $FF, $0F, $1F, $AF,	$29, $20, $0F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $03, $03, $03
	spMultiple	$0C, $00, $09, $01
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $05, $01
	spSustainRt	$04, $04, $04, $02
	spSustainLv	$0F, $01, $00, $0A
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$29, $0F, $20, $00
