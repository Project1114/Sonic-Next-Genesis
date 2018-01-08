DD1_Header:
	sHeaderInit	; Z80 offset is $9979
	sHeaderPatch	DD1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$03, $1C
	sHeaderDAC	DD1_DAC
	sHeaderFM	DD1_FM1, $F4, $14
	sHeaderFM	DD1_FM2, $E8, $09
	sHeaderFM	DD1_FM3, $F4, $13
	sHeaderFM	DD1_FM4, $F4, $15
	sHeaderFM	DD1_FM5, $F4, $15
	sHeaderPSG	DD1_PSG1, $C4, $04, $00, VolEnv_00
	sHeaderPSG	DD1_PSG2, $C4, $04, $00, VolEnv_00
	sHeaderPSG	DD1_PSG3, $00, $01, $00, VolEnv_00

DD1_FM1:
DD1_Jump4:
	sPatFM		$0B
	ssModZ80	$01, $01, $E0, $3C
	saVolFM		$F7
	dc.b nE2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nE2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nE2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nE2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	sModOff	
	saVolFM		$09

DD1_Jump5:
	saVolFM		$FC
	sPatFM		$0A
	saTranspose	$F4
	dc.b nA5, nG5, nA5, nC6, $04, nD6, nE6, nE6
	dc.b $02, nD6, $04, nE6, nG6, nA6, nG6, nE6
	dc.b $02, nG6, $04, nE6, nE6, nD6, $02, nC6
	dc.b nD6, nEb6, $04, nE6, nD6, nC6, $02, nD6
	dc.b $04, nA5, nA5, nG5, $02, nAb5, nA5, nC6
	dc.b nD6, nE6, $04, nD6, nC6, $02, nD6, $04
	dc.b nA5, nC6, nA5, $02, nE6, nEb6, nD6, nC6
	dc.b nA5, nG5, nA5, nE5, nG5, nA5, nC6, nA5
	dc.b nC6, nD6, nE6, nD6, nE6, nG6, nE6, nG6
	dc.b nA6, nG6, nA6, nE6, nG6, nA6, nC7, nA6
	dc.b nC7, nA6, nG6, nA6, nC7, nA6, nD7, nA6
	dc.b nE7, nEb7, nD7, nC7, nD7, nC7, nA6, nC7
	dc.b nA6, nG6, nAb6, nA6, nAb6, nG6, nE6, nG6
	dc.b nE6, nG6, nE6, nD6, nEb6, nE6, nEb6, nD6
	dc.b nC6, nD6, nC6, nA5, nC6, nD6, $04, nEb6
	dc.b $02
	saVolFM		$04
	saTranspose	$0C
	sPatFM		$09
	dc.b nE6, $04, nD6, nC6, $02, nD6, $04, nA5
	dc.b nA5, nG5, $02, nA5, nC6, nD6, nEb6, nE6
	dc.b $04, nD6, nC6, $02, nD6, $04, nA5, nA5
	dc.b nG5, $02, nAb5, nA5, nC6, nA5, nC6, $04
	dc.b nA5, $02, nC6, $04, nD6, nE6, nE6, nD6
	dc.b $02, nE6, $04, nG6, nA6, $02, nAb6, nG6
	dc.b nE6, nG6, nD6, nEb6, nE6, $04, nD6, nC6
	dc.b nA5, nG5, $02, nC6, $04, nA5, nC6, $02
	dc.b nD6, $04, nE6, nE6, nD6, $02, nE6, $04
	dc.b nG6, nA6, nG6, nA6, $02, nC7, $04, nD7
	dc.b nD7, nC7, $02, nD7, $04, nEb7, nE7, nD7
	dc.b nC7, $02, nD7, $04, nA6, nA6, $02, nG6
	dc.b $04, nA6, nC7, nA6, $02, nG6, nA6, nC7
	dc.b nD7, nE7, nG7, nE7, nA7, $10
	saTranspose	$0C
	saTranspose	$F4
	sPatFM		$02

DD1_Loop7:
	dc.b nA6, $01, nAb6, nG6, nE6
	sLoop		$00, $08, DD1_Loop7

DD1_Loop8:
	dc.b nC7, nA6, nG6, nE6
	sLoop		$00, $08, DD1_Loop8

DD1_Loop9:
	dc.b nD7, nA6, nG6, nE6
	sLoop		$00, $08, DD1_Loop9

