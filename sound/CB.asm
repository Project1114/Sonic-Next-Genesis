sfxcb_Header:
	sHeaderInit	; Z80 offset is $FA9C
	sHeaderPatch	sfxcb_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $02, sfxcb_FM3, $00, $06
	sHeaderSFX	$80, $04, sfxcb_FM4, $00, $06

sfxcb_FM3:
	sPatFM		$00
	dc.b nBb0, $05

sfxcb_FM4:
	sPatFM		$00

sfxcb_Loopsfx1:
	dc.b nAb0, $09, nBb0, $07, nAb0, $09, nBb0, $07
	sLoopSFX	sfxcb_Loopsfx1
	sStop	

sfxcb_Patches:
	; Patch $00
	; $FA
	; $21, $30, $10, $32,	$1F, $0F, $1F, $1F
	; $05, $18, $09, $02,	$06, $0F, $06, $02
	; $1F, $07, $4F, $2F,	$0F, $0E, $0E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$01, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $0F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $02
	spSustainRt	$06, $06, $0F, $02
	spSustainLv	$01, $04, $00, $02
	spReleaseRt	$0F, $0F, $07, $0F
	spTotalLv	$0F, $0E, $0E, $00
