SFXDF_Header:
	sHeaderInit	; Z80 offset is $FE05
	sHeaderPatch	SFXDF_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, SFXDF_FM5, $04, $08

SFXDF_FM5:
	sPatFM		$00

SFXDF_Loop2:
	sCall		SFXDF_Call1
	saTranspose	$05
	saVolFM		$08
	sLoop		$01, $03, SFXDF_Loop2
	saTranspose	$EC
	saVolFM		$E0
	sStop	

SFXDF_Call1:
SFXDF_Loop1:
	dc.b nC2, $02
	saTranspose	$01
	sLoop		$00, $0A, SFXDF_Loop1
	saTranspose	$F6
	sRet	
	; Unused
	dc.b $EF, $00, $80, $0A, $F2

SFXDF_Patches:
	; Patch $00
	; $07
	; $04, $04, $05, $04,	$1F, $1F, $15, $15
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$7F, $7F, $80, $80
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$04, $05, $04, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1F, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$7F, $00, $7F, $00