DD1_Loop10:
	dc.b nG7, nD7, nC7, nA6
	sLoop		$00, $04, DD1_Loop10
	dc.b nA7, nD7, nC7, nA6, nA7, nD7, nC7, nA6
	dc.b nA7, nE7, nD7, nA6, nA7, nE7, nD7, nA6
	saVolFM		$F7
	ssModZ80	$01, $6F, $83, $3C
	sPatFM		$0B

DD1_Loop11:
	dc.b nE2, $04
	saVolFM		$05
	dc.b $02, $02
	saVolFM		$FB
	dc.b nE2, $04
	saVolFM		$05
	dc.b $02, $02
	saVolFM		$FB
	dc.b nE2, $04
	saVolFM		$05
	dc.b $02, $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FE
	dc.b $02
	saVolFM		$FE
	saVolFM		$02
	dc.b nE2, $04
	saVolFM		$05
	dc.b $02, $02
	saVolFM		$FB
	dc.b nE2, $04
	saVolFM		$05
	dc.b $02, $02
	saVolFM		$FB
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	saVolFM		$FE
	saVolFM		$04
	saVolFM		$05
	sLoop		$00, $04, DD1_Loop11
	saVolFM		$09
	sModOff	
	sJump		DD1_Jump5

DD1_FM2:
	dc.b nRst, $20
	sPatFM		$01

DD1_Loop17:
DD1_Jump8:
	dc.b nA4, $02, nA3, nA4, nA5, nA4, nA3, nA4
	dc.b nA5
	sLoop		$00, $04, DD1_Loop17

DD1_Loop18:
	dc.b nBb4, $02, nBb3, nBb4, nBb5, nBb4, nBb3, nBb4
	dc.b nBb5
	sLoop		$00, $04, DD1_Loop18

DD1_Loop19:
	dc.b nA4, $02, nA3, nA4, nA5, nA4, nA3, nA4
	dc.b nA5
	sLoop		$00, $04, DD1_Loop19

DD1_Loop20:
	dc.b nG4, $02, nG3, nG4, nG5, nG4, nG3, nG4
	dc.b nG5
	sLoop		$00, $04, DD1_Loop20
	dc.b nF4, nF3, nF4, nF5, nF4, nF3, nF4, nF5
	dc.b nF4, nF3, nF4, nF5, nF4, nF3, nF4, nF5
	dc.b nG4, nG3, nG4, nG5, nG4, nG3, nG4, nG5
	dc.b nG4, nG3, nG4, nG5, nG4, nG3, nG4, nG5
	dc.b nG4, nA4, nA4, nA4, $04, $04, nG4, $02
	dc.b nA4, $04, nE4, nG4, $02, nA4, $04, $04
	dc.b nA4, $04, nG4, $02, nA4, $04, nC5, nD5
	dc.b nC5, nA4, $02, nC5, $06, nF4, $02, nF3
	dc.b nF4, nF5, nF4, nF3, nF4, nF5, nF4, nF3
	dc.b nF4, nF5, nF4, nF3, nF4, nF5, nE4, nE3
	dc.b nE4, nE5, nE4, nE3, nE4, nE5, nG4, nG3
	dc.b nG4, nG5, nG4, nG3, nG4, nG5, nA4, nA3
	dc.b nA4, nA5, nA4, nA3, nA4, nA5, nA4, nA3
	dc.b nA4, nA5, nA4, nA3, nA4, nA5, nA4, nG4
	dc.b nA4, nC5, $04, nD5, nE5, nG4, nA4, $08
	dc.b nE5, $02, nA4, $02, nA5, nA4, nA4, $04
	dc.b $04, $04, $04, $04, $02, nE4, nG4, nA4
	dc.b $02, nA5, nA4, nA4, $04, $04, $04, $04
	dc.b $02, $02, $02, nE4, nG4, nA4, $02, nA5
	dc.b nA4, nA4, $04, $04, $04, $04, $02, $02
	dc.b $02, nE4, nG4, nA4, $02, nA5, nA4, nA4
	dc.b $04, $04, $04, nA5, $02, nG5, nE5, nG5
	dc.b nE5, nD5, nE5, nA3, $10, $06, $02, nE3
	dc.b $04, nG3, nA3, $10, $02, $04, $02, nE3
	dc.b $04, nG3, nA3, $10, $02, $04, $02, nE3
	dc.b $04, nG3, nRst, $04, nA3, $06, nC4, $04
	dc.b nD4, $02, nE4, $04, nD4, nC4, nD4, nA4
	dc.b $08
	sPatFM		$08
	ssModZ80	$01, $01, $EE, $32
	saVolFM		$FA
	dc.b nE4, $08
	saVolFM		$06
	sModOff	
	sPatFM		$01
	dc.b nA4, $06, $02, nE4, $04, nG4, nA4, $08
	sPatFM		$08
	ssModZ80	$01, $01, $EE, $32
	saVolFM		$FA
	dc.b nE4, $08
	saVolFM		$06
	sModOff	
	sPatFM		$01
	dc.b nA4, $02, $04, $02, nE4, $04, nG4, nA4
	dc.b $08
	sPatFM		$08
	ssModZ80	$01, $01, $EE, $32
	saVolFM		$FA
	dc.b nE4, $08
	saVolFM		$06
	sModOff	
	sPatFM		$01
	dc.b nA4, $02, $04, $02, nE4, $04, nG4, nRst
	dc.b $04, nA4, $06, nC5, $04, nD5, $02, nE5
	dc.b $04, nD5, nC5, nD5
	sJump		DD1_Jump8

