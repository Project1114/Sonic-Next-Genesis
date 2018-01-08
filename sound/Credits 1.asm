Credits1_Header:
	sHeaderInit	; Z80 offset is $9544
	sHeaderPatch	Credits1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $1A
	sHeaderDAC	Credits1_DAC
	sHeaderFM	Credits1_FM1, $0C, $12
	sHeaderFM	Credits1_FM2, $00, $12
	sHeaderFM	Credits1_FM3, $00, $12
	sHeaderFM	Credits1_FM4, $0C, $16
	sHeaderFM	Credits1_FM5, $0C, $16
	sHeaderPSG	Credits1_PSG1, $DC, $03, $00, VolEnv_00
	sHeaderPSG	Credits1_PSG2, $DC, $03, $00, VolEnv_00
	sHeaderPSG	Credits1_PSG3, $00, $05, $00, VolEnv_00

Credits1_FM1:
	saVolFM		$04
	sPatFM		$05
	sPan		spRight, $00
	saVolFM		$0C
	saTranspose	$F4
	dc.b nRst, $24, nC5, $18, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, $0C
	saVolFM		$F4
	saTranspose	$0C
	sPan		spCenter, $00
	sPatFM		$00

Credits1_Loop16:
	dc.b nAb1, $18, nRst, $0C, nAb1, nRst, $30, nRst
	dc.b nRst, nF1, $18, nRst, $0C, nF1, nRst, $30
	dc.b nRst, nRst
	sLoop		$00, $02, Credits1_Loop16
	dc.b nAb1, $18, nRst, $0C, nAb1, nRst, $30, nRst
	dc.b $0C, nBb1, nD2, nG1, nRst, nBb1, nRst, nG1
	dc.b nF1, $0C, $0C, nRst, $0C, nRst, nRst, $30
	dc.b nRst, $0C, nG1, nD1, nBb1, nF1, $12, nC1
	dc.b nG1, $0C

Credits1_Loop17:
	dc.b nAb1, $0C, $0C, nRst, $0C, nRst, nRst, $30
	dc.b nRst, $0C, nBb1, nD2, nG1, nRst, nBb1, nRst
	dc.b nG1, nF1, $0C, $0C, nRst, $0C, nRst, nRst
	dc.b $30, nRst, $0C, nG1, nD1, nBb1, nF1, $12
	dc.b nC1, nG1, $0C
	sLoop		$00, $03, Credits1_Loop17

Credits1_Loop18:
	dc.b nAb1, $0C, nAb1, $0C, nRst, $0C, nRst, $0C
	dc.b nRst, $30, nRst, nRst, nG1, $0C, nG1, $0C
	dc.b nRst, $0C, nRst, $0C, nRst, $30, nAb1, nBb1
	sLoop		$00, $08, Credits1_Loop18

Credits1_Loop19:
	dc.b nAb1, $18, nRst, $0C, nAb1, nRst, $30, nRst
	dc.b $0C, nBb1, nD2, nG1, nRst, nBb1, nRst, nG1
	dc.b nF1, $18, nRst, $0C, nF1, nRst, $30, nRst
	dc.b $0C, nG1, nD1, nBb1, nF1, $12, nC1, nG1
	dc.b $0C
	sLoop		$00, $02, Credits1_Loop19
	sStop	

Credits1_FM2:
	sPatFM		$05
	sPan		spLeft, $00
	saVolFM		$08
	dc.b nRst, $18, nC5, $18, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6
	saVolFM		$F8
	sPan		spCenter, $00
	sPatFM		$0B

Credits1_Loop14:
	sCall		Credits1_Call2
	sLoop		$00, $02, Credits1_Loop14
	sPatFM		$08
	saDetune	$02
	ssModZ80	$12, $02, $03, $03
	sPan		spLeft, $00
	dc.b nRst, $0C, nC5, $24, nF5, nG5, $18, nBb4
	dc.b $30, sHold, $0C, nF4, nG4, nBb4, nC5, $24
	dc.b nD5, nEb5, $18, nD5, $24, nEb5, nF5, $18
	sCall		Credits1_Call3
	sPan		spCenter, $00
	sPatFM		$06
	saDetune	$00
	ssModZ80	$0C, $02, $02, $02
	dc.b nC5, $24, nF5, nG5, $18, nBb4, $30, sHold
	dc.b $0C, nF4, nG4, nBb4, nC5, $24, nD5, nEb5
	dc.b $18, nD5, $24, nEb5, nF5, $18
	sCall		Credits1_Call3
	dc.b nD5
	sPatFM		$01
	ssModZ80	$00, $00, $00, $00
	saTranspose	$0C
	saVolFM		$04
	sNoteTimeOut	$0B

