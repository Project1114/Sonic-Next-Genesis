Mountain_Header:
	sHeaderInit
	sHeaderPatch	Mountain_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $07
	sHeaderDAC	Mountain_DAC
	sHeaderFM	Mountain_FM1, $00, $11
	sHeaderFM	Mountain_FM2, $00, $0E
	sHeaderFM	Mountain_FM3, $00, $0E
	sHeaderFM	Mountain_FM4, $00, $0E
	sHeaderFM	Mountain_FM5, $00, $0F
	sHeaderPSG	Mountain_PSG1, $DC, $03, $00, VolEnv_09
	sHeaderPSG	Mountain_PSG2, $DC, $03, $00, VolEnv_04
	sHeaderPSG	Mountain_PSG3, $00, $02, $00, VolEnv_02

Mountain_FM1:
	sPatFM		$00
	ssModZ80	$1A, $01, $0F, $05

Mountain_Loop1:
	saVolFM		$04
	dc.b nFs3, $18
	saVolFM		$FC
	dc.b nFs2, $12, $06, sHold, $30, nFs2, $18, $12
	dc.b $06, sHold, $18, nB2, $06, nCs3, nE3, nF3
	sLoop		$00, $02, Mountain_Loop1
	sModOff
	dc.b nFs3, $03, nRst, nFs2, $12, $06, nRst, nE2
	dc.b nFs2, nRst, nFs2, nAb2, nRst, nA2, nRst, nB2
	dc.b $0C, nE2, $0C, nCs2, $06, nE2, $0C, nCs2
	dc.b $06, nE2, $0C, nCs2, $06, nE2, $0C, nCs2
	dc.b $06, nE2, nCs2, nAb2, nG2, nFs3, $03, nRst
	dc.b nFs2, $12, $06, nCs3, nE3, nCs3, nFs2, nFs2
	dc.b nAb2, nRst, nA2, $0C, nBb2, nB2, $0C, nA2
	dc.b $06, nB2, $0C, nA2, $06, nB2, $06, nA2
	dc.b nB3, $06, nA2, nBb2, nB2, $0C, nEb2, $06
	dc.b nE2, nF2, nFs3, $03, nRst, nFs2, $12, $06
	dc.b nRst, nE2, nFs2, nRst, nFs2, nAb2, nRst, nA2
	dc.b nRst, nB2, $0C, nE2, $0C, nCs2, $06, nE2
	dc.b $0C, nCs2, $06, nE2, $0C, nCs2, $06, nE2
	dc.b $0C, nCs2, $06, nE2, nCs2, nAb2, nG2, nFs2
	dc.b $03, nRst, nE3, $06, nF3, nFs3, nRst, nCs3
	dc.b nE3, nCs2, nFs2, nFs3, nE3, nRst, nCs3, $0C
	dc.b nC3, nB2, $0C, nA2, $06, nB2, $0C, nA2
	dc.b $06, nAb2, nA2, nEb3, nE3, nFs3, nA3, $0C
	dc.b nB3, $06, nCs4, nE4, nFs4, nA4, nFs4, nE4
	dc.b nFs4, nE4, nCs4, nB3, nA3, nB3, nC4, nCs4
	dc.b nC4, nB3, nA3, nFs3
	ssModZ80	$1A, $01, $0F, $05
	dc.b nE3, $60
	sModOff
	sPatFM		$08
	sCall		Mountain_Call1
	dc.b nC3, $0C, nRst, $48, nRst, $12
	sCall		Mountain_Call2
	dc.b nFs3, nFs4, nFs3, nFs3, nE4, nFs3, nEb4, nE4
	saTranspose	$FE
	sPatFM		$0D
	dc.b nAb3, nEb3, nFs3, nAb3, nB3, nEb4, nE4, nF4
	sJump		Mountain_FM1
	dc.b $F2	; Unused

Mountain_Call1:
	dc.b nB2, $0C, nFs2, nA2, nF2, $06, nAb2, $0C
	dc.b nFs2, $06, nA2, $0C, nBb2, nB2, $0C, nFs2
	dc.b nA2, nF2, $06, nAb2, $0C, nFs2, $06, nC3
	dc.b nAb2, nD3, nBb2, nB2, $0C, nFs2, nA2, nF2
	dc.b $06, nAb2, $0C, nFs2, $06, nA2, $0C, nBb2
	dc.b nB2, $0C, nFs2, nA2, nF2, $06, nAb2, $0C
	dc.b nFs2, $06, nFs3, nF3, nE3, nD3
	saTranspose	$02
	dc.b nB2, $0C, nFs2, nA2, nF2, $06, nAb2, $0C
	dc.b nFs2, $06, nA2, $0C, nBb2, nB2, $0C, nFs2
	dc.b nA2, nF2, $06, nAb2, $0C, nFs2, $06, nC3
	dc.b nAb2, nD3, nBb2, nB2, $0C, nFs2, nA2, nF2
	dc.b $06, nAb2, $0C, nFs2, $06, nA2, $0C, nBb2
	dc.b nB2, $0C, nFs2, nA2, nF2, $06, nAb2, $0C
	dc.b nFs2, $06, nFs3, nF3, nE3, nD3
	saTranspose	$FE
	sRet

Mountain_Call2:
	sPatFM		$0D
	dc.b nFs3, $06
	sPatFM		$11
	dc.b nFs4
	sPatFM		$0D
	dc.b nFs3
	sPatFM		$11
	dc.b nFs3, nE4, nFs3, nEb4, nE4, nFs3, nCs4, nFs3
	dc.b nE4, nFs3, nFs4, nE3, nF3, nFs3, nFs4, nFs3
	dc.b nFs3, nE4, nFs3, nEb4, nE4, nFs3, nCs4, nE4
	dc.b nFs3, nA4, nFs4, $0C, nE3, $06, nFs3, $06
	dc.b nFs4, nFs3, nFs3, nE4, nFs3, nEb4, nE4, nFs3
	dc.b nCs4, nFs3, nE4, nFs3, nFs4, nE3, nF3, nFs3
	dc.b $06, nFs4, nFs3, nFs3, nE4, nFs3, nEb4, nE4
	dc.b nFs3, nCs4, nFs3, nFs3, nE4, nFs3, nFs4, nG4
	saTranspose	$02
	dc.b nFs3, $06, nFs4, nFs3, nFs3, nE4, nFs3, nEb4
	dc.b nE4, nFs3, nCs4, nFs3, nE4, nFs3, nFs4, nE3
	dc.b nF3, nFs3, nFs4, nFs3, nFs3, nE4, nFs3, nEb4
	dc.b nE4, nFs3, nCs4, nE4, nFs3, nA4, nFs4, $0C
	dc.b nE3, $06, nFs3, $06, nFs4, nFs3, nFs3, nE4
	dc.b nFs3, nEb4, nE4, nFs3, nCs4, nFs3, nE4, nFs3
	dc.b nFs4, nE3, nF3
	sRet

