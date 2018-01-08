FC2_Header:
	sHeaderInit	; Z80 offset is $8000
	sHeaderPatch	FC2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$02, $20
	sHeaderDAC	FC2_DAC
	sHeaderFM	FC2_FM1, $F5, $0E
	sHeaderFM	FC2_FM2, $F5, $0E
	sHeaderFM	FC2_FM3, $F5, $11
	sHeaderFM	FC2_FM4, $F5, $11
	sHeaderFM	FC2_FM5, $F5, $10
	sHeaderPSG	FC2_PSG1, $D1, $04, $00, VolEnv_00
	sHeaderPSG	FC2_PSG2, $D1, $04, $00, VolEnv_00
	sHeaderPSG	FC2_PSG3, $D1, $04, $00, VolEnv_00

FC2_FM1:
FC2_Jump4:
	sPatFM		$01
	sPatFM		$03
	saVolFM		$14
	saTranspose	$F4
	dc.b nRst, $06
	saDetune	$05
	dc.b nA6, $03, nA7, nE7, nA6, nA7, nE7, nA6
	dc.b nA7, nE7, nA6, nA7, nE7, nA6, nE6
	saDetune	$00
	saTranspose	$0C
	saVolFM		$EC
	saVolFM		$03
	sPatFM		$08
	dc.b nRst, $03, nE3, nE3, $06, nA3, $03, $06
	dc.b nE4, nE4, $03, $03, $03, nA4, nA4, nE5
	dc.b nE5
	ssModZ80	$05, $01, $02, $03
	saVolFM		$FD

FC2_Jump5:
	saTranspose	$F4
	sPatFM		$00
	dc.b nRst, $0C, nE7, $12, nD7, $06, nC7, nD7
	dc.b nRst, nA6, $12, nA6, $06, nG6, nF6, nE6
	dc.b sHold, $1E, nD6, $06, nC6, nD6, nRst, nE6
	dc.b nE6, $24, nRst, $0C, nE7, $12, nD7, $06
	dc.b nC7, nD7, nRst, nA6, $12, $06, nB6, nC7
	dc.b nD7, nRst, $0C, nE7, nA7, $06, nG7, nF7
	dc.b nE7, sHold, $30
	sPatFM		$02
	saTranspose	$0C
	ssModZ80	$05, $01, $00, $03
	saVolFM		$FC
	dc.b nRst, $12, nA5, $03, nB5, nC6, nE6, nD6
	dc.b nC6, nD6, nG5, nA5, nB5, nC6, $0C, nE6
	dc.b $06, nD6, $15, nE6, $09, nF6, $06, nC6
	dc.b nF6, nG6, nB5, nC6, nD6, nG6, nF6, nC6
	dc.b nA6, nG6, $1E
	saVolFM		$04
	ssModZ80	$05, $01, $02, $03
	saVolFM		$04
	sPatFM		$04
	dc.b nG6, $06, nBb5, nD6, nG6, nG6, nD6, nG6
	dc.b nA6, sHold, $0C, nA6, $06, nBb6, nC7, nBb6
	dc.b nA6, nF6, sHold, $0C, nF6, $06, nG6, nA6
	dc.b nG6, nF6, nE6, sHold, $24, nA6, $0C, nE7
	dc.b $30
	sPatFM		$02
	saVolFM		$FC
	ssModZ80	$05, $01, $00, $03
	saVolFM		$FC
	dc.b nRst, $12, nAb5, $06, nB5, nE6, nAb6, nA6
	dc.b $06, sHold, $18, nD7, $09, nC7, $03, nRst
	dc.b $06, nB6, $03, nA6, nB6, $1E, nG6, $06
	dc.b nB6, nA6, $06, sHold, $18, nA6, $09, nG6
	dc.b nFs6, $06, nE6, $18, $06, nFs6, nG6, nFs6
	dc.b sHold, $06, nE6, $0C, nD6, nE6, $03, nRst
	dc.b $09, nB5, $03, nA5, nB5, $1E, nE5, $06
	dc.b nB5, nA5, sHold, $06, nE5, nA5, nB5, nE6
	dc.b nA6, $12, nRst, nAb5, $06, nB5, nE6, nAb6
	dc.b nA6, sHold, $18, nD7, $09, nC7, $03, nRst
	dc.b $06, nB6, $03, nA6, nB6, $1E, nG6, $06
	dc.b nB6, nA6, sHold, $1E, nA6, $06, nD7, nB6
	dc.b sHold, $18, nB6, $06, nE6, nB6, nA6, sHold
	dc.b $18, nA6, $09, nG6, nFs6, $06, nE6, $30
	dc.b sHold, $30
	saVolFM		$04
	sJump		FC2_Jump5

