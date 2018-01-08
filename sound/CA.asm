sfxca_Header:
	sHeaderInit	; Z80 offset is $FA66
	sHeaderPatch	sfxca_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxca_FM3, $F1, $08

sfxca_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $7C, $95

sfxca_Loopsfx1:
	dc.b nB3, $07
	saVolFM		$10
	dc.b nB3, $07
	saVolFM		$F0
	sLoopSFX	sfxca_Loopsfx1
	sStop	

sfxca_Patches:
	; Patch $00
	; $3B
	; $04, $0D, $19, $02,	$14, $14, $12, $14
	; $0C, $04, $04, $04,	$02, $02, $02, $03
	; $DF, $2F, $2F, $2F,	$22, $24, $27, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $01, $00, $00
	spMultiple	$04, $09, $0D, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $12, $14, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0C, $04, $04, $04
	spSustainRt	$02, $02, $02, $03
	spSustainLv	$0D, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $27, $24, $00