Mountain_FM2:
	sCall		Mountain_Call3

Mountain_Jump1:
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	saVolFM		$02
	ssModZ80	$01, $01, $06, $FF
	dc.b nD4, $0C
	sModOff
	dc.b sHold, nE4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nFs4, $06, sHold, $30
	saVolFM		$FE
	sModOff
	sCall		Mountain_Call4
	dc.b nE4, $60
	sModOff
	sPatFM		$0B
	sPan		spLeft
	saVolFM		$FD
	ssModZ80	$1C, $01, $04, $05
	dc.b nFs5, $48, nB5, $0C, nA5, $48, nA5, $0C
	dc.b nAb5, $48, nAb5, $0C, nG5, $24, nFs5, $30
	dc.b nCs6, $48, nCs6, $0C, nB5, $48, nB5, $0C
	dc.b nBb5, $48, nBb5, $0C, nA5, $54
	saVolFM		$03
	sModOff
	sPatFM		$0C
	;ssdetune	$01
	dc.b nRst, $02
	saVolFM		$01
	dc.b nC3, $0C
	sPatFM		$09
	dc.b nBb2, $06, nBb3, nA3, nAb3, nFs3, nB3, nBb3
	dc.b nA3, nCs4, nC4, nB3, nD4, nEb4, nE4, nF4
	dc.b $04
	sPan		spCenter
	;ssdetune	$00
	saVolFM		$FF
	sPatFM		$0F
	dc.b nFs3, $0C, $0C, nRst, $48, nRst, $60, $60
	dc.b nRst, $54
	sCall		Mountain_Call5
	ssModZ80	$00, $01, $10, $FF
	dc.b nFs5, $06, sHold
	sModOff
	ssModZ80	$1C, $01, $0F, $05
	dc.b nAb5, $31
	sModOff
	dc.b nCs5, $06, nEb5, nFs5, nEb5, nFs5, nAb5
	sPatFM		$13
	saVolFM		$02
	ssModZ80	$06, $01, $0A, $FF
	dc.b nB5, $0B, sHold
	sModOff
	dc.b nCs6, $13
	ssModZ80	$03, $01, $0C, $06
	dc.b sHold, $48
	sModOff
	saVolFM		$FE
	sCall		Mountain_Call6
	sJump		Mountain_Jump1
	dc.b $F2	; Unused

Mountain_Call3:
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	saVolFM		$02
	ssModZ80	$00, $01, $05, $FF
	dc.b nB3, $0C
	sModOff
	dc.b sHold, nCs4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nEb4, $06, sHold, $30
	sModOff
	saVolFM		$FE

Mountain_Call6:
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	saVolFM		$02
	ssModZ80	$00, $01, $05, $FF
	dc.b nB3, $0C
	sModOff
	dc.b sHold, nCs4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nC4, $06, sHold, $30
	sModOff
	saVolFM		$FE
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	saVolFM		$02
	ssModZ80	$00, $01, $05, $FF
	dc.b nB3, $0C
	sModOff
	dc.b sHold, nCs4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nEb4, $06, sHold, $30
	sModOff
	saVolFM		$FE
	sRet

Mountain_Call4:
	sPatFM		$04
	dc.b nB4, $06, nC5, nCs5, nE5, nRst, nCs5, nC5
	dc.b nCs5
	ssModZ80	$00, $01, $27, $FF
	dc.b nEb5, $04
	sModOff
	dc.b sHold, nFs5, $02, nRst, $06, nFs4, nRst, $0C
	dc.b nFs4, $06, nA4, nFs4
	ssModZ80	$00, $01, $1A, $FF
	dc.b nA4, $04
	sModOff
	dc.b sHold
	ssModZ80	$19, $01, $0D, $04
	dc.b nB4, $44, sHold, $10
	sModOff
	dc.b sHold
	ssModZ80	$00, $01, $DC, $FF
	dc.b $08
	ssModZ80	$00, $01, $29, $FF
	dc.b nG4, $04
	sModOff
	dc.b sHold
	ssModZ80	$03, $01, $DB, $FF
	dc.b nA4, $03, sHold
	sModOff
	dc.b nAb4, $06, nFs4, nE4, nRst, $05, nCs4, $06
	dc.b nE4, nCs4
	ssModZ80	$00, $01, $28, $FF
	dc.b nE4, $03
	sModOff
	dc.b sHold, nFs4, $06, nRst, $09, nA3, $06, nB3
	dc.b nC4, nCs4
	ssModZ80	$00, $01, $14, $FF
	dc.b nD4, $05
	sModOff
	ssModZ80	$02, $01, $F3, $FF
	dc.b sHold, nE4, $04
	sModOff
	dc.b sHold
	ssModZ80	$19, $01, $0E, $04
	dc.b nEb4, $45, sHold, $18
	sModOff
	dc.b nB4, $06, nC5, nCs5, nE5, nRst, nCs5, nC5
	dc.b nCs5
	ssModZ80	$00, $01, $27, $FF
	dc.b nEb5, $04
	sModOff
	dc.b sHold, nFs5, $02, nRst, $06, nFs4, nRst, $0C
	dc.b nFs4, $06, nA4, nFs4
	ssModZ80	$00, $01, $1A, $FF
	dc.b nA4, $04
	sModOff
	dc.b sHold
	ssModZ80	$19, $01, $0D, $04
	dc.b nB4, $44, sHold, $10, sHold
	ssModZ80	$00, $01, $DC, $FF
	dc.b $08
	ssModZ80	$00, $01, $29, $FF
	dc.b nG4, $04
	sModOff
	dc.b sHold
	ssModZ80	$03, $01, $DB, $FF
	dc.b nA4, $03, sHold
	sModOff
	dc.b nAb4, $06, nFs4, nE4, nRst, $05, nCs5, $06
	dc.b nE5
	ssModZ80	$07, $01, $0A, $FF
	dc.b nAb5, $0A
	sModOff
	dc.b sHold
	ssModZ80	$03, $01, $F8, $FF
	dc.b nA5, $03, sHold
	sModOff
	dc.b nAb5, $06, nFs5, nE5, nE5, $06, nCs5, nE5
	dc.b $05
	ssModZ80	$00, $01, $0F, $FF
	dc.b nB5, $04
	sModOff
	dc.b sHold
	ssModZ80	$02, $01, $F3, $FF
	dc.b nCs6, $05
	sModOff
	dc.b sHold
	ssModZ80	$19, $01, $0D, $04
	dc.b nB5, $45, nRst, $06, nB4, nCs5, nE5
	saVolFM		$02
	dc.b nFs5, nA5, nFs5, nE5, nFs5, nE5, nCs5, nB4
	dc.b nA4, nB4, nC5, nCs5, nC5, nB4, nA4, nFs4
	saVolFM		$FE
	sRet

