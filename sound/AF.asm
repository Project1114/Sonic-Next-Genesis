sfxaf_Header:
	sHeaderInit	; Z80 offset is $F4DA
	sHeaderPatch	sfxaf_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfxaf_FM5, $00, $02

sfxaf_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $50, $02
	dc.b nEb6, $65
	sStop	

sfxaf_Patches:
	; Patch $00
	; $20
	; $36, $35, $30, $31,	$41, $49, $3B, $4B
	; $09, $06, $09, $08,	$01, $03, $02, $A9
	; $0F, $0F, $0F, $0F,	$29, $27, $23, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$06, $00, $05, $01
	spRateScale	$01, $00, $01, $01
	spAttackRt	$01, $1B, $09, $0B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $09, $06, $08
	spSustainRt	$01, $02, $03, $A9
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$29, $23, $27, $00
