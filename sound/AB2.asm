AB2_Header:
	sHeaderInit	; Z80 offset is $CF4E
	sHeaderPatch	AB2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	AB2_DAC
	sHeaderFM	AB2_FM1, $0C, $0B
	sHeaderFM	AB2_FM2, $00, $05
	sHeaderFM	AB2_FM3, $00, $1B
	sHeaderFM	AB2_FM4, $00, $1B
	sHeaderFM	AB2_FM5, $00, $13
	sHeaderPSG	AB2_PSG1, $DC, $05, $00, VolEnv_00
	sHeaderPSG	AB2_PSG2, $DC, $06, $00, VolEnv_00
	sHeaderPSG	AB2_PSG3, $00, $03, $00, VolEnv_02

AB2_FM1:
	dc.b nRst, $02
AB2_Jump8:
	sPatFM		$07
	ssModZ80	$40, $02, $02, $02
	saTranspose	$F4
	saVolFM		$10
	dc.b nC4, $60, nEb4, nC4, nEb4
	saTranspose	$0C
	saVolFM		$F0
	sPatFM		$01
	sCall		AB2_Call15
	dc.b nEb1, $06, nRst, nEb1, nRst, $0C, nEb1, nEb1
	dc.b $06, nEb1, nRst, $0C, nCs1, nRst, $06, nEb1
	dc.b $0C
	sCall		AB2_Call15
	dc.b nCs1, $12, nEb1, $0C, nRst, $42
	saVolFM		$03
	sCall		AB2_Call16
	dc.b nEb2, nRst, nEb2, nRst, nRst, nEb2, nRst, $18
	dc.b nCs2, $06, nRst, $12, nEb2, $06, nRst
	saTranspose	$03
	sCall		AB2_Call16
	saTranspose	$FD
	dc.b nEb2, nRst, nEb2, nRst, $1E, nEb2, $06, nRst
	dc.b $0C, nCs2, $12, nEb2, $0C
	sCall		AB2_Call16
	dc.b nEb2, nRst, nEb2, nRst, nRst, nEb2, nRst, $18
	dc.b nEb2, $06, nRst, $12, nEb2, $06, nRst, $06
	saTranspose	$03
	sCall		AB2_Call16
	saTranspose	$FD
	dc.b nEb2, nRst, nEb2, nRst, $0C, nEb2, nEb2, $06
	dc.b nBb1, $12, nCs2, nEb2, $0C
	saVolFM		$FD

AB2_Loop17:
	sCall		AB2_Call17
	sCall		AB2_Call17
	saTranspose	$FE
	sCall		AB2_Call17
	sCall		AB2_Call17
	saTranspose	$02
	sCall		AB2_Call17
	sCall		AB2_Call17
	saTranspose	$FC
	sCall		AB2_Call17
	saTranspose	$04
	dc.b nCs1, $06, nRst, nCs1, nRst, $0C, nCs1, nCs1
	dc.b $06, nRst, $0C, nEb1, $12, nRst, $06, nF1
	dc.b $0C
	sLoop		$00, $02, AB2_Loop17

AB2_Loop18:
	sCall		AB2_Call18
	dc.b nBb1, $06, nRst, nBb1, $06, nRst, $0C, nBb1
	dc.b $12, $06, nRst, $0C, nBb1, $12, $0C
	sCall		AB2_Call18
	dc.b nEb1, $06, nRst, nEb1, nRst, $0C, nEb1, $12
	dc.b nEb1, $06, nRst, $0C, nCs1, $12, nEb1, $06
	dc.b nRst
	sLoop		$00, $02, AB2_Loop18
	sJump		AB2_Jump8

AB2_Call15:
	dc.b nBb1, $06, nRst, nBb1, nRst, $0C, nBb1, nBb1
	dc.b $06, nRst, $0C, nBb1, $12, nRst, $06, nBb1
	dc.b $0C, nBb1, $06, nRst, nBb1, nRst, $0C, nBb1
	dc.b nBb1, $06, nRst, $0C, nBb1, $12, nRst, $06
	dc.b nBb1, $0C, nBb1, $06, nRst, nBb1, nRst, $0C
	dc.b nBb1, nBb1, $06, nRst, $0C, nBb1, $12, nRst
	dc.b $06, nBb1, $0C
	sRet	

