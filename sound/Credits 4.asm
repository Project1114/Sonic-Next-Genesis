Credits4_Header:
	sHeaderInit	; Z80 offset is $ABED
	sHeaderPatch	Credits4_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	Credits4_DAC
	sHeaderFM	Credits4_FM1, $FF, $10
	sHeaderFM	Credits4_FM2, $FF, $13
	sHeaderFM	Credits4_FM3, $FF, $13
	sHeaderFM	Credits4_FM4, $FF, $12
	sHeaderFM	Credits4_FM5, $FF, $16
	sHeaderPSG	Credits4_PSG1, $E7, $06, $00, VolEnv_00
	sHeaderPSG	Credits4_PSG2, $E7, $06, $00, VolEnv_00
	sHeaderPSG	Credits4_PSG3, $00, $02, $00, VolEnv_04

Credits4_FM1:
	sPatFM		$00
	sPan		spCenter, $00
	dc.b nRst, $60, $60
	sCall		Credits4_Call29
	sCall		Credits4_Call30
	sCall		Credits4_Call31
	sCall		Credits4_Call31
	sCall		Credits4_Call32
	sCall		Credits4_Call32
	sCall		Credits4_Call33
	sCall		Credits4_Call34

Credits4_Jump7:
	sCall		Credits4_Call29
	sCall		Credits4_Call30
	sCall		Credits4_Call35
	sCall		Credits4_Call36
	sCall		Credits4_Call32
	sCall		Credits4_Call32
	sCall		Credits4_Call33
	sCall		Credits4_Call34

Credits4_Loop40:
	sCall		Credits4_Call29
	sCall		Credits4_Call30
	sCall		Credits4_Call31
	sCall		Credits4_Call31
	sCall		Credits4_Call32
	sCall		Credits4_Call32
	sCall		Credits4_Call33
	sCall		Credits4_Call34
	sLoop		$01, $03, Credits4_Loop40
	sCall		Credits4_Call29
	sCall		Credits4_Call30
	sCall		Credits4_Call31
	sCall		Credits4_Call31
	sCall		Credits4_Call32
	sCall		Credits4_Call32
	sCall		Credits4_Call33
	sCall		Credits4_Call35

Credits4_Loop41:
	sCall		Credits4_Call37
	sCall		Credits4_Call38
	sCall		Credits4_Call39
	sCall		Credits4_Call40
	sLoop		$01, $02, Credits4_Loop41
	sCall		Credits4_Call37
	sCall		Credits4_Call38
	sJump		Credits4_Jump7

Credits4_Call29:
Credits4_Loop34:
	dc.b nE2, $10, $08
	saVolFM		$FF
	dc.b nE3, $08
	saVolFM		$01
	dc.b nE2, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	sLoop		$00, $02, Credits4_Loop34
	sRet	

Credits4_Call30:
	dc.b nE2, $10, $08
	saVolFM		$FF
	dc.b nE3, $08
	saVolFM		$01
	dc.b nE2, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	dc.b nE2, $10, $08
	saVolFM		$FF
	dc.b nE3, $08
	saVolFM		$01
	dc.b nE2, $08
	saVolFM		$FF
	dc.b nFs2, $08
	saVolFM		$01
	sRet	

Credits4_Call31:
Credits4_Loop35:
	dc.b nG2, $10, $08
	saVolFM		$FF
	dc.b nG3, $08
	saVolFM		$01
	dc.b nG2, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	sLoop		$00, $02, Credits4_Loop35
	sRet	

Credits4_Call32:
Credits4_Loop36:
	dc.b nC3, $10, $08
	saVolFM		$FF
	dc.b nC4, $08
	saVolFM		$01
	dc.b nC3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	sLoop		$00, $02, Credits4_Loop36
	sRet	

Credits4_Call33:
Credits4_Loop37:
	dc.b nB2, $10, $08
	saVolFM		$FF
	dc.b nB3, $08
	saVolFM		$01
	dc.b nB2, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	sLoop		$00, $02, Credits4_Loop37
	sRet	

Credits4_Call34:
Credits4_Loop38:
	dc.b nEb3, $10, $08
	saVolFM		$FF
	dc.b nEb4, $08
	saVolFM		$01
	dc.b nEb3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	sLoop		$00, $02, Credits4_Loop38
	sRet	

Credits4_Call35:
Credits4_Loop39:
	dc.b nD3, $10, $08
	saVolFM		$FF
	dc.b nD4, $08
	saVolFM		$01
	dc.b nD3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	sLoop		$00, $02, Credits4_Loop39
	sRet	