Credits1_Loop15:
	dc.b nAb2, $18
	saVolFM		$03
	dc.b nAb2, nAb2
	saVolFM		$FD
	dc.b nAb2
	saVolFM		$03
	dc.b nAb2, nAb2, nAb2, nAb2
	saVolFM		$FD
	dc.b nG2
	saVolFM		$03
	dc.b nG2, nG2
	saVolFM		$FD
	dc.b nG2
	saVolFM		$03
	dc.b nAb2, nAb2
	saVolFM		$FD
	dc.b nBb2
	saVolFM		$03
	dc.b nG2
	saVolFM		$FD
	sLoop		$00, $07, Credits1_Loop15
	dc.b nAb2, $18
	saVolFM		$03
	dc.b nAb2, nAb2
	saVolFM		$FD
	dc.b nAb2
	saVolFM		$03
	dc.b nAb2, nAb2, nAb2, nAb2
	saVolFM		$FD
	dc.b nG2
	saVolFM		$03
	dc.b nG2, nG2
	saVolFM		$FD
	dc.b nG2
	saVolFM		$03
	dc.b nAb2, nAb2
	saVolFM		$FD
	dc.b nBb2
	saVolFM		$03
	dc.b nG2
	saVolFM		$FD
	saVolFM		$01
	sNoteTimeOut	$00
	sPatFM		$04
	sCall		Credits1_Call2
	sCall		Credits1_Call2
	sPatFM		$01
	sCall		Credits1_Call2
	dc.b nC1, sHold, $30, sHold, $30, sHold, $30
	sPatFM		$07
	dc.b nC1, sHold, $30, sHold, $30, sHold, $30
	sStop	

Credits1_Call3:
	dc.b nG5, $30, sHold, $18, nC6, nBb5, $30, sHold
	dc.b $18, nG5, $0C, nF5, nG5, $30, sHold, $18
	dc.b nEb5, $0C, nG5, nF5, $30, sHold, $18, nEb5
	dc.b $0C
	sRet	

Credits1_Call2:
	dc.b nAb2, $30, sHold, $30, nG2, sHold, $30, nF2
	dc.b sHold, $30, nG2, sHold, $30
	sRet	

Credits1_FM3:
	sPatFM		$05
	dc.b nC5, $18, nF5, nC6, nBb5, nBb4, nEb5, nEb6
	dc.b nD6, nC5, nF5, nC6, nBb5, nBb4, nEb5, nEb6
	dc.b nD6, nC5, nF5, nC6, nBb5, nBb4, nEb5, nEb6
	dc.b nD6, nC5, nF5, nC6, nBb5, nBb4, nEb5, nEb6
	dc.b nD6, nC5, nF5, nC6, nBb5, nBb4, nEb5, nEb6
	dc.b nD6, nC5, nF5, nC6, nBb5, nBb4, nEb5, nEb6
	dc.b nD6
	sPatFM		$08
	ssModZ80	$12, $02, $02, $02
	saVolFM		$FA
	dc.b nC5, $24, nF5, nG5, $18, nBb4, $30, sHold
	dc.b $0C, nF4, nG4, nBb4, nC5, $24, nD5, nEb5
	dc.b $18, nD5, $24, nEb5, nF5, $18, nG5, $30
	dc.b sHold, $18, nC6, nBb5, $30, sHold, $18, nG5
	dc.b $0C, nF5, nG5, $30, sHold, $18, nEb5, $0C
	dc.b nG5, nF5, $30, sHold, $18, nEb5, $0C, nD5

Credits1_Loop11:
	dc.b nC5, $06, sHold
	saVolFM		$02
	sLoop		$00, $0E, Credits1_Loop11
	saVolFM		$F8
	sPatFM		$06
	saDetune	$02
	ssModZ80	$10, $02, $02, $02
	sPan		spRight, $00
	dc.b nG5, $18, nBb4, $30, sHold, $0C, nF4, nG4
	dc.b nBb4, nC5, $24, nD5, nEb5, $18, nD5, $24
	dc.b nEb5, nF5, $18, nG5, $30, sHold, $18, nC6
	dc.b nBb5, $30, sHold, $18, nG5, $0C, nF5, nG5
	dc.b $30, sHold, $18, nEb5, $0C, nG5, nF5, $30
	dc.b sHold, $18, nEb5, $0C
	saDetune	$00
	sPan		spCenter, $00
	saVolFM		$F4
	sPatFM		$0C
	dc.b nC5, $30, sHold, $30, sHold, nC5, $30, sHold
	dc.b $30
	saVolFM		$0C
	sPan		spCenter, $00

