KV2_Header:
	sHeaderInit	; Z80 offset is $C29C
	sHeaderPatch	KV2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $0A
	sHeaderDAC	KV2_DAC
	sHeaderFM	KV2_FM1, $F4, $1E
	sHeaderFM	KV2_FM2, $F4, $1B
	sHeaderFM	KV2_FM3, $F4, $26
	sHeaderFM	KV2_FM4, $F4, $26
	sHeaderFM	KV2_FM5, $F4, $25
	sHeaderPSG	KV2_PSG1, $D0, $05, $00, VolEnv_00
	sHeaderPSG	KV2_PSG2, $D0, $06, $00, VolEnv_00
	sHeaderPSG	KV2_PSG3, $1A, $05, $00, VolEnv_00

KV2_FM1:
	ssModZ80	$06, $01, $04, $04
	sPatFM		$00
	saVolFM		$F8
	dc.b nEb6, $06, $0C, nD6, nC6, $06, nBb5, nG5
	dc.b nC6, $30, sHold, $60, nRst, $18
	saVolFM		$08

KV2_Jump5:
	sPatFM		$00
	saVolFM		$F8
	saVolFM		$02
	dc.b nG5, $18, nEb6, nC6, nD6, $30, nBb5, nAb5
	dc.b $0C, nBb5, nC6, $30, nF5, $18, nG5, $60
	dc.b nRst, $18, nG5, nEb6, nC6, nD6, $30, nBb5
	dc.b nC6, $0C, nBb5, nC6, $18, nBb5, nD6, nC6
	dc.b $48
	saVolFM		$08
	sPatFM		$01
	saVolFM		$F9
	saVolFM		$F9
	saTranspose	$0C
	dc.b nEb5, $0C, nF5, nG5, $60, sHold, $0C, nEb5
	dc.b nF5, nG5, nBb5, nAb5, nG5, nF5, nAb5, $24
	dc.b nEb5, $0C, nC5, $60, nRst, $18, nC5, $0C
	dc.b nD5, nEb5, $60, sHold, $0C, nC5, nD5, nEb5
	dc.b nAb5, nG5, nF5, nEb5, nD5, $18, nEb5, $0C
	dc.b nF5, nBb4, $30
	saVolFM		$07
	sPatFM		$02
	dc.b nRst, $18, nG5, nEb6, nD6, nC6, $60, sHold
	dc.b $18, nAb5, nC6, nEb6, nF6, $0C, nEb6, $06
	dc.b nD6, nBb5, $48, sHold, $18, nBb5, nEb6, nD6
	dc.b nC6, $60, sHold, $18, nAb5, nC6, nEb6, nAb6
	dc.b $0C, nG6, $06, nF6, nC6, $48, nD6, $60
	dc.b nG6, $48
	sPatFM		$05
	saVolFM		$FB
	saVolFM		$FE
	dc.b nG5, $12, $06, nC6, $3C, nG5, $0C, nC6
	dc.b nEb6, nF6, nEb6, $06, nD6, nC6, $30, nG5
	dc.b $12, $06, nC6, $3C, nAb5, $0C, nC6, nEb6
	dc.b nF6, nEb6, $06, nD6, nBb5, $30, nD6, $18
	dc.b $24, nG5, $0C, $18, nD6, nEb6, $24, nC6
	dc.b $0C, $30, nF6, $10, nC6, nF6, nAb6, nEb6
	dc.b nAb6, nBb6, $48, $08, $08, $08, nC7, $60
	dc.b sHold, $60, sHold, $60, nRst, $0C, nAb5, $12
	dc.b nBb5, nC6, nD6, nBb5, $0C, nC6, $0C, nRst
	dc.b $0C
	saVolFM		$07
	saVolFM		$05
	saTranspose	$F4
	sJump		KV2_Jump5

KV2_FM2:
	sPatFM		$03
	saVolFM		$FA
	dc.b nC4, $06, $0C, $0C, $06, $06, $06, $30
	dc.b sHold, $60
	saVolFM		$06