Mountain_Call5:
	sPatFM		$12
	ssModZ80	$03, $01, $06, $FF
	dc.b nFs5, $12
	sModOff
	dc.b sHold
	ssModZ80	$0D, $01, $10, $05
	dc.b nAb5, $2A, sHold
	ssModZ80	$05, $01, $F9, $FF
	dc.b $10
	sModOff
	dc.b sHold, nFs5, $08
	sPatFM		$10
	dc.b nEb5, $08, nD5, nCs5, nB4, $08, nEb5, nD5
	dc.b nCs5, nB4, nAb4
	ssModZ80	$1C, $01, $ED, $FF
	dc.b nFs4, $1E
	sModOff
	dc.b nD4, $06, nEb4, nFs4
	ssModZ80	$00, $01, $08, $FF
	dc.b nFs4, $08
	sModOff
	dc.b sHold
	ssModZ80	$05, $01, $F5, $FF
	dc.b nAb4, $0A
	ssModZ80	$00, $01, $0A, $FF
	dc.b nA4, $08
	sModOff
	dc.b sHold
	ssModZ80	$0A, $01, $F7, $FF
	dc.b nB4, $0A
	ssModZ80	$00, $01, $0A, $FF
	dc.b nB4, $08
	sModOff
	dc.b sHold
	ssModZ80	$0B, $01, $F8, $FF
	dc.b nCs5, $0A
	sModOff
	ssModZ80	$00, $01, $07, $FF
	dc.b nCs5, $07
	sModOff
	dc.b sHold
	ssModZ80	$03, $01, $FB, $FF
	dc.b nEb5, $07
	sModOff
	dc.b sHold, nCs5, $04, sHold, nB4, $06
	ssModZ80	$03, $01, $1A, $FF
	dc.b nAb4, $07, sHold
	sModOff
	dc.b nEb5, $05, nFs5, $05, sHold
	sRet

Mountain_FM3:
	sPatFM		$01
	sPan		spLeft
	ssModZ80	$00, $01, $09, $FF
	dc.b nB3, $08
	sModOff
	dc.b sHold, nCs4, $10
	sPatFM		$02
	ssModZ80	$00, $01, $09, $FF
	dc.b nG3, $0C
	sModOff
	dc.b sHold, nA3, $06
	ssModZ80	$10, $01, $04, $04
	dc.b nB3, $06, sHold, $30
	sModOff
	sPatFM		$01
	ssModZ80	$00, $01, $09, $FF
	dc.b nB3, $08
	sModOff
	dc.b sHold, nCs4, $10
	sPatFM		$02
	ssModZ80	$00, $01, $09, $FF
	dc.b nG3, $0C
	sModOff
	dc.b sHold, nA3, $06
	ssModZ80	$10, $01, $04, $04
	dc.b nAb3, $06, sHold, $30
	sModOff
	sPatFM		$01
	ssModZ80	$00, $01, $09, $FF
	dc.b nB3, $08
	sModOff
	dc.b sHold, nCs4, $10
	sPatFM		$02
	ssModZ80	$00, $01, $09, $FF
	dc.b nG3, $0C
	sModOff
	dc.b sHold, nA3, $06
	ssModZ80	$10, $01, $04, $04
	dc.b nB3, $06, sHold, $30
	sModOff
	sPatFM		$01
	ssModZ80	$00, $01, $09, $FF
	dc.b nB3, $08
	sModOff
	dc.b sHold, nCs4, $10
	sPatFM		$02
	ssModZ80	$00, $01, $0B, $FF
	dc.b nBb3, $0C
	sModOff
	dc.b sHold, nC4, $06
	ssModZ80	$10, $01, $04, $04
	dc.b nD4, $06, sHold, $30
	sModOff
	sPan		spCenter
	sPan		spLeft
	ssModZ80	$18, $01, $FA, $05
	sCall		Mountain_Call7
	dc.b nB4, $0C, nA4, $03, nRst, nB4, $0C
	sPatFM		$06
	sPan		spCenter
	dc.b nA3, $06, nB3, nCs4, nEb4, nE4, nFs4, nBb4
	dc.b $01, sHold, nB4, $17, sHold
	ssModZ80	$00, $01, $EA, $FF
	dc.b $06
	ssModZ80	$18, $01, $FA, $05
	sPan		spLeft
	sCall		Mountain_Call7
	dc.b nB4, $12, nA4, nB4, $0C
	sPatFM		$06
	sPan		spCenter
	dc.b nFs4, $06, nB4, nBb4, nA4, $1E
	sPatFM		$07
	dc.b nFs5, $06, nA5, nFs5, nE5, nFs5, nE5, nCs5
	dc.b nB4, nA4, nB4, nC5, nCs5, nC5, nB4, nA4
	dc.b nFs4
	sPatFM		$03
	dc.b nB4, $60
	sModOff
	sPatFM		$0A
	;sPanAni		$03, $03, $03, $03, $04
	saVolFM		$FC
	;ssdetune	$03
	sCall		Mountain_Call1
	saVolFM		$04
	;ssdetune	$00
	;sPanAni
	sPatFM		$0C
	saVolFM		$FD
	dc.b nC3, $0C
	sPatFM		$09
	dc.b nBb2, $06, nBb3, nA3, nAb3, nFs3, nB3, nBb3
	dc.b nA3, nCs4, nC4, nB3, nD4, nEb4, nE4, nF4
	saVolFM		$03
	;sPanAni		$03, $02, $02, $02, $03
	;ssdetune	$11
	dc.b nRst, $0C
	saVolFM		$10
	sCall		Mountain_Call2
	dc.b nFs3, nFs4, nFs3, nFs3, nE4, nFs3, nEb4
	saTranspose	$FE
	saVolFM		$F0
	;sPanAni
	sPatFM		$0F
	dc.b nEb3, $06, nFs3, nAb3, nB3, nEb4, nE4, nF4
	;ssdetune	$00
	sJump		Mountain_FM3
	dc.b $F2	; Unused

