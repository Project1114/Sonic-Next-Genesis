Special_Header:
	sHeaderInit	; Z80 offset is $E852
	sHeaderPatch	Special_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $10
	sHeaderDAC	Special_DAC
	sHeaderFM	Special_FM1, $02, $12
	sHeaderFM	Special_FM2, $02, $0B
	sHeaderFM	Special_FM3, $02, $14
	sHeaderFM	Special_FM4, $02, $14
	sHeaderFM	Special_FM5, $02, $1D
	sHeaderPSG	Special_PSG1, $02, $11, $00, VolEnv_03
	sHeaderPSG	Special_PSG2, $02, $01, $00, VolEnv_03
	sHeaderPSG	Special_PSG3, $00, $01, $00, VolEnv_02

Special_FM1:
Special_Call5:
	sPatFM		$04
	ssModZ80	$14, $01, $07, $06
	dc.b nE4, $0C
	saVolFM		$0E
	dc.b $0C
	saVolFM		$F2
	dc.b nG4
	saVolFM		$0E
	dc.b nG4
	saVolFM		$F2
	dc.b nA4, $18

Special_Jump4:
	sPatFM		$04
	sCall		Special_Call6
	dc.b nG5, nA5, $0C, nA5, $0C, nC5, $06, $06
	dc.b nRst, nB4, $0C, nC5, $06, sHold, $24, $0C
	dc.b nB4, $30, $12, nC5, nD5, $0C, nF5, $0C
	dc.b $06, $06, nRst, nG5, $0C, nE5, $06, sHold
	dc.b $30
	sCall		Special_Call6
	dc.b nE5, nD5, $0C, nE5, $30, $12, nA5, nC6
	dc.b $0C, nB5, $12, $12, $0C, $12, nFs5, nB5
	dc.b $0C, nA5, $48, nAb5, $18
	sPatFM		$06
	saTranspose	$0C
	saVolFM		$FD
	sCall		Special_Call7
	dc.b nB4, $30, sHold, $0C, nFs4, $18, nB4, $0C
	dc.b nA4, $24, nAb4, $0C, sHold, $30
	sCall		Special_Call7
	dc.b nC5, $12, nD5, nE5, $18, nB4, nG4, nA4
	dc.b $0C, sHold, $48
	saTranspose	$F4
	saVolFM		$03
	sJump		Special_Jump4

Special_Call6:
	dc.b nC5, $06, nB4, nA4, nB4, nRst, nC5, $0C
	dc.b $06, $30, nC5, $06, nB4, nA4, nB4, nRst
	dc.b nC5, $0C, $06, $30, nC5, $06, nB4, nA4
	dc.b nB4, nRst, nC5, $0C, $06, $12, nD5, nE5
	dc.b $0C, nE5, $60, nF5, $30, $12
	sRet	

Special_Call9:
	saVolFM		$FE
	dc.b nA5, $60
	saVolFM		$02
	dc.b nG3, $12, nD4, nG4, $0C, sHold, $30, nA3
	dc.b $12, nC4, nF4, $0C, nG3, $12, nB3, nD4
	dc.b $0C, nC4, $12, nG4, nC5, $0C, sHold, $30
	dc.b nA3, $12, nD4, nF4, $0C, sHold, $30, nA3
	dc.b $12, nC4, nE4, $0C, sHold, $30
	sRet	

Special_FM2:
	sPatFM		$08
	dc.b nRst, $30
	ssModZ80	$09, $01, $F5, $32
	dc.b nA3, $18
	sModEnv		ModEnv_00

Special_Jump8:
	sCall		Special_Call12
	dc.b nB2, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $0C, $06, $06, nE3, $0C, $06
	dc.b $06, $06, nE4, nE3, $06, $06, nE3, $0C
	dc.b $06, nE4, nE3, $0C, $06, nE4
	sCall		Special_Call12
	dc.b nB2, $0C, $06, $0C, $06, $06, $06, nB2
	dc.b $0C, $06, $0C, $06, $06, $06, nE3, $0C
	dc.b $06, $0C, $0C, $06, $18, nRst
	sCall		Special_Call13
	dc.b nB2, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $0C, $06, $06, nE2, $0C, $06
	dc.b $06, $0C, $06, $06, $06, nE3, nE2, $06
	dc.b $06, $0C, $06, nE3
	sCall		Special_Call13
	dc.b nF2, $0C, $06, $06, $06, nF3, nF2, $06
	dc.b $06, nG2, $0C, $06, $06, $06, nG3, nG2
	dc.b $06, $06, nA2, $0C, $06, $06, $0C, $06
	dc.b $06, $0C, $06, $06, $0C, $06, $06
	sJump		Special_Jump8