Credits1_Loop12:
	dc.b nRst, $60
	sLoop		$00, $06, Credits1_Loop12
	saVolFM		$FA
	sPatFM		$02
	dc.b nC5, $24, nF5, nC6, $18, nRst, nEb5, nEb6
	dc.b nD6, nG5, $12, nAb5, nF5, $0C, nG5, $12
	dc.b nEb5, nF5, $0C, nD5, $12, nEb5, nD5, $0C
	dc.b nC5, $12, nD5, nBb5, $0C, nRst, $18, nEb5
	dc.b nEb6, nD6, nRst, nF5, nC6, nBb5, nG5, $03
	dc.b nAb5, $0F, nG5, $12, nEb5, $0C, nF5, $12
	dc.b nEb5, nD5, $0C, nC5, $12, nG5, nBb4, $0C
	dc.b nG4, $12, nF4, nBb4, $0C
	saVolFM		$FC
	sPatFM		$09
	dc.b nC5, $24, nG4, nG5, $18, nF5, $30, nG5
	dc.b nCs5, $03, nD5, $30, sHold, $2D, sHold, $30
	dc.b sHold, $30, nC5, $0C, nG4, nBb4, nC5, $24
	dc.b nG5, $18, nF5, $30, nG5, nA5, $03, nBb5
	dc.b $30, sHold, $2D, sHold, $30, sHold, $30
	ssModZ80	$0C, $02, $02, $02

Credits1_Loop13:
	dc.b nG6, $0C, sHold
	saVolFM		$02
	sLoop		$00, $10, Credits1_Loop13
	saVolFM		$E0
	ssModZ80	$06, $02, $02, $02
	saVolFM		$04
	sPatFM		$0A
	dc.b nF5, $30, sHold, $30, nG5, $03, nAb5, sHold
	dc.b nBb5, $30, sHold, $2A, nC5, $18, nG5, nG6
	dc.b nC6, sHold, nC6, $30, sHold, $30, nC5, $18
	dc.b nG5, nF5, nF6, nEb5, $30, nF5
	sPatFM		$03
	ssModZ80	$06, $02, $02, $02
	dc.b nC6, nC7, $0C, nBb6, nF6, nD6, nC6, $30
	dc.b nD6
	ssModZ80	$30, $02, $04, $04
	dc.b nEb6, sHold, $30, nF6, sHold, $30, nG6, sHold
	dc.b $30, sHold, $30, sHold, $30, nRst, $30, nG5
	dc.b nF5, nD5
	ssModZ80	$06, $02, $02, $02
	dc.b nC5, nC6, $0C, nBb5, nF5, nD5, nC5, $30
	dc.b nD5
	ssModZ80	$30, $02, $02, $02
	dc.b nEb5, sHold, $30, nF5, sHold, $30, nG5, sHold
	dc.b $30, sHold, $30, sHold, $30
	sPatFM		$07
	dc.b nG1, $30, sHold, $30, sHold, $30, sHold, $30
	sStop	

Credits1_FM4:
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst
	saTranspose	$F4

Credits1_Loop8:
	sPatFM		$0B
	sCall		Credits1_Call1
	sLoop		$00, $02, Credits1_Loop8
	saTranspose	$0C
	sPan		spCenter, $00
	sPatFM		$01
	dc.b nEb3, $24, $0C, nRst, $30, nRst, $18, nD3
	dc.b $24, nD3, nEb3, $30, sHold, $30, nD3, nBb2

Credits1_Loop9:
	dc.b nEb3, $30, sHold, $30, nRst, $18, nBb3, $24
	dc.b nBb3, nEb3, $30, sHold, $30, nD3, nD3
	sLoop		$00, $03, Credits1_Loop9
	sPan		spLeft, $00
	sNoteTimeOut	$0B

