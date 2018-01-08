sfx79_Header:
	sHeaderInit	; Z80 offset is $EA48
	sHeaderPatch	sfx79_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, sfx79_FM5, $B6, $08
	sHeaderSFX	$80, $C0, sfx79_PSG3, $00, $00

sfx79_FM5:
sfx79_Loop2:
	sPatFM		$00
	ssModZ80	$01, $01, $FA, $84
	dc.b nE5, $07
	sLoop		$00, $07, sfx79_Loop2
	sStop	

sfx79_PSG3:
	ssModZ80	$01, $01, $F0, $08
	sNoisePSG	$E7
	dc.b nEb4, $08

sfx79_Loop1:
	dc.b nB3, $05
	saVolPSG	$01
	sLoop		$00, $18, sfx79_Loop1
	sStop	

sfx79_Patches:
	; Patch $00
	; $F9
	; $21, $30, $10, $32,	$1F, $1F, $1F, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$01, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $09, $18, $02
	spSustainRt	$0B, $10, $1F, $05
	spSustainLv	$01, $04, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $04, $07, $00