Special_Call12:
	dc.b nA2, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $0C, $06, $06, nD3, $0C, $06
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, nG2, $0C, $06, $06, $0C, $06
	dc.b $06, $0C, $06, $06, $0C, $06, $06, nC3
	dc.b $0C, $06, $06, $06, nC4, nC3, $06, $06
	dc.b nB2, $0C, $06, $06, $06, nB3, nB2, $06
	dc.b $06, nBb2, $0C, $06, $06, $0C, $06, $06
	dc.b $0C, $06, $06, $0C, $06, $06, nA2, $0C
	dc.b $06, $06, $0C, $06, $06, $0C, $06, $06
	dc.b $0C, $06, $06
	sRet	

Special_Call13:
	dc.b nA2, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $0C, $06, $06, nG2, $0C, $06
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, nF2, $0C, $06, $06, $0C, $06
	dc.b $06, nG2, $0C, $06, $06, $0C, $06, $06
	dc.b nC2, $0C, $06, $06, $0C, $06, $06, $06
	dc.b nC3, nC2, $06, $06, $0C, $06, nC3, nD2
	dc.b $0C, $06, $06, $0C, $06, $06, $0C, $06
	dc.b $06, $0C, $06, $06, nA2, $0C, $06, $06
	dc.b $0C, $06, $06, $0C, $06, $06, $0C, $06
	dc.b $06
	sRet	

Special_FM3:
	sPatFM		$04
	ssModZ80	$14, $01, $07, $06
	dc.b nB3, $0C
	saVolFM		$0E
	dc.b $0C
	saVolFM		$F2
	dc.b nD4
	saVolFM		$0E
	dc.b nD4
	saVolFM		$F2
	dc.b nE4, $18

Special_Jump7:
	sPatFM		$04
	sCall		Special_Call10
	dc.b $12, $0C, nE5, $0C, nA4, $06, $06, nRst
	dc.b nG4, $0C, nA4, $06, sHold, $24, $0C, nFs4
	dc.b $30, $12, nA4, nB4, $0C, nB4, $0C, $06
	dc.b $06, nRst, nB4, $0C, $06, sHold, $30
	sCall		Special_Call10
	dc.b nC5, nBb4, $0C, nC5, $30, $12, nE5, nA5
	dc.b $0C, nFs5, $12, $12, $0C, $12, nEb5, nFs5
	dc.b $0C, nE5, $48, nE5, $18
	sPatFM		$06
	saTranspose	$0C
	saVolFM		$FD
	sCall		Special_Call11
	dc.b nFs4, $30, sHold, $0C, nEb4, $18, nFs4, $0C
	dc.b nE4, $24, $0C, sHold, $30
	sCall		Special_Call11
	dc.b nA4, $12, nB4, nC5, $18, nG4, nD4, nE4
	dc.b $24, sHold, $06
	saDetune	$03
	saVolFM		$05
	saTranspose	$F4
	sPatFM		$04
	dc.b nE3, $06, nG3, nA3, nC4, nD4, nE4, nG4
	saDetune	$FD
	saVolFM		$FB
	saVolFM		$03
	sJump		Special_Jump7

Special_Call10:
	dc.b nA4, $06, nG4, nE4, nG4, nRst, nA4, $0C
	dc.b $06, $30, nA4, $06, nG4, nF4, nG4, nRst
	dc.b nA4, $0C, $06, $30, nA4, $06, nG4, nF4
	dc.b nG4, nRst, nA4, $0C, $06, $12, nB4, nC5
	dc.b $0C, nC5, $60, nD5, $30, $12
	sRet	

Special_Call11:
	dc.b nA4, $30, sHold, $0C, nB4, $18, nC5, $0C
	dc.b nG4, $30, sHold, $0C, nD4, $24, nC4, $30
	dc.b nD4, $12, nF4, nG4, $18, nC4, $0C, sHold
	dc.b $48, nD4, $30, sHold, $0C, nC4, $18, nA3
	dc.b $0C, nC4, $30, sHold, $0C, nE4, $18, nA4
	dc.b $0C
	sRet	

Special_FM4:
	sPatFM		$04
	ssModZ80	$14, $01, $07, $06
	dc.b nG3, $0C
	saVolFM		$0E
	dc.b $0C
	saVolFM		$F2
	dc.b nB3
	saVolFM		$0E
	dc.b nB3
	saVolFM		$F2
	dc.b nC4, $18

