Credits3_Header:
	sHeaderInit	; Z80 offset is $A332
	sHeaderPatch	Credits3_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $50
	sHeaderDAC	Credits3_DAC
	sHeaderFM	Credits3_FM1, $01, $13
	sHeaderFM	Credits3_FM2, $01, $09
	sHeaderFM	Credits3_FM3, $01, $15
	sHeaderFM	Credits3_FM4, $01, $15
	sHeaderFM	Credits3_FM5, $01, $15
	sHeaderPSG	Credits3_PSG1, $01, $02, $00, VolEnv_03
	sHeaderPSG	Credits3_PSG2, $01, $02, $00, VolEnv_03
	sHeaderPSG	Credits3_PSG3, $00, $01, $00, VolEnv_02

Credits3_FM1:
	sCall		Credits3_Call5
	dc.b nC4, $06, nD4
	ssTempo		$29
	dc.b nC4, $60
	saVolFM		$08
	ssTempo		$14
	sPatFM		$04
	dc.b nRst, $06, nC2, nE2, nG2, nC3, nE3, nG2
	dc.b nC3
	ssTempo		$04
	dc.b nE3, nG3, nC3, nE3, nG3, nC4, nE3, nG3
	saVolFM		$F8

Credits3_Jump4:
	ssTempo		$65
	sPatFM		$04
	ssModZ80	$14, $01, $07, $06
	saVolFM		$FF
	dc.b nRst, $30, sHold, $30, sHold, $18, sHold, $12

Credits3_Jump5:
	ssModZ80	$14, $01, $07, $06
	dc.b nC5, $06
	saVolFM		$07
	dc.b $06
	saVolFM		$F9
	dc.b nEb5, $06
	saVolFM		$07
	dc.b $06
	saVolFM		$F9
	dc.b nF5, $06
	saVolFM		$07
	dc.b $06
	saVolFM		$F9
	dc.b nG5, $12

Credits3_Loop9:
	saVolFM		$FE
	dc.b nC5, $06, $06, nD5, nEb5, $06, sHold, $18
	dc.b nRst, $06, nF5, $12, nEb5, $06, nD5, $0C
	dc.b nC5, $0C, $06, nD5, nEb5, $06, sHold, $18
	dc.b nRst, $06, nG5, $12, $06, nF5, $0C, nEb5
	dc.b $06, sHold, $18, nRst, $06, nEb5, $0C, nF5
	dc.b $06, sHold, $18, nRst, $06, nBb4, $0C, nC5
	dc.b $06, sHold, $30, nRst, $06, nEb5, $0C
	saVolFM		$0D
	dc.b $06
	saVolFM		$F3
	dc.b $06, nD5, $12
	sLoop		$00, $02, Credits3_Loop9
	ssModZ80	$63, $01, $FE, $63
	dc.b nF5, $60, nEb5, nCs5
	ssModZ80	$14, $01, $07, $06
	dc.b nRst, $06, nC5, $0C
	saVolFM		$0F
	dc.b $06
	saVolFM		$F1
	dc.b nEb5, $18, nF5, $0C
	saVolFM		$0F
	dc.b $06
	saVolFM		$F1
	dc.b nBb5, $06, sHold, $18, nRst, $06, nEb5, $06
	dc.b nD5, nC5, nEb5, nC5, nRst, nC5, $06, sHold
	dc.b $30, nRst, $06, nEb5, nD5, nC5, nEb5, nRst
	dc.b nEb5, nC5, $06, sHold, $30, nRst, $06, nF5
	dc.b nEb5, nD5, nF5, nF5, nRst, nF5, $06, sHold
	dc.b $30, nRst, $06, nG5, nF5, nEb5, nG5, nBb5
	dc.b nRst, nF5, $06, sHold, $30, nRst, $06, nBb5
	dc.b $12, $06, nG5, $0C, nBb5, $06, nRst, nBb5
	dc.b nG5, nC6, $06, sHold, $18, nRst, $06, nG5
	dc.b nF5, nEb5, nG5, nG5, nRst, nG5, $18, nC5
	dc.b $06, sHold, $18, nC5, $04, nD5, nEb5, nD5
	dc.b nEb5, nF5, nEb5, nF5, nG5, nF5, nG5, nAb5
	dc.b nG5, nAb5, nBb5, nAb5, nBb5, nC6, nBb5, nC6
	dc.b nD6, nC6, nD6, nEb6
	ssModZ80	$14, $01, $FC, $5A
	dc.b nF6, $18, sHold, $06
	ssModZ80	$14, $01, $07, $06
	dc.b nBb5, $0C, nAb5, $06, sHold, $30

