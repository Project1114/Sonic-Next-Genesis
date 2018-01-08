SFXDD_Header:
	sHeaderInit	; Z80 offset is $FDA9
	sHeaderPatch	SFXDD_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, SFXDD_FM5, $EB, $05

SFXDD_FM5:
	sPatFM		$00
	saVolFM		$05
	dc.b nF3, $05
	saVolFM		$FB
	ssModZ80	$02, $01, $34, $FF
	dc.b nBb3, $15
	sStop	

SFXDD_Patches:
	; Patch $00
	; $0C
	; $08, $08, $08, $08,	$1F, $1F, $1F, $1F
	; $00, $0A, $00, $0A,	$00, $00, $00, $0A
	; $FF, $FF, $FF, $FF,	$55, $81, $33, $81
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$00, $00, $00, $00
	spMultiple	$08, $08, $08, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $0A, $0A
	spSustainRt	$00, $00, $00, $0A
	spSustainLv	$0F, $0F, $0F, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$55, $33, $01, $01