AB2_Call16:
	dc.b nBb1, $0C, $06, nRst, nRst, nBb1, nRst, $18
	dc.b nBb1, $06, nRst, $12, nBb1, $06, nRst, $06
	sRet	

AB2_Call17:
	dc.b nF1, $06, nRst, nF1, nRst, $0C, nF1, nF1
	dc.b $06, nRst, $0C, nF1, $12, nRst, $06, nF1
	dc.b $0C
	sRet	

AB2_Call18:
	dc.b nBb1, $06, nRst, nBb1, nRst, $0C, nBb1, $12
	dc.b $06, nRst, nBb1, $06, nRst, $0C, nBb1, $12
	sRet	

AB2_FM4:
	dc.b nRst, $02
AB2_Jump5:
	sPatFM		$00
	saVolFM		$14
	dc.b nRst, $03
	sCall		AB2_Call5
	dc.b nBb4, $03
	saVolFM		$EC
	sPatFM		$07
	ssModZ80	$30, $03, $01, $01
	sPan		spLeft, $00
	sCall		AB2_Call6
	dc.b nEb5, $48, nCs5, $0C, nC5
	sCall		AB2_Call6
	dc.b nEb5, $12, $0C, nRst, $18, $0C, nRst, $06
	dc.b $0C, nRst, $0C
	sPan		spCenter, $00
	sPatFM		$02
	saVolFM		$F9
	sCall		AB2_Call7
	dc.b nBb3, nCs4, nEb4, $0C
	sCall		AB2_Call7
	dc.b nEb4, nCs4, nEb4, $0C
	saVolFM		$07
	sPatFM		$06
	sCall		AB2_Call8
	sCall		AB2_Call8
	sPatFM		$07

AB2_Loop12:
	sCall		AB2_Call9
	dc.b nC4, nEb4, nG4, $0C
	sLoop		$00, $02, AB2_Loop12
	saTranspose	$F4
	saVolFM		$06
	sCall		AB2_Call9
	dc.b nC4, nEb4, nG4, $0C
	sCall		AB2_Call9
	dc.b nC5, nEb5, nG5, $0C
	saTranspose	$0C
	saVolFM		$FA
	sJump		AB2_Jump5

AB2_Call5:
	dc.b nF5, $06, nC5, nC5, nG5, nC5, nC5, nAb5
	dc.b nC5, nC5, nG5, nC5, nC5, nF5, nC5, nG5
	dc.b nC5, nG5, nC5, nC5, nAb5, nC5, nC5, nBb5
	dc.b nC5, nC5, nAb5, nC5, nC5, nG5, nC5, nAb5
	dc.b nC5, nF5, nC5, nC5, nG5, nC5, nC5, nAb5
	dc.b nC5, nC5, nG5, nC5, nC5, nF5, nC5, nG5
	dc.b nC5, nEb5, nC5, nC5, nAb5, nEb4, nEb4, nBb5
	dc.b nEb4, nEb4, nEb5, nBb4, nBb4, nG5, nBb4, nAb5
	sRet	

AB2_Call6:
	dc.b nF4, $48, nBb4, $18, nG4, $60, nF4, $48
	dc.b nBb4, $18
	sRet	

AB2_Call7:
	dc.b nRst, $0C, nF3, $12, $1E, $18, $0C, nRst
	dc.b $0C, nF3, $12, $1E, $18, $0C, nRst, $0C
	dc.b nF4, $12, $1E, nCs4, $18, $0C, nRst, $0C
	dc.b nEb4, nEb4, $06, $12
	sRet	

AB2_Call8:
	dc.b nAb4, $60, nG4, nFs4, nAb4, nG4, nEb4, nCs4
	dc.b nRst, $0C, nAb4, $18, $0C, nG4, nAb4, $18
	dc.b nBb4, $0C
	sRet	

AB2_Call9:
	dc.b nRst, $0C, nAb4, $12, $1E, $12, nAb4, nRst
	dc.b $0C, nG4, $12, nG4
	sRet	

