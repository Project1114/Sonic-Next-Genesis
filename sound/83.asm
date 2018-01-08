sfx83_Header:
	sHeaderInit	; Z80 offset is $EC32
	sHeaderPatch	sfx83_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $05, sfx83_FM5, $00, $03
	sHeaderSFX	$80, $04, sfx83_FM4, $DF, $00
	sHeaderSFX	$80, $C0, sfx83_PSG3, $20, $00

sfx83_FM5:
	dc.b nRst, $03
sfx83_FM4:
	sPatFM		$00
	ssModZ80	$03, $01, $36, $06
	dc.b nD0, $22
	sStop	

sfx83_PSG3:
	sNoisePSG	$E7
	ssModZ80	$02, $01, $09, $28

sfx83_Loop1:
	dc.b nC4, $0F
	saVolPSG	$0B
	sLoop		$00, $03, sfx83_Loop1
	sStop	

sfx83_Patches:
	; Patch $00
	; $31
	; $4B, $F2, $00, $04,	$0F, $0F, $1F, $1F
	; $0B, $03, $07, $0A,	$10, $0B, $16, $0A
	; $FF, $0F, $FF, $0F,	$50, $07, $10, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$04, $00, $0F, $00
	spMultiple	$0B, $00, $02, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $1F, $0F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $07, $03, $0A
	spSustainRt	$10, $16, $0B, $0A
	spSustainLv	$0F, $0F, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$50, $10, $07, $00
