sfxac_Header:
	sHeaderInit	; Z80 offset is $F42A
	sHeaderPatch	sfxac_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $02, sfxac_FM3, $F4, $06
	sHeaderSFX	$80, $04, sfxac_FM4, $F4, $06
	sHeaderSFX	$80, $05, sfxac_FM5, $F4, $06

sfxac_FM3:
	sPatFM		$00
	dc.b nC6, $07, nE6, nG6, nD6, nF6, nA6, nE6
	dc.b nG6, nB6, nF6, nA6, nC7

sfxac_Loop3:
	dc.b nG6, $07, nB6, nD7
	saVolFM		$05
	sLoop		$00, $08, sfxac_Loop3
	sStop	

sfxac_FM4:
	sPatFM		$00
	saDetune	$01
	dc.b nRst, $07, nE6, $15, nF6, nG6, nA6

sfxac_Loop2:
	dc.b nB6, $15
	saVolFM		$05
	sLoop		$00, $08, sfxac_Loop2
	sStop	

sfxac_FM5:
	sPatFM		$00
	saDetune	$01
	dc.b nC6, $15, nD6, nE6, nF6

sfxac_Loop1:
	dc.b nG6, $15
	saVolFM		$05
	sLoop		$00, $08, sfxac_Loop1
	sStop	

sfxac_Patches:
	; Patch $00
	; $14
	; $25, $33, $36, $11,	$1F, $1F, $1F, $1F
	; $15, $18, $1C, $13,	$0B, $08, $0D, $09
	; $0F, $9F, $8F, $0F,	$24, $05, $0A, $80
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$02, $03, $03, $01
	spMultiple	$05, $06, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$15, $1C, $18, $13
	spSustainRt	$0B, $0D, $08, $09
	spSustainLv	$00, $08, $09, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $0A, $05, $00