Credits1_Loop10:
	dc.b nEb3, $18
	saVolFM		$03
	dc.b nEb3, nEb3
	saVolFM		$FD
	dc.b nEb3
	saVolFM		$03
	dc.b nEb3, nEb3, nEb3, nEb3
	saVolFM		$FD
	dc.b nD3
	saVolFM		$03
	dc.b nD3, nD3
	saVolFM		$FD
	dc.b nD3
	saVolFM		$03
	dc.b nEb3, nEb3
	saVolFM		$FD
	dc.b nF3
	saVolFM		$03
	dc.b nD3
	saVolFM		$FD
	sLoop		$00, $07, Credits1_Loop10
	dc.b nEb3, $18
	saVolFM		$03
	dc.b nEb3, nEb3
	saVolFM		$FD
	dc.b nEb3
	saVolFM		$03
	dc.b nEb3, nEb3, nEb3, nEb3
	saVolFM		$FD
	dc.b nD3
	saVolFM		$03
	dc.b nD3, nD3
	saVolFM		$FD
	dc.b nD3
	saVolFM		$03
	dc.b nEb3, nEb3
	saVolFM		$FD
	dc.b nF3
	saVolFM		$03
	dc.b nD3
	saVolFM		$FD
	sNoteTimeOut	$00
	sPatFM		$04
	saTranspose	$F4
	saVolFM		$01
	dc.b nEb3, $30, sHold, $30, nD3, sHold, $30, nEb3
	dc.b sHold, $30, nD3, sHold, $30
	sCall		Credits1_Call1
	sPatFM		$01
	saTranspose	$0C
	sCall		Credits1_Call1
	dc.b nG2, sHold, $30, sHold, $30, sHold, $30
	sPatFM		$07
	dc.b nG2, $30, sHold, $30, sHold, $30, sHold, $30
	sStop	

Credits1_Call1:
	dc.b nEb3, sHold, $30, nBb3, sHold, $30, nEb3, sHold
	dc.b $30, nD3, sHold, $30
	sRet	

Credits1_FM5:
	sPatFM		$05
	saVolFM		$0A
	saTranspose	$F4
	dc.b nRst, $0C, nC5, $18, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, $0C
	saVolFM		$F6
	saTranspose	$0C
	sPatFM		$01
	sPan		spCenter, $00
	dc.b nC3, $24, $0C, nRst, $30, nRst, $18, nG2
	dc.b $24, nG2, nC3, $30, sHold, $30, nG2, nG2

Credits1_Loop6:
	dc.b nC3, $30, sHold, $30, nRst, $18, nD3, $24
	dc.b nD3, nC3, $30, sHold, $30, nG2, nBb2
	sLoop		$00, $03, Credits1_Loop6
	sPan		spRight, $00
	sNoteTimeOut	$0B

Credits1_Loop7:
	dc.b nC3, $18
	saVolFM		$03
	dc.b nC3, nC3
	saVolFM		$FD
	dc.b nC3
	saVolFM		$03
	dc.b nC3, nC3, nC3, nC3
	saVolFM		$FD
	dc.b nBb2
	saVolFM		$03
	dc.b nBb2, nBb2
	saVolFM		$FD
	dc.b nBb2
	saVolFM		$03
	dc.b nC3, nC3
	saVolFM		$FD
	dc.b nC3
	saVolFM		$03
	dc.b nBb2
	saVolFM		$FD
	sLoop		$00, $07, Credits1_Loop7
	dc.b nC3, $18
	saVolFM		$03
	dc.b nC3, nC3
	saVolFM		$FD
	dc.b nC3
	saVolFM		$03
	dc.b nC3, nC3, nC3, nC3
	saVolFM		$FD
	dc.b nBb2
	saVolFM		$03
	dc.b nBb2, nBb2
	saVolFM		$FD
	dc.b nBb2
	saVolFM		$03
	dc.b nC3, nC3
	saVolFM		$FD
	dc.b nC3
	saVolFM		$03
	dc.b nBb2
	saVolFM		$FD
	sNoteTimeOut	$00
	sPatFM		$04
	saVolFM		$01
	saTranspose	$F4
	dc.b nC3, $30, sHold, $30, nBb2, sHold, $30, nC3
	dc.b sHold, $30, nBb2, sHold, $30, nAb2, sHold, $30
	dc.b nD3, sHold, $30, nC3, sHold, $30, nBb2, sHold
	dc.b $30
	sPatFM		$01
	saTranspose	$0C
	dc.b nC3, sHold, $30, nD3, sHold, $30, nC3, sHold
	dc.b $30, nBb2, sHold, $30, nC2, sHold, $30, sHold
	dc.b $30, sHold, $30
	sPatFM		$07
	dc.b nC1, sHold, $30, sHold, $30, sHold, $30
	sStop	

