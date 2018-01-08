sfxb4_Header:
	sHeaderInit	; Z80 offset is $F67D
	sHeaderPatch	sfxb4_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfxb4_FM5, $00, $00

sfxb4_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01
	dc.b nC0, $1A
	sStop	

sfxb4_Patches:
	; Patch $00
	; $39
	; $21, $30, $10, $31,	$1F, $1F, $1F, $1F
	; $05, $18, $09, $00,	$0B, $1F, $10, $0F
	; $1F, $2F, $4F, $0F,	$0E, $07, $04, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$01, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $00
	spSustainRt	$0B, $10, $1F, $0F
	spSustainLv	$01, $04, $02, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $04, $07, $00