DD1_FM3:
	dc.b nRst, $20
DD1_Jump7:
	saTranspose	$F4
	saVolFM		$FE
	sPatFM		$07
	sPan		spRight, $00

DD1_Loop15:
	dc.b nA4, $04, nG4, nA4, nE4, $02, nG4, $04
	dc.b nA4, nG4, $02, nA4, $04, nE4, $02, nG4
	dc.b nA4, $04, nG4, nA4, nE4, $02, nG4, $04
	dc.b nA4, nG4, $02, nA4, $04, nG4, nG4, $02
	dc.b nA4, nA4, nA4, $04, $04, nG4, $02, $02
	dc.b nA4, nA4, nA4, $04, $04, nG4, $02, $02
	dc.b nA4, nA4, nA4, $04, $04, nG4, $02, $02
	dc.b nA4, nA4, nA4, $04, $04, nG4, $02
	sLoop		$00, $02, DD1_Loop15
	saTranspose	$0C
	sPatFM		$07
	saTranspose	$E8

DD1_Loop16:
	dc.b nA5, nG5, nA5, nC6, $04, nD6, nC6, nA5
	dc.b nG5, $02, nA5, nG5, nAb5, nA5, nA5, nG5
	dc.b nAb5, nA5, $04, nC6, nD6, nC6, nA5, nG5
	dc.b nAb5, $02
	sLoop		$00, $02, DD1_Loop16
	dc.b nA5, nG5, nA5, nC6, $04, nD6, nC6, nA5
	dc.b nG5, $02, nA5, nG5, nAb5, nA5, nA5, nG5
	dc.b nA5, nC6, $04, nD6, nE6, nD6, nC6, nA5
	dc.b nG5, $02, nA5, nG5, nA5, nC6, $04, nD6
	dc.b nA5, nA5, nG5, $02, nA5, $04, nG5, nA5
	dc.b $02, nG5, nA5, nC6, $04, nD6, nE6, nG6
	dc.b nA6, $0A
	saTranspose	$18
	saVolFM		$02
	dc.b nRst, $20, nRst, $20, nRst, $20
	saVolFM		$FA
	sPatFM		$07
	ssModZ80	$00, $01, $0C, $3A
	dc.b nG4, $02, sHold
	ssModZ80	$05, $01, $02, $04
	dc.b nA4, $1E
	saVolFM		$06
	ssModZ80	$01, $01, $E0, $3C
	saVolFM		$F5
	sPan		spRight, $00
	sCall		DD1_Call1
	dc.b nB5, $02, $04, $04, $02
	sCall		DD1_Call1
	dc.b nB5, $01, $01, $02, $02, $02, $02, $02
	sCall		DD1_Call1
	dc.b nB5, $02, $04, $02, $02, $01, nB5
	sCall		DD1_Call1
	dc.b nB5, $02, $04, $04, $02
	sCall		DD1_Call1
	dc.b nB5, $02, $04, $02, $02, $01, nB5
	sCall		DD1_Call1
	dc.b nB5, $02, $01, $01, $02, $02, $02, $02
	sCall		DD1_Call1
	dc.b nB5, $02, $04, $02, $02, $02
	sCall		DD1_Call1
	dc.b nB5, $01, $01, $02, $02, $02, $02, $02
	sModOff	
	saVolFM		$0B
	sJump		DD1_Jump7