Mountain_Call7:
	sPatFM		$05
	dc.b nFs4, $12, nA4, nB4, $0C, sHold, $30, nB4
	dc.b $12, nA4, nB4, $0C, sHold, $06, nC5, $12
	dc.b nB4, $0C, nA4, nFs4, $12, nA4, nB4, $0C
	dc.b sHold, $30
	sRet

Mountain_FM4:
	sPan		spRight
	sPatFM		$01
	;ssdetune	$02
	dc.b nFs3, $18
	sPatFM		$02
	ssModZ80	$00, $01, $07, $FF
	dc.b nD3, $0C
	sModOff
	dc.b sHold, nE3, $06, nFs3, $06, sHold, $30
	sPatFM		$01
	dc.b nFs3, $18
	sPatFM		$02
	ssModZ80	$00, $01, $07, $FF
	dc.b nD3, $0C
	sModOff
	dc.b sHold, nE3, $06, nEb3, $06, sHold, $30
	sPatFM		$01
	dc.b nFs3, $18
	sPatFM		$02
	ssModZ80	$00, $01, $07, $FF
	dc.b nD3, $0C
	sModOff
	dc.b sHold, nE3, $06, nFs3, $06, sHold, $30
	sPatFM		$01
	dc.b nFs3, $18
	sPatFM		$02
	ssModZ80	$00, $01, $09, $FF
	dc.b nF3, $0C
	sModOff
	dc.b sHold, nG3, $06, nA3, $06, sHold, $30
	;ssdetune	$00
	sPan		spRight
	ssModZ80	$18, $01, $06, $05
	sCall		Mountain_Call8
	dc.b nFs4, $0C, nE4, $03, nRst, nFs4, $0C
	sPatFM		$06
	sPan		spCenter
	dc.b nFs3, $06, $06, nA3, nA3, nB3, nEb4, nF4
	dc.b $01, sHold, nFs4, $17, sHold
	ssModZ80	$00, $01, $EA, $FF
	dc.b $06
	ssModZ80	$18, $01, $06, $05
	sPan		spRight
	sCall		Mountain_Call8
	dc.b nFs4, $12, nE4, nFs4, $0C
	sPatFM		$06
	sPan		spCenter
	dc.b nB3, $06, nEb4, nD4, nCs4, $1E
	sPatFM		$03
	sPan		spLeft
	dc.b nFs4, $06, nA4, nFs4, nE4, nFs4, nE4, nCs4
	dc.b nB3, nA3, nB3, nC4, nCs4, nC4, nB3, nA3
	dc.b nFs3, nE3, $60
	sModOff
	sPan		spCenter
	saVolFM		$FD
	sPan		spRight
	ssModZ80	$1C, $01, $04, $05
	sPatFM		$0B
	dc.b nCs5, $48, nEb5, $0C, nD5, $48, nD5, $0C
	dc.b nCs5, $48, nCs5, $0C, nC5, $24, nB4, $30
	dc.b nEb5, $48, nEb5, $0C, nE5, $48, nE5, $0C
	dc.b nF5, $48, nF5, $0C, nE5, $54
	saVolFM		$03
	sModOff
	sPatFM		$0C
	;ssdetune	$FF
	dc.b nRst, $04, nC3, $0C
	sPatFM		$09
	dc.b nBb2, $06, nBb3, nA3, nAb3, nFs3, nB3, nBb3
	dc.b nA3, nCs4, nC4, nB3, nD4, nEb4, nE4, nF4
	dc.b $02
	sPan		spCenter
	;ssdetune	$00
	sPatFM		$0F
	dc.b nCs4, $0C, $0C
	sPan		spLeft
	sPatFM		$0E
	dc.b nEb0, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $04
	saVolFM		$02
	;ssdetune	$04
	sCall		Mountain_Call5
	ssModZ80	$00, $01, $10, $FF
	dc.b nFs5, $06, sHold
	sModOff
	ssModZ80	$1C, $01, $0F, $05
	dc.b nAb5, $31
	sModOff
	dc.b nCs5, $06, nEb5, nFs5, nEb5, nFs5, nAb5, $02
	saVolFM		$FE
	;ssdetune	$00
	sPan		spCenter
	sJump		Mountain_FM4
	dc.b $F2	; Unused

Mountain_Call8:
	sPatFM		$05
	dc.b nCs4, $12, nE4, nFs4, $0C, sHold, $30, nE4
	dc.b $12, nD4, nE4, $0C, sHold, $06, nF4, $12
	dc.b nE4, $0C, nD4, nCs4, $12, nE4, nFs4, $0C
	dc.b sHold, $30
	sRet

Mountain_FM5:
	;ssdetune	$F8
	saVolFM		$06
	dc.b nRst, $0C
	sCall		Mountain_Call9

Mountain_Jump2:
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	ssModZ80	$01, $01, $06, $FF
	dc.b nD4, $0C
	sModOff
	dc.b sHold, nE4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nFs4, $06, sHold, $2A
	sModOff
	;ssdetune	$00
	saVolFM		$FA
	;ssdetune	$F8
	;sPanAni		$03, $03, $03, $02, $04
	saVolFM		$0A
	sCall		Mountain_Call4
	saVolFM		$EC
	;sPanAni
	;ssdetune	$00
	dc.b nRst, $06
	sPatFM		$14
	ssModZ80	$00, $01, $ED, $FF
	dc.b nBb4, $0C, nE4, $06, nAb4, $0C, nE4, $03
	dc.b $03, nFs4, $06, $06, nE4, $0C, nFs4, $0C
	dc.b $06, $06, nRst, $06
	saVolFM		$14
	sModOff
	saVolFM		$F6
	sPatFM		$0B
	saVolFM		$03
	;ssdetune	$06
	dc.b nRst, $06, nFs5, $48, nB5, $0C, nA5, $48
	dc.b nA5, $0C, nAb5, $48, nAb5, $0C, nG5, $24
	dc.b nFs5, $30, nCs6, $48, nCs6, $0C, nB5, $48
	dc.b nB5, $0C, nBb5, $48, nBb5, $0C, nA5, $54
	;ssdetune	$00
	saVolFM		$FD
	dc.b nRst, $54, nRst, $12
	sPatFM		$0F
	saVolFM		$1A
	dc.b nFs3, $0C, $0C, nRst, $48
	saVolFM		$E6
	dc.b nRst, $60, $60, nRst, $54, nRst, $0C
	saVolFM		$03
	;ssdetune	$FC
	sPan		spRight
	sCall		Mountain_Call5
	ssModZ80	$00, $01, $10, $FF
	dc.b nFs5, $06, sHold
	sModOff
	ssModZ80	$1C, $01, $0F, $05
	dc.b nAb5, $31
	sModOff
	dc.b nCs5, $06, nEb5, nFs5
	saVolFM		$FD
	;ssdetune	$00
	sPan		spCenter
	saVolFM		$FE
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	ssModZ80	$00, $01, $05, $FF
	dc.b nB3, $0C
	sModOff
	dc.b sHold, nCs4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nEb4, $06, sHold, $30
	sModOff
	saVolFM		$02
	;ssdetune	$F8
	saVolFM		$06
	dc.b nRst, $0C
	sCall		Mountain_Call10
	sJump		Mountain_Jump2
	dc.b $F2	; Unused