FC2_FM2:
	sPatFM		$01
	dc.b nA3, $06, nD4, $03, nE4, nRst, nA3, nRst
	dc.b nA4, $03, nRst, $0F, nA3, $03, nB3, nC4
	dc.b nC4, $03, nRst, $06, nG3, $03, nRst, $0F
	dc.b nFs4, $03, nCs4, nFs3, $0F

FC2_Loop5:
FC2_Jump8:
	dc.b nA3, $06, nD4, $03, nE4, nRst, nA3, nRst
	dc.b nA4, $03, nRst, $0F, nG4, $03, nFs4, nD4
	dc.b nBb3, $06, nRst, $03, nBb3, $03, nRst, $0F
	dc.b nE3, $03, $06, nG3, $03, $09, nA3, $06
	dc.b nD4, $03, nE4, nRst, nA3, nRst, nA4, $03
	dc.b nRst, $12, nA3, $06, nD4, $06, nRst, $03
	dc.b nD4, $03, nRst, $0C, nE4, $06, nRst, $03
	dc.b nE4, $03, nRst, $06, $06
	sLoop		$00, $02, FC2_Loop5
	dc.b nG3, nD4, nG4, nA3, $0C, nA4, $06, nE4
	dc.b nA3, nG3, nD4, nG4, nA3, $0C, nA4, $06
	dc.b nE4, nA3, nBb3, nF4, nBb4, nC4, $0C, nC5
	dc.b $06, nG4, nC4, nBb3, nF4, nBb4, nC4, $0C
	dc.b nC5, $06, nG4, nC4, nEb4, nEb4, nEb4, nEb4
	dc.b $03, $03, $03, nBb3, nEb4, $06, $06, nF4
	dc.b $0C, nF4, $06, nF4, nF4, $03, $03, $03
	dc.b $03, nC4, $06, nF3, nEb4, $0C, nEb4, $06
	dc.b nEb4, nEb4, $03, $03, $03, $03, $06, $06
	dc.b nD4, $0C, nD4, $06, nD4, nD4, $03, $03
	dc.b $03, $03, $06, $06, $0C, nD4, $06, nD4
	dc.b nD4, $03, $03, $03, $03, $06, $06, $06
	dc.b nE3, $06, nE4, $03, nE3, nRst, nE4, nRst
	dc.b nE3, nRst, nB3, $03, nD4, nE4, nE3, $0C
	dc.b nG3, $06, nG4, $03, nG3, nRst, nG4, nRst
	dc.b nG3, nRst, nD4, $03, nFs4, nG4, nG3, $0C
	dc.b nC4, $06, nC5, $03, nC4, nRst, nC5, nRst
	dc.b nC4, nRst, nG4, $03, nB4, nC5, nC4, $0C
	dc.b nD3, $06, nD4, $03, nD3, nRst, nD3, nRst
	dc.b nD3, nRst, nD3, $03, nC4, nD4, nD3, $0C
	dc.b nA3, $06, nA4, $03, nA3, nRst, nA3, nRst
	dc.b nA3, nRst, nA3, $03, nG4, nA4, nA3, $0C
	dc.b nB3, $06, nB4, $03, nB3, nRst, nB3, nRst
	dc.b nB3, nRst, nB3, $03, nA4, nB4, nB3, $0C
	dc.b nC4, $06, nC5, $03, nC4, nRst, nC4, nRst
	dc.b nC4, nRst, nG4, $03, nB4, nC5, nC4, $0C
	dc.b nD4, $06, nD5, $03, nD4, nRst, nD5, nRst
	dc.b nD4, nRst, nD5, $03, nC5, nA4, nC5, nA4
	dc.b nC5, nD5, nE3, $06, nE4, $03, nE3, nRst
	dc.b nE4, nRst, nE3, nRst, nB3, $03, nD4, nE4
	dc.b nE3, $0C, nG3, $06, nG4, $03, nG3, nRst
	dc.b nG4, nRst, nG3, nRst, nD4, $03, nFs4, nG4
	dc.b nG3, $0C, nC4, $06, nC5, $03, nC4, nRst
	dc.b nC5, nRst, nC4, nRst, nG4, $03, nB4, nC5
	dc.b nC4, $0C, nD3, $06, nD4, $03, nD3, nRst
	dc.b nD3, nRst, nD3, nRst, nD3, $03, nC4, nD4
	dc.b nD3, $0C, nC4, $06, nC5, $03, nC4, nRst
	dc.b nC4, nRst, nC4, nRst, nE5, $03, nD5, nC5
	dc.b $06, nG4, nC4, $03, nD4, $06, nD5, $03
	dc.b nD4, nRst, nD4, nRst, nD4, nRst, nG4, $03
	dc.b nA4, nD5, $06, nD4, nD4, $03, nE4, $06
	dc.b nE5, $03, nE4, nRst, nE4, nRst, nE4, nRst
	dc.b nE4, $06, nE4, $06, nB4, $03, nE5, nB4
	dc.b nE4, $06, nE4, $03, nE4, nRst, nE4, nRst
	dc.b nE4, nRst, nE4, nRst, nE4, nRst, nB4, $03
	dc.b nE5, nB4
	sJump		FC2_Jump8