DD1_Call1:
	sPatFM		$0B
	saVolFM		$FC
	dc.b nBb2, $06
	saVolFM		$08
	dc.b $06, $04
	saVolFM		$F8
	dc.b $04
	saVolFM		$04
	sPatFM		$0C
	sRet	

DD1_FM4:
	sPan		spLeft, $00
	sPatFM		$0B
	saVolFM		$F0
	ssModZ80	$01, $01, $E0, $3C
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	sPatFM		$0C
	sPan		spRight, $00
	dc.b nB5, nB5, nB5, nB5
	sPan		spLeft, $00

DD1_Loop12:
DD1_Jump6:
	sPatFM		$0B
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	sPatFM		$0C
	sPan		spRight, $00
	dc.b nB5, nB5, nB5, nB5
	sPan		spLeft, $00
	sPatFM		$0B
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b nAb2, $04
	saVolFM		$04
	dc.b $02, $02
	saVolFM		$FC
	dc.b $02
	sPatFM		$0C
	sPan		spRight, $00
	dc.b nB5, nB5, nB5
	sPan		spLeft, $00
	sPatFM		$0B
	sLoop		$00, $0A, DD1_Loop12
	saVolFM		$06
	sPatFM		$0B
	dc.b nAb2, $0E
	saVolFM		$FC
	dc.b $01, $01, $04, $06, $04
	saVolFM		$04
	dc.b $02, $0E
	saVolFM		$F9
	dc.b $01, $01, $04, $02, $02, $02, $04, $01
	dc.b $01
	saVolFM		$07
	dc.b $0E
	saVolFM		$FC
	dc.b $01, $01, $04, $06, $04
	saVolFM		$04
	dc.b $02, $0E
	saVolFM		$FC
	dc.b $01, $01
	saVolFM		$04
	saVolFM		$04

DD1_Loop13:
	saVolFM		$FF
	dc.b $02
	sLoop		$00, $07, DD1_Loop13
	saVolFM		$FF
	dc.b $01, $01
	saVolFM		$04
	dc.b $0E
	saVolFM		$FC
	dc.b $01, $01, $04, $06, $04
	saVolFM		$04
	dc.b $02, $0E
	saVolFM		$F9
	dc.b $01, $01, $04, $06, $04, $01, $01
	saVolFM		$07
	dc.b $0E
	saVolFM		$FC
	dc.b $01, $01, $04, $06, $04
	saVolFM		$04
	dc.b $02, $0E
	saVolFM		$FB
	dc.b $01, $01
	saVolFM		$05
	saVolFM		$FE

DD1_Loop14:
	saVolFM		$FF
	dc.b $02
	saVolFM		$FF
	dc.b $02
	sLoop		$00, $04, DD1_Loop14
	saVolFM		$04
	saVolFM		$00
	sJump		DD1_Jump6

DD1_FM5:
	dc.b nRst, $02
	saVolFM		$02
	sPan		spLeft, $00
	saDetune	$07
	sJump		DD1_Jump4

DD1_PSG1:
	saTranspose	$0C
	dc.b nRst, $20

DD1_Loop6:
DD1_Jump3:
	dc.b nA5, $04, nG5, nA5, nE5, $02, nG5, $04
	dc.b nA5, $06
	saVolPSG	$FF
	dc.b nA6, nA6, $02
	saVolPSG	$01
	dc.b nA5, $04, nG5, nA5, nE5, $02, nG5, $04
	dc.b nA5, $06
	saVolPSG	$FF
	dc.b nA6, nA6, $02
	saVolPSG	$01
	dc.b nA5, $0C, nG5, $04, nA5, $0C, nG5, $04
	dc.b nA5, $0C, nG5, $04, nA5, $0C, nG5, $04
	sLoop		$00, $02, DD1_Loop6
	ssModZ80	$07, $02, $02, $02
	dc.b nA6, $18, nG6, $08, nA6, $10, nC7, $08
	dc.b nD7, nA6, $1C, nG6, $04, nFs6, $08, nD6
	dc.b nE6, nG6, nA6, $18, nC7, $08, nA6, $10
	dc.b nG6, $08, nC7, nA6, $18, nE7, $08, nA7
	dc.b $20
	sModOff	
	dc.b nRst, $20, nRst, $20, nRst, $20, nRst, $20
	dc.b nRst, $20, nRst, $20, nRst, $20, nRst, $20
	dc.b nRst, $20, nRst, $20, nRst, $20, nRst, $20
	sJump		DD1_Jump3