Credits4_Call36:
	dc.b nD3, $10, $08
	saVolFM		$FF
	dc.b nD4, $08
	saVolFM		$01
	dc.b nD3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	dc.b nEb3, $10, $08
	saVolFM		$FF
	dc.b nEb4, $08
	saVolFM		$01
	dc.b nEb3, $08
	saVolFM		$FF
	dc.b nEb4, $08
	saVolFM		$01
	sRet	

Credits4_Call37:
	dc.b nC3, $10, $08
	saVolFM		$FF
	dc.b nC4, $08
	saVolFM		$01
	dc.b nC3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	dc.b nC3, $08, nE3, nG3, nC4, nG3, nE3
	sRet	

Credits4_Call38:
	dc.b nD3, $10, $08
	saVolFM		$FF
	dc.b nD4, $08
	saVolFM		$01
	dc.b nD3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	dc.b nD3, $08, nFs3, nA3, nD4, nA3, nFs3
	sRet	

Credits4_Call39:
	dc.b nE3, $10, $08
	saVolFM		$FF
	dc.b nE4, $08
	saVolFM		$01
	dc.b nE3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	dc.b nE3, $08, nAb3, nB3, nE4, nB3, nAb3
	sRet	

Credits4_Call40:
	dc.b nE3, $10, $08
	saVolFM		$FF
	dc.b nE4, $08
	saVolFM		$01
	dc.b nE3, $08
	saVolFM		$FF
	dc.b $08
	saVolFM		$01
	dc.b nE3, $08, nRst, nE3, $10, nD3
	sRet	

Credits4_FM2:
	sPatFM		$01
	sPan		spLeft, $00
	dc.b nRst, $60
	ssModZ80	$30, $01, $05, $63
	dc.b nB2, $60
	ssModZ80	$07, $01, $03, $05
	dc.b nE3, $60, sHold, $30
	ssModZ80	$01, $01, $FD, $63
	dc.b nE3, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nG2, $60, sHold, $30
	ssModZ80	$01, $01, $03, $63
	dc.b nG2, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nC3, $60, sHold, $30
	ssModZ80	$18, $01, $FF, $63
	dc.b nC3, $30
	ssModZ80	$48, $01, $05, $63
	dc.b nB2, $60
	ssModZ80	$48, $01, $FD, $63
	dc.b nEb3, $60

Credits4_Jump6:
	sPan		spLeft, $00
	saVolFM		$FE
	sPatFM		$02
	ssModZ80	$07, $01, $03, $05
	dc.b nE4, $40, nFs4, $18, nG4, $08, nE4, $40
	dc.b nFs4, $18, nG4, $08
	ssModZ80	$18, $01, $03, $63
	dc.b nG4, $40
	ssModZ80	$07, $01, $03, $05
	dc.b nG4, $08, nA4, nG4, nFs4, nE4, $30
	ssModZ80	$18, $01, $FD, $63
	dc.b nEb4, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nG3, $08, nA3, nB3, nC4, nD4, nE4, nFs4
	dc.b nG4, nA4, nB4, nC5, nD5, nE5, $10, nFs5
	dc.b nG5, nA5, $30
	ssModZ80	$0C, $01, $06, $63
	dc.b nA5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nB5, $08, nA5, nG5, nFs5, $10, nG5, nA5
	ssModZ80	$0C, $01, $06, $63
	dc.b nBb5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nB5, $08, nA5, nG5
	ssModZ80	$10, $01, $FD, $63
	dc.b nFs5, $30
	saVolFM		$02
	sPatFM		$01

Credits4_Loop31:
	sCall		Credits4_Call22
	sCall		Credits4_Call23
	sCall		Credits4_Call24
	sCall		Credits4_Call24
	sCall		Credits4_Call25
	sCall		Credits4_Call25
	sCall		Credits4_Call26
	sCall		Credits4_Call27
	sLoop		$01, $03, Credits4_Loop31
	sCall		Credits4_Call22
	sCall		Credits4_Call23
	sCall		Credits4_Call24
	sCall		Credits4_Call24
	sCall		Credits4_Call25
	sCall		Credits4_Call25
	sCall		Credits4_Call26
	sCall		Credits4_Call28

Credits4_Loop33:
	dc.b nC3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nC3, $08, $08, $08, nG2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $03, $63
	dc.b nC3, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nD3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nD3, $08, $08, $08, nA2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $03, $63
	dc.b nD3, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08, nAb2, nA2, nB2
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $FD, $63
	dc.b nE3, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$08
	dc.b nE3, $10
	sNoteTimeOut	$00
	dc.b nE3, $10, nD3
	sLoop		$01, $02, Credits4_Loop33
	dc.b nC3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nC3, $08, $08, $08, nG2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $03, $63
	dc.b nC3, $18
	ssModZ80	$18, $01, $02, $63
	dc.b nD3, $60
	ssModZ80	$07, $01, $03, $05
	sJump		Credits4_Jump6

