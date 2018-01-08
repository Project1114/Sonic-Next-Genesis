sfx92_Header:
	sHeaderInit	; Z80 offset is $EEF9
	sHeaderPatch	sfx92_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx92_FM5, $00, $06

sfx92_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01

sfx92_Loop1:
	dc.b nC0, $0E
	saVolFM		$12
	sLoop		$00, $04, sfx92_Loop1
	sStop	

sfx92_Patches:
	; Patch $00
	; $F3
	; $26, $20, $1B, $30,	$1F, $1F, $1F, $1F
	; $12, $11, $04, $02,	$0B, $0E, $0B, $16
	; $0F, $0F, $0F, $2F,	$7B, $19, $15, $80
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$02, $01, $02, $03
	spMultiple	$06, $0B, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $04, $11, $02
	spSustainRt	$0B, $0B, $0E, $16
	spSustainLv	$00, $00, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$7B, $15, $19, $00