DD1_PSG2:
	saTranspose	$0C
	dc.b nRst, $20

DD1_Jump2:
	saTranspose	$FB

DD1_Loop5:
	dc.b nA5, $04, nG5, nA5, nE5, $02, nG5, $04
	dc.b nA5, $06
	saVolPSG	$FF
	dc.b nA6, nA6, $02
	saVolPSG	$01
	dc.b nA5, $04, nG5, nA5, nE5, $02, nG5, $04
	dc.b nA5, $06
	saVolPSG	$FF
	dc.b nA6, nA6, $02
	saVolPSG	$01
	dc.b nA5, $0C, nG5, $04, nA5, $0C, nG5, $04
	dc.b nA5, $0C, nG5, $04, nA5, $0C, nG5, $04
	sLoop		$00, $02, DD1_Loop5
	saTranspose	$05
	dc.b nRst, $04
	saDetune	$01
	saVolPSG	$03
	dc.b nA6, $18, nG6, $08, nA6, $10, nC7, $08
	dc.b nD7, nA6, $1C, nG6, $04, nFs6, $08, nD6
	dc.b nE6, nG6, nA6, $18, nC7, $08, nA6, $10
	dc.b nG6, $08, nC7, nA6, $18, nE7, $08, nA7
	dc.b $20
	saVolPSG	$FD
	saDetune	$00
	dc.b nRst, $1C, nRst, $20, nRst, $20, nRst, $20
	dc.b nRst, $20, nRst, $20, nRst, $20, nRst, $20
	dc.b nRst, $20, nRst, $20, nRst, $20, nRst, $20
	sJump		DD1_Jump2

DD1_PSG3:
	sNoisePSG	$E7
	dc.b nRst, $20

DD1_Loop1:
DD1_Jump1:
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, $02, $02, $02, $02, $02, $02, $02
	dc.b $02, $02, $02, $02, $02, $02, $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04
	sLoop		$00, $08, DD1_Loop1

DD1_Loop2:
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, $04, nBb5, $02, $02, $02, $02, $04
	dc.b $04, $02, $02, $02, $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04
	sLoop		$00, $07, DD1_Loop2
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, nBb5, $02, $02, $04, $02, $02, $02
	dc.b $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, $02, $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04

DD1_Loop3:
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5
	sVolEnvPSG	VolEnv_03
	dc.b nBb5
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, $02
	dc.b $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, nBb5, nBb5, nBb5, nBb5, nBb5, nBb5
	sVolEnvPSG	VolEnv_03
	dc.b nBb5
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, nBb5, nBb5
	sVolEnvPSG	VolEnv_03
	dc.b nBb5
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, nBb5, $02, $02, $02, $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04
	sLoop		$00, $02, DD1_Loop3

DD1_Loop4:
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, $02, $02, $02, $02, $02, $02, $02
	dc.b $02, $02, $02, $02, $02, $02, $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04
	sLoop		$00, $03, DD1_Loop4
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, $02, $02, $02, $02, $02, $02, $02
	dc.b $02, $02, $02
	sVolEnvPSG	VolEnv_03
	dc.b nBb5, $04
	sVolEnvPSG	VolEnv_02
	dc.b nBb5, $02, $02, nBb5, $04
	sJump		DD1_Jump1

DD1_DAC:
	saVolFM		$00
	dc.b nRst, $18, dHighTom, $02, dMidTom, dLowTom, $04