KV2_Jump6:
	sPatFM		$02
	dc.b nC4, $60, nBb3, nAb3, nG3, nC4, nD4, nEb4
	dc.b $30, nG4, nC4, $60
	sPatFM		$03
	saVolFM		$F8
	sCall		KV2_Call3
	saTranspose	$F9
	sCall		KV2_Call3
	saTranspose	$FD
	sCall		KV2_Call3
	saTranspose	$02
	sCall		KV2_Call3
	saTranspose	$08
	saVolFM		$FE
	saTranspose	$F9
	sCall		KV2_Call3
	saTranspose	$02
	sCall		KV2_Call3
	saTranspose	$0A
	sCall		KV2_Call3
	saTranspose	$FB
	dc.b nF4, nF4, $18, $0C, $0C, $18, $0C, nG4
	dc.b nG4, $18, $0C, $0C, $18, $0C, $0C, $0C
	dc.b $0C, $0C, $30, nC4, $18, $12, $06, $0C
	dc.b $24, nBb3, $48, $12, $06, nAb3, $24, $06
	dc.b $06, $0C, $24, nBb3, $3C, $0C, $0C, $0C
	dc.b nG3, $3C, $0C, $0C, $0C, nC4, $3C, $0C
	dc.b $0C, $0C, nF3, $10, $10, $10, $10, $10
	dc.b $10, nBb3, $30, nG3, $18, nG3, $08, $08
	dc.b $08
	saVolFM		$02
	saVolFM		$08
	dc.b nC3, $60, nAb3, $06, nRst, $5A, nBb3, $60
	dc.b nRst, $0C, nAb3, $12, nG3, nEb3, nD3, nF3
	dc.b $0C
	sJump		KV2_Jump6

KV2_Call3:
KV2_Loop10:
	dc.b nEb4, $0C, $18, $0C
	sLoop		$00, $04, KV2_Loop10
	sRet	

KV2_FM5:
	sPatFM		$01
	saVolFM		$F9
	sPan		spLeft, $00
	dc.b nEb6, $06, $0C, nD6, nC6, $06, nBb5, nG5
	dc.b nC6, $30
	saVolFM		$07
	sPatFM		$04
	saVolFM		$FD
	sPan		spCenter, $00
	dc.b nC6, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $0C, $06, $06
	saVolFM		$03
	sPatFM		$04
	saVolFM		$FD
	dc.b nC6, $0C
	saVolFM		$03

