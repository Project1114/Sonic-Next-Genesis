sfx33_Header:
	sHeaderInit	; Z80 offset is $DE30
	sHeaderPatch	sfx33_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, sfx33_FM4, $00, $05

sfx33_FM4:
	sPatFM		$00
	sPan		spRight, $00
SFX34_Jump1:
	dc.b nE5, $05, nG5, $05, nC6, $1B
	sStop	

sfx33_Patches:
	; Patch $00
	; $04
	; $37, $72, $77, $49,	$1F, $1F, $1F, $1F
	; $07, $0A, $07, $0D,	$00, $0B, $00, $0B
	; $1F, $0F, $1F, $0F,	$23, $80, $23, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$03, $07, $07, $04
	spMultiple	$07, $07, $02, $09
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $07, $0A, $0D
	spSustainRt	$00, $00, $0B, $0B
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $23, $00, $00
