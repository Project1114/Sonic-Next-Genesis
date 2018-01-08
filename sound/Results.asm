Results_Header:
	sHeaderInit	; Z80 offset is $8000
	sHeaderPatch	Results_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $40
	sHeaderDAC	Results_DAC
	sHeaderFM	Results_FM1, $FE, $14
	sHeaderFM	Results_FM2, $FE, $19
	sHeaderFM	Results_FM3, $FE, $19
	sHeaderFM	Results_FM4, $F2, $1A
	sHeaderFM	Results_FM5, $F2, $1A
	sHeaderPSG	Results_PSG1, $E6, $07, $00, VolEnv_00
	sHeaderPSG	Results_PSG2, $E8, $07, $00, VolEnv_00
	sHeaderPSG	Results_PSG3, $00, $08, $00, VolEnv_00

Results_FM1:
	sPatFM		$01
	saTranspose	$F4

Results_Jump5:
	sCall		Results_Call15

Results_Loop9:
	sCall		Results_Call16
	dc.b nC4, $0C, nB3, nBb3, $06, nA3, $0C, nAb3
	dc.b $06
	sCall		Results_Call17
	sLoop		$00, $02, Results_Loop9

Results_Loop10:
	sCall		Results_Call18
	sLoop		$00, $04, Results_Loop10
	sJump		Results_Jump5

Results_Call15:
	dc.b nRst, $0C, nC4, $18, $18, $18, $18, nF3
	dc.b $18, $18, $0C, nF3, $06, nEb3, nE3, nF3
	sRet	

Results_Call16:
	dc.b nC4, $03, nBb3, nA3, nG3, nF3, nEb3, nD3
	dc.b nC3, nC3, $06, nC4, nC3, nC4, $03, $03
Results_Call17:
	dc.b nEb3, $06, nEb4, nEb3, nEb4, $03, $03, nEb3
	dc.b $06, nEb4, nEb3, nEb4, $03, $03, nF3, $06
	dc.b nF4, nF3, nF4, $03, $03, nF3, $06, nF4
	dc.b nF3, nF4, $03, $03, nAb3, $06, nAb4, nAb3
	dc.b nAb4, $03, $03, nBb3, $06, nBb4, nBb3, nBb4
	dc.b $03, $03
	sRet	

Results_Call18:
	dc.b nC3, $06, nC4, nC3, nC4, $03, $03, nC3
	dc.b $06, nC4, nC3, nC4, $03, $03, nAb3, $06
	dc.b nAb4, nAb3, nAb4, $03, $03, nAb3, $06, nAb4
	dc.b nAb3, nAb4, $03, $03, nD3, $06, nD4, nD3
	dc.b nD4, $03, $03, nD3, $06, nD4, nD3, nD4
	dc.b $03, $03, nG3, $06, nG4, nG3, nG4, $03
	dc.b $03, nG3, $06, nG4, nG3, nG4, $03, $03
	sRet	

Results_FM2:
	sPatFM		$00
	ssModZ80	$0A, $01, $04, $04
	saTranspose	$0C

Results_Jump4:
	sCall		Results_Call10
	saTranspose	$0C
	sCall		Results_Call11
	sCall		Results_Call12
	dc.b sHold, $30
	sCall		Results_Call13
	sCall		Results_Call12
	sCall		Results_Call14
	sCall		Results_Call14
	saTranspose	$F4
	sJump		Results_Jump4

Results_Call10:
	sNoteTimeOut	$05
	dc.b nG5, $0C, nFs5, nF5, $06, nEb5, $0C, nD5
	dc.b nB4, nC5, $06, nEb5, $0C, nG5
	sNoteTimeOut	$00
	dc.b nBb5, $13, nA5, $03, nRst, $0E, nF5, $30
	dc.b nRst, $0C
	sRet	

Results_Call11:
	dc.b nRst, $30
Results_Call13:
	dc.b nEb5, $03, nC5, nBb4, nG4, nF4, nEb4, nC4
	dc.b nBb3, nC4, $06, nEb4, nF4, nBb4, nA4, $03
	dc.b nBb4, nA4, $12, nC5, $06, nBb4, nA4, nF4
	dc.b nEb4, $03, nD4, nEb4, $12, nF4, $03, nEb4
	dc.b nF4, $12
	sRet	