FC2_FM3:
	ssModZ80	$05, $01, $02, $04
	sPatFM		$05
	sPan		spLeft, $00
	dc.b nRst, $03
	saDetune	$05
	saVolFM		$0F
	saTranspose	$F4
	dc.b nA3, $06, nD4, $03, nE4, nRst, nA3, nRst
	dc.b nA4, $03, nRst, $0F, nA3, $03, nB3, $02
	dc.b nRst, $01
	saTranspose	$0C
	saVolFM		$F1
	saDetune	$00
	sPatFM		$0B
	dc.b nE6, $30

FC2_Jump7:
	saTranspose	$0C
	sPatFM		$06
	saVolFM		$FD
	dc.b nD6, $30, nC6, nD6, nE6, $18, nD6, nD6
	dc.b $30, nC6, nD6, nE6, $18, nD6
	saVolFM		$03
	saVolFM		$FD
	sPatFM		$04
	dc.b nC5, $09, nC5, nD5, $1E, nC5, $09, nC5
	dc.b nD5, $1E, nF5, $09, nF5, nG5, $1E, nF5
	dc.b $09, nF5, nG5, $1E
	sPatFM		$0A
	saTranspose	$F4
	dc.b nG5, $24, nG5, $06, nA5, sHold, $24, nA5
	dc.b $06, nF5, sHold, $24, nF5, $06, nE5, sHold
	dc.b $30, sHold, $30
	saTranspose	$0C
	saVolFM		$03
	saTranspose	$F4
	saTranspose	$F4
	saVolFM		$FB
	sPatFM		$05
	dc.b nE6, $30, nA6, $30, nB6, nA6, $30, nB6
	dc.b nA6, $18, nD7, nB6, $30, nA6, $18, nD7
	dc.b $12, nB6, $03, nA6, nB6, $30, nA6, nB6
	dc.b nA6, $21, nG6, $09, nFs6, $06, nE6, $30
	dc.b nD6, $18, nFs6, nE6, $30, $30
	saTranspose	$0C
	saVolFM		$05
	sJump		FC2_Jump7