Credits3_Loop10:
	dc.b nC6, $04, nBb5, nG5
	sLoop		$00, $0B, Credits3_Loop10
	dc.b nF6, $06
	ssModZ80	$37, $01, $F7, $5A
	dc.b nEb6, $06, sHold, $30
	ssModZ80	$14, $01, $07, $06
	dc.b nG3, $04, nAb3, nBb3, nAb3, nBb3, nC4, nBb3
	dc.b nC4, nD4, nC4, nD4, nEb4, nD4, nEb4, nF4
	dc.b nEb4, nF4, nG4, nF4, nG4, nAb4, nG4, nAb4
	dc.b nBb4, nC5, $12, nF5, $18
	ssModZ80	$5A, $01, $0A, $09
	dc.b nBb5, $06, sHold, $30, sHold, $30, sHold, $30
	dc.b sHold, $24, nRst, $06
	saVolFM		$02
	sJump		Credits3_Jump5

Credits3_Call5:
	sPatFM		$02
	ssModZ80	$14, $01, $07, $06
	dc.b nB4, $0C, nC5, nD5, $30, sHold, $0C, nC5
	dc.b nB4, nC5, nD5, $30, sHold, $0C, nC5, nB4
	dc.b nG4, nE4, $30, sHold, $0C, nE4, nF4, nG4
	dc.b nG4, $18, nCs4, $0C, nE4, $24, nD4, $0C
	dc.b nE4, nF4, $30, sHold, $0C, nF4, nG4, nF4
	dc.b nE4, $18, nC4, $0C, nG4, $18, nE4, $0C
	dc.b nF4, nG4, nAb4, $30, sHold, $0C, nG4, nF4
	dc.b nEb4, nD4, $60, sHold, $30, sHold, $24
	sRet	

Credits3_FM2:
	sPatFM		$08
	dc.b nRst, $18, nC3, $18, nRst, $0C, nC3, $0C
	dc.b $30, nB2, $18, nRst, $0C, nB2, $0C, $30
	dc.b nBb2, $18, nRst, $0C, nBb2, $0C, $30, nA2
	dc.b $18, nRst, $0C, nA2, $0C, $30, nAb2, $18
	dc.b nRst, $0C, nAb2, $0C, $30, nG2, $18, nRst
	dc.b $0C, nG2, $0C, $30, nF2, $18, nRst, $0C
	dc.b nF2, $0C, $30, nG2, $18, nRst, $0C, nG2
	dc.b $0C, $30, sHold, $60
	ssTempo		$29
	dc.b nC3, $60
	ssTempo		$14
	dc.b nRst, $30
	ssTempo		$04
	dc.b nRst, $30
	ssTempo		$65

Credits3_Loop16:
	dc.b nRst, $0C, nC3
	sLoop		$00, $05, Credits3_Loop16
	dc.b nRst, $12

Credits3_Jump8:
	dc.b nC3, $0C, $06, nRst, nC3, nRst, nG2, $12
Credits3_Loop17:
	dc.b nC3, $06, $06, $0C, $06, nEb3, $0C, nC3
	dc.b $0C, $06, $0C, $06, nBb2, $0C, nC3, $0C
	dc.b $06, $0C, $06, nEb3, $0C, nC3, $0C, $06
	dc.b $0C, $06, nBb2, $0C, nAb2, $0C, $06, nC3
	dc.b nAb2, nEb3, nC3, $0C, nBb2, $0C, $06, nD3
	dc.b nBb2, nF3, nD3, $0C, nC3, $0C, $06, nEb3
	dc.b nC3, nF3, nEb3, $0C, nC3, $0C, $06, nEb3
	dc.b nC3, nC3, nBb2, $0C, $06
	sLoop		$00, $02, Credits3_Loop17