Special_Jump6:
	saVolFM		$04
	sPatFM		$00
	sCall		Special_Call8
	dc.b nRst, nAb3, $0C, nE4, $06, nD4, $0C, nE4
	dc.b $06, nD4
	sCall		Special_Call8
	dc.b nRst, $30
	saVolFM		$FE
	sPatFM		$04
	sCall		Special_Call9
	dc.b nEb4, $12, nFs4, nA4, $0C, sHold, $30, nB3
	dc.b $12, nE4, nAb4, $0C, nB4, $30
	sCall		Special_Call9
	dc.b nA3, $12, nC4, nF4, $0C, nG3, $12, nB3
	dc.b nD4, $0C, nC3, $12, nE3, nA3, $0C
	saVolFM		$FC
	dc.b nE3, $06, nG3, nA3, nC4, nD4, nE4, nG4
	dc.b nA4
	saVolFM		$02
	sJump		Special_Jump6

Special_Call8:
	dc.b nA3, $0C, nE4, $06, nC4, nRst, nE4, $0C
	dc.b nA3, $06, nRst, nA3, $0C, nE4, $06, nC4
	dc.b $0C, nE4, $06, nC4, nD3, $0C, nA3, $06
	dc.b nF3, nRst, nA3, $0C, nD3, $06, nRst, nD3
	dc.b $0C, nA3, $06, nF3, $0C, nA3, $06, nF3
	dc.b nG3, $0C, nD4, $06, nB3, nRst, nD4, $0C
	dc.b nG3, $06, nRst, nG3, $0C, nD4, $06, nB3
	dc.b $0C, nD4, $06, nB3, nC4, $0C, nG4, $06
	dc.b nE4, nRst, nG4, $0C, nC4, $06, nB3, $0C
	dc.b nAb4, $06, nE4, nRst, nAb4, $0C, nB3, $06
	dc.b nBb3, $0C, nF4, $06, nD4, nRst, nF4, $0C
	dc.b nBb3, $06, nRst, nBb3, $0C, nF4, $06, nD4
	dc.b $0C, nD4, $06, nD4, nA3, $0C, nE4, $06
	dc.b nC4, nRst, nE4, $0C, nA3, $06, nRst, nA3
	dc.b $0C, nE4, $06, nC4, $0C, nE4, $06, nC4
	dc.b nB3, $0C, nFs4, $06, nEb4, nRst, nFs4, $0C
	dc.b nB3, $06, nRst, nB3, $0C, nFs4, $06, nEb4
	dc.b $0C, nFs4, $06, nEb4, nAb3, $0C, nE4, $06
	dc.b nD4, nRst, nE4, $0C, nAb3, $06
	sRet	

Special_Call7:
	dc.b nC5, $30, sHold, $0C, nD5, $18, nE5, $0C
	dc.b nB4, $30, sHold, $0C, nG4, $24, nF4, $30
	dc.b nG4, $12, nA4, nB4, $18, nE4, $0C, sHold
	dc.b $48, nF4, $30, sHold, $0C, nE4, $18, nD4
	dc.b $0C, nE4, $30, sHold, $0C, nA4, $18, nC5
	dc.b $0C
	sRet	

Special_FM5:
	saDetune	$04
	dc.b nRst, $0C
	sCall		Special_Call5

Special_DAC:
	dc.b nRst, $48
Special_Loop3:
Special_Jump5:
	dc.b dKick, $18, dMuffledSnare, $0C, dKick
	dc.b $0C, $18, dMuffledSnare, $18
	sLoop		$00, $07, Special_Loop3
	dc.b dKick, $18, dMuffledSnare, $0C, dKick
	dc.b $0C, dKick, $06, dMuffledSnare, $06, $0C
	dc.b $06, $0C, $06

Special_Loop4:
	dc.b dKick, $18, dMuffledSnare, $0C, dKick
	dc.b $0C, $18, dMuffledSnare, $18
	sLoop		$00, $06, Special_Loop4
	dc.b dMuffledSnare, $06, dKick, $0C, dMuffledSnare
	dc.b $06, dKick, $0C, dMuffledSnare, $0C, $06
	dc.b dKick, $0C, dMuffledSnare, $06, dKick
	dc.b $0C, dMuffledSnare, $0C, dMuffledSnare, $0C, $06
	dc.b $0C, $06, dKick, $06, dMuffledSnare, $06
	dc.b $18, $0C, $06, $06

Special_Loop5:
	dc.b dKick, $18, dMuffledSnare, $0C, dKick
	dc.b $0C, $18, dMuffledSnare, $18
	sLoop		$00, $07, Special_Loop5
	dc.b dKick, $18, dMuffledSnare, $0C, dKick
	dc.b $0C, $06, dMuffledSnare, $12, $0C, $06, $06

