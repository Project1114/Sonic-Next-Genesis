sfxae_Header:
	sHeaderInit	; Z80 offset is $F4AB
	sHeaderPatch	sfxae_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfxae_FM5, $0D, $0A

sfxae_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $04, $56
	dc.b nF1, $03, nCs2, $25
	sStop	

sfxae_Patches:
	; Patch $00
	; $3D
	; $12, $77, $10, $30,	$5F, $5F, $5F, $5F
	; $0F, $00, $0A, $01,	$0A, $0D, $0A, $0D
	; $4F, $0F, $0F, $0F,	$13, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$01, $01, $07, $03
	spMultiple	$02, $00, $07, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0A, $00, $01
	spSustainRt	$0A, $0A, $0D, $0D
	spSustainLv	$04, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$13, $00, $00, $00