Credits3_Loop18:
	dc.b nF3, $06, nRst, nF2, $0C, nF3, $03, nRst
	dc.b nF3, $06, nF2, $0C
	sLoop		$00, $06, Credits3_Loop18
	dc.b nRst, $06, nC3, $12, sHold, $30, nRst, $06
	dc.b nF3, $06, nEb3, $0C, nC3, $06
	sCall		Credits3_Call8
	dc.b nC3, $0C
	sCall		Credits3_Call8
	dc.b nC3, $0C
	sCall		Credits3_Call8
	dc.b nC3, $30, sHold, $30, sHold, $30
	sJump		Credits3_Jump8

Credits3_Call8:
	dc.b $06, $0C, $06, $0C, $0C, $06, $0C, $06
	dc.b $0C, nAb2, $0C, $06, $0C, $06, $0C, $0C
	dc.b $06, $0C, $06, $0C, nF2, $0C, $06, $0C
	dc.b $06, $0C, $0C, $06, $0C, $06, nEb2, $0C
	dc.b nG2, $0C, $06, $0C, $06, $0C, $0C, $06
	dc.b $0C, $06, nBb2, $0C
	sRet	

Credits3_FM3:
	sCall		Credits3_Call4
	dc.b nB3, $0C, sHold, $30, sHold, $60
	ssTempo		$29
	dc.b nC1, $06, nE1, nG1, nC2, nE1, nG1, nC2
	dc.b nE2, nG1, nC2, nE2, nG2, nC2, nE2, nG2
	dc.b nC3
	ssTempo		$14
	dc.b nE2, nG2, nC3, nE3, nG2, nC3, nE3, nG3
	ssTempo		$04
	dc.b nC3, nE3, nG3, nC4, nE3, nG3, nC4, nE4
	ssTempo		$65
	sPatFM		$04
	ssModZ80	$15, $01, $07, $06
	dc.b nC4, $06

Credits3_Jump7:
	dc.b $06, $06, $06, $06, $06, $06, $0C, $06
	dc.b $06, $06, $06, $06, $06, $0C, $06, $06
	dc.b $06, $06, nBb3, $0C, nC4, $06
	saVolFM		$08
	dc.b $06
	saVolFM		$F8
	dc.b nEb4, $06
	saVolFM		$08
	dc.b $06
	saVolFM		$F8
	dc.b nF4, $06
	saVolFM		$08
	dc.b $06
	saVolFM		$F8
	dc.b nG4, $12
	saTranspose	$0C

Credits3_Loop13:
	dc.b nC4, $06, $06, $06, $0C, nBb3, nC4, $0C
	dc.b nC4, $06, $0C, $06, nBb3, $0C, nC4, $0C
	dc.b $06, $06, $0C, nBb3, nC4, $0C, nC4, $06
	dc.b $0C, $06, nBb3, $0C, nRst, $0C, nAb3, $06
	dc.b nRst, $0C, nAb3, $12, nBb3, $0C, $06, $0C
	dc.b nRst, $06, nBb3, nEb4, nC4, nRst, nC4, nRst
	dc.b $0C, nC4, $06, nBb3, $12, nC4, $06, $12
	dc.b $06, nBb3, $12
	sLoop		$00, $02, Credits3_Loop13
	saTranspose	$F4

Credits3_Loop14:
	dc.b nF4, $12, nEb4, nFs4, nEb4, nF4, $0C, nEb4
	sLoop		$00, $03, Credits3_Loop14
	dc.b nRst, $06, nC4, $0C
	saVolFM		$0E
	dc.b $06
	saVolFM		$F2
	dc.b nEb4, $18, nF4, $0C
	saVolFM		$0E
	dc.b $06
	saVolFM		$F2
	dc.b nBb4, $06, sHold, $18
	saTranspose	$0C
	dc.b nC4, $06
	sCall		Credits3_Call7
	dc.b nC4, $0C
	sCall		Credits3_Call7
	dc.b nC4, $0C
	sCall		Credits3_Call7
	saTranspose	$F4
	dc.b nC4, $0C
	sJump		Credits3_Jump7