FC2_FM4:
	sPatFM		$03
	sPan		spRight, $00
	saTranspose	$F4
	saVolFM		$FE
	dc.b nA6, $03, nA7, nE7, nA6, nA7, nE7, nA6
	dc.b nA7, nE7, nA6, nA7, nE7, nA6, nE6, nA6
	dc.b nE7, nA6, nA7, nE7, nA6, nA7, nE7, nA6
	dc.b nA7, nE7, nA6, nA7, nE7, nA6, nE6, nA6
	dc.b nE7
	saVolFM		$02

FC2_Jump6:
	saVolFM		$FF

FC2_Loop2:
	sPatFM		$03
	dc.b nA6, nA7, nE7, nA6, nA7, nE7, nA6, nA7
	dc.b nE7, nA6, nA7, nE7, nA6, nE6, nA6, nE7
	sLoop		$00, $08, FC2_Loop2
	saVolFM		$01
	sPatFM		$07
	saVolFM		$F9

FC2_Loop3:
	dc.b nC6, nC7, nC7, nC6, nC7, nC6, nD7, nD7
	dc.b nD6, nD7, nD7, nD6, nD7, nD6, nD7, nD7
	sLoop		$00, $02, FC2_Loop3

FC2_Loop4:
	dc.b nF6, nF7, nF7, nF6, nF7, nF6, nG7, nG7
	dc.b nG6, nG7, nG7, nG6, nG7, nG6, nG7, nG7
	sLoop		$00, $02, FC2_Loop4
	dc.b nG6, nG7, nG7, nG6, nG7, nG6, nG7, nG7
	dc.b nG6, nG7, nG7, nG6, nG7, nG6, nA7, nA7
	dc.b nA6, nA7, nA7, nA6, nA7, nA6, nA7, nA7
	dc.b nA6, nA7, nA7, nA6, nA7, nA6, nF7, nF7
	dc.b nF6, nF7, nF7, nF6, nF7, nF6, nF7, nF7
	dc.b nF6, nF7, nF7, nF6, nF7, nF6, nE7, nE7
	dc.b nE6, nE7, nE7, nE6, nE7, nE6, nE7, nE7
	dc.b nE6, nE7, nE7, nE6, nE7, nE6, nE7, nE7
	dc.b nE6, nE7, nE7, nE6, nE7, nE6, nE7, nE7
	dc.b nE6, nE7, nE7, nE6, nE7, nE6, nE7, nE7
	saVolFM		$07
	sPatFM		$03
	saVolFM		$FD
	saDetune	$03
	dc.b nAb6, $03, nAb7, nE7, nAb6, nAb7, nE7, nAb6
	dc.b nAb7, nE7, nAb7, nAb7, nAb6, nAb7, nAb6, nAb7
	dc.b nAb7, nA6, nA7, nE7, nA6, nA7, nE7, nA6
	dc.b nA7, nE7, nA7, nA7, nA6, nA7, nA6, nA7
	dc.b nA7, nG6, nG7, nE7, nG6, nG7, nE7, nG6
	dc.b nG7, nE7, nG7, nG7, nG6, nG7, nG6, nG7
	dc.b nG7, nA6, nA7, nE7, nA6, nA7, nE7, nA6
	dc.b nA7, nE7, nA7, nA7, nA6, nA7, nA6, nA7
	dc.b nA7, nG6, nG7, nE7, nG6, nG7, nE7, nG6
	dc.b nG7, nE7, nG7, nG7, nG6, nG7, nG6, nG7
	dc.b nG7, nA6, nA7, nE7, nA6, nA7, nE7, nA6
	dc.b nA7, nE7, nA7, nA7, nA6, nA7, nA6, nA7
	dc.b nA7
	saTranspose	$0C
	dc.b nB5, nB6, nE6, nB5, nB6, nE6, nB5, nB6
	dc.b nE6, nB6, nB6, nB5, nB6, nB5, nB6, nB6
	saTranspose	$F4
	dc.b nG6, nG7, nE7, nG6, nG7, nE7, nG6, nG7
	dc.b nA6, nA7, nA7, nE7, nA7, nA6, nA7, nA7
	dc.b nAb6, nAb7, nE7, nAb6, nAb7, nE7, nAb6, nAb7
	dc.b nE7, nAb7, nAb7, nAb6, nAb7, nAb6, nAb7, nAb7
	dc.b nA6, nA7, nE7, nA6, nA7, nE7, nA6, nA7
	dc.b nE7, nA7, nA7, nA6, nA7, nA6, nA7, nA7
	dc.b nG6, nG7, nE7, nG6, nG7, nE7, nG6, nG7
	dc.b nE7, nG7, nG7, nG6, nG7, nG6, nG7, nG7
	dc.b nA6, nA7, nE7, nA6, nA7, nE7, nA6, nA7
	dc.b nE7, nA7, nA7, nA6, nA7, nA6, nA7, nA7
	saTranspose	$0C
	dc.b nB5, nB6, nE6, nB5, nB6, nE6, nB5, nB6
	dc.b nE6, nB6, nB6, nB5, nB6, nB5, nB6, nB6
	saTranspose	$F4
	dc.b nA6, nA7, nE7, nA6, nA7, nE7, nA6, nA7
	dc.b nE7, nA7, nA7, nA6, nA7, nA6, nA7, nA7
	dc.b nAb6, nAb7, nE7, nAb6, nAb7, nE7, nAb6, nAb7
	dc.b nE7, nAb7, nAb7, nAb6, nAb7, nAb6, nAb7, nAb7
	dc.b nAb6, nAb7, nE7, nAb6, nAb7, nE7, nAb6, nAb7
	dc.b nE7, nAb7, nAb7, nAb6, nAb7, nAb6, nAb7, nAb7
	saVolFM		$03
	saDetune	$00
	sJump		FC2_Jump6

