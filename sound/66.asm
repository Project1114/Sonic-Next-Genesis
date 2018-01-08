sfx66_Header:
	sHeaderInit	; Z80 offset is $E6E1
	sHeaderPatch	sfx66_Patches
	sHeaderTick	$01
	sHeaderCh	$04
	sHeaderSFX	$80, $02, sfx66_FM3, $F4, $00
	sHeaderSFX	$80, $04, sfx66_FM4, $F7, $00
	sHeaderSFX	$80, $05, sfx66_FM5, $F9, $00
	sHeaderSFX	$80, $C0, sfx66_PSG3, $00, $00

sfx66_FM3:
sfx66_FM4:
sfx66_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0B, $01
	dc.b nC4, $18

sfx66_Loop1:
	dc.b sHold, $03
	saVolFM		$01
	sLoop		$00, $19, sfx66_Loop1
	sStop	

sfx66_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_1D
	dc.b nBb6, $30
	sStop	

sfx66_Patches:
	; Patch $00
	; $00
	; $31, $0F, $00, $31,	$1F, $1F, $1F, $10
	; $00, $00, $06, $00,	$00, $00, $00, $07
	; $0F, $0F, $4F, $0F,	$10, $13, $14, $80
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$03, $00, $00, $03
	spMultiple	$01, $00, $0F, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $06, $00, $00
	spSustainRt	$00, $00, $00, $07
	spSustainLv	$00, $04, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $14, $13, $00
