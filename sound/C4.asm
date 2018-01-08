sfxc4_Header:
	sHeaderInit	; Z80 offset is $F94E
	sHeaderPatch	sfxc4_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxc4_FM3, $E2, $05

sfxc4_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $35, $00

sfxc4_Loopsfx1:
	dc.b nFs6, $16
	sLoopSFX	sfxc4_Loopsfx1
	sStop	

sfxc4_Patches:
	; Patch $00
	; $34
	; $0B, $0F, $06, $03,	$1F, $1F, $1F, $0F
	; $00, $00, $0C, $00,	$00, $08, $00, $09
	; $FF, $0F, $FF, $0F,	$08, $86, $08, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$0B, $06, $0F, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $0C, $00, $00
	spSustainRt	$00, $00, $08, $09
	spSustainLv	$0F, $0F, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$08, $08, $06, $00