KV2_Jump3:
	sPatFM		$04
	saVolFM		$FD
	sPan		spCenter, $00
	saVolFM		$F8
	dc.b nC6, $06, $06, $0C, $06, $06, $0C, $06
	dc.b $06, $0C, $06, $06
	sCall		KV2_Call1
	saTranspose	$FE
	sCall		KV2_Call1
	saTranspose	$FF
	sCall		KV2_Call1
	saTranspose	$05
	sCall		KV2_Call1
	saTranspose	$FE
	sCall		KV2_Call1
	dc.b nAb5, $0C, $06, $06, $0C, $06, $06, nBb5
	dc.b $0C, $06, $06, $0C, $06, $06
	saTranspose	$02
	sCall		KV2_Call1
	saTranspose	$FE
	saVolFM		$03
	sPatFM		$00
	saVolFM		$F8
	saTranspose	$0C
	saVolFM		$02
	dc.b nRst, $18, nBb4, $06, nG4, nBb4, nEb5, nG5
	dc.b nBb4, nEb5, nG5, nBb5, nEb5, nG5, nBb5, nEb6
	dc.b $60
	saTranspose	$05
	sCall		KV2_Call1
	saTranspose	$FB
	dc.b $60, nRst, $18, nC5, $06, nF4, nAb4, nC5
	dc.b nEb5, nC5, nF5, nAb5, nC6, nF5, nAb5, nC6
	dc.b nF6, $60, nRst, $30, nBb6, $0C, nAb6, $06
	dc.b nG6, nF6, $18, nD6, $60
	saTranspose	$F4
	saVolFM		$08
	sPatFM		$04
	saVolFM		$FD
	saVolFM		$FA
	sPan		spLeft, $00
	sCall		KV2_Call2
	dc.b nG5, nG5
	sCall		KV2_Call2
	dc.b nG5, nG5
	saTranspose	$02
	sCall		KV2_Call2
	dc.b nG5, nG5
	sCall		KV2_Call2
	saTranspose	$FE
	dc.b nBb5, nBb5
	sCall		KV2_Call2
	dc.b nG5, nG5
	sCall		KV2_Call2
	dc.b nAb5, nAb5
	sCall		KV2_Call2
	dc.b nAb5, nAb5
	saTranspose	$06
	sCall		KV2_Call2
	saTranspose	$FA
	dc.b nD6, nD6, nD6, $0C, $06, $06, $06, $06
	dc.b $06, $06, $30
	saVolFM		$03
	sPatFM		$00
	saVolFM		$F8
	dc.b nEb6, $06, nRst, $1E, nEb6, $06, $06, $06
	dc.b nRst, $06, nEb6, $06, nRst, $1E, nD6, $06
	dc.b nRst, $42, nD6, $12, $06, nC6, $06, nRst
	dc.b $1E, nC6, $06, $06, $06, nRst, $06, nC6
	dc.b $06, nRst, $1E, nD6, $06, nRst, $36, nD6
	dc.b $06, nRst, nD6, nRst, nD6, nRst, nD6, nRst
	dc.b $36, nD6, $06, nRst, nD6, nRst, nD6, nRst
	dc.b nEb6, nRst, $36, nEb6, $06, nRst, nEb6, nRst
	dc.b nEb6, nRst, nF6, $10, $10, $10, $10, $10
	dc.b $10, $48, $08, $08, $08, nG6, $60, nAb6
	dc.b nBb6, nRst, $0C, nEb6, $12, nF6, nAb6, nBb6
	dc.b nG6, $0C, nC4, $0C
	saVolFM		$08
	saVolFM		$0C
	sJump		KV2_Jump3

KV2_FM4:
	sPatFM		$05
	saVolFM		$FB
	dc.b nG5, $06, $0C, nF5, nEb5, $06, nD5, nEb5
	dc.b nC5, $30
	saVolFM		$05
	sPatFM		$04
	saVolFM		$FD
	dc.b nG5, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $0C, $06, $06
	saVolFM		$03
	sPatFM		$04
	saVolFM		$FD
	dc.b nG5, $0C
	saVolFM		$03