Credits4_Call22:
Credits4_Loop26:
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop26
	sRet	

Credits4_Call23:
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, nFs2, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sRet	

Credits4_Call24:
Credits4_Loop27:
	dc.b nG2, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nG2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop27
	sRet	

Credits4_Call25:
Credits4_Loop28:
	dc.b nC3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nC3, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop28
	sRet	

Credits4_Call26:
Credits4_Loop29:
	dc.b nB2, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nB2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop29
	sRet	

Credits4_Call27:
Credits4_Loop30:
	dc.b nEb3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nEb3, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop30
	sRet	

Credits4_Call28:
Credits4_Loop32:
	dc.b nD3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nD3, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop32
	sRet	

Credits4_FM3:
	sPatFM		$01
	sPan		spRight, $00
	dc.b nRst, $01, nRst, $60
	ssModZ80	$30, $01, $05, $63
	dc.b nFs3, $60
	ssModZ80	$07, $01, $03, $05
	dc.b nB3, $60, sHold, $30
	ssModZ80	$01, $01, $FD, $63
	dc.b nB3, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nD3, $60, sHold, $30
	ssModZ80	$01, $01, $03, $63
	dc.b nD3, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nG3, $60, sHold, $30
	ssModZ80	$18, $01, $FF, $63
	dc.b nG3, $30
	ssModZ80	$48, $01, $05, $63
	dc.b nFs3, $60
	ssModZ80	$48, $01, $FD, $63
	dc.b nB3, $60

Credits4_Jump5:
	sPan		spRight, $00
	saVolFM		$FE
	sPatFM		$02
	ssModZ80	$07, $01, $03, $05
	dc.b nG4, $40, nA4, $18, nB4, $08, nG4, $40
	dc.b nA4, $18, nB4, $08
	ssModZ80	$18, $01, $03, $63
	dc.b nB4, $40
	ssModZ80	$07, $01, $03, $05
	dc.b nB4, $08, nC5, nB4, nA4, nG4, $30
	ssModZ80	$18, $01, $FD, $63
	dc.b nFs4, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nE3, $08, nFs3, nG3, nA3, nB3, nC4, nD4
	dc.b nE4, nFs4, nG4, nA4, nB4, nC5, $10, nD5
	dc.b nE5, nFs5, $30
	ssModZ80	$0C, $01, $06, $63
	dc.b nFs5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nG5, $08, nFs5, nE5, nD5, $10, nE5, nFs5
	ssModZ80	$0C, $01, $06, $63
	dc.b nFs5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nG5, $08, nFs5, nE5
	ssModZ80	$10, $01, $FD, $63
	dc.b nEb5, $30
	saVolFM		$02
	sPatFM		$01

Credits4_Loop23:
	sCall		Credits4_Call15
	sCall		Credits4_Call16
	sCall		Credits4_Call17
	sCall		Credits4_Call17
	sCall		Credits4_Call18
	sCall		Credits4_Call18
	sCall		Credits4_Call19
	sCall		Credits4_Call20
	sLoop		$01, $03, Credits4_Loop23
	sCall		Credits4_Call15
	sCall		Credits4_Call16
	sCall		Credits4_Call17
	sCall		Credits4_Call17
	sCall		Credits4_Call18
	sCall		Credits4_Call18
	sCall		Credits4_Call19
	sCall		Credits4_Call21

Credits4_Loop25:
	dc.b nG3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nC3, $08, $08, $08, nG2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $03, $63
	dc.b nG3, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nA3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nD3, $08, $08, $08, nA2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $03, $63
	dc.b nA3, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nB3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08, nAb2, nA2, nB2
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $FD, $63
	dc.b nB3, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nB3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$08
	dc.b nB3, $10
	sNoteTimeOut	$00
	dc.b nB3, $10, nA3
	sLoop		$01, $02, Credits4_Loop25
	dc.b nG3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nC3, $08, $08, $08, nG2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	ssModZ80	$08, $01, $03, $63
	dc.b nG3, $18
	ssModZ80	$18, $01, $02, $63
	dc.b nA3, $60
	ssModZ80	$07, $01, $03, $05
	sJump		Credits4_Jump5

Credits4_Call15:
Credits4_Loop18:
	dc.b nB3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop18
	sRet	

Credits4_Call16:
	dc.b nB3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	dc.b nB3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nE2, $08, $08, nFs2, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sRet	

Credits4_Call17:
Credits4_Loop19:
	dc.b nD3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nG2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop19
	sRet	