Mountain_Call9:
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	ssModZ80	$00, $01, $05, $FF
	dc.b nB3, $0C
	sModOff
	dc.b sHold, nCs4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nEb4, $06, sHold, $30
	sModOff

Mountain_Call10:
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	ssModZ80	$00, $01, $05, $FF
	dc.b nB3, $0C
	sModOff
	dc.b sHold, nCs4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nC4, $06, sHold, $30
	sModOff
	sPatFM		$01
	ssModZ80	$00, $01, $0B, $FF
	dc.b nE3, $08
	sModOff
	dc.b sHold, nFs3, $10
	sPatFM		$02
	ssModZ80	$00, $01, $05, $FF
	dc.b nB3, $0C
	sModOff
	dc.b sHold, nCs4, $06
	ssModZ80	$10, $01, $04, $05
	dc.b nEb4, $06, sHold, $30
	sModOff
	sRet

Mountain_PSG1:
	sVolEnvPSG	VolEnv_02
	saTranspose	$0C

Mountain_Loop2:
	dc.b nFs5, $06, nRst, nFs4, nRst, nFs5, nRst, nFs4
	dc.b nFs5, nRst, nFs5, nFs4, nRst, nFs5, nRst, nFs4
	dc.b nRst
	sLoop		$00, $04, Mountain_Loop2
	saTranspose	$F4
	sVolEnvPSG	VolEnv_00
	saVolPSG	$03
	saTranspose	$F4
	sCall		Mountain_Call11
	dc.b nB4, $12, $0C, nA3, $06, nB3, nCs4, nEb4
	dc.b nE4, nFs4, nB4, $1E
	sCall		Mountain_Call11
	dc.b nB4, $12, nA4, nB4, $0C, nFs4, $06, nB4
	dc.b nBb4, nA4, $1E
	saTranspose	$0C
	saVolPSG	$FD
	dc.b nRst, $60, $60
	saTranspose	$F4
	sVolEnvPSG	VolEnv_00
	saVolPSG	$03
	dc.b nFs5, $48, nB5, $0C, nA5, $48, nA5, $0C
	dc.b nAb5, $48, nAb5, $0C, nG5, $24, nFs5, $30
	dc.b nCs6, $48, nCs6, $0C, nB5, $48, nB5, $0C
	dc.b nBb5, $48, nBb5, $0C, nA5, $54, nRst, $54
	dc.b nRst, $12
	saTranspose	$0C
	saVolPSG	$FD
	sVolEnvPSG	VolEnv_00
	ssModZ80	$1A, $01, $03, $04
	saVolPSG	$04
	dc.b nFs4, $60
	saVolPSG	$FF
	dc.b nE4, $60
	saVolPSG	$FF
	dc.b nEb4, $60
	saVolPSG	$FF
	dc.b nE4, $48, nF4, $08, nFs4, nG4, nAb4, $60
	dc.b nFs4, $60, nF4, $60, nE4, $60
	sModOff
	saVolPSG	$FF
	sJump		Mountain_PSG1
	dc.b $F2	; Unused

Mountain_Call11:
	dc.b nFs4, $12, nA4, nB4, $0C, sHold, $30, nB4
	dc.b $12, nA4, nB4, $0C, sHold, $06, nC5, $12
	dc.b nB4, $0C, nA4, nFs4, $12, nA4, nB4, $0C
	dc.b sHold, $30
	sRet

Mountain_PSG2:
	dc.b nRst, $06
	saVolPSG	$02
	sVolEnvPSG	VolEnv_02
	saTranspose	$0C

Mountain_Loop3:
	dc.b nFs5, $06, nRst, nFs4, nRst, nFs5, nRst, nFs4
	dc.b nFs5, nRst, nFs5, nFs4, nRst, nFs5, nRst, nFs4
	dc.b nRst
	sLoop		$00, $03, Mountain_Loop3
	dc.b nFs5, $06, nRst, nFs4, nRst, nFs5, nRst, nFs4
	dc.b nFs5, nRst, nFs5, nFs4, nRst, nFs5, nRst, nFs4
	saTranspose	$F4
	saVolPSG	$FE
	sVolEnvPSG	VolEnv_00
	saTranspose	$F4
	saVolPSG	$03
	sCall		Mountain_Call12
	dc.b nFs4, $12, $0C, nFs3, $06, $06, nA3, nA3
	dc.b nB3, nEb4, nFs4, $1E
	sCall		Mountain_Call12
	dc.b nFs4, $12, nE4, nFs4, $0C, nB3, $06, nEb4
	dc.b nD4, nCs4, $1E
	saTranspose	$0C
	saVolPSG	$FD
	dc.b nRst, $60, $60
	saTranspose	$F4
	sVolEnvPSG	VolEnv_00
	saVolPSG	$03
	dc.b nCs5, $48, nEb5, $0C, nD5, $48, nD5, $0C
	dc.b nCs5, $48, nCs5, $0C, nC5, $24, nB4, $30
	dc.b nEb5, $48, nEb5, $0C, nE5, $48, nE5, $0C
	dc.b nF5, $48, nF5, $0C, nE5, $54, nRst, $54
	dc.b nRst, $12
	saTranspose	$0C
	saVolPSG	$FD
	sVolEnvPSG	VolEnv_00
	ssModZ80	$1A, $01, $02, $04
	saVolPSG	$03
	dc.b nCs4, $60
	saVolPSG	$FF
	dc.b nB3, $60
	saVolPSG	$FF
	dc.b nBb3, $60
	saVolPSG	$FF
	dc.b nB3, $48, nC4, $08, nCs4, nD4, nEb4, $60
	dc.b nCs4, $60, nC4, $60, nB3, $60
	sModOff
	sJump		Mountain_PSG2
	dc.b $F2	; Unused