Credits1_PSG1:
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst
	sVolEnvPSG	VolEnv_03
	saVolPSG	$03
	dc.b nRst, nRst, nBb4, $18, nEb5, nEb6, nD6, nC5
	dc.b nF5, nC6, nBb5, nBb4, nEb5, nD5, nEb5, nC5
	dc.b nF5, nC6, nBb5, nBb4, nEb5, nEb6, nD6, nC5
	dc.b nF5, nC6, nBb5, nBb4, nEb5, nD5, nEb5, nC5
	dc.b $18, nF5, nC6, nBb5, nBb4, nEb5, nEb6, nD6
	dc.b nC5, nF5, nC6, nBb5, nBb4, nEb5, nD5, nEb5
	dc.b nC5, nF5, nC6, nBb5, nBb4, nEb5, nEb6, nD6
	dc.b nC5, nF5, nC6, nBb5, nBb4, nEb5, nEb6, nD6
	sVolEnvPSG	VolEnv_00
	saVolPSG	$03

Credits1_Loop5:
	dc.b nC5, $0C, sHold
	saVolPSG	$01
	sLoop		$00, $08, Credits1_Loop5
	saVolPSG	$F5
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nC5
	dc.b $24, nF5, nC6, $18, nRst, nEb5, nEb6, nD6
	dc.b nG5, $12, nAb5, nF5, $0C, nG5, $12, nEb5
	dc.b nF5, $0C, nD5, $12, nEb5, nD5, $0C, nC5
	dc.b $12, nD5, nBb5, $0C, nRst, $18, nEb5, nEb6
	dc.b nD6, nRst, nF5, nC6, nBb5, nG5, $03, nAb5
	dc.b $0F, nG5, $12, nEb5, $0C, nF5, $12, nEb5
	dc.b nD5, $0C, nC5, $12, nG5, nBb4, $0C, nG4
	dc.b $12, nF4, nBb4, $0C
	sVolEnvPSG	VolEnv_00
	dc.b nC5, $24, nG4, nG5, $18, nF5, $30, nG5
	dc.b nCs5, $03, nD5, $30, sHold, $2D, sHold, $30
	dc.b sHold, $30, nC5, $0C, nG4, nBb4, nC5, $24
	dc.b nG5, $18, nF5, $30, nG5, nA5, $03, nBb5
	dc.b $30, sHold, $2D, sHold, $30, sHold, $30
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FE
	dc.b nC5, nC6, nF5, nG6
	sVolEnvPSG	VolEnv_00
	saVolPSG	$02
	dc.b nF5, sHold, $30, nG5, $03, nAb5, sHold, nBb5
	dc.b $30, sHold, $2A, nC5, $18, nG5, nG6, nC6
	dc.b sHold, nC6, $30, sHold, $30, nC5, $18, nG5
	dc.b nF5, nF6, nEb5, $30, nF5
	saVolPSG	$FE
	sVolEnvPSG	VolEnv_00
	dc.b nC6, nC7, $0C, nBb6, nF6, nD6, nC6, $30
	dc.b nD6, nEb6, sHold, $30, nF6, sHold, $30, nG6
	dc.b sHold, $30, sHold, $30, sHold, $30, nRst, $30
	dc.b nG5, nF5, nD5, nC5, nC6, $0C, nBb5, nF5
	dc.b nD5, nC5, $30, nD5, nEb5, sHold, $30, nF5
	dc.b sHold, $30, nG5, sHold, $30, sHold, $30, sHold
	dc.b $30
	sStop	