FC2_FM5:
	dc.b nRst, $03
	saDetune	$06
	sPan		spRight, $00
	sJump		FC2_Jump4

FC2_PSG1:
	ssModZ80	$07, $02, $02, $02
	dc.b nRst, $30, nE5, $30

FC2_Jump3:
	dc.b nG5, $30, nF5, $30, nB5, $30, nC6, $18
	dc.b nG5, $18, nG5, $30, nF5, $30, nB5, $30
	dc.b nC6, $18, nG5, $18
	saTranspose	$0C
	dc.b nF4, $09, nF4, nG4, $1E, nF4, $09, nA4
	dc.b nG4, $1E, nA4, $09, nA4, nD5, $1E, nA4
	dc.b $09, nC5, nB4, $1E, nBb4, $24, nBb4, $06
	dc.b nC5, sHold, $24, nC5, $06, nBb4, sHold, $24
	dc.b nBb4, $06, nA4, sHold, $30, sHold, $30
	saVolPSG	$01
	dc.b nE5, $30, nD5, nC5, nD5, nE5, nD5, nE5
	dc.b nC5, $18, nD5, $0C, nFs5, nE5, $30, nD5
	dc.b nC5, nD5, nG5, nFs5, nE5, nE5
	saVolPSG	$FF
	saTranspose	$F4
	sJump		FC2_Jump3

FC2_PSG2:
	ssModZ80	$07, $02, $02, $02
	saTranspose	$0C
	dc.b nRst, $30, nB6, $30

FC2_Jump2:
	saTranspose	$F4
	dc.b nB5, $30, nA5, nG5, nA5, $18, nB5, nB5
	dc.b $30, nA5, nG5, nA5, $18, nB5
	saTranspose	$0C
	dc.b nA4, $09, nA4, nB4, $1E, nA4, $09, nF4
	dc.b nB4, $1E, nC5, $09, nC5, nB4, $1E, nC5
	dc.b $09, nA4, nD5, $1E, nD5, $24, nD5, $06
	dc.b nE5, sHold, $24, nE5, $06, nD5, sHold, $24
	dc.b nD5, $06, nCs5, sHold, $30, sHold, $30
	saVolPSG	$01
	dc.b nAb5, $30, nFs5, nG5, nFs5, nG5, nFs5, nG5
	dc.b nE5, $18, nFs5, $0C, nA5, nAb5, $30, nFs5
	dc.b nG5, nFs5, nB5, nA5, nAb5, nAb5
	saVolPSG	$FF
	sJump		FC2_Jump2