Credits3_Call4:
	sPatFM		$04
	dc.b nRst, $18, nC3, $0C, nE3, nG3, nC4, $0C
	dc.b sHold, $30, nB2, $0C, nE3, nG3, nB3, $0C
	dc.b sHold, $30, nC3, $0C, nE3, nG3, nBb3, $0C
	dc.b sHold, $30, nA2, $0C, nCs3, nE3, nA3, $0C
	dc.b sHold, $30, nAb2, $0C, nC3, nF3, nAb3, $0C
	dc.b sHold, $30, nC3, $0C, nE3, nG3, nC4, $0C
	dc.b sHold, $30, nC3, $0C, nF3, nAb3, nC4, $0C
	dc.b sHold, $30, nB2, $0C, nD3, nG3
	sRet	

Credits3_Call7:
Credits3_Loop15:
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $06, $0C
	sLoop		$00, $02, Credits3_Loop15
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $06, nB3, $0C, $06, $0C, $06
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $06
	sRet	

Credits3_FM4:
	dc.b nRst, $0C
	saDetune	$03
	saVolFM		$09
	sCall		Credits3_Call5
	saVolFM		$F7
	saDetune	$FD
	sPatFM		$04
	ssTempo		$29
	dc.b nRst, $06, nC1, nE1, nG1, nC2, nE1, nG1
	dc.b nC2, nE2, nG1, nC2, nE2, nG2, nC2, nE2
	dc.b nG2
	ssTempo		$14
	dc.b nC3, nE2, nG2, nC3, nE3, nG2, nC3, nE3
	ssTempo		$04
	dc.b nG3, nC3, nE3, nG3, nC4, nE3, nG3, nC4
	ssTempo		$65
	sPatFM		$04
	ssModZ80	$15, $01, $07, $06
	dc.b nG3, $06

Credits3_Jump6:
	dc.b $06, $06, $06, $06, $06, $06, $0C, $06
	dc.b $06, $06, $06, $06, $06, $0C, $06, $06
	dc.b $06, $06, nF3, $0C, nG3, $06
	saVolFM		$08
	dc.b $06
	saVolFM		$F8
	dc.b nBb3, $06
	saVolFM		$08
	dc.b $06
	saVolFM		$F8
	dc.b nC4, $06
	saVolFM		$08
	dc.b $06
	saVolFM		$F8
	dc.b nD4, $12
	saTranspose	$0C

Credits3_Loop11:
	dc.b nG3, $06, $06, $06, $0C, nF3, nG3, $0C
	dc.b $06, $0C, $06, nF3, $0C, nG3, $0C, $06
	dc.b $06, $0C, nF3, nG3, $0C, $06, $0C, $06
	dc.b nD3, $0C, nRst, $0C, nEb3, $06, nRst, $0C
	dc.b nEb3, $12, nF3, $0C, $06, $0C, nRst, $06
	dc.b nF3, nBb3, nG3, nRst, nG3, nRst, $0C, nG3
	dc.b $06, nF3, $12, nG3, $06, $12, $06, nF3
	dc.b $12
	sLoop		$00, $02, Credits3_Loop11
	saTranspose	$F4

Credits3_Loop12:
	dc.b nC4, $12, nBb3, nCs4, nBb3, nC4, $0C, nBb3
	sLoop		$00, $03, Credits3_Loop12
	dc.b nRst, $06, nG3, $0C
	saVolFM		$0E
	dc.b $06
	saVolFM		$F2
	dc.b nBb3, $18, nC4, $0C
	saVolFM		$0E
	dc.b $06
	saVolFM		$F2
	dc.b nF4, $06, sHold, $18
	saTranspose	$0C
	dc.b nG3, $06
	sCall		Credits3_Call6
	dc.b nG3, $0C
	sCall		Credits3_Call6
	dc.b nG3, $0C
	sCall		Credits3_Call6
	saTranspose	$F4
	dc.b nG3, $0C
	sJump		Credits3_Jump6

