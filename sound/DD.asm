SFXDE_Header:
	sHeaderInit	; Z80 offset is $FDDC
	sHeaderPatch	SFXDE_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, SFXDE_FM4, $00, $04

SFXDE_FM4:
	sPatFM		$00
	dc.b nC7, $06, $40
	sStop	

SFXDE_Patches:
	; Patch $00
	; $38
	; $01, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $09, $09, $09, $0B,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$5C, $22, $27, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $09, $09, $0B
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0F, $0F, $0F, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$5C, $27, $22, $00