Mountain_Call12:
	dc.b nCs4, $12, nE4, nFs4, $0C, sHold, $30, nE4
	dc.b $12, nD4, nE4, $0C, sHold, $06, nF4, $12
	dc.b nE4, $0C, nD4, nCs4, $12, nE4, nFs4, $0C
	dc.b sHold, $30
	sRet

Mountain_PSG3:
	sNoisePSG	$E7

Mountain_Loop4:
	sVolEnvPSG	VolEnv_02
	dc.b nA5, $0C, $06, $06, $0C, $06
	sVolEnvPSG	VolEnv_03
	saVolPSG	$FF
	dc.b $12
	saVolPSG	$01
	sVolEnvPSG	VolEnv_02
	dc.b $06, $06, $06
	sVolEnvPSG	VolEnv_03
	saVolPSG	$FF
	dc.b $06
	saVolPSG	$01
	sVolEnvPSG	VolEnv_02
	dc.b $06, $06
	sLoop		$00, $03, Mountain_Loop4
	dc.b nA5, $0C, $06, $06, $0C, $06
	sVolEnvPSG	VolEnv_03
	saVolPSG	$FF
	dc.b $12
	saVolPSG	$01
	sVolEnvPSG	VolEnv_02
	dc.b $06, $06, $06, $06, $06, $06

Mountain_Loop5:
	dc.b nA5, $0C, $06, $06, $0C, $06, $06, $06
	dc.b $06, $0C, $0C, $06, $06, $0C, $06, $06
	dc.b $0C, $06, $06, $06, $06, $06, $0C, $06
	dc.b $06, $06, $06, $06, $06, $0C, $06, $06
	dc.b $06, $0C, $06, $06, $0C, $06, $06, $0C
	dc.b $06, $06, $0C, $06, $06, $06, $06, $06
	dc.b $0C, $06, $06, $06
	sLoop		$00, $02, Mountain_Loop5
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06, $06, $06, $06, $06, $06, $06

Mountain_Loop6:
	dc.b $06, $06
	sVolEnvPSG	VolEnv_03
	saVolPSG	$FF
	dc.b $0C
	saVolPSG	$01
	sVolEnvPSG	VolEnv_02
	sLoop		$00, $04, Mountain_Loop6

Mountain_Loop7:
	dc.b nA5, $06, $06, $0C, $0C, $06, $06, nRst
	dc.b $06, nA5, $06, $06, $06, $0C, $0C, $0C
	dc.b $0C, $06, $06, $06, $06, $0C, $06, $06
	dc.b $06, $06, $0C, $0C, $0C, $06, $06, $06
	dc.b $06, $0C, $0C, $06, $06, $0C, $0C, $06
	dc.b $06, $06, $06, $06, $06
	sLoop		$00, $02, Mountain_Loop7
	dc.b nRst, $54, nRst, $12
	saVolPSG	$01

Mountain_Loop8:
	dc.b nA5, $06, $06, $06, $06, $06, $06, $06
	dc.b $06
	sLoop		$00, $10, Mountain_Loop8
	saVolPSG	$FF
	sJump		Mountain_PSG3
	dc.b $F2	; Unused

Mountain_DAC:
	dc.b dKick, $18, $12, $1E, $0C, dSnare, dKick, $18
	dc.b $12, $0C, dSnare, $12, dKick, $0C, dLowTom, dKick
	dc.b $18, $12, $1E, $0C, dSnare, dKick, $18, $12
	dc.b $0C, dHighTom, $06, dMidTom, $0C, dSnare, $0C, $06
	dc.b $06, dKick, $06, $12, dSnare, $0C, dKick, $06
	dc.b $0C, $06, $0C, dSnare, dKick, dKick, $0C, $06
	dc.b $06, dSnare, $0C, dKick, $0C, $06, $12, dSnare
	dc.b $06, dKick, $0C, $06, dKick, $18, dSnare, $0C
	dc.b dKick, $06, $0C, $06, $0C, dSnare, $0C, dKick
	dc.b dKick, $0C, $06, $06, dSnare, $0C, dKick, $0C
	dc.b $06, dMidTom, dHighTom, dSnare, $0C, dHighTom, $03, $03
	dc.b dMidTom, $06, dLowTom, dKick, $18, dSnare, $12, dKick
	dc.b $06, $0C, $0C, dSnare, dKick, dKick, $0C, $06
	dc.b $06, dSnare, $0C, dKick, $0C, $06, $12, dSnare
	dc.b $06, dKick, $0C, $06, dKick, $18, dSnare, $0C
	dc.b dKick, $06, $0C, $06, $0C, dSnare, $0C, dKick
	dc.b dKick, $0C, $06, $06, dSnare, $12, dKick, $06
	dc.b dKick, $0C, $06, dSnare, $0C, dHighTom, $03, $03
	dc.b dMidTom, $06, dLowTom, dKick, $06, dHighTom, $0C, dKick
	dc.b $06, dMidTom, $0C, dLowTom, $06, $0C, dMidTom, $06
	dc.b dKick, $0C, dLowTom, dSnare, $06, $06, dKick, $0C
	dc.b dHighTom, dKick, $06, dMidTom, $0C, dLowTom, $03, $03
	dc.b dSnare, $06, $06, dMidTom, $0C, dSnare, $0C, $06
	dc.b $06, dKick, $18, $18, $06, dSnare, dHighTom, $0C
	dc.b dMidTom, dKick, $18, dSnare, dKick, dKick, $0C, dKick
	dc.b $18, dSnare, $12, dHighTom, $06, dKick, $0C, dMidTom
	dc.b dLowTom, dKick, $18, dSnare, dKick, $06, dHighTom, dHighTom
	dc.b dMidTom, dLowTom, $0C, dKick, $18, dSnare, dKick, $06
	dc.b dSnare, $12, dKick, $0C, dKick, $18, dSnare, dKick
	dc.b $06, dHighTom, dMidTom, $0C, dLowTom, dKick, $18, dSnare
	dc.b dKick, $06, dSnare, $12, dKick, $0C, dKick, $18
	dc.b dSnare, dKick, $06, dHighTom, $03, $03, $06, dMidTom
	dc.b dMidTom, dLowTom, dKick, $54, nRst, $12, dSnare, $0C
	dc.b $0C, nRst, $48, nRst, $60, $60, nRst, $60
	dc.b $60, $60, $60, nRst, $4E, dHighTom, $06, dMidTom
	dc.b dLowTom
	sJump		Mountain_DAC
	dc.b $F2	; Unused