FC2_PSG3:
	saTranspose	$0C
	dc.b nRst, $30, $30

FC2_Jump1:
	saTranspose	$F4
	dc.b nD6, $30, nC6, nD6, nE6, $18, nD6, nD6
	dc.b $30, nC6, nD6, nE6, $18, nD6
	saTranspose	$0C
	saTranspose	$F4
	saVolPSG	$FF
	dc.b nRst, $12, nD5, $06, nG5, nA5, nB5, nD6
	dc.b nC6, $0C, nE6, $06, nD6, $1E, nRst, $12
	dc.b nG5, $06, nB5, nC6, nD6, nG6, nF6, $0C
	dc.b nE6, $06, nD6, $1E
	saVolPSG	$01
	saTranspose	$0C
	dc.b nRst, $30, $30, $30, $30, $30
	saVolPSG	$FF
	sNoteTimeOut	$06
	dc.b nE6, $06, nE7, $09, $09, $09, $09, nE6
	dc.b $06

FC2_Loop1:
	dc.b $06, nE7, $09, $09, $09, $09, nE6, $06
	sLoop		$00, $0F, FC2_Loop1
	sNoteTimeOut	$00
	saVolPSG	$01
	sJump		FC2_Jump1

FC2_DAC:
	saVolFM		$00
	dc.b dKick, $0C, $0C, $0C, dSnare, dElectricHighTom, $03, $03
	dc.b $03, dElectricMidTom, dElectricMidTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricLowTom, dElectricLowTom
	dc.b dElectricLowTom, dElectricFloorTom, dSnare, dSnare, dSnare, dSnare

