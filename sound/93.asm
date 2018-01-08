sfx93_Header:
	sHeaderInit	; Z80 offset is $EF2D
	sHeaderPatch	sfx93_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfx93_FM5, $00, $0B
	sHeaderSFX	$80, $04, sfx93_FM4, $00, $0C

sfx93_FM5:
	dc.b nRst, $04
sfx93_FM4:
	sPatFM		$00
	ssModZ80	$02, $01, $22, $B1

sfx93_Loop1:
	dc.b nC1, $06, nD1, nE1, nFs1
	saTranspose	$06
	saVolFM		$FE
	sLoop		$00, $04, sfx93_Loop1

sfx93_Loop2:
	dc.b nC1, $06
	saVolFM		$05
	sLoop		$00, $05, sfx93_Loop2
	sStop	

sfx93_Patches:
	; Patch $00
	; $F6
	; $11, $00, $03, $03,	$1F, $1F, $1F, $1F
	; $10, $0C, $0C, $0C,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$09, $84, $92, $8E
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$01, $00, $00, $00
	spMultiple	$01, $03, $00, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $0C, $0C, $0C
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$09, $12, $04, $0E