Special_Loop6:
	dc.b dKick, $18, dMuffledSnare, $0C, dKick
	dc.b $0C, $18, dMuffledSnare, $18
	sLoop		$00, $07, Special_Loop6
	dc.b dKick, $06, dMuffledSnare, $12, $0C
	dc.b dKick, $0C, $06, dMuffledSnare, $12, $0C, $06
	dc.b $06
	sJump		Special_Jump5

Special_PSG1:
	sVolEnvPSG	VolEnv_03
	dc.b nE2, $0C
	saVolPSG	$04
	dc.b $0C
	saVolPSG	$FC
	dc.b nG2
	saVolPSG	$04
	dc.b nG2
	saVolPSG	$FC
	dc.b nA2, $18

Special_Jump3:
	sCall		Special_Call3
	dc.b nA2, $30, $12, $12, $0C, nAb2, $30, $0C
	dc.b $06, $0C, $0C, $06
	sCall		Special_Call3
	dc.b nA2, $12, $12, $0C, $12, $12, $0C, nAb2
	dc.b $0C, $06, $0C, $0C, $06, $18, nRst
	sCall		Special_Call4
	dc.b nFs2, $24, $0C, sHold, $30, nAb2, $24, $0C
	dc.b $06, $0C, $06, $0C, $06, $06
	sCall		Special_Call4
	dc.b nF2, $24, $0C, nG2, $24, $0C, nE2, $24
	dc.b $30, $0C
	sJump		Special_Jump3

Special_Call3:
	dc.b nE2, $30, nRst, $06, nE2, $12, $18, nF2
	dc.b $30, nRst, $06, nF2, $12, $18, nG2, $30
	dc.b nRst, $06, nG2, $12, $18, nG2, $24, $0C
	dc.b nAb2, $24, $0C, nF2, $30, nRst, $06, nF2
	dc.b $12, $18, nA2, $30, nRst, $06, nA2, $12
	dc.b $18
	sRet	

Special_Call4:
	dc.b nA2, $24, $0C, sHold, $30, nG2, $24, $0C
	dc.b sHold, $30, nF2, $24, $0C, nG2, $24, $0C
	dc.b nE2, $24, $30, $0C, nF2, $24, $0C, sHold
	dc.b $30, nA2, $24, $0C, sHold, $30
	sRet	

Special_PSG2:
	sVolEnvPSG	VolEnv_03
	dc.b nB1, $0C
	saVolPSG	$04
	dc.b $0C
	saVolPSG	$FC
	dc.b nD2
	saVolPSG	$04
	dc.b nD2
	saVolPSG	$FC
	dc.b nE2, $18

Special_Jump2:
	sCall		Special_Call1
	dc.b nEb2, $30, $12, $12, $0C, nD2, $30, $0C
	dc.b $06, $0C, $0C, $06
	sCall		Special_Call1
	dc.b nEb2, $12, $12, $0C, $12, $12, $0C, nD2
	dc.b $0C, $06, $0C, $0C, $06, $18, nRst
	sCall		Special_Call2
	dc.b nEb2, $24, $0C, sHold, $30, nE2, $24, $0C
	dc.b $06, $0C, $06, $0C, $06, $06
	sCall		Special_Call2
	dc.b nC2, $24, $0C, nD2, $24, $0C, nC2, $24
	dc.b $30, $0C
	sJump		Special_Jump2

Special_Call1:
	dc.b nC2, $30, nRst, $06, nC2, $12, $18, nD2
	dc.b $30, nRst, $06, nD2, $12, $18, nD2, $30
	dc.b nRst, $06, nD2, $12, $18, nE2, $24, $0C
	dc.b $24, $0C, nD2, $30, nRst, $06, nD2, $12
	dc.b $18, nE2, $30, nRst, $06, nE2, $12, $18
	sRet	

Special_Call2:
	dc.b nE2, $24, $0C, sHold, $30, nD2, $24, $0C
	dc.b sHold, $30, nC2, $24, $0C, nD2, $24, $0C
	dc.b nC2, $24, $30, $0C, nD2, $24, $0C, sHold
	dc.b $30, nE2, $24, $0C, sHold, $30
	sRet	

Special_PSG3:
	sNoisePSG	$E7
	dc.b nRst, $48
	sVolEnvPSG	VolEnv_01

Special_Loop1:
Special_Jump1:
	dc.b nB6, $0C, $06, $06, $0C, $06, $06, $06
	dc.b $06, $06, $06, $0C, $06, $06
	sLoop		$00, $0F, Special_Loop1
	dc.b $0C, $06, $06, $0C, $06, $06, nRst, $30