AB2_FM3:
	dc.b nRst, $02
AB2_Jump6:
	sPatFM		$07
	ssModZ80	$40, $02, $02, $02
	sCall		AB2_Call10
	sCall		AB2_Call10
	ssModZ80	$30, $03, $01, $01
	sPan		spRight, $00
	sCall		AB2_Call11
	dc.b nG4, $30, sHold, $18, nF4, $0C, nEb4
	sCall		AB2_Call11
	dc.b nF4, $12, $0C, nRst, $18, $06, nRst, $0C
	dc.b $06, nRst, $12
	sPatFM		$02
	saVolFM		$F9
	sPan		spLeft, $00
	sCall		AB2_Call12
	dc.b nRst, $0C, nC4, nC4, $06, $12, nG3, nBb3
	dc.b nC4, $0C
	sCall		AB2_Call12
	dc.b nRst, $0C, nBb3, nBb3, $06, $12, nBb3, nAb3
	dc.b nBb3, $0C
	saVolFM		$07
	sPatFM		$06
	sPan		spCenter, $00
	sCall		AB2_Call13
	sCall		AB2_Call13
	sPatFM		$07

AB2_Loop13:
	sCall		AB2_Call14
	dc.b nBb3, nC4, nEb4, $0C
	sLoop		$00, $03, AB2_Loop13
	sCall		AB2_Call14
	dc.b nBb4, nC5, nEb5, $0C
	sJump		AB2_Jump6

AB2_Call10:
	dc.b nF3, $60, nAb3
	sRet	

AB2_Call11:
	dc.b nBb3, $30, sHold, $18, nF4, nEb4, $30, sHold
	dc.b $30, nBb3, sHold, $18, nF4
	sRet	

AB2_Call12:
	dc.b nRst, $0C, nCs4, $12, $1E, $18, $0C, nRst
	dc.b $0C, nEb4, $12, $1E, $18, $0C, nRst, $0C
	dc.b nCs4, $12, $1E, nBb3, $18, $0C
	sRet	

AB2_Call13:
	dc.b nF4, $60, nEb4, nCs4, nEb4, nEb4, nC4, nBb3
	dc.b nRst, $0C, nCs4, nC4, nCs4, $18, nEb4, nF4
	dc.b $0C
	sRet	

AB2_Call14:
	dc.b nRst, $0C, nF4, $12, $1E, $12, nF4, nRst
	dc.b $0C, nEb4, $12, nEb4
	sRet	

AB2_FM5:
	dc.b nRst, $02
AB2_Jump4:
	sPatFM		$00
	sCall		AB2_Call5
	dc.b nBb4
	saVolFM		$FA
	sCall		AB2_Call5
	dc.b nBb4, nF5, $06, nC5, nC5, nG5, nC5, nC5
	dc.b nAb5, nC5, nC5, nG5, nC5, nC5, nF5, nC5
	dc.b nG5, nC5, nG5, nC5, nC5, nAb5, nC5, nC5
	dc.b nBb5, nC5, nC5, nAb5, nC5, nC5, nG5, nC5
	dc.b nAb5, nC5, nF5, nC5, nC5, nG5, nC5, nC5
	dc.b nAb5, nC5, nC5, nG5, nC5, nC5, nF5, nC5
	dc.b nG5, nC5, nEb5, $0C, nRst, $06, nEb5, nRst
	dc.b $48
	saVolFM		$06
	sPatFM		$08
	saDetune	$01
	saVolFM		$0C
	sPan		spRight, $00
	dc.b nRst, $0C, nC6, $03, nCs6, $30, sHold, $0F
	dc.b nD6, $03, nEb6, $1B, nG5, $30, sHold, $1E
	dc.b nF5, $06, nAb5, nC6, nF6, nG6, nRst, nF6
	dc.b nRst, nCs6, nAb5, nRst, nG5, $30, nAb5, $12
	dc.b nG5, nAb5, $0C, nA5, $03, nBb5, $15, nG5
	dc.b $18, nE5, $03, nF5, $30, sHold, $0F, nA5
	dc.b $03, nBb5, $1B, nG5, $30, nAb5, $12, nG5
	dc.b nAb5, $0C, nF5, $12, nCs5, nF5, $0C, nAb5
	dc.b $12, nG5, nAb5, $0C, nA5, $03, nBb5, $2D
	dc.b nEb6, $24
	sPan		spCenter, $00
	saDetune	$00
	saVolFM		$F4
	saVolFM		$FA

