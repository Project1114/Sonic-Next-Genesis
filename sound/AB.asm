sfxab_Header:
	sHeaderInit	; Z80 offset is $F3EA
	sHeaderPatch	sfxab_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, sfxab_FM5, $00, $00

sfxab_FM5:
	sSpDashRev	
	sPatFM		$00
	ssModZ80	$01, $01, $1A, $01
	dc.b nC5, $18, sHold
	ssModZ80	$00, $00, $00, $00
	dc.b $02

sfxab_Loop1:
	dc.b sHold, $02
	saVolFM		$02
	sLoop		$00, $18, sfxab_Loop1
	sSpDashReset	
	sStop	

sfxab_Patches:
	; Patch $00
	; $34
	; $00, $0C, $03, $09,	$9F, $8F, $8C, $D5
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$00, $80, $1C, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $03, $0C, $09
	spRateScale	$02, $02, $02, $03
	spAttackRt	$1F, $0C, $0F, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $1C, $00, $00