Credits4_Call18:
Credits4_Loop20:
	dc.b nG3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nC3, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop20
	sRet	

Credits4_Call19:
Credits4_Loop21:
	dc.b nFs3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nB2, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop21
	sRet	

Credits4_Call20:
Credits4_Loop22:
	dc.b nB3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nEb3, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop22
	sRet	

Credits4_Call21:
Credits4_Loop24:
	dc.b nA3, $10, $08
	sNoteTimeOut	$07
	saVolFM		$05
	dc.b nD3, $08, $08, $08
	saVolFM		$FB
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop24
	sRet	

Credits4_FM5:
	dc.b nRst, $05
	saDetune	$08

Credits4_FM4:
	sPatFM		$02
	sPan		spCenter, $00
	dc.b nRst, $60, $30
	ssModZ80	$10, $01, $FA, $63
	dc.b nB3, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nD3, $08, nEb3, nE3, nG3, nE3, nEb3, nD3
	dc.b nEb3, nE3, nG3, nE3, nG3, nA3, nG3, nA3
	dc.b nB3, nA3, nB3, nD4, nB3, nD4, nE4, nG4
	dc.b nA4
	ssModZ80	$18, $01, $04, $63
	dc.b nA4, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nB4, $10, $08, $08, nA4, nG4
	ssModZ80	$0C, $01, $03, $63
	dc.b nD5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nE5, $08, nG5, nE5
	ssModZ80	$10, $01, $FD, $63
	dc.b nD5, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nE5, $08, nG5, nE5, nD5, nE5, nG5, nE5
	dc.b $08, nG5, nE5, nD5, nE5, nG5
	ssModZ80	$08, $01, $02, $63
	dc.b nG5, $18
	ssModZ80	$10, $01, $FF, $63
	dc.b sHold, nA5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nG5, $10, nFs5, nE5
	ssModZ80	$0C, $01, $03, $63
	dc.b nFs5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nG5, $08, nFs5, nE5, nD5, $10, nE5, nFs5
	ssModZ80	$0C, $01, $03, $63
	dc.b nFs5, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nG5, $08, nFs5, nE5
	ssModZ80	$10, $01, $FD, $63
	dc.b nEb5, $30

Credits4_Jump4:
	saTranspose	$F4
	saVolFM		$07
	ssModZ80	$07, $01, $03, $05
	dc.b nE3, $60
	ssModZ80	$30, $01, $03, $63
	dc.b sHold, nE3, $60
	ssModZ80	$07, $01, $03, $05
	dc.b nD4, $60, $30
	ssModZ80	$18, $01, $FD, $63
	dc.b nEb4, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nC4, $60
	ssModZ80	$30, $01, $FD, $63
	dc.b sHold, nC4, $60
	ssModZ80	$30, $01, $03, $63
	dc.b nB3, $60
	ssModZ80	$30, $01, $FD, $63
	dc.b nEb4, $60
	saTranspose	$0C
	saVolFM		$F9

Credits4_Loop16:
	ssModZ80	$07, $01, $03, $05
	dc.b nRst, $18, nE4, nE4, nFs4, nFs4, $18, nG4
	dc.b $08, nFs4
	ssModZ80	$18, $01, $FE, $63
	dc.b nE4, $20
	ssModZ80	$07, $01, $03, $05
	dc.b nE4, $10, nFs4, $08
	ssModZ80	$30, $01, $FE, $63
	dc.b nG4, $48
	ssModZ80	$07, $01, $03, $05
	dc.b nD4, $18, nB4, $10, nA4, $08, nRst, $10
	ssModZ80	$18, $01, $FE, $63
	dc.b nG4, $20
	ssModZ80	$07, $01, $03, $05
	dc.b nE4, $10, nFs4, $08
	ssModZ80	$30, $01, $FD, $63
	dc.b nG4, $48
	ssModZ80	$07, $01, $03, $05
	dc.b nE4, $10, nFs4, $08
	ssModZ80	$24, $01, $FD, $63
	dc.b nG4, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nG4, $10, nA4, nG4
	ssModZ80	$24, $01, $FD, $63
	dc.b nFs4, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nFs4, $10, nEb4, nB3, sHold, nB3, $10
	ssModZ80	$10, $01, $FD, $63
	dc.b nB4, $20
	ssModZ80	$18, $01, $FD, $63
	dc.b nA4, $30
	sLoop		$00, $02, Credits4_Loop16