AB2_Loop8:
	sPatFM		$00
	dc.b nF5, $06, nC5, nC5, nG5, nC5, nC5, nAb5
	dc.b nC5, nC5, nG5, nC5, nC5, nF5, nC5, nG5
	dc.b nC5, nG5, nC5, nC5, nAb5, nC5, nC5, nBb5
	dc.b nC5, nC5, nAb5, nC5, nC5, nG5, nC5, nAb5
	dc.b nC5, nFs5, nCs5, nCs5, nEb5, nCs5, nCs5, nCs6
	dc.b nCs5, nCs5, nC6, nCs5, nCs5, nCs6, nCs5, nEb6
	dc.b nCs5, nEb5, nAb4, nAb4, nAb5, nEb4, nEb4, nBb5
	dc.b nEb4, nEb4, nEb5, nBb4, nBb4, nAb5, nBb4, nBb4
	dc.b nAb5, nF5, nC5, nC5, nG5, nC5, nC5, nAb5
	dc.b nC5, nC5, nG5, nC5, nC5, nF5, nC5, nG5
	dc.b nC5, nG5, nC5, nC5, nAb5, nC5, nC5, nBb5
	dc.b nC5, nC5, nAb5, nC5, nC5, nAb5, nEb5, nBb5
	dc.b nEb5, nBb5, nCs5, nCs5, nAb5, nCs5, nCs5, nBb5
	dc.b nCs5, nCs5, nAb5, nCs5, nCs5, nBb5, nCs5, nAb5
	dc.b nCs5, nEb5, nAb4, nAb4, nAb5, nEb4, nEb4, nAb5
	dc.b nEb4, nEb4, nEb5, nBb4, nBb4, nAb5, nEb4, nEb4
	dc.b nEb5
	sLoop		$00, $02, AB2_Loop8
	sPatFM		$00

AB2_Loop9:
	dc.b nC7, $18
	saVolFM		$02
	sLoop		$00, $07, AB2_Loop9
	dc.b nC7, $0C
	saVolFM		$F2
	dc.b nC7, $06, $06
	sLoop		$01, $02, AB2_Loop9
	saVolFM		$04
	dc.b nC7, $08, $08, $08
	saVolFM		$04
	sPan		spRight, $00

AB2_Loop10:
	dc.b nC7, $08, $08, $08
	saVolFM		$04
	sLoop		$00, $06, AB2_Loop10
	dc.b nC7, $0C
	sPan		spCenter, $00
	saVolFM		$E0
	dc.b nC7, $06, $06

AB2_Loop11:
	dc.b nC7, $18
	saVolFM		$02
	sLoop		$00, $08, AB2_Loop11
	saVolFM		$F0
	saVolFM		$06
	sPan		spCenter, $00
	sJump		AB2_Jump4

AB2_FM2:
	dc.b nRst, $02
AB2_Jump7:
	sPatFM		$04
	saVolFM		$08
	ssModZ80	$01, $01, $E7, $01
	sPan		spRight, $00
	dc.b nRst, $30, nD3, $06, $12, $0C, $06, nD3
	dc.b sHold, nRst, $60
	sPan		spLeft, $00
	dc.b nRst, $30, nD3, $0C, $06, $12, $06, nD3
	dc.b sHold, nRst, $60
	sModEnv		ModEnv_00
	sPan		spCenter, $00
	saVolFM		$F8
	sPatFM		$08
	ssModZ80	$0C, $02, $03, $03
	saVolFM		$0F
	sCall		AB2_Call1
	dc.b nEb5, $12, $0C, nRst, $1E
	sPatFM		$04
	sPan		spRight, $00
	saVolFM		$F4
	ssModZ80	$01, $01, $E7, $01
	dc.b nRst, $0C, nD3, $06, sHold, $12
	saVolFM		$0C
	sPatFM		$08
	ssModZ80	$0C, $02, $03, $03
	sPan		spCenter, $00
	sCall		AB2_Call2
	sPatFM		$05
	sPan		spRight, $00