Results_Call12:
	sNoteTimeOut	$05
	dc.b nC5, $0C, $0C, $06, $0C
	sNoteTimeOut	$00
	dc.b $06, sHold, $18, nC4, $06, nEb4, nF4, nBb4
	dc.b nA4, $03, nG4, nA4, $12, nC4, $03, nEb4
	dc.b nF4, nG4, nBb4, nC5, nD5, nEb5, nF5, $03
	dc.b nEb5, nF5, $12, nG5, $18
	sRet	

Results_Call14:
	dc.b sHold, $25, nG5, $03, nRst, nC6, $0C, nG5
	dc.b $03, nRst, $09, nG5, $03, nRst, nAb5, $06
	dc.b nG5, nEb5, nC5
	sNoteTimeOut	$03
	dc.b nAb5, $06, nC5, nC5, nAb5, nC5, nC5, nAb5
	dc.b nC5, nC5, nAb5, nC5, nC5, nBb5, $0C
	sNoteTimeOut	$00
	dc.b nBb5, $0C, nC5, $06, nEb5, nF5, nFs5, nG5
	dc.b nBb5, nB5, nC6, nG5, $12, nG5, $06, nAb5
	dc.b nG5, nEb5, nC5, nF5, $03, nEb5, nF5, $12
	dc.b nB4, $03, nC5, nD5, nEb5, nF5, nG5, nAb5
	dc.b nA5, nB5, $18, nG5, $03, nRst, $09, nG5
	dc.b $0B
	sRet	

Results_FM3:
	sPatFM		$00
	ssModZ80	$0A, $01, $04, $03
	sPan		spLeft, $00
	saTranspose	$0C
	dc.b nRst, $02
	sJump		Results_Jump4

Results_FM4:
	sPatFM		$02

Results_Jump3:
	sCall		Results_Call7

Results_Loop7:
	sCall		Results_Call8
	sLoop		$00, $04, Results_Loop7

Results_Loop8:
	sCall		Results_Call9
	sLoop		$00, $04, Results_Loop8
	sJump		Results_Jump3

Results_Call7:
	sNoteTimeOut	$05
	dc.b nEb5, $0C, nEb5, nC5, $06, nC5, $0C, nB4
	dc.b nF4, nG4, $06, nC5, $0C, nEb5
	sNoteTimeOut	$00
	dc.b nF5, $12, nF5, $03, nRst, $0F, nC5, $30
	dc.b nRst, $0C
	sRet	

Results_Call8:
	sNoteTimeOut	$05
	dc.b nG5, $0C, nFs5, $0C, nF5, $06, nE5, $0C
	sNoteTimeOut	$00
	dc.b nEb5, $30
	sNoteTimeOut	$02
	dc.b $03, $03
	sNoteTimeOut	$00
	dc.b nF5, $24
	sNoteTimeOut	$02
	dc.b $03, $03, $03, $03
	sNoteTimeOut	$00
	dc.b nC5, $18, nD5, $06, $12
	sRet	

Results_Call9:
	dc.b nD5, $03, nRst, nEb5, $0C, nD5, $03, nRst
	dc.b nEb5, $0C, nD5, $03, nRst, nEb5, $0C, nD5
	dc.b $03, nRst, nEb5, $0C, nF5, $03, nRst, $09
	dc.b nG5, $0C, nF5, $03, nRst, nG5, $0C, nF5
	dc.b $03, nRst, nG5, $0C, nF5, $03, nRst, nG5
	dc.b $0C, nF5, $03, nRst, nG5, $0C, nAb5, $03
	dc.b nRst, $09, nBb5, $0C
	sRet	

Results_FM5:
	sPatFM		$02
	sPan		spRight, $00

Results_Jump2:
	sCall		Results_Call4

Results_Loop5:
	sCall		Results_Call5
	sLoop		$00, $04, Results_Loop5

Results_Loop6:
	sCall		Results_Call6
	sLoop		$00, $04, Results_Loop6
	sJump		Results_Jump2

Results_Call4:
	dc.b nRst, $30, nRst, nRst, nRst
	sRet	