Credits4_Loop17:
	ssModZ80	$07, $01, $03, $05
	dc.b nRst, $18, nE4, nB4, $10, nA4, $18, nG4
	dc.b $08, nA4, $10
	ssModZ80	$30, $01, $FE, $63
	dc.b nB4, $50, sHold, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nB4, $10, nA4, $18, nG4, $08, nA4, $10
	dc.b nB4, $20, nB4, $10, nA4, nG4
	ssModZ80	$48, $01, $FE, $63
	dc.b nE4, $60, sHold, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nD4, $10, nEb4, $08, nE4, $10, nG4, $18
	dc.b nE4, $08, nFs4, $48, nG4, $18
	ssModZ80	$48, $01, $FD, $63
	dc.b nFs4, $60
	sLoop		$00, $02, Credits4_Loop17
	dc.b nE4, $48, nG4, $18
	ssModZ80	$30, $01, $FE, $63
	dc.b nFs4, $48
	ssModZ80	$07, $01, $03, $05
	dc.b nE4, $10, nFs4, $08, nG4, $10
	ssModZ80	$20, $01, $FD, $63
	dc.b nE4, $30
	ssModZ80	$07, $01, $03, $05
	dc.b nD4, $08, nE4, $10, nG4, $08, nB4, $10
	dc.b nA4, nG4, nG4, $10, nFs4, nE4, nG4, $48
	dc.b nB4, $18
	ssModZ80	$30, $01, $FE, $63
	dc.b nA4, $48
	ssModZ80	$07, $01, $03, $05
	dc.b nG4, $10, nFs4, $08, nG4, $10
	ssModZ80	$20, $01, $FF, $63
	dc.b nE4, $50
	ssModZ80	$07, $01, $03, $05
	dc.b sHold, $60, nE4, $48, nG4, $18
	ssModZ80	$30, $01, $01, $63
	dc.b nFs4, $60
	sJump		Credits4_Jump4

Credits4_PSG1:
	dc.b nRst, $03, nRst, $60, $30, nB3, $30, nD3
	dc.b $08, nEb3, nE3, nG3, nE3, nEb3, nD3, nEb3
	dc.b nE3, nG3, nE3, nG3, nA3, nG3, nA3, nB3
	dc.b nA3, nB3, nD4, nB3, nD4, nE4, nG4, nA4
	dc.b nA4, $30, nB4, $10, $08, $08, nA4, nG4
	dc.b nD5, $18, nE5, $08, nG5, nE5, nD5, $30
	dc.b nE5, $08, nG5, nE5, nD5, nE5, nG5, nE5
	dc.b $08, nG5, nE5, nD5, nE5, nG5, nG5, $18
	dc.b sHold, nA5, $18, nG5, $10, nFs5, nE5, nFs5
	dc.b $18, nG5, $08, nFs5, nE5, nD5, $10, nE5
	dc.b nFs5, nFs5, $18, nG5, $08, nFs5, nE5, nEb5
	dc.b $30
Credits4_Jump3:
	dc.b nE4, $40, nFs4, $18, nG4, $08, nE4, $40
	dc.b nFs4, $18, nG4, $08, nG4, $40, nG4, $08
	dc.b nA4, nG4, nFs4, nE4, $30, nEb4, $30, nG3
	dc.b $08, nA3, nB3, nC4, nD4, nE4, nFs4, nG4
	dc.b nA4, nB4, nC5, nD5, nE5, $10, nFs5, nG5
	dc.b nA5, $30, nA5, $18, nB5, $08, nA5, nG5
	dc.b nFs5, $10, nG5, nA5, nBb5, $18, nB5, $08
	dc.b nA5, nG5, nFs5, $30
Credits4_Loop14:
	sCall		Credits4_Call8
	sCall		Credits4_Call9
	sCall		Credits4_Call10
	sCall		Credits4_Call10
	sCall		Credits4_Call11
	sCall		Credits4_Call11
	sCall		Credits4_Call12
	sCall		Credits4_Call13
	sLoop		$01, $03, Credits4_Loop14
	sCall		Credits4_Call8
	sCall		Credits4_Call9
	sCall		Credits4_Call10
	sCall		Credits4_Call10
	sCall		Credits4_Call11
	sCall		Credits4_Call11
	sCall		Credits4_Call12
	sCall		Credits4_Call14
	saVolPSG	$FC
	saTranspose	$0C

Credits4_Loop15:
	dc.b nF3, $08, nE3, nC3, nG3, $08, nE3, nC3
	dc.b nF3, $08, nE3, nC3, nG3, $08, nE3, nC3
	dc.b nG3, $08, nFs3, nD3, nA3, $08, nFs3, nD3
	dc.b nG3, $08, nFs3, nD3, nA3, $08, nFs3, nD3
	dc.b nA3, $08, nAb3, nE3, nB3, $08, nAb3, nE3
	dc.b nA3, $08, nAb3, nE3, nB3, $08, nAb3, nE3
	dc.b nC4, $08, nB3, nG3, nD4, $08, nB3, nG3
	dc.b nE4, $30
	sLoop		$00, $02, Credits4_Loop15
	dc.b nF3, $08, nE3, nC3, nG3, $08, nE3, nC3
	dc.b nF3, $08, nE3, nC3, nG3, $08, nE3, nC3
	dc.b nG3, $08, nFs3, nD3, nA3, $08, nFs3, nD3
	dc.b nG3, $08, nFs3, nD3, nA3, $08, nFs3, nD3
	saVolPSG	$04
	saTranspose	$F4
	dc.b nRst, $03
	sJump		Credits4_Jump3