AB2_Loop14:
	saVolFM		$02
	dc.b nF6, $0C
	saVolFM		$02
	dc.b nBb6
	saVolFM		$02
	dc.b nC7
	sLoop		$00, $05, AB2_Loop14
	dc.b nF6

AB2_Loop15:
	saVolFM		$02
	dc.b nEb6
	saVolFM		$02
	dc.b nAb6
	saVolFM		$02
	dc.b nBb6
	sLoop		$00, $05, AB2_Loop15
	dc.b nEb6
	saVolFM		$C4
	sPan		spCenter, $00
	saVolFM		$14
	sPatFM		$07
	dc.b nG4, $60, nEb4, nCs4, nRst, $0C, nAb4, $18
	dc.b $0C, nG4, nAb4, $18, nBb4, $0C
	saVolFM		$E0
	sPatFM		$03
	dc.b nRst, $30, nRst, $0C, nC4, nEb4, nF4, nBb4
	dc.b $12, nC5, nEb5, $0C, nF5, $12, nBb5, nC6
	dc.b $0C, nFs5, $3C, nEb6, $03, nF6, $09, nEb6
	dc.b $0C, nC6, nEb6, $03, nF6, $09, nEb6, $06
	dc.b nC6, nBb5, $0C, nAb5, $18, nF5, $0C, nAb5
	dc.b nBb5, nRst, $30, nRst, $0C
	saVolFM		$FD
	dc.b nAb5
	saVolFM		$03
	dc.b nG5, nEb5, nBb4, $12, nC5, nEb5, $0C, nF5
	dc.b $12, nBb5, nC6, $0C, nCs6, $3C, nEb6, $03
	dc.b nF6, nRst, $06, nEb6, $0C, nF6, nBb6, $60
	dc.b nC7, $30

AB2_Loop16:
	dc.b sHold, nC7, $06
	saVolFM		$01
	sLoop		$00, $28, AB2_Loop16
	saVolFM		$D5
	dc.b nRst, $60
	saVolFM		$14
	sPatFM		$07
	dc.b nRst, $0C, nAb4, $12, $1E, $12, nAb4, nRst
	dc.b $0C, nG4, $12, nG4, nC4, nEb4, nG4, $0C
	dc.b nRst, $0C, nAb4, $12, $1E, $12, nAb4, nRst
	dc.b $0C, nG4, $12, nG4, nC5, nEb5, nG5, $0C
	saVolFM		$EC
	sJump		AB2_Jump7

AB2_Call1:
	dc.b nC4, $03, nCs4, nF4, nG4, sHold, nF4, $24
	dc.b nC5, $12, nBb4, nAb4, $0C, nG4, $12, nAb4
	dc.b nBb4, $0C, nEb4, $30, nC4, $03, nCs4, nF4
	dc.b nG4, sHold, nF4, $24, nC5, $12, nBb4, nAb4
	dc.b $0C, nG4, $12, nAb4, nBb4, $0C, nEb5, $30
	dc.b nG4, $03, nAb4, nF5, $2A, nC6, $12, nBb5
	dc.b nAb5, $0C, nG5, $12, nAb5, nBb5, $0C, nEb5
	dc.b $30, nG4, $03, nAb4, nF5, $2A, nC6, $12
	dc.b nBb5, nAb5, $0C
	sRet	

AB2_Call2:
	dc.b nC6, $03, nCs6, $30, sHold, $0F, nD6, $03
	dc.b nEb6, $1B, nG5, $30, sHold, $1E, nF5, $06
	dc.b nAb5, nC6, nF6, nG6, nRst, nF6, nRst, nCs6
	dc.b nAb5, nRst, nG5, $30, nAb5, $12, nG5, nAb5
	dc.b $0C, nA5, $03, nBb5, $15, nG5, $18, nE5
	dc.b $03, nF5, $30, sHold, $0F, nA5, $03, nBb5
	dc.b $1B, nG5, $30, nAb5, $12, nG5, nAb5, $0C
	dc.b nF5, $12, nCs5, nF5, $0C, nAb5, $12, nG5
	dc.b nAb5, $0C, nA5, $03, nBb5, $2D, nEb6, $30
	sRet	

