sfx91_Header:
	sHeaderInit	; Z80 offset is $EEC3
	sHeaderPatch	sfx91_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx91_FM5, $00, $00

sfx91_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01
	dc.b nG0, $06

sfx91_Loop1:
	dc.b nC0, $0E
	saVolFM		$0D
	sLoop		$00, $06, sfx91_Loop1
	sStop	

sfx91_Patches:
	; Patch $00
	; $FA
	; $1F, $30, $00, $32,	$13, $1F, $1F, $1F
	; $12, $0E, $11, $04,	$1B, $13, $09, $13
	; $1F, $1F, $4F, $2F,	$0E, $80, $05, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$01, $00, $03, $03
	spMultiple	$0F, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$13, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $11, $0E, $04
	spSustainRt	$1B, $09, $13, $13
	spSustainLv	$01, $04, $01, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $05, $00, $00