FC2_Jump9:
	dc.b dKick, $0C, $0C, $0C, dSnare, dKick, dKick, dKick
	dc.b dSnare, $09, dElectricHighTom, $03, dKick, $0C, $0C, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, $06, $03, $03
	dc.b dKick, $0C, $0C, $0C, dSnare, dKick, dKick, dKick
	dc.b dSnare, $09, dElectricHighTom, $03, dKick, $0C, dKick, dKick
	dc.b dSnare, dKick, dKick, dElectricLowTom, $03, $06, dElectricLowTom, $03
	dc.b dKick, dElectricLowTom, dElectricLowTom, dElectricLowTom, dKick, $09, $03, dSnare
	dc.b $09, dKick, $03, $09, $03, dSnare, $09, dKick
	dc.b $03, $09, $03, dSnare, $09, dKick, $03, $09
	dc.b $03, dSnare, $09, dElectricHighTom, $03, dKick, $09, $03
	dc.b dSnare, $09, dKick, $03, $09, $03, dSnare, $09
	dc.b dKick, $03, $09, $03, dSnare, $09, dKick, $03
	dc.b $03, dSnare, dSnare, dKick, dSnare, $06, $03, $03
	dc.b dKick, $09, $03, dSnare, $09, dKick, $03, $09
	dc.b $03, dSnare, $09, dKick, $03, $09, $03, dSnare
	dc.b $09, dKick, $03, $09, $03, dSnare, $09, dKick
	dc.b $03, $09, $03, dSnare, $09, dKick, $03, $09
	dc.b $03, dSnare, $09, dKick, $03, $09, $03, dSnare
	dc.b $09, dKick, $03, $09, $03, dSnare, $09, dKick
	dc.b $03, dElectricHighTom, dElectricHighTom, dElectricHighTom, dElectricHighTom, dSnare, dSnare, dSnare
	dc.b dSnare, dElectricLowTom, dElectricLowTom, dElectricLowTom, dElectricLowTom, dElectricFloorTom, dElectricFloorTom, dSnare
	dc.b dSnare, dKick, $0C, dSnare, $09, dElectricHighTom, $03, dKick
	dc.b $0C, dSnare, $03, $03, dElectricFloorTom, $06, dKick, $0C
	dc.b dSnare, $09, dElectricHighTom, $03, dKick, $09, dSnare, $03
	dc.b $0C, dKick, dSnare, $09, dElectricHighTom, $03, dKick, $0C
	dc.b dSnare, $03, $03, dElectricFloorTom, $06, dKick, $0C, dSnare
	dc.b $09, dElectricHighTom, $03, dKick, $09, dSnare, $03, $0C
	dc.b dKick, dSnare, $09, dElectricHighTom, $03, dKick, $0C, dSnare
	dc.b $03, $03, dElectricFloorTom, $06, dKick, $0C, dSnare, $09
	dc.b dElectricHighTom, $03, dKick, $09, dSnare, $03, $0C, dKick
	dc.b dSnare, $09, dElectricHighTom, $03, dKick, $0C, dSnare, $03
	dc.b $03, dElectricFloorTom, $06, dKick, $0C, dSnare, $09, dElectricHighTom
	dc.b $03, dKick, $0C, dSnare, $03, $03, $03, $03
	dc.b dKick, $0C, dSnare, $09, dElectricHighTom, $03, dKick, $0C
	dc.b dSnare, $03, $03, dElectricFloorTom, $06, dKick, $0C, dSnare
	dc.b $09, dElectricHighTom, $03, dKick, $09, dSnare, $03, $0C
	dc.b dKick, dSnare, $09, dElectricHighTom, $03, dKick, $0C, dSnare
	dc.b $03, $03, dElectricFloorTom, $06, dKick, $0C, dSnare, $09
	dc.b dElectricHighTom, $03, dKick, $09, dSnare, $03, $06, $03
	dc.b $03, dKick, $0C, dSnare, $09, dElectricHighTom, $03, dKick
	dc.b $0C, dSnare, $03, $03, dElectricFloorTom, $06, dKick, $0C
	dc.b dSnare, $09, dElectricHighTom, $03, dKick, $09, dSnare, $03
	dc.b $0C, dKick, dSnare, $09, dElectricHighTom, $03, dKick, $0C
	dc.b dSnare, $03, $03, dElectricFloorTom, $06, dElectricHighTom, $03, $03
	dc.b $03, $03, dElectricMidTom, dElectricMidTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricLowTom
	dc.b dElectricLowTom, dElectricLowTom, dSnare, dSnare, dSnare, dSnare
	sJump		FC2_Jump9