DD1_Jump9:
	dc.b dKick, $08, dSnare, dKick, $02, $06, dSnare, $08
	dc.b dKick, dSnare, dKick, $02, $06, dSnare, $02, dKick
	dc.b $06, $08, dSnare, dKick, $02, $06, dSnare, $08
	dc.b dKick, dSnare, $06, dKick, $02, $04, dSnare, dSnare
	dc.b $02, $02, dLowTom, $04, dKick, $08, dSnare, dKick
	dc.b $02, $06, dSnare, $08, dKick, dSnare, dKick, $02
	dc.b $06, dSnare, $02, dKick, $06, $08, dSnare, dKick
	dc.b $02, $06, dSnare, $08, dKick, dSnare, $06, $02
	dc.b dKick, $04, dSnare, dHighTom, dMidTom, dKick, $08, dSnare
	dc.b dKick, $02, $06, dSnare, $08, dKick, dSnare, dKick
	dc.b $02, $06, dSnare, $02, dKick, $06, $06, $02
	dc.b dSnare, $04, dKick, dKick, $08, dSnare, $06, dKick
	dc.b $02, nRst, dKick, $04, $02, dSnare, $04, dKick
	dc.b dKick, dSnare, dSnare, $02, $02, dLowTom, $04, dKick
	dc.b $08, dSnare, dKick, $02, $06, dSnare, $08, dKick
	dc.b dSnare, dKick, $02, $06, dSnare, $02, dKick, $06
	dc.b $08, dSnare, dKick, $02, $06, dSnare, $08, dKick
	dc.b $06, $02, dSnare, $04, dKick, dSnare, $02, $02
	dc.b dKick, $04, dSnare, $04, dKick, $04, $08, $08
	dc.b $08, $04, dSnare, $02, $02, dKick, $08, $08
	dc.b $04, dHighTom, dKick, $02, dMidTom, $04, dLowTom, $02
	dc.b dKick, $08, $08, $08, $04, dSnare, $02, $02
	dc.b dKick, dSnare, dSnare, dKick, dSnare, dSnare, dKick, dSnare
	dc.b dKick, dSnare, dSnare, dHighTom, dHighTom, dHighTom, dMidTom, dMidTom
	dc.b dKick, $08, dSnare, dKick, $02, $06, dSnare, $08
	dc.b dKick, dSnare, dKick, $02, $06, dSnare, $02, dKick
	dc.b $06, $08, dSnare, dKick, $02, $06, dSnare, $08
	dc.b dKick, $06, $02, dSnare, $04, dKick, dKick, $02
	dc.b dSnare, $06, $02, $04, dKick, $02, $08, dSnare
	dc.b dKick, $02, $0E, $08, dSnare, dKick, $02, $0A
	dc.b $04, $08, dSnare, dKick, $02, $06, dSnare, $04
	dc.b dKick, dSnare, $02, dKick, $04, $02, dKick, dSnare
	dc.b $04, $04, dSnare, $02, $02, dKick, dSnare, dSnare
	dc.b dHighTom, dMidTom
	sJump		DD1_Jump9