Credits3_Call6:
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $06, nAb3, $0C, $06, $0C, $06
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $06
	dc.b nF3, $0C, $06, $0C, $06, $06, $0C, $06
	dc.b $06, $0C, $06, $06, $06, nG3, $0C, $06
	dc.b $0C, $06, $06, $0C, $06, $06, $0C, $06
	dc.b $06, $06
	sRet	

Credits3_FM5:
	saVolFM		$06
	dc.b nRst, $0C
	saDetune	$04
	sCall		Credits3_Call4
	dc.b nB3, $24, sHold, $60
	saVolFM		$FA
	saDetune	$FC
	sPatFM		$02
	ssModZ80	$14, $01, $07, $06
	dc.b nG3, $06, nB4
	ssTempo		$29
	dc.b nG3, $60
	ssTempo		$14
	dc.b nRst, $30
	ssTempo		$04
	dc.b nRst, $30, nRst, $06
	saDetune	$03
	saVolFM		$06
	sJump		Credits3_Jump4

Credits3_DAC:
	dc.b nRst, $18
Credits3_Loop19:
	dc.b dKick, $24, $0C, $18, dSnare, $18
	sLoop		$00, $07, Credits3_Loop19
	dc.b dKick, $24, $0C, $30, dKick, $24, $0C, $30
	ssTempo		$29
	dc.b dKick, $60
	ssTempo		$14
	dc.b nRst, $30
	ssTempo		$04
	dc.b nRst, $30
	ssTempo		$65
	dc.b dSnare, $0C, dMuffledSnare, $18, $06, dSnare, $12, dMuffledSnare
	dc.b $18, $06, dSnare, $12, dMuffledSnare, $18, $06, dSnare
	dc.b $0C, dMuffledSnare, $0C, $0C, $06, $06, $06

Credits3_Loop21:
Credits3_Jump9:
	dc.b dKick, $06, $06, dMuffledSnare, $0C, dKick, $06, $06
	dc.b dMuffledSnare, $06, dKick, $06
Credits3_Loop20:
	dc.b nRst, $06, dKick, $06, dMuffledSnare, $0C, dKick, $06
	dc.b $06, dMuffledSnare, $06, dKick, $06
	sLoop		$00, $06, Credits3_Loop20
	dc.b nRst, $06, dKick, $06, dMuffledSnare, $0C, dKick, $06
	dc.b dMuffledSnare, $06, $06, $06
	sLoop		$01, $02, Credits3_Loop21

Credits3_Loop22:
	dc.b dKick, $0C, dMuffledSnare, $0C, dKick, $06, $06, dMuffledSnare
	dc.b $0C
	sLoop		$00, $07, Credits3_Loop22
	dc.b dKick, $0C, dMuffledSnare, $0C, dKick, $06, dMuffledSnare, $06
	dc.b $06, $06, dKick, $06, $06, dMuffledSnare, $0C, dKick
	dc.b $06, $06, dMuffledSnare, $06, dKick, $06

Credits3_Loop23:
	dc.b nRst, $06, dKick, $06, dMuffledSnare, $0C, dKick, $06
	dc.b $06, dMuffledSnare, $06, dKick, $06
	sLoop		$00, $17, Credits3_Loop23
	dc.b dKick, $0C, dMuffledSnare, $18, $0C, dKick, $0C, dMuffledSnare
	dc.b $18, $0C, dKick, $0C, dMuffledSnare, $18, $06, dKick
	dc.b $0C, dKick, $06, dMuffledSnare, $06, dKick, $0C, dMuffledSnare
	dc.b $03, $03, $06, $06
	sJump		Credits3_Jump9

Credits3_PSG1:
	sCall		Credits3_Call1
	ssTempo		$65
	dc.b nRst, $60, sHold, $60

Credits3_Loop7:
Credits3_Jump3:
	dc.b nEb3, $30, sHold, $06, $12, $12, $0C, sHold
	dc.b $30, $12, $12, nC3, $24, $0C, nD3, $24
	dc.b $06, $06, nEb3, $06, sHold, $48, $06, nD3
	dc.b $12
	sLoop		$00, $02, Credits3_Loop7