Credits1_PSG2:
	sVolEnvPSG	VolEnv_03
	saVolPSG	$05
	saDetune	$01
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $12, nRst, $30, nRst, nBb4, $18
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nD5, nEb5, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5, nBb4
	dc.b nEb5, nD5, nEb5, nC5, $18, nF5, nC6, nBb5
	dc.b nBb4, nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5
	dc.b nBb4, nEb5, nD5, nEb5, nC5, nF5, nC6, nBb5
	dc.b nBb4, nEb5, nEb6, nD6, nC5, nF5, nC6, nBb5
	dc.b nBb4, nEb5, nEb6, nD6, nC5, $30, sHold, $30
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b $06
	saDetune	$00
	sVolEnvPSG	VolEnv_00
	dc.b nC5, $24, nF5, nC6, $18, nRst, nEb5, nEb6
	dc.b nD6, nG5, $12, nAb5, nF5, $0C, nG5, $12
	dc.b nEb5, nF5, $0C, nD5, $12, nEb5, nD5, $0C
	dc.b nC5, $12, nD5, nBb5, $0C, nRst, $18, nEb5
	dc.b nEb6, nD6, nRst, nF5, nC6, nBb5, nG5, $03
	dc.b nAb5, $0F, nG5, $12, nEb5, $0C, nF5, $12
	dc.b nEb5, nD5, $0C, nC5, $12, nG5, nBb4, $0C
	dc.b nG4, $12, nF4, nBb4, $06
	sVolEnvPSG	VolEnv_00
	saDetune	$01
	dc.b nC5, $24, nG4, nG5, $18, nF5, $30, nG5
	dc.b nCs5, $03, nD5, $30, sHold, $2D, sHold, $30
	dc.b sHold, $30, nC5, $0C, nG4, nBb4, nC5, $24
	dc.b nG5, $18, nF5, $30, nG5, nA5, $03, nBb5
	dc.b $30, sHold, $2D, sHold, $30, sHold, $1F
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FF
	dc.b nRst, $18, nC5, $30, nC6, nF5, nG6, $18
	saDetune	$00
	sVolEnvPSG	VolEnv_00
	saVolPSG	$02
	dc.b nF5, $30, sHold, $30, sHold, nF5, nG5, $03
	dc.b nAb5, sHold, nBb5, $2A, nG5, $30, sHold, $30
	dc.b sHold, $18, nG5, nG6, nC6, nRst, $0C, nC5
	dc.b $18, nG5, nF5, nF6, $0C, nC5, $30, nD5
	saVolPSG	$FE
	sVolEnvPSG	VolEnv_00
	dc.b nRst, $0C, nC6, $30, nC7, $0C, nBb6, nF6
	dc.b nD6, nC6, $30, nD6, nEb6, sHold, $30, nF6
	dc.b sHold, $30, nG6, sHold, $30, sHold, $30, sHold
	dc.b $30, nRst, $30, nG5, nF5, nD5, nC5, nC6
	dc.b $0C, nBb5, nF5, nD5, nC5, $30, nD5, nEb5
	dc.b sHold, $30, nF5, sHold, $30, nG5, sHold, $30
	dc.b sHold, $30, sHold, $24
	sStop	

Credits1_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_0A

Credits1_Loop1:
	dc.b nRst, $30, nRst
	sLoop		$00, $0C, Credits1_Loop1
	dc.b nRst, $24, nAb5, $30, sHold, $0C, sHold, $30
	dc.b sHold, $30
	sVolEnvPSG	VolEnv_02

Credits1_Loop2:
	dc.b nA5, $18, $18, $18, $18, $18, $18, $18
	dc.b $18
	sLoop		$00, $07, Credits1_Loop2

Credits1_Loop3:
	dc.b nRst, $30, nRst, nRst, nRst
	sLoop		$00, $08, Credits1_Loop3

Credits1_Loop4:
	dc.b nA5, $18, $18, $18, $18, $18, $18, $18
	dc.b $18
	sLoop		$00, $07, Credits1_Loop4
	dc.b nA5, $18, $18, $18, $18, $18, $18, $30
	sVolEnvPSG	VolEnv_0A
	dc.b nAb5, $30, sHold, $30, nRst, $30, nRst, nRst
	dc.b nRst, nRst, $18, nAb5, $24, nAb5, $18, nAb5
	dc.b $0C, sHold, $30, sHold, $30
	sStop	

Credits1_DAC:
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst
Credits1_Loop20:
	dc.b dKick, $24, $30, nRst, $0C, nRst, $0C, $18
	dc.b $30, nRst, $0C
	sLoop		$00, $03, Credits1_Loop20
	dc.b dKick, $24, $30, nRst, $0C, nRst, $0C, $18
	dc.b dKick, dHighTom, dLowTom, $0C, dKick, $24, dSnare, dCrashCymbal
	dc.b $18, nRst, dKick, dSnare, $12, dMidTom, dLowTom, $0C
	dc.b dKick, $24, $0C, dSnare, $30, nRst, $0C, dKick
	dc.b $18, $0C, dSnare, $30

