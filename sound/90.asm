sfx90_Header:
	sHeaderInit	; Z80 offset is $EE91
	sHeaderPatch	sfx90_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx90_FM5, $00, $03

sfx90_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01

sfx90_Loop1:
	dc.b nC0, $0B
	sLoop		$00, $02, sfx90_Loop1
	sStop	

sfx90_Patches:
	; Patch $00
	; $FA
	; $20, $30, $11, $30,	$0C, $11, $1F, $1F
	; $12, $0E, $11, $04,	$1B, $13, $09, $13
	; $1F, $1F, $4F, $2F,	$0E, $80, $05, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$00, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0C, $1F, $11, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $11, $0E, $04
	spSustainRt	$1B, $09, $13, $13
	spSustainLv	$01, $04, $01, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $05, $00, $00
