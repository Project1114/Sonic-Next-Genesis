sfxbe_Header:
	sHeaderInit	; Z80 offset is $F837
	sHeaderPatch	sfxbe_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxbe_FM3, $12, $10

sfxbe_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $2B, $0B
	dc.b nA0, $29

sfxbe_Loopsfx1:
	dc.b sHold, nA0, $16
	sLoopSFX	sfxbe_Loopsfx1
	sStop	

sfxbe_Patches:
	; Patch $00
	; $34
	; $0C, $0D, $0A, $1A,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$11, $80, $10, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $01
	spMultiple	$0C, $0A, $0D, $0A
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$11, $10, $00, $00
