sfx5a_Header:
	sHeaderInit	; Z80 offset is $E4F6
	sHeaderPatch	sfx5a_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx5a_FM5, $00, $00

sfx5a_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $18, $00
	dc.b nF2, $30
	sStop	

sfx5a_Patches:
	; Patch $00
	; $03
	; $0A, $0A, $0F, $0F,	$1F, $1F, $1F, $1F
	; $00, $00, $0C, $00,	$00, $00, $00, $09
	; $FF, $FF, $FF, $0F,	$21, $10, $10, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$0A, $0F, $0A, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $0C, $00, $00
	spSustainRt	$00, $00, $00, $09
	spSustainLv	$0F, $0F, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $10, $10, $00
