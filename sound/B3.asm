sfxb3_Header:
	sHeaderInit	; Z80 offset is $F603
	sHeaderPatch	sfxb3_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $04, sfxb3_FM4, $0C, $00
	sHeaderSFX	$80, $05, sfxb3_FM5, $00, $13

sfxb3_FM4:
	sPatFM		$01
	dc.b nRst, $01, nA2, $08
	sPatFM		$00
	dc.b sHold, nAb3, $26
	sStop	

sfxb3_FM5:
	sPatFM		$02
	ssModZ80	$06, $01, $03, $FF
	dc.b nRst, $0A

sfxb3_Loop1:
	dc.b nFs5, $06
	sLoop		$00, $05, sfxb3_Loop1
	dc.b nFs5, $11
	sStop	

sfxb3_Patches:
	; Patch $00
	; $30
	; $30, $5C, $34, $30,	$9E, $A8, $AC, $DC
	; $0E, $0A, $04, $05,	$08, $08, $08, $08
	; $BF, $BF, $BF, $BF,	$24, $1C, $04, $80
	spAlgorithm	$00
	spFeedback	$06
	spDetune	$03, $03, $05, $03
	spMultiple	$00, $04, $0C, $00
	spRateScale	$02, $02, $02, $03
	spAttackRt	$1E, $0C, $08, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $04, $0A, $05
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$0B, $0B, $0B, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $04, $1C, $00

	; Patch $01
	; $30
	; $30, $5C, $34, $30,	$9E, $A8, $AC, $DC
	; $0E, $0A, $04, $05,	$08, $08, $08, $08
	; $BF, $BF, $BF, $BF,	$24, $2C, $04, $80
	spAlgorithm	$00
	spFeedback	$06
	spDetune	$03, $03, $05, $03
	spMultiple	$00, $04, $0C, $00
	spRateScale	$02, $02, $02, $03
	spAttackRt	$1E, $0C, $08, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $04, $0A, $05
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$0B, $0B, $0B, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $04, $2C, $00

	; Patch $02
	; $04
	; $37, $72, $77, $49,	$1F, $1F, $1F, $1F
	; $07, $0A, $07, $0D,	$00, $0B, $00, $0B
	; $1F, $0F, $1F, $0F,	$13, $81, $13, $88
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
	spTotalLv	$13, $13, $01, $08