Credits1_Loop21:
	dc.b dKick, $24, $0C, dSnare, $30, nRst, $0C, dKick
	dc.b $18, $0C, dSnare, $30
	sLoop		$00, $02, Credits1_Loop21
	dc.b dKick, $24, $0C, dSnare, $30, nRst, $0C, dKick
	dc.b $18, $0C, dSnare, $30, dKick, $24, $0C, dSnare
	dc.b $30, nRst, $0C, dKick, $18, $0C, dSnare, $30
	dc.b dKick, $24, $0C, dSnare, $30, nRst, $0C, dKick
	dc.b $18, $0C, dSnare, $30, dKick, $24, $0C, dSnare
	dc.b $30, nRst, $0C, dKick, $18, $0C, dSnare, $18
	dc.b $0C, dSnare, dKick, dKick, $30, nRst, $0C, dKick
	dc.b dKick, nRst, $30, nRst, dKick, $0C, $30, nRst
	dc.b $0C, dKick, dKick, nRst, $30, dKick, dKick, $0C
	dc.b $30, nRst, $0C, dKick, dKick, nRst, $30, nRst
	dc.b dKick, $0C, $30, nRst, $0C, dKick, dKick, nRst
	dc.b $30, dHighTom, $12, dMidTom, dLowTom, $0C, dKick, dKick
	dc.b $30, nRst, $0C, dKick, dKick, nRst, $30, nRst
	dc.b dKick, $0C, $30, nRst, $0C, dKick, dKick, nRst
	dc.b $30, dKick, dKick, $0C, $30, nRst, $0C, dKick
	dc.b dKick, nRst, $30, nRst, dKick, $0C, $30, nRst
	dc.b $0C, dKick, dKick, nRst, $30, dMidTom, $12, dMidTom
	dc.b dLowTom, $0C, dKick, $24, $0C, dSnare, $30, nRst
	dc.b $0C, dKick, $18, $0C, dSnare, $30

Credits1_Loop22:
	dc.b dKick, $24, $0C, dSnare, $30, nRst, $0C, dKick
	dc.b $18, $0C, dSnare, $30
	sLoop		$00, $02, Credits1_Loop22
	dc.b dKick, $24, $0C, dSnare, $30, nRst, $0C, dKick
	dc.b $18, $0C, dSnare, $18, dKick, $0C, dCrashCymbal, dKick
	dc.b $24, $0C, dSnare, $30, nRst, $0C, dKick, $18
	dc.b $0C, dSnare, $30, dKick, $24, $0C, dSnare, $30
	dc.b nRst, $0C, dKick, $18, $0C, dSnare, $30, dKick
	dc.b $24, $0C, dSnare, $30, nRst, $0C, dKick, $18
	dc.b $0C, dSnare, $30, dKick, $24, $0C, $30, nRst
	dc.b $0C, $18, $0C, dSnare, $12, dMidTom, dLowTom, $0C
	dc.b dKick, $24, $0C, dSnare, $30, nRst, $0C, dKick
	dc.b $18, $0C, dSnare, $30, dKick, $24, $0C, dSnare
	dc.b $30, nRst, $18, dSnare, $24, dSnare, $18, dSnare
	dc.b $0C, dKick, $24, $0C, dSnare, $30, nRst, $0C
	dc.b dKick, $18, $0C, dSnare, $30, dKick, dSnare, dKick
	dc.b $24, $0C, dSnare, $30, dKick, $0C, $30, nRst
	dc.b $24, dKick, $30, nRst, $30, dKick, $0C, $30
	dc.b nRst, $24, dKick, $30, nRst, $30
	sStop	