Credits3_Loop8:
	dc.b nRst, $0C, nF2, $0C
	sLoop		$00, $0C, Credits3_Loop8
	dc.b nRst, $06, nG2, $0C
	saVolPSG	$03
	dc.b $06
	saVolPSG	$FD
	dc.b nBb2, $18, nC3, $0C
	saVolPSG	$03
	dc.b $06
	saVolPSG	$FD
	dc.b nF3, $06, sHold, $18, nEb3, $30, sHold, $06
	sCall		Credits3_Call3
	dc.b nEb3, $0C, sHold, $30
	sCall		Credits3_Call3
	dc.b nEb3, $0C, sHold, $30
	sCall		Credits3_Call3
	dc.b nEb3, $30, $30, $24, nBb2, $0C, nG2, nBb2
	dc.b nC3, nD3, $12
	sJump		Credits3_Jump3

Credits3_Call1:
	dc.b nRst, $18
Credits3_Loop1:
	dc.b nRst, $60
	sLoop		$00, $09, Credits3_Loop1
	ssTempo		$29
	dc.b nRst, $60
	ssTempo		$14
	dc.b nRst, $30
	ssTempo		$04
	dc.b nRst, $30
	sRet	

Credits3_Call3:
	dc.b $12, $12, nG3, $0C, sHold, $30, $12, $06
	dc.b $0C, nEb3, $12, sHold, $30, $12, $0C, nF3
	dc.b $12, sHold, $30, $12, $06, $06
	sRet	

Credits3_PSG2:
	sCall		Credits3_Call1
	ssTempo		$65
	dc.b nRst, $60, sHold, $48, sHold, $06
	ssModZ80	$01, $01, $11, $46
	saVolPSG	$FF
	dc.b nC3, $03, nB2, nE2, $06, nC2
	sModEnv		ModEnv_00
	saVolPSG	$01

Credits3_Loop5:
Credits3_Jump2:
	dc.b nG2, $30, sHold, $06, $12, $12, $0C, sHold
	dc.b $30, $12, $12, nAb2, $24, $0C, nBb2, $24
	dc.b $06, $06, nG2, $06, sHold, $30, sHold, $18
	dc.b $06, nF2, $12
	sLoop		$00, $02, Credits3_Loop5

Credits3_Loop6:
	dc.b nRst, $0C, nC2, $0C
	sLoop		$00, $0C, Credits3_Loop6
	dc.b nRst, $06, nEb2, $0C
	saVolPSG	$03
	dc.b $06
	saVolPSG	$FD
	dc.b nG2, $18, nA2, $0C
	saVolPSG	$03
	dc.b $06
	saVolPSG	$FD
	dc.b nD3, $06, sHold, $18, nC3, $30, sHold, $06
	sCall		Credits3_Call2
	dc.b nC3, $0C, sHold, $30
	sCall		Credits3_Call2
	dc.b nC3, $0C, sHold, $30
	sCall		Credits3_Call2
	dc.b nC3, $30, $30, $24, nF2, $0C, nEb2, nG2
	dc.b nA2, nBb2, $12
	sJump		Credits3_Jump2

Credits3_Call2:
	dc.b $12, $12, nEb3, $0C, sHold, $30, $12, $06
	dc.b $0C, nAb2, $12, sHold, $30, $12, $0C, nD3
	dc.b $12, sHold, $30, $12, $06, $06
	sRet	

Credits3_PSG3:
	sNoisePSG	$E7
	sCall		Credits3_Call1
	ssTempo		$65
	sVolEnvPSG	VolEnv_01
	dc.b nB6, $24, nRst, $06, $30, $30, $30, nRst
	dc.b $06

Credits3_Loop2:
Credits3_Jump1:
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	sLoop		$00, $10, Credits3_Loop2

Credits3_Loop3:
	dc.b $0C
	sLoop		$00, $20, Credits3_Loop3

Credits3_Loop4:
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	sLoop		$00, $18, Credits3_Loop4
	dc.b nRst, $60, sHold, $60
	sJump		Credits3_Jump1

Credits3_Patches:
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