KV2_Jump4:
	sPatFM		$04
	saVolFM		$FD
	saVolFM		$F8
	dc.b nG5, $06, $06, $0C, $06, $06, $0C, $06
	dc.b $06, $0C, $06, $06
	saTranspose	$FB
	sCall		KV2_Call1
	saTranspose	$FE
	sCall		KV2_Call1
	saTranspose	$08
	sCall		KV2_Call1
	saTranspose	$FC
	sCall		KV2_Call1
	saTranspose	$FE
	sCall		KV2_Call1
	saTranspose	$05
	dc.b nEb5, $0C, $06, $06, $0C, $06, $06, nF5
	dc.b $0C, $06, $06, $0C, $06, $06, nG5, $0C
	dc.b $06, $06, $0C, $06, $06, $0C, $06, $06
	dc.b $0C, $06, $06
	saVolFM		$03
	sPatFM		$00
	saVolFM		$F8
	saTranspose	$0C
	saVolFM		$02
	dc.b nRst, $18, nG4, $06, nEb4, nG4, nBb4, nEb5
	dc.b nG4, nBb4, nEb5, nG5, nBb4, nEb5, nG5, nBb5
	dc.b $60, nC6, sHold, $60, nRst, $18, nAb4, $06
	dc.b nC4, nF4, nAb4, nC5, nAb4, nC5, nF5, nAb5
	dc.b nC5, nF5, nAb5, nC6, $60, nRst, nRst
	saTranspose	$F4
	saVolFM		$08
	sPatFM		$04
	saVolFM		$FD
	saVolFM		$FA
	saTranspose	$04
	sCall		KV2_Call2
	dc.b nG5, nG5
	sCall		KV2_Call2
	dc.b nG5, nG5
	saTranspose	$02
	sCall		KV2_Call2
	dc.b nFs5, nFs5
	sCall		KV2_Call2
	dc.b nAb5, nAb5
	saTranspose	$FE
	sCall		KV2_Call2
	dc.b nG5, nG5
	sCall		KV2_Call2
	dc.b nAb5, nAb5
	sCall		KV2_Call2
	dc.b nAb5, nAb5
	saTranspose	$FC
	sCall		KV2_Call2
	dc.b nAb5, nAb5, nAb5, $0C, $06, $06, $06, $06
	dc.b $06, $06, $30
	saVolFM		$03
	sPatFM		$00
	saVolFM		$F8
	dc.b nG5, $06, nRst, $1E, nG5, $06, $06, $06
	dc.b nRst, $06, nG5, $06, nRst, $1E, nF5, $06
	dc.b nRst, $42, nF5, $12, $06, nEb5, $06, nRst
	dc.b $1E, nEb5, $06, $06, $06, nRst, $06, nEb5
	dc.b $06, nRst, $1E, nF5, $06, nRst, $36, nF5
	dc.b $06, nRst, nF5, nRst, nF5, nRst, nF5, nRst
	dc.b $36, nF5, $06, nRst, nF5, nRst, nF5, nRst
	dc.b nG5, nRst, $36, nG5, $06, nRst, nG5, nRst
	dc.b nG5, nRst, nC6, $10, $10, $10, $10, $10
	dc.b $10, nD6, $48, $08, $08, $08, nE6, $5A
	dc.b nRst, $06, nEb6, $5A, nRst, $06, nD6, $5A
	dc.b nRst, $06, nRst, $0C, nC6, $12, nD6, nEb6
	dc.b nF6, nD6, $0C, nG6, $0C
	saVolFM		$0C
	saVolFM		$08
	sJump		KV2_Jump4

KV2_Call1:
KV2_Loop8:
	dc.b nBb5, $0C, $06, $06
	sLoop		$00, $04, KV2_Loop8
	sRet	

KV2_Call2:
KV2_Loop9:
	dc.b nAb5, $0C, $06, $06
	sLoop		$00, $03, KV2_Loop9
	dc.b $06, $06
	sRet	

KV2_FM3:
	ssModZ80	$05, $01, $05, $04
	sPatFM		$00
	saVolFM		$F8
	dc.b nEb6, $06, $0C, nD6, nC6, $06, nBb5, nG5
	dc.b nC6, $30, sHold, $60, nRst, $18, nRst, $07
	sJump		KV2_Jump5

KV2_PSG1:
	ssModZ80	$03, $01, $01, $04
	dc.b nC5, $06, $0C, nBb4, nG4, $06, nBb4, nG4
	dc.b nC5, $30, nRst, $6C

