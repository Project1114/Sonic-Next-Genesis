sfx94_Header:
	sHeaderInit	; Z80 offset is $EF77
	sHeaderPatch	sfx94_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx94_FM5, $00, $08

sfx94_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $CB, $16
	dc.b nC0, $08, nC0, $08
	sStop	

sfx94_Patches:
	; Patch $00
	; $F9
	; $20, $30, $10, $30,	$1F, $1F, $0B, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0D, $8C, $03, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0B, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $02
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0D, $03, $0C, $00