AB2_Call4:
	dc.b nRst, $30, nRst, $0C, nC4, nEb4, nF4, nBb4
	dc.b $12, nC5, nEb5, $0C, nF5, $12, nBb5, nC6
	dc.b $0C, nFs5, $30, sHold, $0C, nEb6, $03, nF6
	dc.b $09, nEb6, $0C, nC6, nEb6, $03, nF6, $09
	dc.b nEb6, $06, nC6, nBb5, $0C, nAb5, $18, nF5
	dc.b $0C, nAb5, nBb5, nRst, $30, nRst, $0C, nAb5
	dc.b nG5, nEb5, nBb4, $12, nC5, nEb5, $0C, nF5
	dc.b $12, nBb5, nC6, $0C, nCs6, $30, sHold, $0C
	dc.b nEb6, $03, nF6, nRst, $06, nEb6, $0C, nF6
	dc.b nBb6, $30, sHold, $30
	sRet	

AB2_PSG1:
	dc.b nRst, $02
AB2_Jump3:
	ssModZ80	$10, $02, $02, $02
	dc.b nRst, $60, nRst, nRst, nRst
	sCall		AB2_Call1
	dc.b nEb5, $12, $0C, nRst, $42
	sCall		AB2_Call2
	sCall		AB2_Call3
	sCall		AB2_Call4
	sModOff	

AB2_Loop7:
	dc.b sHold, nC7, $30
	saVolPSG	$01
	sLoop		$00, $06, AB2_Loop7
	saVolPSG	$FA
	dc.b nRst, $60, nRst, nRst, nRst, nRst
	sJump		AB2_Jump3

AB2_Call3:
AB2_Loop5:
	dc.b nRst, $60
	sLoop		$00, $08, AB2_Loop5
	sRet	

AB2_PSG2:
	dc.b nRst, $02, nRst, $06
AB2_Jump2:
	ssModZ80	$13, $02, $02, $02
	dc.b nRst, $60, nRst, nRst, nRst
	saDetune	$01
	sCall		AB2_Call1
	dc.b nEb5, $12, $0C, nRst, $42
	saDetune	$00
	sCall		AB2_Call2
	sCall		AB2_Call3
	sCall		AB2_Call4
	sModOff	

AB2_Loop6:
	dc.b sHold, nC7, $30
	saVolPSG	$01
	sLoop		$00, $06, AB2_Loop6
	saVolPSG	$FA
	dc.b nRst, $60, nRst, nRst, nRst, nRst
	sJump		AB2_Jump2

AB2_DAC:
AB2_Loop19:
	dc.b $18, dKick, dKick, dKick
	sLoop		$00, $03, AB2_Loop19
	dc.b dKick, $18, dKick, dKick, dSnare

AB2_Loop20:
AB2_Jump9:
	sCall		AB2_Call19
	sLoop		$00, $03, AB2_Loop20
	dc.b dKick, $18, dSnare, dSnare, $12, dSnare, dSnare, $0C

AB2_Loop21:
	sCall		AB2_Call19
	sLoop		$00, $03, AB2_Loop21
	dc.b dKick, $12, dSnare, $2A, dKick, $0C, dSnare, $18
	dc.b dKick, dSnare, dKick, dSnare
	sCall		AB2_Call20
	dc.b dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	sCall		AB2_Call20
	dc.b dKick, dSnare, $12, dKick, $06, dSnare, $0C, dKick
	dc.b $06, dKick, dSnare, $03, $0F, $06

AB2_Loop22:
	sCall		AB2_Call19
	sLoop		$00, $03, AB2_Loop22
	dc.b dKick, $18, dSnare, dKick, dSnare, $0C, dLowTom

