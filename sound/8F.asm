sfx8f_Header:
	sHeaderInit	; Z80 offset is $EE5B
	sHeaderPatch	sfx8f_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx8f_FM5, $00, $04

sfx8f_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $C9, $F9
	dc.b nG2, $05

sfx8f_Loop1:
	dc.b nC0, $04
	saTranspose	$01
	sLoop		$00, $0B, sfx8f_Loop1
	sStop	

sfx8f_Patches:
	; Patch $00
	; $F8
	; $10, $30, $05, $30,	$16, $1D, $1A, $1B
	; $12, $0E, $11, $04,	$11, $13, $09, $13
	; $1F, $1F, $4F, $2F,	$5D, $80, $05, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$01, $00, $03, $03
	spMultiple	$00, $05, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$16, $1A, $1D, $1B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $11, $0E, $04
	spSustainRt	$11, $09, $13, $13
	spSustainLv	$01, $04, $01, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$5D, $05, $00, $00