Results_Call5:
	sNoteTimeOut	$05
	dc.b nEb5, $0C, nD5, $0C, nCs5, $06, nC5, $0C
	sNoteTimeOut	$00
	dc.b nG4, $30
	sNoteTimeOut	$02
	dc.b $03, $03
	sNoteTimeOut	$00
	dc.b nA4, $24
	sNoteTimeOut	$02
	dc.b $03, $03, $03, $03
	sNoteTimeOut	$00
	dc.b nEb4, $18, nF4, $06, $12
	sRet	

Results_Call6:
	dc.b nB4, $03, nRst, nC5, $0C, nB4, $03, nRst
	dc.b nC5, $0C, nB4, $03, nRst, nC5, $0C, nB4
	dc.b $03, nRst, nC5, $0C, nAb4, $03, nRst, $09
	dc.b nAb4, $0C, nC5, $03, nRst, nC5, $0C, nC5
	dc.b $03, nRst, nC5, $0C, nC5, $03, nRst, nC5
	dc.b $0C, nC5, $03, nRst, nC5, $0C, nD5, $03
	dc.b nRst, $09, nF5, $0C
	sRet	

Results_PSG1:
Results_Jump1:
	sCall		Results_Call1
	sCall		Results_Call2

Results_Loop3:
	sCall		Results_Call1
	sLoop		$01, $08, Results_Loop3

Results_Loop4:
	sCall		Results_Call3
	sLoop		$00, $04, Results_Loop4
	sJump		Results_Jump1

Results_Call1:
Results_Loop1:
	dc.b nC3, $04, nEb3, nG3, nC4, nEb4, nG4, nC5
	dc.b nG4, nEb4, nC4, nG3, nEb3
	sLoop		$00, $02, Results_Loop1
	sRet	

Results_Call2:
Results_Loop2:
	dc.b nF3, $04, nA3, nC4, nF4, nA4, nC5, nF5
	dc.b nC5, nA4, nF4, nC4, nA3
	sLoop		$00, $02, Results_Loop2
	sRet	

Results_Call3:
	dc.b nC3, $04, nEb3, nG3, nC4, nEb4, nG4, nC5
	dc.b nG4, nEb4, nC4, nG3, nEb3, nC3, $04, nEb3
	dc.b nG3, nC4, nEb4, nG4, nC5, nG4, nEb4, nC4
	dc.b nG3, nEb3, nD3, $04, nF3, nAb3, nD4, nF4
	dc.b nAb4, nD5, nAb4, nF4, nD4, nAb3, nF3, nG3
	dc.b $04, nB3, nD4, nG4, nB4, nD5, nG5, nD5
	dc.b nB4, nG4, nD4, nB3
	sRet	

Results_PSG2:
	sStop	

Results_PSG3:
	sStop	

Results_DAC:
	sStop

Results_Patches:
	; Patch $00
	; $3D
	; $10, $00, $10, $00,	$9F, $83, $13, $57
	; $15, $05, $15, $04,	$05, $00, $05, $00
	; $1F, $FF, $1F, $0F,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$01, $01, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$02, $00, $02, $01
	spAttackRt	$1F, $13, $03, $17
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$15, $15, $05, $04
	spSustainRt	$05, $05, $00, $00
	spSustainLv	$01, $01, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $00, $00, $00

	; Patch $01
	; $35
	; $01, $01, $20, $16,	$1F, $1D, $1F, $3F
	; $0E, $0B, $15, $0F,	$10, $14, $10, $0B
	; $1F, $FF, $1F, $5F,	$10, $80, $82, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $02, $00, $01
	spMultiple	$01, $00, $01, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1D, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $15, $0B, $0F
	spSustainRt	$10, $10, $14, $0B
	spSustainLv	$01, $01, $0F, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $02, $00, $00

	; Patch $02
	; $34
	; $11, $E5, $01, $E4,	$12, $3F, $1F, $35
	; $08, $03, $03, $03,	$4E, $02, $1E, $13
	; $FF, $FF, $1F, $1F,	$0C, $80, $15, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$01, $00, $0E, $0E
	spMultiple	$01, $01, $05, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $1F, $1F, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $03, $03, $03
	spSustainRt	$4E, $1E, $02, $13
	spSustainLv	$0F, $01, $0F, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0C, $15, $00, $00