Special_Loop2:
	dc.b nB6, $0C, $06, $06, $0C, $06, $06, $06
	dc.b $06, $06, $06, $0C, $06, $06
	sLoop		$00, $10, Special_Loop2
	sJump		Special_Jump1

Special_Patches:
	; Patch $00
	; $03
	; $00, $D7, $33, $02,	$5F, $9F, $5F, $1F
	; $13, $0F, $0A, $0A,	$10, $0F, $02, $09
	; $35, $15, $25, $1A,	$13, $16, $15, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$00, $03, $0D, $00
	spMultiple	$00, $03, $07, $02
	spRateScale	$01, $01, $02, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $0A, $0F, $0A
	spSustainRt	$10, $02, $0F, $09
	spSustainLv	$03, $02, $01, $01
	spReleaseRt	$05, $05, $05, $0A
	spTotalLv	$13, $15, $16, $00

	; Patch $01
	; $3A
	; $30, $07, $24, $01,	$9C, $DB, $9C, $DC
	; $04, $09, $00, $04,	$03, $0D, $00, $0E
	; $07, $A2, $56, $94,	$20, $30, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $02, $00, $00
	spMultiple	$00, $04, $07, $01
	spRateScale	$02, $02, $03, $03
	spAttackRt	$1C, $1C, $1B, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $00, $09, $04
	spSustainRt	$03, $00, $0D, $0E
	spSustainLv	$00, $05, $0A, $09
	spReleaseRt	$07, $06, $02, $04
	spTotalLv	$20, $28, $30, $00

	; Patch $02
	; $3E
	; $07, $01, $02, $01,	$1F, $1F, $1F, $1F
	; $0D, $06, $00, $00,	$08, $06, $00, $00
	; $15, $0A, $0A, $0A,	$1B, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$07, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0D, $00, $06, $00
	spSustainRt	$08, $00, $06, $00
	spSustainLv	$01, $00, $00, $00
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$1B, $00, $00, $00

	; Patch $03
	; $3D
	; $35, $78, $32, $71,	$DF, $1F, $1F, $1F
	; $12, $04, $0F, $0F,	$00, $00, $00, $00
	; $2F, $0F, $0E, $0F,	$29, $A0, $A0, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$03, $03, $07, $07
	spMultiple	$05, $02, $08, $01
	spRateScale	$03, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $0F, $04, $0F
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$02, $00, $00, $00
	spReleaseRt	$0F, $0E, $0F, $0F
	spTotalLv	$29, $20, $20, $00

	; Patch $04
	; $3D
	; $01, $01, $01, $01,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $00, $00
	spAttackRt	$14, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0D, $0D, $0D
	spSustainRt	$07, $04, $04, $04
	spSustainLv	$02, $01, $01, $01
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$15, $00, $00, $00

	; Patch $05
	; $3A
	; $51, $65, $61, $01,	$5B, $5B, $56, $50
	; $01, $01, $01, $02,	$03, $00, $13, $00
	; $58, $58, $A0, $3A,	$1D, $16, $38, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$05, $06, $06, $00
	spMultiple	$01, $01, $05, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1B, $16, $1B, $10
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$01, $01, $01, $02
	spSustainRt	$03, $13, $00, $00
	spSustainLv	$05, $0A, $05, $03
	spReleaseRt	$08, $00, $08, $0A
	spTotalLv	$1D, $38, $16, $00

	; Patch $06
	; $2A
	; $00, $00, $02, $02,	$13, $11, $14, $14
	; $04, $06, $05, $05,	$02, $00, $00, $06
	; $A8, $A8, $09, $AE,	$11, $0A, $3E, $80
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $02, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$13, $14, $11, $14
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $05, $06, $05
	spSustainRt	$02, $00, $00, $06
	spSustainLv	$0A, $00, $0A, $0A
	spReleaseRt	$08, $09, $08, $0E
	spTotalLv	$11, $3E, $0A, $00

	; Patch $07
	; $34
	; $00, $02, $01, $01,	$1F, $1F, $1F, $1F
	; $10, $06, $06, $06,	$01, $06, $06, $06
	; $35, $1A, $15, $1A,	$10, $80, $18, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $06, $06, $06
	spSustainRt	$01, $06, $06, $06
	spSustainLv	$03, $01, $01, $01
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$10, $18, $00, $00

	; Patch $08
	; $3C
	; $01, $00, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $12, $05,	$07, $04, $09, $02
	; $55, $3A, $25, $1A,	$1A, $80, $07, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$11, $12, $0D, $05
	spSustainRt	$07, $09, $04, $02
	spSustainLv	$05, $02, $03, $01
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$1A, $07, $00, $00