KV2_Jump2:
	saVolPSG	$02
	dc.b nC5, $54, nBb4, $60, nAb4, nG4, nC5, nD5
	dc.b nEb5, $30, nG5, nC5, $60
	saVolPSG	$FE
	dc.b nRst, $18, nEb5, $06, nBb4, nEb5, nG5, nBb5
	dc.b nEb5, nG5, nBb5, nEb6, nG5, nBb5, nEb6, nG6
	dc.b $60, nRst, $30, nAb7, $06, nG7, nEb7, nC7
	dc.b nAb6, nG6, nEb6, nC6, nAb5, $60, nRst, $18
	dc.b nF5, $06, nC5, nEb5, nF5, nAb5, nF5, nC6
	dc.b nEb6, nF6, nC6, nEb6, nF6, nAb6, $60, nRst
	dc.b nRst, $18, nBb4, nG5, nF5, nAb5, $18, nAb5
	dc.b $0C, $06, $06, $0C, $06, $06, $06, $06
	dc.b $06, $06, $0C, $06, $06, $18, nBb5, nC6
	dc.b nD6, $0C, nC6, $06, nBb5, nF5, $18, $0C
	dc.b $06, $06, $06, $06, $06, $06, $18, nBb4
	dc.b nG5, nF5, nAb5, nAb5, $0C, $06, $06, $0C
	dc.b $06, $06, $06, $06, $06, $06, $18, nC5
	dc.b nAb4, nC5, nEb5, $60, nD5, $04, nEb5, nD5
	dc.b nEb5, nD5, nEb5, nG5, nAb5, nG5, nAb5, nG5
	dc.b nAb5
	saVolPSG	$FF
	dc.b nD6, nEb6, nD6, nEb6, nD6, nEb6
	saVolPSG	$FF
	dc.b nG6, nAb6, nG6, nAb6, nG6, nAb6
	saVolPSG	$FF
	dc.b nD7, nEb7, nD7, nEb7, nD7, nEb7, nG7, nAb7
	dc.b nG7, nAb7, nG7, nAb7, nG7, $06, nRst, $12
	saVolPSG	$03
	dc.b nD6, $12, $06, nEb6, $3C, nC6, $0C, nEb6
	dc.b nG6, nBb6, nF6, $06, nD6, nBb5, $30, nEb6
	dc.b $12, nD6, $06, nEb6, $3C, nC6, $0C, nEb6
	dc.b nG6, nBb6, nAb6, $06, nG6, nD6, $30, nG6
	dc.b $18, $60, nC7, nF6, $10, nEb7, nD7, nC7
	dc.b nAb6, nF6, nD6, $48, $08, $08, $08
	saVolPSG	$FF
	saTranspose	$18

KV2_Loop6:
	dc.b nC3, $03, nE3, nG3, nB3, nC4, nE4, nG4
	dc.b nB4, nC5, nB4, nG4, nE4, nC4, nB3, nG3
	dc.b nE3
	sLoop		$00, $02, KV2_Loop6

KV2_Loop7:
	dc.b nC3, nEb3, nG3, nAb3, nC4, nEb4, nG4, nAb4
	dc.b nC5, nAb4, nG4, nEb4, nC4, nAb3, nEb3, nC3
	sLoop		$00, $02, KV2_Loop7
	dc.b nBb2, nD3, nF3, nBb3, nD4, nF4, nA4, nBb4
	dc.b nD5, nBb4, nF4, nD4, nBb3, nA3, nF3, nD3
	dc.b nBb2, nD3, nF3, nBb3, nD4, nF4, nA4, nBb4
	dc.b nF3, nBb3, nD4, nF4, nA4, nBb4, nD5, nF5
	saTranspose	$E8
	saVolPSG	$01
	dc.b nRst, $0C, nAb5, $12, nG5, nEb5, nD5, nG5
	dc.b $0C, nC5, $0C
	sJump		KV2_Jump2

KV2_PSG2:
	ssModZ80	$02, $01, $01, $06
	saDetune	$01
	dc.b nC5, $06, $0C, nBb4, nG4, $06, nBb4, nG4
	dc.b nC5, $30, nRst, $07, nRst, $6C
	sJump		KV2_Jump2

KV2_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02
	dc.b nC3, $06, nC3, nRst, nC3, nRst, nC3, nC3
	dc.b nC3
	sVolEnvPSG	VolEnv_01
	dc.b nC3, nRst, $12, nRst, $18

KV2_Loop1:
	sVolEnvPSG	VolEnv_02
	dc.b nC3, $06, nRst, nC3, nC3
	sLoop		$00, $04, KV2_Loop1
	saVolPSG	$01

KV2_Loop2:
KV2_Jump1:
	sVolEnvPSG	VolEnv_02
	dc.b nC3, $06, nRst, nC3, nC3
	sLoop		$00, $20, KV2_Loop2
	saVolPSG	$FF