Credits4_Call8:
Credits4_Loop9:
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	dc.b nE2, $08, $08, $08
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop9
	sRet	

Credits4_Call9:
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	dc.b nE2, $08, $08, $08
	sNoteTimeOut	$00
	dc.b nE3, $10, $08
	sNoteTimeOut	$07
	dc.b nE2, $08, $08, nFs2, $08
	sNoteTimeOut	$00
	sRet	

Credits4_Call10:
Credits4_Loop10:
	dc.b nG2, $10, $08
	sNoteTimeOut	$07
	dc.b nG2, $08, $08, $08
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop10
	sRet	

Credits4_Call11:
Credits4_Loop11:
	dc.b nC3, $10, $08
	sNoteTimeOut	$07
	dc.b nC3, $08, $08, $08
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop11
	sRet	

Credits4_Call12:
Credits4_Loop12:
	dc.b nB2, $10, $08
	sNoteTimeOut	$07
	dc.b nB2, $08, $08, $08
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop12
	sRet	

Credits4_Call13:
Credits4_Loop13:
	dc.b nEb3, $10, $08
	sNoteTimeOut	$07
	dc.b nEb3, $08, $08, $08
	sNoteTimeOut	$00
	sLoop		$00, $02, Credits4_Loop13
	sRet	

Credits4_Call14:
	dc.b nD3, $10, $08
	sNoteTimeOut	$07
	dc.b nD3, $08, $08, $08
	sNoteTimeOut	$00
	dc.b nD3, $10, $08
	sNoteTimeOut	$07
	dc.b nD3, $08, $08, $05
	sNoteTimeOut	$00
	sRet	

Credits4_PSG2:
	dc.b nRst, $03
	sVolEnvPSG	VolEnv_00
	dc.b nRst, $60, $30, nB3, $30, nD3, $08, nEb3
	dc.b nE3, nG3, nE3, nEb3, nD3, nEb3, nE3, nG3
	dc.b nE3, nG3, nA3, nG3, nA3, nB3, nA3, nB3
	dc.b nD4, nB3, nD4, nE4, nG4, nA4, nA4, $30
	dc.b nB4, $10, $08, $08, nA4, nG4, nD5, $18
	dc.b nE5, $08, nG5, nE5, nD5, $30, nE5, $08
	dc.b nG5, nE5, nD5, nE5, nG5, nE5, $08, nG5
	dc.b nE5, nD5, nE5, nG5, nG5, $18, sHold, nA5
	dc.b $18, nG5, $10, nFs5, nE5, nFs5, $18, nG5
	dc.b $08, nFs5, nE5, nD5, $10, nE5, nFs5, nFs5
	dc.b $18, nG5, $08, nFs5, nE5, nEb5, $30

Credits4_Jump2:
	dc.b nG4, $40, nA4, $18, nB4, $08, nG4, $40
	dc.b nA4, $18, nB4, $08, nB4, $40, nB4, $08
	dc.b nC5, nB4, nA4, nG4, $30, nFs4, $30, nE3
	dc.b $08, nFs3, nG3, nA3, nB3, nC4, nD4, nE4
	dc.b nFs4, nG4, nA4, nB4, nC5, $10, nD5, nE5
	dc.b nFs5, $30, nFs5, $18, nG5, $08, nFs5, nE5
	dc.b nD5, $10, nE5, nFs5, nFs5, $18, nG5, $08
	dc.b nFs5, nE5, nEb5, $30
Credits4_Loop4:
	dc.b nRst, $18, nE4, nE4, nFs4, nFs4, $18, nG4
	dc.b $08, nFs4, nE4, $20, nE4, $10, nFs4, $08
	dc.b nG4, $48, nD4, $18, nB4, $10, nA4, $08
	dc.b nRst, $10, nG4, $20, nE4, $10, nFs4, $08
	dc.b nG4, $48, nE4, $10, nFs4, $08, nG4, $30
	dc.b nG4, $10, nA4, nG4, nFs4, $30, nFs4, $10
	dc.b nEb4, nB3, sHold, nB3, $10, nB4, $20, nA4
	dc.b $30
	sLoop		$00, $02, Credits4_Loop4
	saVolPSG	$FE

