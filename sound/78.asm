sfx78_Header:
	sHeaderInit	; Z80 offset is $EA1B
	sHeaderPatch	sfx78_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfx78_FM5, $E6, $06

sfx78_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $19, $02
	dc.b nE5, $2C
	sStop	

sfx78_Patches:
	; Patch $00
	; $01
	; $70, $30, $00, $12,	$1F, $1F, $1F, $1F
	; $1F, $0B, $07, $01,	$08, $01, $09, $01
	; $CF, $1F, $FF, $FF,	$04, $03, $02, $80
	spAlgorithm	$01
	spFeedback	$00
	spDetune	$07, $00, $03, $01
	spMultiple	$00, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $07, $0B, $01
	spSustainRt	$08, $09, $01, $01
	spSustainLv	$0C, $0F, $01, $0F
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$04, $02, $03, $00