Credits1_Patches:
	; Patch $00
	; $35
	; $10, $51, $00, $11,	$5F, $5F, $5F, $5F
	; $0E, $1F, $1F, $1F,	$00, $00, $00, $00
	; $46, $07, $07, $07,	$13, $80, $98, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$01, $00, $05, $01
	spMultiple	$00, $00, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $1F, $1F, $1F
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$04, $00, $00, $00
	spReleaseRt	$06, $07, $07, $07
	spTotalLv	$13, $18, $00, $00

	; Patch $01
	; $3D
	; $01, $02, $02, $02,	$1F, $1F, $9F, $1F
	; $08, $05, $02, $05,	$00, $00, $00, $00
	; $12, $17, $17, $17,	$1F, $97, $AD, $88
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $02, $05, $05
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$02, $07, $07, $07
	spTotalLv	$1F, $2D, $17, $08

	; Patch $02
	; $25
	; $28, $21, $34, $30,	$DF, $1F, $1F, $DF
	; $04, $05, $04, $01,	$04, $04, $04, $02
	; $F7, $07, $17, $AB,	$23, $E0, $8F, $80
	spAlgorithm	$05
	spFeedback	$04
	spDetune	$02, $03, $02, $03
	spMultiple	$08, $04, $01, $00
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $05, $01
	spSustainRt	$04, $04, $04, $02
	spSustainLv	$0F, $01, $00, $0A
	spReleaseRt	$07, $07, $07, $0B
	spTotalLv	$23, $0F, $60, $00

	; Patch $03
	; $3D
	; $02, $02, $01, $02,	$14, $0E, $8C, $0E
	; $08, $0A, $07, $0A,	$00, $06, $06, $06
	; $1F, $1F, $1F, $1F,	$1A, $84, $84, $84
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $01, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$14, $0C, $0E, $0E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $07, $0A, $0A
	spSustainRt	$00, $06, $06, $06
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $04, $04, $04

	; Patch $04
	; $3A
	; $32, $02, $02, $72,	$9F, $8A, $4F, $4D
	; $09, $09, $00, $03,	$00, $00, $00, $00
	; $15, $F5, $05, $08,	$19, $1F, $19, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $00, $00, $07
	spMultiple	$02, $02, $02, $02
	spRateScale	$02, $01, $02, $01
	spAttackRt	$1F, $0F, $0A, $0D
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $00, $09, $03
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $00, $0F, $00
	spReleaseRt	$05, $05, $05, $08
	spTotalLv	$19, $19, $1F, $00

	; Patch $05
	; $0A
	; $04, $73, $18, $31,	$1F, $1F, $1F, $1F
	; $0F, $0F, $0F, $0F,	$0D, $0E, $0D, $0E
	; $1F, $0F, $1F, $0F,	$33, $04, $35, $80
	spAlgorithm	$02
	spFeedback	$01
	spDetune	$00, $01, $07, $03
	spMultiple	$04, $08, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0F, $0F, $0F
	spSustainRt	$0D, $0D, $0E, $0E
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $35, $04, $00

	; Patch $06
	; $02
	; $3C, $32, $55, $51,	$1F, $98, $1F, $9F
	; $0F, $11, $0E, $11,	$0E, $05, $08, $05
	; $5F, $0F, $6F, $0F,	$2D, $2D, $2F, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$03, $05, $03, $05
	spMultiple	$0C, $05, $02, $01
	spRateScale	$00, $00, $02, $02
	spAttackRt	$1F, $1F, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0E, $11, $11
	spSustainRt	$0E, $08, $05, $05
	spSustainLv	$05, $06, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2D, $2F, $2D, $00

	; Patch $07
	; $3D
	; $01, $02, $02, $02,	$1F, $1F, $9F, $1F
	; $08, $05, $02, $05,	$00, $00, $00, $00
	; $17, $19, $19, $19,	$1F, $97, $AD, $88
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $02, $05, $05
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$07, $09, $09, $09
	spTotalLv	$1F, $2D, $17, $08

	; Patch $08
	; $2C
	; $11, $21, $01, $31,	$1F, $0C, $17, $0C
	; $14, $08, $02, $08,	$04, $05, $02, $05
	; $1F, $1A, $1D, $1C,	$1A, $89, $2C, $86
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$01, $00, $02, $03
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $17, $0C, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$14, $02, $08, $08
	spSustainRt	$04, $02, $05, $05
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0D, $0A, $0C
	spTotalLv	$1A, $2C, $09, $06

	; Patch $09
	; $3D
	; $01, $02, $02, $02,	$14, $0E, $8C, $0E
	; $08, $05, $02, $05,	$00, $00, $00, $00
	; $12, $17, $17, $17,	$1F, $97, $AD, $88
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$14, $0C, $0E, $0E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $02, $05, $05
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$02, $07, $07, $07
	spTotalLv	$1F, $2D, $17, $08

	; Patch $0A
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

	; Patch $0B
	; $3A
	; $32, $02, $02, $72,	$9F, $8A, $4F, $4D
	; $03, $03, $00, $03,	$00, $00, $00, $00
	; $15, $F5, $05, $08,	$21, $1F, $19, $8F
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $00, $00, $07
	spMultiple	$02, $02, $02, $02
	spRateScale	$02, $01, $02, $01
	spAttackRt	$1F, $0F, $0A, $0D
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$03, $00, $03, $03
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $00, $0F, $00
	spReleaseRt	$05, $05, $05, $08
	spTotalLv	$21, $19, $1F, $0F

	; Patch $0C
	; $02
	; $3C, $32, $55, $51,	$1F, $98, $1F, $9F
	; $0F, $11, $0E, $11,	$0C, $05, $06, $08
	; $5F, $0F, $6F, $0F,	$2D, $2D, $2F, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$03, $05, $03, $05
	spMultiple	$0C, $05, $02, $01
	spRateScale	$00, $00, $02, $02
	spAttackRt	$1F, $1F, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0E, $11, $11
	spSustainRt	$0C, $06, $05, $08
	spSustainLv	$05, $06, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2D, $2F, $2D, $00
