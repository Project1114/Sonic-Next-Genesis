sfxd2_Header:
	sHeaderInit	; Z80 offset is $FBBE
	sHeaderPatch	sfxd2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxd2_FM3, $F2, $05

sfxd2_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $EB, $16

sfxd2_Loopsfx1:
	dc.b nBb5, $05, nG5, $03, nBb5, $05, nG5, $03
	sLoopSFX	sfxd2_Loopsfx1
	sStop	

sfxd2_Patches:
	; Patch $00
	; $11
	; $0F, $0F, $0B, $0F,	$5F, $5F, $5F, $5F
	; $1C, $1A, $13, $12,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$14, $28, $2A, $80
	spAlgorithm	$01
	spFeedback	$02
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $0B, $0F, $0F
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1C, $13, $1A, $12
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0F, $0F, $0F, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$14, $2A, $28, $00