Mountain_Patches:

	; Patch $00
	; $25
	; $10, $51, $01, $11,	$AF, $5F, $5F, $5F
	; $0E, $1F, $1F, $1F,	$03, $00, $00, $00
	; $26, $17, $17, $07,	$0A, $85, $85, $85
	spAlgorithm	$05
	spFeedback	$04
	spDetune	$01, $00, $05, $01
	spMultiple	$00, $01, $01, $01
	spRateScale	$02, $01, $01, $01
	spAttackRt	$0F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $1F, $1F, $1F
	spSustainLv	$02, $01, $01, $00
	spDecayRt	$03, $00, $00, $00
	spReleaseRt	$06, $07, $07, $07
	spTotalLv	$0A, $05, $05, $05

	; Patch $01
	; $2B
	; $02, $70, $30, $02,	$1F, $1F, $1F, $1F
	; $18, $1F, $1A, $10,	$0B, $04, $00, $08
	; $5A, $0A, $0A, $2C,	$0F, $0B, $10, $80
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$00, $03, $07, $00
	spMultiple	$02, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$18, $1A, $1F, $10
	spSustainLv	$05, $00, $00, $02
	spDecayRt	$0B, $00, $04, $08
	spReleaseRt	$0A, $0A, $0A, $0C
	spTotalLv	$0F, $10, $0B, $00

	; Patch $02
	; $2A
	; $75, $21, $41, $32,	$0F, $1F, $0F, $10
	; $0F, $10, $0F, $0B,	$02, $04, $06, $07
	; $35, $0A, $15, $17,	$1E, $15, $05, $80
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$07, $04, $02, $03
	spMultiple	$05, $01, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0F, $10, $0B
	spSustainLv	$03, $01, $00, $01
	spDecayRt	$02, $06, $04, $07
	spReleaseRt	$05, $05, $0A, $07
	spTotalLv	$1E, $05, $15, $00

	; Patch $03
	; $2B
	; $02, $70, $30, $02,	$1F, $1F, $1F, $1F
	; $18, $1F, $1A, $10,	$00, $00, $00, $08
	; $5A, $0A, $0A, $2C,	$1B, $10, $17, $80
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$00, $03, $07, $00
	spMultiple	$02, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$18, $1A, $1F, $10
	spSustainLv	$05, $00, $00, $02
	spDecayRt	$00, $00, $00, $08
	spReleaseRt	$0A, $0A, $0A, $0C
	spTotalLv	$1B, $17, $10, $00

	; Patch $04
	; $29
	; $00, $00, $01, $10,	$1F, $1F, $1F, $1F
	; $1B, $1F, $1F, $0C,	$15, $08, $01, $05
	; $39, $29, $0C, $1C,	$11, $0F, $0F, $81
	spAlgorithm	$01
	spFeedback	$05
	spDetune	$00, $00, $00, $01
	spMultiple	$00, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1B, $1F, $1F, $0C
	spSustainLv	$03, $00, $02, $01
	spDecayRt	$15, $01, $08, $05
	spReleaseRt	$09, $0C, $09, $0C
	spTotalLv	$11, $0F, $0F, $01

	; Patch $05
	; $2D
	; $00, $51, $31, $01,	$1F, $1F, $1F, $1F
	; $08, $0C, $0C, $0C,	$00, $13, $13, $13
	; $3F, $2F, $2F, $2F,	$03, $8A, $8A, $8A
	spAlgorithm	$05
	spFeedback	$05
	spDetune	$00, $03, $05, $00
	spMultiple	$00, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $0C, $0C, $0C
	spSustainLv	$03, $02, $02, $02
	spDecayRt	$00, $13, $13, $13
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$03, $0A, $0A, $0A

	; Patch $06
	; $2A
	; $71, $21, $21, $31,	$0F, $1F, $0F, $10
	; $0F, $10, $0F, $0E,	$02, $04, $00, $08
	; $15, $0A, $05, $1F,	$13, $1C, $10, $81
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$07, $02, $02, $03
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0F, $10, $0E
	spSustainLv	$01, $00, $00, $01
	spDecayRt	$02, $00, $04, $08
	spReleaseRt	$05, $05, $0A, $0F
	spTotalLv	$13, $10, $1C, $01

	; Patch $07
	; $3C
	; $73, $72, $33, $32,	$DF, $1F, $1F, $DF
	; $1F, $10, $1A, $09,	$13, $11, $00, $10
	; $28, $59, $18, $59,	$0B, $8A, $10, $8A
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$03, $03, $02, $02
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $1A, $10, $09
	spSustainLv	$02, $01, $05, $05
	spDecayRt	$13, $00, $11, $10
	spReleaseRt	$08, $08, $09, $09
	spTotalLv	$0B, $10, $0A, $0A

	; Patch $08
	; $35
	; $10, $51, $00, $11,	$5F, $5F, $5F, $5F
	; $10, $1F, $1F, $1F,	$0B, $00, $00, $00
	; $26, $09, $09, $09,	$0E, $80, $98, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$01, $00, $05, $01
	spMultiple	$00, $00, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $1F, $1F, $1F
	spSustainLv	$02, $00, $00, $00
	spDecayRt	$0B, $00, $00, $00
	spReleaseRt	$06, $09, $09, $09
	spTotalLv	$0E, $18, $00, $00

	; Patch $09
	; $2B
	; $01, $71, $31, $01,	$1F, $1F, $1F, $1F
	; $18, $1F, $0F, $0F,	$0B, $00, $00, $08
	; $0A, $0A, $1A, $6C,	$11, $11, $0C, $83
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$00, $03, $07, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$18, $0F, $1F, $0F
	spSustainLv	$00, $01, $00, $06
	spDecayRt	$0B, $00, $00, $08
	spReleaseRt	$0A, $0A, $0A, $0C
	spTotalLv	$11, $0C, $11, $03

	; Patch $0A
	; $19
	; $33, $72, $10, $04,	$1F, $1F, $1F, $1F
	; $0E, $0A, $0C, $0E,	$11, $13, $15, $00
	; $19, $19, $1C, $2C,	$29, $10, $1C, $82
	spAlgorithm	$01
	spFeedback	$03
	spDetune	$03, $01, $07, $00
	spMultiple	$03, $00, $02, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0C, $0A, $0E
	spSustainLv	$01, $01, $01, $02
	spDecayRt	$11, $15, $13, $00
	spReleaseRt	$09, $0C, $09, $0C
	spTotalLv	$29, $1C, $10, $02

	; Patch $0B
	; $14
	; $70, $30, $21, $34,	$08, $5F, $1F, $5F
	; $0A, $0E, $13, $11,	$07, $00, $05, $07
	; $41, $35, $13, $25,	$05, $82, $00, $82
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$07, $02, $03, $03
	spMultiple	$00, $01, $00, $04
	spRateScale	$00, $00, $01, $01
	spAttackRt	$08, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $13, $0E, $11
	spSustainLv	$04, $01, $03, $02
	spDecayRt	$07, $05, $00, $07
	spReleaseRt	$01, $03, $05, $05
	spTotalLv	$05, $00, $02, $02

	; Patch $0C
	; $2B
	; $01, $71, $31, $01,	$1F, $1F, $1F, $1F
	; $18, $1F, $0F, $0F,	$0B, $00, $00, $08
	; $0A, $0A, $1A, $2C,	$11, $11, $0C, $81
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$00, $03, $07, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$18, $0F, $1F, $0F
	spSustainLv	$00, $01, $00, $02
	spDecayRt	$0B, $00, $00, $08
	spReleaseRt	$0A, $0A, $0A, $0C
	spTotalLv	$11, $0C, $11, $01

	; Patch $0D
	; $35
	; $10, $51, $00, $11,	$5F, $5F, $5F, $5F
	; $10, $1F, $1F, $1F,	$0B, $00, $00, $00
	; $26, $09, $09, $09,	$0E, $80, $98, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$01, $00, $05, $01
	spMultiple	$00, $00, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $1F, $1F, $1F
	spSustainLv	$02, $00, $00, $00
	spDecayRt	$0B, $00, $00, $00
	spReleaseRt	$06, $09, $09, $09
	spTotalLv	$0E, $18, $00, $00

	; Patch $0E
	; $2D
	; $09, $61, $30, $11,	$1F, $1F, $1F, $1F
	; $10, $15, $15, $15,	$1E, $1E, $1E, $1E
	; $AF, $FF, $AF, $FF,	$00, $86, $86, $86
	spAlgorithm	$05
	spFeedback	$05
	spDetune	$00, $03, $06, $01
	spMultiple	$09, $00, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $15, $15, $15
	spSustainLv	$0A, $0A, $0F, $0F
	spDecayRt	$1E, $1E, $1E, $1E
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $06, $06, $06

	; Patch $0F
	; $2B
	; $02, $72, $30, $02,	$1F, $1F, $1F, $1F
	; $18, $1F, $1A, $0D,	$00, $00, $00, $1C
	; $5A, $0A, $0A, $3F,	$0F, $0F, $07, $80
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$00, $03, $07, $00
	spMultiple	$02, $00, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$18, $1A, $1F, $0D
	spSustainLv	$05, $00, $00, $03
	spDecayRt	$00, $00, $00, $1C
	spReleaseRt	$0A, $0A, $0A, $0F
	spTotalLv	$0F, $07, $0F, $00

	; Patch $10
	; $39
	; $71, $30, $02, $12,	$15, $1F, $1F, $1F
	; $10, $1A, $1F, $0E,	$04, $08, $01, $02
	; $49, $19, $1C, $1C,	$2F, $26, $10, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$07, $00, $03, $01
	spMultiple	$01, $02, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$15, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $1F, $1A, $0E
	spSustainLv	$04, $01, $01, $01
	spDecayRt	$04, $01, $08, $02
	spReleaseRt	$09, $0C, $09, $0C
	spTotalLv	$2F, $10, $26, $00

	; Patch $11
	; $35
	; $14, $50, $00, $10,	$1F, $5F, $5F, $5F
	; $16, $1F, $1F, $1F,	$12, $00, $00, $00
	; $66, $0F, $0F, $0F,	$11, $85, $98, $85
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$01, $00, $05, $01
	spMultiple	$04, $00, $00, $00
	spRateScale	$00, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$16, $1F, $1F, $1F
	spSustainLv	$06, $00, $00, $00
	spDecayRt	$12, $00, $00, $00
	spReleaseRt	$06, $0F, $0F, $0F
	spTotalLv	$11, $18, $05, $05

	; Patch $12
	; $39
	; $71, $30, $02, $12,	$15, $1F, $1F, $0C
	; $10, $1A, $1F, $0E,	$04, $08, $01, $02
	; $49, $19, $1C, $1C,	$2F, $26, $10, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$07, $00, $03, $01
	spMultiple	$01, $02, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$15, $1F, $1F, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $1F, $1A, $0E
	spSustainLv	$04, $01, $01, $01
	spDecayRt	$04, $01, $08, $02
	spReleaseRt	$09, $0C, $09, $0C
	spTotalLv	$2F, $10, $26, $00

	; Patch $13
	; $39
	; $71, $30, $02, $12,	$15, $1F, $1F, $1F
	; $10, $1A, $1F, $0E,	$04, $08, $01, $06
	; $49, $19, $1C, $1C,	$2F, $26, $10, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$07, $00, $03, $01
	spMultiple	$01, $02, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$15, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $1F, $1A, $0E
	spSustainLv	$04, $01, $01, $01
	spDecayRt	$04, $01, $08, $06
	spReleaseRt	$09, $0C, $09, $0C
	spTotalLv	$2F, $10, $26, $00

	; Patch $14
	; $39
	; $07, $00, $08, $00,	$1F, $1F, $1F, $1F
	; $1F, $1F, $16, $0E,	$01, $00, $0D, $07
	; $16, $16, $16, $48,	$0F, $00, $20, $86
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$07, $08, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $16, $1F, $0E
	spSustainLv	$01, $01, $01, $04
	spDecayRt	$01, $0D, $00, $07
	spReleaseRt	$06, $06, $06, $08
	spTotalLv	$0F, $20, $00, $06
	even
