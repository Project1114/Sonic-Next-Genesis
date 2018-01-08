sfxc9_Header:
	sHeaderInit	; Z80 offset is $FA2B
	sHeaderPatch	sfxc9_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxc9_FM3, $FD, $00

sfxc9_FM3:
	sPatFM		$00
	ssModZ80	$02, $01, $A2, $42

sfxc9_Loop1:
sfxc9_Loopsfx1:
	dc.b nCs2, $0D
	saVolFM		$10
	dc.b nCs2, $0D
	sLoop		$00, $02, sfxc9_Loop1
	saVolFM		$E0
	sLoopSFX	sfxc9_Loopsfx1
	sStop	

sfxc9_Patches:
	; Patch $00
	; $7B
	; $21, $16, $17, $90,	$1F, $13, $1F, $0F
	; $12, $10, $05, $12,	$05, $02, $01, $03
	; $2F, $4F, $5F, $2F,	$1A, $08, $1F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$02, $01, $01, $09
	spMultiple	$01, $07, $06, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $13, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $05, $10, $12
	spSustainRt	$05, $01, $02, $03
	spSustainLv	$02, $05, $04, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $1F, $08, $00
