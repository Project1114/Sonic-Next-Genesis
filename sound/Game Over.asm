GameOver_Header:
	sHeaderInit	; Z80 offset is $8394
	sHeaderPatch	GameOver_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $A0
	sHeaderDAC	GameOver_DAC
	sHeaderFM	GameOver_FM1, $F4, $17
	sHeaderFM	GameOver_FM2, $F4, $17
	sHeaderFM	GameOver_FM3, $F4, $17
	sHeaderFM	GameOver_FM4, $F4, $17
	sHeaderFM	GameOver_FM5, $F4, $17
	sHeaderPSG	GameOver_PSG1, $E8, $03, $00, VolEnv_00
	sHeaderPSG	GameOver_PSG2, $E8, $03, $00, VolEnv_00
	sHeaderPSG	GameOver_PSG3, $E8, $03, $00, VolEnv_00

GameOver_FM5:
	dc.b nRst, $08
	saDetune	$03
	saVolFM		$04
	sPatFM		$01
	ssModZ80	$10, $01, $05, $05
	dc.b nF5, $20, sHold, $10, nG5, $08, nAb5, nEb5
	dc.b $20, sHold, $10, nG5, $08, nAb5, nD5, $18
	dc.b nBb4, nBb4, $08, nC5, nCs5, $20, sHold, $08
	dc.b nBb4, $08, nC5, nCs5, nA4, nCs5, nE5, nEb5
	dc.b nB4, nEb5, nFs5, nF5, $20, nC6, $02, nCs6
	dc.b $20, sHold, $1E
	sStop	

GameOver_PSG1:
	sJump		GameOver_Jump1

GameOver_PSG2:
	dc.b nRst, $04
	saVolPSG	$02
	sJump		GameOver_Jump1

GameOver_PSG3:
	dc.b nRst, $08
	saVolPSG	$04
	sJump		GameOver_Jump1

GameOver_DAC:
	sStop	

GameOver_FM1:
	ssModZ80	$10, $01, $04, $04

GameOver_Jump1:
	sPatFM		$00
	dc.b nF5, $08, nAb5, nC6, nAb5, nF5, nAb5, nC6
	dc.b nAb5, nEb5, nAb5, nC6, nAb5, nEb5, nAb5, nC6
	dc.b nAb5, nD5, nF5, nBb5, nF5, nD5, nF5, nBb5
	dc.b nF5, nC5, $02, nCs5, $20, sHold, $0E
	ssTempo		$A4
	dc.b nCs4, $08, nEb4
	ssTempo		$A5
	dc.b nE4, nCs4, nE4, nAb4
	ssTempo		$A7
	dc.b nFs4, nEb4, nFs4, nB4, nAb4, $20, nF4, sHold
	dc.b $20
	sStop	

GameOver_FM2:
	sPatFM		$01
	ssModZ80	$10, $01, $05, $05
	dc.b nF5, $20, sHold, $10, nG5, $08, nAb5, nEb5
	dc.b $20, sHold, $10, nG5, $08, nAb5, nD5, $18
	dc.b nBb4, nBb4, $08, nC5, nCs5, $20, sHold, $10
	dc.b nBb4, $08, nC5, nCs5, nA4, nCs5, nE5, nEb5
	dc.b nB4, nEb5, nFs5, nF5, $20, nC6, $02, nCs6
	dc.b $20, sHold, $1E
	sStop	

GameOver_FM3:
	sPatFM		$02
	dc.b nC4, $20, sHold, $20, nBb3, sHold, $20, $20
	dc.b sHold, $20, nCs3, sHold, $10, nRst, $10, nE3
	dc.b $20, nFs3, nF3, sHold, $20, sHold, nF3
	sStop	

GameOver_FM4:
	sPatFM		$02
	dc.b nF3, $20, sHold, $20, nEb3, sHold, $20, nD3
	dc.b sHold, $20, nF3, sHold, $10, nRst, $10, nCs3
	dc.b $20, nEb3, nCs3, sHold, $20, sHold, nCs3
	sStop	

GameOver_Patches:
	; Patch $00
	; $0D
	; $04, $04, $3C, $32,	$1F, $1F, $1F, $1F
	; $06, $06, $06, $06,	$05, $09, $09, $09
	; $1F, $1F, $1F, $1F,	$20, $83, $85, $83
	spAlgorithm	$05
	spFeedback	$01
	spDetune	$00, $03, $00, $03
	spMultiple	$04, $0C, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $06, $06, $06
	spSustainRt	$05, $09, $09, $09
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $05, $03, $03

	; Patch $01
	; $2D
	; $02, $02, $02, $02,	$10, $10, $10, $10
	; $07, $08, $08, $08,	$01, $05, $05, $05
	; $28, $1B, $1B, $1B,	$20, $80, $80, $83
	spAlgorithm	$05
	spFeedback	$05
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $02, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $10, $10, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $08, $08, $08
	spSustainRt	$01, $05, $05, $05
	spSustainLv	$02, $01, $01, $01
	spReleaseRt	$08, $0B, $0B, $0B
	spTotalLv	$20, $00, $00, $03

	; Patch $02
	; $3D
	; $02, $04, $04, $04,	$1F, $1F, $1F, $1F
	; $08, $03, $03, $03,	$00, $08, $00, $08
	; $28, $28, $28, $18,	$1B, $80, $80, $8A
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $04, $04, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $03, $03, $03
	spSustainRt	$00, $00, $08, $08
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$1B, $00, $00, $0A
