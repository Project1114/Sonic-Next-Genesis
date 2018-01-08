sfx59_Header:
	sHeaderInit	; Z80 offset is $E49A
	sHeaderPatch	sfx59_Patches
	sHeaderTick	$01
	sHeaderCh	$04
	sHeaderSFX	$80, $02, sfx59_FM3, $10, $00
	sHeaderSFX	$80, $04, sfx59_FM4, $00, $00
	sHeaderSFX	$80, $05, sfx59_FM5, $10, $00
	sHeaderSFX	$80, $C0, sfx59_PSG3, $0C, $00

sfx59_FM3:
	sPan		spRight, $00
	dc.b nRst, $02
	sJump		sfx59_Jump1

sfx59_FM5:
	sPan		spLeft, $00
	dc.b nRst, $01

sfx59_FM4:
sfx59_Jump1:
	sPatFM		$00
	ssModZ80	$03, $01, $20, $04
	dc.b nC0, $10
	sStop	

sfx59_PSG3:
	ssModZ80	$01, $01, $0F, $05
	sNoisePSG	$E7

sfx59_Loop1:
	dc.b nB3, $18, sHold
	saVolPSG	$03
	sLoop		$00, $05, sfx59_Loop1
	sStop	

sfx59_Patches:
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