FC2_Patches:
	; Patch $00
	; $00
	; $11, $72, $51, $71,	$1F, $5F, $1F, $5F
	; $10, $10, $10, $00,	$00, $00, $00, $00
	; $18, $18, $18, $09,	$12, $22, $18, $83
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$01, $05, $07, $07
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$10, $10, $10, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$01, $01, $01, $00
	spReleaseRt	$08, $08, $08, $09
	spTotalLv	$12, $18, $22, $03

	; Patch $01
	; $35
	; $00, $31, $72, $00,	$1F, $1F, $1F, $1F
	; $0A, $0B, $0B, $0B,	$12, $17, $17, $17
	; $7F, $7F, $7F, $7F,	$14, $84, $84, $84
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $07, $03, $00
	spMultiple	$00, $02, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $0B, $0B, $0B
	spSustainRt	$12, $17, $17, $17
	spSustainLv	$07, $07, $07, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$14, $04, $04, $04

	; Patch $02
	; $35
	; $01, $08, $71, $31,	$1F, $3F, $1F, $1F
	; $14, $12, $14, $14,	$07, $07, $07, $07
	; $18, $19, $19, $19,	$17, $90, $85, $85
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $07, $00, $03
	spMultiple	$01, $01, $08, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$14, $14, $12, $14
	spSustainRt	$07, $07, $07, $07
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$08, $09, $09, $09
	spTotalLv	$17, $05, $10, $05

	; Patch $03
	; $3D
	; $01, $72, $03, $31,	$1D, $1F, $13, $26
	; $08, $08, $08, $03,	$05, $00, $03, $00
	; $0F, $1B, $1B, $1B,	$1C, $88, $88, $8E
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $07, $03
	spMultiple	$01, $03, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1D, $13, $1F, $06
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $03
	spSustainRt	$05, $03, $00, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0B, $0B, $0B
	spTotalLv	$1C, $08, $08, $0E

	; Patch $04
	; $2C
	; $01, $01, $20, $01,	$1F, $1F, $1F, $1F
	; $06, $02, $06, $02,	$10, $03, $00, $03
	; $4F, $5F, $AF, $8F,	$16, $84, $10, $84
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$00, $02, $00, $00
	spMultiple	$01, $00, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $06, $02, $02
	spSustainRt	$10, $00, $03, $03
	spSustainLv	$04, $0A, $05, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $10, $04, $04

	; Patch $05
	; $3A
	; $01, $62, $01, $21,	$17, $1F, $1F, $1F
	; $05, $05, $05, $09,	$02, $00, $03, $00
	; $0F, $1B, $1B, $1B,	$20, $23, $1C, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $06, $02
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$05, $05, $05, $09
	spSustainRt	$02, $03, $00, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0B, $0B, $0B
	spTotalLv	$20, $1C, $23, $00

	; Patch $06
	; $2C
	; $01, $01, $20, $00,	$1D, $1D, $1D, $1D
	; $06, $02, $06, $02,	$10, $03, $00, $03
	; $4F, $5F, $AF, $8F,	$16, $85, $10, $85
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
	spTotalLv	$16, $10, $05, $05

	; Patch $07
	; $39
	; $05, $12, $31, $71,	$1F, $1F, $1F, $1F
	; $0C, $09, $09, $0F,	$00, $00, $00, $13
	; $0F, $0F, $0F, $1F,	$1D, $1D, $1A, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $03, $01, $07
	spMultiple	$05, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0C, $09, $09, $0F
	spSustainRt	$00, $00, $00, $13
	spSustainLv	$00, $00, $00, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1D, $1A, $1D, $00

	; Patch $08
	; $0C
	; $13, $03, $14, $04,	$11, $15, $11, $15
	; $06, $04, $06, $04,	$09, $01, $09, $01
	; $1C, $1F, $1C, $1F,	$14, $85, $14, $85
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$01, $01, $00, $00
	spMultiple	$03, $04, $03, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$11, $11, $15, $15
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $06, $04, $04
	spSustainRt	$09, $09, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0C, $0C, $0F, $0F
	spTotalLv	$14, $14, $05, $05

	; Patch $09
	; $3A
	; $34, $72, $51, $73,	$1F, $5F, $07, $0A
	; $13, $10, $10, $00,	$08, $00, $00, $00
	; $1A, $18, $18, $09,	$17, $11, $19, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $05, $07, $07
	spMultiple	$04, $01, $02, $03
	spRateScale	$00, $00, $01, $00
	spAttackRt	$1F, $07, $1F, $0A
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $10, $10, $00
	spSustainRt	$08, $00, $00, $00
	spSustainLv	$01, $01, $01, $00
	spReleaseRt	$0A, $08, $08, $09
	spTotalLv	$17, $19, $11, $00

	; Patch $0A
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

	; Patch $0B
	; $3A
	; $34, $72, $51, $73,	$1F, $55, $07, $06
	; $13, $10, $10, $00,	$08, $00, $00, $00
	; $1A, $18, $18, $09,	$17, $11, $19, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $05, $07, $07
	spMultiple	$04, $01, $02, $03
	spRateScale	$00, $00, $01, $00
	spAttackRt	$1F, $07, $15, $06
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$13, $10, $10, $00
	spSustainRt	$08, $00, $00, $00
	spSustainLv	$01, $01, $01, $00
	spReleaseRt	$0A, $08, $08, $09
	spTotalLv	$17, $19, $11, $00
