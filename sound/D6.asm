sfxd6_Header:
	sHeaderInit	; Z80 offset is $FC9D
	sHeaderPatch	sfxd6_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxd6_FM3, $10, $04

sfxd6_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01

sfxd6_Loopsfx1:
	dc.b nC0, $08, nC0
	sLoopSFX	sfxd6_Loopsfx1
	sStop	

sfxd6_Patches:
	; Patch $00
	; $F9
	; $22, $31, $11, $32,	$0F, $0E, $1F, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0E, $17, $14, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$02, $01, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $1F, $0E, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $02
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $14, $17, $00
