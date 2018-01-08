sfx96_Header:
	sHeaderInit	; Z80 offset is $EFD5
	sHeaderPatch	sfx96_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx96_FM5, $00, $00

sfx96_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01

sfx96_Loop1:
	dc.b nC0, $0A
	saVolFM		$10
	sLoop		$00, $04, sfx96_Loop1
	sStop	

sfx96_Patches:
	; Patch $00
	; $F9
	; $20, $30, $10, $30,	$1F, $1F, $1F, $1F
	; $02, $04, $11, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$02, $11, $04, $02
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $04, $07, $00