AB2_Loop23:
	sCall		AB2_Call19
	sLoop		$00, $03, AB2_Loop23
	dc.b dKick, $18, dSnare, $12, dCrashCymbal, $06, dHighTom, dLowTom
	dc.b dKick, $0C, dSnare, dSnare, $06, dSnare

AB2_Loop24:
	sCall		AB2_Call19
	sLoop		$00, $03, AB2_Loop24
	dc.b dKick, $18, dSnare, $24, dKick, $0C, dSnare, $18
	sLoop		$01, $02, AB2_Loop24

AB2_Loop25:
	sCall		AB2_Call19
	sLoop		$00, $03, AB2_Loop25
	dc.b dKick, $18, dSnare, dKick, $0C, dSnare, nRst, dSnare

AB2_Loop26:
	sCall		AB2_Call19
	sLoop		$00, $03, AB2_Loop26
	dc.b dKick, $18, dSnare, dKick, $06, nRst, dSnare, dSnare
	dc.b dKick, nRst, dSnare, dSnare
	sCall		AB2_Call19
	sCall		AB2_Call19
	sCall		AB2_Call19
	dc.b dKick, dSnare, dSnare, $12, dHighTom, dLowTom, $0C
	sJump		AB2_Jump9

AB2_Call19:
	dc.b dKick, $18, dSnare, dKick, dSnare
	sRet	

AB2_Call20:
	dc.b dKick, dSnare, $24, dKick, $06, dKick, dSnare, $18
	dc.b dKick, dSnare, dKick, dSnare
	sRet	

AB2_PSG3:
	dc.b nRst, $02
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02
	saVolPSG	$02
	sVolEnvPSG	VolEnv_0A
	dc.b nAb5, $60, nRst, nRst, nRst
	saVolPSG	$FE

AB2_Loop1:
AB2_Jump1:
	sVolEnvPSG	VolEnv_02
	dc.b nA5, $0C, $06, $06
	sLoop		$00, $0C, AB2_Loop1
	dc.b nA5, $0C, $06, nA5, nA5, $0C, $06, nA5
	saVolPSG	$02
	sVolEnvPSG	VolEnv_0A
	dc.b nAb5, $12, nAb5, nAb5, $0C
	saVolPSG	$FE

AB2_Loop2:
	sVolEnvPSG	VolEnv_02
	dc.b nA5, $0C, $06, $06
	sLoop		$00, $0C, AB2_Loop2
	saVolPSG	$04
	sVolEnvPSG	VolEnv_0A
	dc.b nAb5, $12, $30, sHold, $06, nRst, $18
	sVolEnvPSG	VolEnv_02
	saVolPSG	$FC

AB2_Loop3:
	dc.b nA5, $0C, $06, $06
	sLoop		$00, $1C, AB2_Loop3
	sVolEnvPSG	VolEnv_02
	dc.b nA5, $0C, $06, $06, $0C, $06, $06, nA5
	dc.b $06, nA5, nA5, nA5, nA5, nA5, nA5, nA5
	saVolPSG	$01
	sVolEnvPSG	VolEnv_0A
	dc.b nAb5, $60
	saVolPSG	$02
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst
	sVolEnvPSG	VolEnv_01
	dc.b nRst, $30, nA5, $18, nA5
	sVolEnvPSG	VolEnv_02
	saVolPSG	$FD

AB2_Loop4:
	dc.b nA5, $0C, $06, $06
	sLoop		$00, $50, AB2_Loop4
	sJump		AB2_Jump1