Credits4_Loop5:
	dc.b nRst, $60, nRst, $18, nE4, nB4, $10, nA4
	dc.b $18, nG4, $08, nA4, $10, nB4, $50, sHold
	dc.b $60, nRst, $60, $60, $60, $60
	sLoop		$00, $02, Credits4_Loop5
	sVolEnvPSG	VolEnv_00
	saVolPSG	$FE
	dc.b nC4, $48, nE4, $18

Credits4_Loop6:
	dc.b sHold, nD4, $0C
	saVolPSG	$01
	sLoop		$00, $06, Credits4_Loop6
	saVolPSG	$FA
	dc.b nRst, $18, nRst, $60, nRst, $60, nE4, $48
	dc.b nG4, $18

Credits4_Loop7:
	dc.b sHold, nFs4, $0C
	saVolPSG	$01
	sLoop		$00, $06, Credits4_Loop7
	saVolPSG	$FA
	dc.b nRst, $18, nRst, $60, nRst, $60, nC4, $48
	dc.b nE4, $18

Credits4_Loop8:
	dc.b sHold, nD4, $0C
	saVolPSG	$01
	sLoop		$00, $06, Credits4_Loop8
	saVolPSG	$FA
	dc.b nRst, $18
	saVolPSG	$04
	sVolEnvPSG	VolEnv_05
	sJump		Credits4_Jump2

Credits4_PSG3:
	sNoisePSG	$E7
	sCall		Credits4_Call1
	sCall		Credits4_Call1

Credits4_Loop1:
	sCall		Credits4_Call2
	sLoop		$00, $07, Credits4_Loop1
	sCall		Credits4_Call3

Credits4_Jump1:
	sCall		Credits4_Call4

Credits4_Loop2:
	sCall		Credits4_Call2
	sLoop		$00, $05, Credits4_Loop2
	sCall		Credits4_Call1

Credits4_Loop3:
	sCall		Credits4_Call2
	sLoop		$00, $20, Credits4_Loop3
	sCall		Credits4_Call5
	sCall		Credits4_Call6
	sCall		Credits4_Call6
	sCall		Credits4_Call7
	sCall		Credits4_Call6
	sCall		Credits4_Call6
	sCall		Credits4_Call6
	sCall		Credits4_Call7
	sCall		Credits4_Call6
	sCall		Credits4_Call2
	sJump		Credits4_Jump1

Credits4_Call1:
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FE
	dc.b nBb5, $18, $18, $18, $18
	saVolPSG	$02
	sRet	

Credits4_Call2:
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08
	saVolPSG	$FF
	sVolEnvPSG	VolEnv_01
	dc.b $08
	saVolPSG	$01
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08
	saVolPSG	$FF
	sVolEnvPSG	VolEnv_01
	dc.b $08
	saVolPSG	$01
	sRet	

Credits4_Call3:
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FF
	dc.b nBb5, $18, $18, $18, $10
	saVolPSG	$FF
	dc.b $08
	saVolPSG	$02
	sRet	

Credits4_Call4:
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08
	sVolEnvPSG	VolEnv_01
	dc.b $08
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08
	sVolEnvPSG	VolEnv_01
	dc.b $08
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08
	sVolEnvPSG	VolEnv_01
	dc.b $08
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08
	sVolEnvPSG	VolEnv_01
	dc.b $08
	sRet	

Credits4_Call5:
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08, $08
	sVolEnvPSG	VolEnv_01
	dc.b $08, $08, $08
	saVolPSG	$FE
	dc.b $18
	saVolPSG	$02
	sRet	

Credits4_Call6:
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08, $08, $08
	sVolEnvPSG	VolEnv_01
	dc.b $08, $08
	saVolPSG	$FE
	dc.b $18
	saVolPSG	$02
	sRet	

Credits4_Call7:
	sVolEnvPSG	VolEnv_01
	saVolPSG	$FE
	dc.b nBb5, $10
	saVolPSG	$02
	sVolEnvPSG	VolEnv_03
	dc.b $08, $08, $08, $08, $10
	saVolPSG	$FE
	dc.b $10, $10
	saVolPSG	$02
	sRet	

Credits4_DAC:
	saVolFM		$00
	sCall		Credits4_Call41
	sCall		Credits4_Call42
	sCall		Credits4_Call43
	sCall		Credits4_Call42
	sCall		Credits4_Call44

Credits4_Jump8:
	sCall		Credits4_Call42
	sCall		Credits4_Call43
	sCall		Credits4_Call45
	sCall		Credits4_Call46
	sCall		Credits4_Call47