DD1_Patches:
	; Patch $00
	; $3A
	; $34, $72, $51, $73,	$1F, $5F, $1F, $5F
	; $13, $10, $10, $00,	$08, $00, $00, $00
	; $1A, $18, $18, $09,	$17, $11, $19, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $05, $07, $07
	spMultiple	$04, $01, $02, $03
	spRateScale	$00, $00, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $10, $10, $00
	spSustainRt	$08, $00, $00, $00
	spSustainLv	$01, $01, $01, $00
	spReleaseRt	$0A, $08, $08, $09
	spTotalLv	$17, $19, $11, $00

	; Patch $01
	; $35
	; $00, $31, $70, $01,	$1F, $1F, $1F, $1F
	; $09, $0A, $0A, $0A,	$0C, $12, $12, $12
	; $80, $8E, $8E, $8E,	$14, $8A, $80, $90
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $07, $03, $00
	spMultiple	$00, $00, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $0A, $0A, $0A
	spSustainRt	$0C, $12, $12, $12
	spSustainLv	$08, $08, $08, $08
	spReleaseRt	$00, $0E, $0E, $0E
	spTotalLv	$14, $00, $0A, $10

	; Patch $02
	; $3D
	; $01, $62, $03, $21,	$30, $1F, $13, $26
	; $08, $08, $08, $03,	$05, $00, $03, $00
	; $0F, $1B, $1B, $1B,	$19, $81, $85, $89
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $06, $02
	spMultiple	$01, $03, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $13, $1F, $06
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $03
	spSustainRt	$05, $03, $00, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0B, $0B, $0B
	spTotalLv	$19, $05, $01, $09

	; Patch $03
	; $3D
	; $01, $62, $03, $21,	$30, $1F, $13, $26
	; $08, $08, $08, $03,	$05, $00, $03, $00
	; $0F, $1B, $1B, $1B,	$1A, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $06, $02
	spMultiple	$01, $03, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $13, $1F, $06
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $03
	spSustainRt	$05, $03, $00, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0B, $0B, $0B
	spTotalLv	$1A, $00, $00, $00

	; Patch $04
	; $38
	; $04, $12, $30, $71,	$1F, $1F, $1F, $1F
	; $0B, $0B, $0A, $0A,	$00, $00, $00, $00
	; $4F, $4F, $AF, $AB,	$14, $1B, $18, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $03, $01, $07
	spMultiple	$04, $00, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $0A, $0B, $0A
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$04, $0A, $04, $0A
	spReleaseRt	$0F, $0F, $0F, $0B
	spTotalLv	$14, $18, $1B, $00

	; Patch $05
	; $2C
	; $01, $01, $20, $00,	$1D, $1D, $1D, $1D
	; $06, $02, $06, $02,	$10, $03, $00, $03
	; $4F, $5F, $AF, $8F,	$16, $83, $10, $84
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$00, $02, $00, $00
	spMultiple	$01, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1D, $1D, $1D, $1D
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $06, $02, $02
	spSustainRt	$10, $00, $03, $03
	spSustainLv	$04, $0A, $05, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $10, $03, $04

	; Patch $06
	; $0C
	; $13, $03, $14, $04,	$10, $15, $10, $15
	; $04, $04, $04, $04,	$09, $01, $09, $01
	; $1C, $1F, $1C, $1F,	$14, $80, $14, $80
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$01, $01, $00, $00
	spMultiple	$03, $04, $03, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $10, $15, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $04, $04
	spSustainRt	$09, $09, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$14, $14, $00, $00

	; Patch $07
	; $0C
	; $13, $03, $14, $04,	$1F, $1F, $1F, $1F
	; $09, $0B, $09, $0B,	$09, $09, $09, $09
	; $1C, $1F, $1C, $1F,	$0D, $80, $0D, $80
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$01, $01, $00, $00
	spMultiple	$03, $04, $03, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$09, $09, $0B, $0B
	spSustainRt	$09, $09, $09, $09
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$0D, $0D, $00, $00

	; Patch $08
	; $31
	; $03, $20, $30, $41,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $0B,	$03, $04, $0C, $04
	; $0E, $1F, $1F, $3F,	$0A, $13, $1D, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$00, $03, $02, $04
	spMultiple	$03, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $0B
	spSustainRt	$03, $0C, $04, $04
	spSustainLv	$00, $01, $01, $03
	spReleaseRt	$0E, $0F, $0F, $0F
	spTotalLv	$0A, $1D, $13, $00

	; Patch $09
	; $3D
	; $02, $62, $01, $21,	$1F, $1F, $1F, $1F
	; $03, $0B, $0B, $0B,	$0C, $14, $14, $15
	; $28, $38, $38, $48,	$21, $86, $88, $86
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $06, $02
	spMultiple	$02, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$03, $0B, $0B, $0B
	spSustainRt	$0C, $14, $14, $15
	spSustainLv	$02, $03, $03, $04
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$21, $08, $06, $06

	; Patch $0A
	; $3C
	; $44, $01, $21, $01,	$1F, $1F, $1F, $1F
	; $0F, $0D, $0C, $0D,	$10, $09, $00, $09
	; $4F, $5F, $AF, $8F,	$1B, $80, $16, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$04, $02, $00, $00
	spMultiple	$04, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0C, $0D, $0D
	spSustainRt	$10, $00, $09, $09
	spSustainLv	$04, $0A, $05, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $16, $00, $00

	; Patch $0B
	; $09
	; $00, $39, $01, $02,	$1F, $1F, $1F, $1F
	; $0F, $1F, $04, $16,	$10, $28, $00, $0F
	; $3E, $1E, $FF, $0F,	$00, $1C, $1E, $82
	spAlgorithm	$01
	spFeedback	$01
	spDetune	$00, $00, $03, $00
	spMultiple	$00, $01, $09, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $04, $1F, $16
	spSustainRt	$10, $00, $28, $0F
	spSustainLv	$03, $0F, $01, $00
	spReleaseRt	$0E, $0F, $0E, $0F
	spTotalLv	$00, $1E, $1C, $02

	; Patch $0C
	; $3E
	; $11, $12, $06, $01,	$1F, $1F, $1F, $1F
	; $10, $12, $12, $1A,	$0F, $15, $17, $17
	; $1F, $1F, $1F, $1F,	$00, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$01, $00, $01, $00
	spMultiple	$01, $06, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $12, $12, $1A
	spSustainRt	$0F, $17, $15, $17
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