KV2_Loop3:
	dc.b nC3, $06, nRst, nC3, nC3
	sLoop		$00, $20, KV2_Loop3

KV2_Loop4:
	sVolEnvPSG	VolEnv_01
	dc.b nC3, $60, nRst, nRst, nRst
	sLoop		$00, $02, KV2_Loop4
	dc.b nRst, $60

KV2_Loop5:
	sVolEnvPSG	VolEnv_01
	dc.b nC3, $60
	sVolEnvPSG	VolEnv_02
	dc.b nC3, $18, $06, $06, $06, $06, $0C, $0C
	dc.b $0C, $0C
	sLoop		$00, $02, KV2_Loop5
	sVolEnvPSG	VolEnv_01
	dc.b nC3, $60, $60, $10
	sVolEnvPSG	VolEnv_02
	dc.b nC3, $10, nC3, nC3, nC3, nC3
	sVolEnvPSG	VolEnv_01
	dc.b $48
	sVolEnvPSG	VolEnv_02
	dc.b nC3, $08, nC3, nC3
	sVolEnvPSG	VolEnv_01
	dc.b nC3, $60, nC3, nC3
	sVolEnvPSG	VolEnv_01
	dc.b nRst, $0C, nC3, $12, nC3, nC3, nC3, nC3
	dc.b $0C
	saVolPSG	$01
	sJump		KV2_Jump1

KV2_DAC:
	dc.b dHiTimpani, $06, dHiTimpani, $0C, dLowTimpani, dLowTimpani, $06, dMidTimpani
	dc.b dLowTimpani, dHiTimpani, $30, nRst, $48, nRst, $0C, dLowTimpani
	dc.b $06, dMidTimpani, dHiTimpani, $60
KV2_Loop11:
KV2_Jump7:
	dc.b nRst, $60
	sLoop		$00, $06, KV2_Loop11
	dc.b dKick, $0C, dKick, $06, dKick, dSnare, $18, dSnare
	dc.b $06, dSnare, $0C, dHighTom, $06, dMidTom, dFloorTom, dLowTom
	dc.b dFloorTom

KV2_Loop12:
	dc.b dKick, $0C, dKick, dSnare, $18
	sLoop		$00, $0E, KV2_Loop12
	dc.b dSnare, $04, dSnare, dSnare, dKick, $06, dKick, dSnare
	dc.b $18, dHighTom, $06, dHighTom, $0C, dMidTom, $06, dLowTom
	dc.b dHighTom, dLowTom, dFloorTom

KV2_Loop13:
	dc.b dSnare, $0C, dSnare, $06, dSnare
	sLoop		$00, $06, KV2_Loop13
	dc.b dSnare, $04, dSnare, dSnare, dSnare, $06, dSnare, dSnare
	dc.b dSnare, dSnare, dSnare
	sLoop		$01, $03, KV2_Loop13
	dc.b dSnare, $0C, dSnare, $06, dSnare, dSnare, $0C, dSnare
	dc.b $06, dSnare, dSnare, $0C, dSnare, $06, dSnare, dHighTom
	dc.b dMidTom, dHighTom, dFloorTom, dKick, $0C, dSnare, $06, dSnare
	dc.b dKick, $0C, dSnare, $06, dSnare, dKick, $0C, dSnare
	dc.b $06, dSnare, dSnare, dSnare, dSnare, dSnare, dLowTimpani, $04
	dc.b dMidTimpani, dLowTimpani, dMidTimpani, dLowTimpani, dMidTimpani, dLowTimpani, dMidTimpani, dLowTimpani
	dc.b dMidTimpani, dLowTimpani, dMidTimpani, dLowTimpani, $18, dLowTimpani, $12, dMidTimpani
	dc.b $06, dHiTimpani, $18, dHiTimpani, $06, dHiTimpani, dHiTimpani, dHiTimpani
	dc.b dMidTimpani, $0C, dHiTimpani, $24, dKick, $18, dSnare, $12
	dc.b dSnare, $06, dSnare, $0C, dSnare, dSnare, dSnare, dKick
	dc.b $18, dSnare, $06, dSnare, dSnare, dSnare, dKick, $0C
	dc.b dKick, $24, dSnare, $18, dSnare, dSnare, dSnare, $06
	dc.b dSnare, dSnare, dSnare

