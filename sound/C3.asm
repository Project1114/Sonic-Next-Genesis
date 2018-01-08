sfxc3_Header:
	sHeaderInit	; Z80 offset is $F91E
	sHeaderPatch	sfxc3_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxc3_FM3, $04, $18

sfxc3_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $31, $11

sfxc3_Loopsfx1:
	dc.b nA3, $16
	sLoopSFX	sfxc3_Loopsfx1
	sStop	

sfxc3_Patches:
	; Patch $00
	; $35
	; $07, $32, $22, $11,	$1F, $0F, $0F, $0F
	; $00, $00, $00, $00,	$0D, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $02, $03, $01
	spMultiple	$07, $02, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spSustainRt	$0D, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $00, $00, $00