AB2_Patches:
	; Patch $00
	; $38
	; $73, $03, $02, $31,	$C8, $BF, $BF, $BF
	; $0B, $0B, $09, $0F,	$08, $08, $08, $08
	; $23, $13, $25, $27,	$1E, $1E, $1E, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $00, $00, $03
	spMultiple	$03, $02, $03, $01
	spRateScale	$03, $02, $02, $02
	spAttackRt	$08, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $09, $0B, $0F
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$02, $02, $01, $02
	spReleaseRt	$03, $05, $03, $07
	spTotalLv	$1E, $1E, $1E, $00

	; Patch $01
	; $08
	; $0A, $70, $30, $00,	$1F, $1F, $5F, $5F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $27, $27, $27, $27,	$24, $2D, $13, $80
	spAlgorithm	$00
	spFeedback	$01
	spDetune	$00, $03, $07, $00
	spMultiple	$0A, $00, $00, $00
	spRateScale	$00, $01, $00, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $0A, $0E, $0A
	spSustainRt	$00, $04, $04, $03
	spSustainLv	$02, $02, $02, $02
	spReleaseRt	$07, $07, $07, $07
	spTotalLv	$24, $13, $2D, $00

	; Patch $02
	; $39
	; $73, $23, $22, $31,	$DF, $DF, $DF, $DF
	; $07, $05, $05, $0A,	$03, $03, $03, $03
	; $23, $13, $25, $27,	$1D, $1D, $1D, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$07, $02, $02, $03
	spMultiple	$03, $02, $03, $01
	spRateScale	$03, $03, $03, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $05, $05, $0A
	spSustainRt	$03, $03, $03, $03
	spSustainLv	$02, $02, $01, $02
	spReleaseRt	$03, $05, $03, $07
	spTotalLv	$1D, $1D, $1D, $00

	; Patch $03
	; $3E
	; $11, $12, $12, $13,	$0B, $0F, $8F, $0F
	; $07, $07, $07, $07,	$02, $02, $02, $02
	; $23, $1F, $1F, $1F,	$18, $8B, $8B, $8B
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$01, $01, $01, $01
	spMultiple	$01, $02, $02, $03
	spRateScale	$00, $02, $00, $00
	spAttackRt	$0B, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $07, $07, $07
	spSustainRt	$02, $02, $02, $02
	spSustainLv	$02, $01, $01, $01
	spReleaseRt	$03, $0F, $0F, $0F
	spTotalLv	$18, $0B, $0B, $0B

	; Patch $04
	; $3E
	; $20, $0F, $0E, $0F,	$1F, $1F, $1F, $1F
	; $1F, $1F, $1F, $1F,	$0F, $0F, $0E, $0E
	; $0F, $0F, $0F, $0F,	$0C, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$02, $00, $00, $00
	spMultiple	$00, $0E, $0F, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $1F, $1F, $1F
	spSustainRt	$0F, $0E, $0F, $0E
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0C, $00, $00, $00

	; Patch $05
	; $04
	; $35, $72, $54, $46,	$1F, $1F, $1F, $1F
	; $07, $0A, $07, $0D,	$00, $0B, $00, $0B
	; $1F, $0F, $1F, $0F,	$23, $94, $1D, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$03, $05, $07, $04
	spMultiple	$05, $04, $02, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $07, $0A, $0D
	spSustainRt	$00, $00, $0B, $0B
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $1D, $14, $00

	; Patch $06
	; $3A
	; $32, $00, $02, $73,	$9F, $8F, $4F, $4F
	; $0F, $0F, $0F, $0F,	$02, $02, $02, $02
	; $1F, $0F, $0F, $0F,	$17, $1F, $19, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $00, $00, $07
	spMultiple	$02, $02, $00, $03
	spRateScale	$02, $01, $02, $01
	spAttackRt	$1F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0F, $0F, $0F
	spSustainRt	$02, $02, $02, $02
	spSustainLv	$01, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $19, $1F, $00

	; Patch $07
	; $3A
	; $32, $00, $02, $73,	$9F, $8F, $4F, $4F
	; $0F, $0F, $0F, $0F,	$03, $03, $03, $03
	; $1F, $0F, $0F, $0F,	$17, $1F, $19, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $00, $00, $07
	spMultiple	$02, $02, $00, $03
	spRateScale	$02, $01, $02, $01
	spAttackRt	$1F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0F, $0F, $0F
	spSustainRt	$03, $03, $03, $03
	spSustainLv	$01, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $19, $1F, $00

	; Patch $08
	; $3D
	; $01, $21, $51, $01,	$12, $14, $14, $0F
	; $0A, $05, $05, $05,	$00, $00, $00, $00
	; $2B, $2B, $2B, $1B,	$19, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $05, $02, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $14, $14, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $05, $05, $05
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$0B, $0B, $0B, $0B
	spTotalLv	$19, $00, $00, $00