KV2_Loop14:
	dc.b dSnare, $0C, dSnare, $06, dSnare
	sLoop		$00, $08, KV2_Loop14
	dc.b dKick, $10, dKick, dKick, dSnare, dHighTom, dLowTom, dKick
	dc.b $48, dMidTimpani, $08, dLowTimpani, dMidTimpani, dHiTimpani, $18, dHiTimpani
	dc.b $0C, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani, dLowTimpani

KV2_Loop15:
	dc.b dHiTimpani, $0C, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani
	dc.b dLowTimpani
	sLoop		$00, $02, KV2_Loop15
	dc.b dCrashCymbal, $0C, dHiTimpani, $12, dMidTimpani, dHiTimpani, dMidTimpani, dLowTimpani
	dc.b $06, dMidTimpani, dHiTimpani, $18, nRst, $48
	sJump		KV2_Jump7

KV2_Patches:
	; Patch $00
	; $3A
	; $01, $07, $01, $01,	$8B, $1F, $8C, $4F
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $00, $01
	spAttackRt	$0B, $0C, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $0E, $0E, $03
	spSustainRt	$00, $00, $00, $07
	spSustainLv	$01, $01, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $00

	; Patch $01
	; $3B
	; $71, $02, $31, $01,	$5C, $4B, $4E, $4C
	; $05, $05, $05, $10,	$03, $00, $00, $00
	; $EF, $FF, $2F, $1F,	$28, $28, $32, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $01, $02, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1C, $0E, $0B, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $05, $05, $10
	spSustainRt	$03, $00, $00, $00
	spSustainLv	$0E, $02, $0F, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $32, $28, $00

	; Patch $02
	; $3D
	; $01, $02, $02, $02,	$1F, $08, $8A, $0A
	; $08, $08, $08, $08,	$00, $01, $00, $00
	; $0F, $1F, $1F, $1F,	$1F, $88, $88, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $0A, $08, $0A
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $08
	spSustainRt	$00, $00, $01, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $08, $08, $07

	; Patch $03
	; $22
	; $30, $30, $30, $30,	$9E, $D8, $DC, $DC
	; $0E, $0A, $04, $23,	$08, $08, $08, $78
	; $BF, $BF, $BF, $14,	$11, $35, $14, $80
	spAlgorithm	$02
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$02, $03, $03, $03
	spAttackRt	$1E, $1C, $18, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $04, $0A, $03
	spSustainRt	$08, $08, $08, $78
	spSustainLv	$0B, $0B, $0B, $01
	spReleaseRt	$0F, $0F, $0F, $04
	spTotalLv	$11, $14, $35, $00

	; Patch $04
	; $3D
	; $61, $61, $61, $60,	$1F, $0F, $0F, $2F
	; $0E, $0B, $11, $0F,	$13, $1F, $1F, $1F
	; $11, $17, $16, $17,	$17, $99, $9B, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$06, $06, $06, $06
	spMultiple	$01, $01, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0E, $11, $0B, $0F
	spSustainRt	$13, $1F, $1F, $1F
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$01, $06, $07, $07
	spTotalLv	$17, $1B, $19, $00

	; Patch $05
	; $1A
	; $65, $48, $20, $30,	$4F, $4D, $4F, $4F
	; $04, $08, $04, $10,	$03, $00, $03, $00
	; $2F, $CF, $2F, $0F,	$28, $32, $17, $80
	spAlgorithm	$02
	spFeedback	$03
	spDetune	$06, $02, $04, $03
	spMultiple	$05, $00, $08, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$0F, $0F, $0D, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$04, $04, $08, $10
	spSustainRt	$03, $03, $00, $00
	spSustainLv	$02, $02, $0C, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $17, $32, $00