Credits4_Loop44:
	sCall		Credits4_Call42
	sCall		Credits4_Call43
	sCall		Credits4_Call42
	sCall		Credits4_Call48
	sLoop		$01, $04, Credits4_Loop44

Credits4_Loop45:
	sCall		Credits4_Call49
	sLoop		$01, $03, Credits4_Loop45
	sCall		Credits4_Call50
	sLoop		$02, $02, Credits4_Loop45
	sCall		Credits4_Call49
	sCall		Credits4_Call48
	sJump		Credits4_Jump8

Credits4_Call45:
Credits4_Loop43:
	dc.b dKick, $10, $08, dSnare, $08, dKick, $10
	sLoop		$00, $04, Credits4_Loop43
	sRet	

Credits4_Call42:
Credits4_Loop42:
	dc.b dKick, $10, $08, dSnare, $08, dKick, $10
	sLoop		$00, $06, Credits4_Loop42
	sRet	

Credits4_Call41:
	dc.b dKick, $10, dSnare, $08, $08, $08, $08, $08
	dc.b $08, dHighTom, dMidTom, dLowTom, dFloorTom, dKick, $10, dSnare
	dc.b $08, $08, dHighTom, dHighTom, dMidTom, dMidTom, dLowTom, dLowTom
	dc.b dFloorTom, dFloorTom
	sRet	

Credits4_Call43:
	dc.b dKick, $10, $08, dSnare, $08, dKick, $10, dKick
	dc.b $10, $08, dSnare, $08, dKick, dSnare
	sRet	

Credits4_Call44:
	dc.b dKick, $10, $08, dSnare, $08, dKick, dSnare, dHighTom
	dc.b dMidTom, dLowTom, dFloorTom, dSnare, dSnare
	sRet	

Credits4_Call46:
	dc.b dKick, $10, $08, dSnare, $08, dKick, dSnare, dKick
	dc.b $10, $08, dSnare, $08, dKick, dSnare
	sRet	

Credits4_Call47:
	dc.b dKick, $08, dSnare, dSnare, dSnare, dKick, dKick, dHighTom
	dc.b dHighTom, dMidTom, dMidTom, dLowTom, dFloorTom
	sRet	

Credits4_Call48:
	dc.b dKick, $10, $08, dSnare, $08, dKick, $10, dKick
	dc.b $08, dSnare, dSnare, dSnare, dSnare, dSnare
	sRet	

Credits4_Call49:
	dc.b dKick, $10, $08, dSnare, $08, dKick, $10, dMidTom
	dc.b $08, dLowTom, dFloorTom, dSnare, $18
	sRet	

Credits4_Call50:
	dc.b dKick, $10, $08, dSnare, $08, dKick, dKick, dKick
	dc.b $10, $10, $10
	sRet	

Credits4_Patches:
	; Patch $00
	; $3C
	; $01, $32, $00, $01,	$52, $53, $52, $53
	; $08, $02, $08, $02,	$04, $03, $04, $03
	; $1F, $0F, $1F, $0F,	$1A, $80, $16, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $03, $00
	spMultiple	$01, $00, $02, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$12, $12, $13, $13
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $02, $02
	spSustainRt	$04, $04, $03, $03
	spSustainLv	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $16, $00, $00

	; Patch $01
	; $3D
	; $01, $02, $02, $02,	$1F, $12, $9F, $1F
	; $08, $08, $08, $08,	$00, $01, $00, $00
	; $0F, $1F, $1F, $1F,	$1F, $88, $88, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $08
	spSustainRt	$00, $00, $01, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $08, $08, $07

	; Patch $02
	; $3A
	; $23, $53, $65, $01,	$59, $5D, $5C, $5C
	; $0A, $09, $06, $03,	$02, $01, $01, $01
	; $11, $18, $35, $26,	$1D, $11, $23, $14
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $06, $05, $00
	spMultiple	$03, $05, $03, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$19, $1C, $1D, $1C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0A, $06, $09, $03
	spSustainRt	$02, $01, $01, $01
	spSustainLv	$01, $03, $01, $02
	spReleaseRt	$01, $05, $08, $06
	spTotalLv	$1D, $23, $11, $04

		; Patch $02
	; $38
	; $33, $01, $51, $01,	$10, $13, $1A, $1B
	; $0F, $1F, $1F, $1F,	$01, $01, $01, $01
	; $33, $03, $03, $08,	$19, $1B, $1A, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$03, $05, $00, $00
	spMultiple	$03, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $1A, $13, $1B
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $1F, $1F, $1F
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$03, $00, $00, $00
	spReleaseRt	$03, $03, $03, $08
	spTotalLv	$19, $1A, $1B, $00
