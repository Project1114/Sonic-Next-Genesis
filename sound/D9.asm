sfxd9_Header:
	sHeaderInit	; Z80 offset is $FD32
	sHeaderPatch	sfxd9_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, sfxd9_FM3, $D3, $09

sfxd9_FM3:
	sPatFM		$00
	ssModZ80	$03, $01, $0D, $01

sfxd9_Loopsfx1:
	dc.b nC0, $16
	sLoopSFX	sfxd9_Loopsfx1
	sStop	

sfxd9_Patches:
	; Patch $00
	; $FB
	; $21, $30, $21, $31,	$0A, $14, $13, $0F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$1B, $17, $04, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$02, $02, $03, $03
	spMultiple	$01, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0A, $13, $14, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $02
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $04, $17, $00
