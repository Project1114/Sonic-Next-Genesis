RT2_Header:
	sHeaderInit	; Z80 offset is $9009
	sHeaderPatch	RT2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $88
	sHeaderDAC	RT2_DAC
	sHeaderFM	RT2_FM1, $EA, $1E
	sHeaderFM	RT2_FM2, $DE, $0A
	sHeaderFM	RT2_FM3, $EA, $14
	sHeaderFM	RT2_FM4, $EA, $14
	sHeaderFM	RT2_FM5, $EA, $1E
	sHeaderPSG	RT2_PSG1, $D2, $02, $00, VolEnv_00
	sHeaderPSG	RT2_PSG2, $D2, $02, $00, VolEnv_00
	sHeaderPSG	RT2_PSG3, $05, $04, $00, VolEnv_00

RT2_FM1:
RT2_Jump8:
	sPatFM		$02
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	saVolFM		$F6
	sCall		RT2_Call25
	sCall		RT2_Call25
	sCall		RT2_Call25
	sCall		RT2_Call26
	sCall		RT2_Call8
	sCall		RT2_Call27
	dc.b nRst, $30, nRst
	sCall		RT2_Call27
	dc.b nRst, $30, nRst
	sCall		RT2_Call10
	dc.b nD7, $30
	saVolFM		$FA
	sPatFM		$05
	dc.b nRst, $30, nE6, $24, nF6, $0C, nE6, $18
	dc.b nD6, nD6, $24, nG6, $0C, nF6, $12, nE6
	dc.b $1E, nG6, $12, nF6, nA5, $0C, nC6, $18
	dc.b nB5, nD6, $30, sHold, $24, nF6, $0C, nE6
	dc.b $24, nF6, $0C, nE6, $18, nD6, nD6, $24
	dc.b nG6, $0C, nF6, $12, nE6, $1E, nG6, $12
	dc.b nF6, nA5, $0C, nC6, $18, nB5, nD6, $30
	saTranspose	$F4
	dc.b nC6, $06, nD6, $03, nRst, $06, nD6, nE6
	dc.b $03, nRst, $06, nE6, nF6, $03, nRst, $06
	dc.b nF6, $03, sHold, $03, nG6, nRst, $06, nG6
	dc.b $0C
	sPatFM		$07
	dc.b nG6, $03, nA6, nC7, nC7, nA6, nC7, nD7
	dc.b nRst, nEb7, nE7, nC7, nA6, nD7, nC7, nRst
	dc.b nG6, nRst, nA6, nRst, nEb6, nRst, nC6, nD6
	dc.b nA5, nC6, nRst, nD6, nE6, nRst, $0F, nG5
	dc.b $03, nA5, nG5, nC6, nA5, nG5, nE5, nD5
	dc.b nEb5, nD5, nC5, nE5, nC5, nA4, nRst, nC5
	dc.b nRst, nA4, nC5, nRst, nD5, nA4, nD5, nA4
	dc.b nEb5, nE5, nC5, nRst, $0F, nG5, $03, nA5
	dc.b nG5, nC6, nA5, nC6, nD6, nEb6, nE6, nC6
	dc.b nA5, nC6, nA5, nG6, nFs6, nF6, nE6, nEb6
	dc.b nD6, nEb6, nE6, nG6, nA6, nC7, nA6, nG6
	dc.b nA6, nRst, $0C, nEb7, $03, nE7, nC7, nA6
	dc.b nRst, nA6, nRst, nC7, nD7, nA6, nEb7, nE7
	dc.b nC7, nA6, nG7, nFs7, nF7, nE7, nEb7, nD7
	dc.b nC7, nD7, nEb7, nE7, nC7, nA6, nRst, nA6
	dc.b nRst, nG6, nA6, nRst, nEb6, nC6, nD6, nA5
	dc.b nC6, nRst, nD6, nE6, nRst, $0C, nE5, $03
	dc.b nF5, nA5, nC6, nE6, nF6, nA6, nC7, nE7
	dc.b nF7, nE7, nC7, nD7, nE7, nB6, nG6, $06
	dc.b nE6, $03, nG6, nG5, $06, nRst, nG5, $03
	dc.b nA5, nC6, nC6, nA5, nEb6, nE6, nA6, nEb6
	dc.b nE6, nA6, nEb6, nE6, nA6, nEb6, nE6, nA6
	dc.b nEb6, nE6, nA6, nC6, nG6, $06, nF6, nE6
	dc.b $03, nD6, nC6, nE6, nRst, nD6, nB5, nG5
	dc.b $06, nRst, $03, nG5, nA5, nC6, $06, nE6
	dc.b $03, nRst, nF6, nA6, nC7, nD7, nE7, $06
	dc.b nD7, $03, nC7, nD7, nC7, nA6, nE6, nD7
	dc.b nE7, nB6, nG6, $06, nE6, $03, nG6, nG5
	dc.b $06, nRst, nG5, $03, nA5, nC6, nC6, nA5
	dc.b nRst, $0C, nE5, $03, nF5, nA5, nC6, nE6
	dc.b nF6, nA6, nC7, nE7, nF7, nE7, nC7
	saTranspose	$0C
	dc.b nG5, nA5, nB5, nE5, $06, nG5, $03, nRst
	dc.b nG4, nG4, $02, nA4, $01, nB4, $02, nD5
	dc.b $01, nE5, $02, nG5, $01, nA5, $02, nB5
	dc.b $01, nD6, $02, nE6, $01, nG6, $02, nA6
	dc.b $01, nB6, $02, nA6, $01, nG6, $02, nE6
	dc.b $01, nG6, $30, nRst, $30
	sPatFM		$05
	dc.b nE6, $24, nF6, $0C, nE6, $18, nD6, nD6
	dc.b $24, nG6, $0C, nF6, $12, nE6, $1E, nG6
	dc.b $12, nF6, nA5, $0C, nC6, $18, nB5, nD6
	dc.b $30, sHold, $24, nF6, $0C, nE6, $24, nF6
	dc.b $0C, nE6, $18, nD6, nD6, $24, nG6, $0C
	dc.b nF6, $12, nE6, $1E, nG6, $12, nF6, nA5
	dc.b $0C, nC6, $18, nB5, nD6, $30
	saTranspose	$F4
	dc.b nC6, $06, nD6, $03, nRst, $06, nD6, nE6
	dc.b $03, nRst, $06, nE6, nF6, $03, nRst, $06
	dc.b nF6, $03, sHold, $03, nG6, nRst, $06, nG6
	dc.b $24, sHold, $30
	saVolFM		$10
	sJump		RT2_Jump8

RT2_Call4:
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA6, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA5, $02, nRst, $01
	saVolFM		$0A
	dc.b nA6, $02, nRst, $01, nA5, $02, nRst, $01
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nG6, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01, nA6, $02, nRst, $01
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA5, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA6, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA5, $02, nRst, $01
	saVolFM		$0A
	sRet	

RT2_Call5:
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA6, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA5, $02, nRst, $01
	saVolFM		$0A
	dc.b nA6, $02, nRst, $01, nA5, $02, nRst, $01
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nG6, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01, nA6, $02, nRst, $01
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nC7, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA6, $02, nRst, $01
	saVolFM		$0A
	dc.b nA5, $02, nRst, $01
	saVolFM		$F6
	dc.b nA5, $02, nRst, $01
	saVolFM		$0A
	sRet	

RT2_Call25:
	ssModZ80	$20, $03, $F0, $F0
	dc.b nA6, $06, nG6, $03, nRst, nA6, nE7, nRst
	dc.b nD7, $1B
	ssModZ80	$10, $01, $F0, $F0
	dc.b nA6, $03, nRst, nG6, nRst, nA6, nEb7, nRst
	dc.b nD7, nRst, nC7, nRst, nA6, $0F
	sRet	

RT2_Call26:
	ssModZ80	$20, $03, $F0, $F0
	dc.b nA6, $06, nG6, $03, nRst, nA6, nE7, nRst
	dc.b nD7, $1B
	ssModZ80	$10, $01, $F0, $F0
	dc.b nA6, $03, nRst, nG6, nRst, nA6, nEb7, nRst
	dc.b nD7, nRst, nC7, nRst, nA6, $03, nRst, $0C
	sRet	

RT2_Call8:
	saTranspose	$0C
	ssModZ80	$15, $01, $07, $03
	dc.b nRst, $0C, nA6, $06, nG6, nA6, nG6, nEb6
	dc.b $03, nD6, nC6, $06, nD6, $09, nRst, $03
	dc.b nD6, $06, nC6, $03, nE6, $09, nC6, $03
	dc.b nRst, $0F, nRst, $12, nG5, $03, nRst, nA5
	dc.b $06, nRst, nA5, $03, nC6, nEb6, nD6, sHold
	dc.b $06, nC6, $03, nRst, $27, nRst, $0C, nA6
	dc.b $06, nG6, nA6, nG6, $03, nRst, nEb6, nD6
	dc.b nC6, $06, nD6, $09, nRst, $03, nD6, $06
	dc.b nC6, $03, nE6, $09, nC6, $03, nRst, $0F
	dc.b nRst, $12, nG5, $03, nRst, nA5, $06, nRst
	dc.b nA5, $03, nC6, nEb6, nD6, sHold, $06, nC6
	dc.b $03, nA5, nRst, $24
	sRet	

RT2_Call27:
	dc.b nRst, $0C, nE7, $02, nRst, $04, nD7, $02
	dc.b nRst, $04, nC7, $09, nD7, $02, nRst, $0D
	dc.b nE7, $02, nRst, $01, nE7, $02, nRst, $01
	dc.b nD7, $02, nRst, $04, nC7, $02, nRst, $04
	dc.b nD7, $02, nRst, $04, nC7, $02, nRst, $04
	dc.b nD7, $02, nRst, $01, nC7, $02, nRst, $01
	dc.b nRst, $02, nRst, $0A
	sRet	

RT2_Call10:
	dc.b nRst, $0C, nA6, nB6, nC7, nB6, $03, nRst
	dc.b $09, nG6, $06, nD6, $0C, nG6, nE6, $06
	dc.b sHold, $12, nA5, $1E, sHold, $2A, sHold, $06
	dc.b nRst, $0C, nA6, nB6, nC7, nD7, $03, nRst
	dc.b $09, nB6, $06, nG6, $0C, nB6, $06, nRst
	dc.b nB6, sHold, $18, nC7, sHold, $30
	sRet	

RT2_FM2:
RT2_Jump7:
	sPatFM		$00
	dc.b nA4, $30, nD5, nA4, nD5, $24, nG4, $0C
	dc.b nA4, $30, nD5, nA4, nRst, $24, nRst, $0C
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call22
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	saTranspose	$0C
	sCall		RT2_Call23
	sCall		RT2_Call23
	sCall		RT2_Call23
	sCall		RT2_Call23
	sCall		RT2_Call24
	saTranspose	$F4
	dc.b nA4, $06, nA5, nA4, $03, nG5, nA5, nA4
	dc.b nA4, nG5, nA5, nE5, nG5, nD5, nE5, nC5
	dc.b nD4, $03, nRst, nD4, $06, nA3, $03, nD4
	dc.b $06, nA3, $03, nD4, $06, nA3, $03, nD4
	dc.b $06, nA3, $03, nAb3, $06, nG3, $03, nRst
	dc.b nG3, $06, nD4, nG3, $03, nG4, $06, nG3
	dc.b $03, nD4, $06, nG3, $03, nG4, nG3, $06
	dc.b nE4, $03, nRst, nE4, $06, nB3, $03, nE4
	dc.b $06, nB3, $03, nE4, $06, nB3, $03, nE4
	dc.b $06, nG3, $03, nAb3, $06, nA3, $03, nRst
	dc.b nA3, $06, nB3, $03, nRst, nB3, $06, nC4
	dc.b $03, nRst, nC4, $06, nCs4, $03, nRst, nCs4
	dc.b $06, nD4, $03, nRst, nD4, $06, nA3, $03
	dc.b nD4, $06, nA3, $03, nD4, $06, nA3, $03
	dc.b nD4, $06, nA3, $03, nAb3, $06, nG3, $03
	dc.b nRst, nG3, $06, nD4, nG3, $03, nG4, $06
	dc.b nG3, $03, nD4, $06, nG3, nG4, nA3, nA3
	dc.b nE4, nA3, $03, nA4, $06, nA3, $03, nE4
	dc.b $06, nA3, nA4, nG4, $03, nA4, nA3, $06
	dc.b $03, nG4, nA4, nA3, $06, nG4, $03, nA4
	dc.b nA3, nEb4, $0C, nD4, $03, nRst, nD4, $06
	dc.b nA3, $03, nD4, $06, nA3, $03, nD4, $06
	dc.b nA3, $03, nD4, $06, nA3, $03, nAb3, $06
	dc.b nG3, $03, nRst, nG3, $06, nD4, nG3, $03
	dc.b nG4, $06, nG3, $03, nD4, $06, nG3, $03
	dc.b nG4, nG3, $06, nE4, $03, nRst, nE4, $06
	dc.b nB3, $03, nE4, $06, nB3, $03, nE4, $06
	dc.b nB3, $03, nE4, $06, nG3, $03, nAb3, $06
	dc.b nA3, $03, nRst, nA3, $06, nB3, $03, nRst
	dc.b nB3, $06, nC4, $03, nRst, nC4, $06, nCs4
	dc.b $03, nRst, nCs4, $06, nD4, $03, nRst, nD4
	dc.b $06, nA3, $03, nD4, $06, nA3, $03, nD4
	dc.b $06, nA3, $03, nD4, $06, nA3, $03, nAb3
	dc.b $06, nG3, $03, nRst, nG3, $06, nD4, nG3
	dc.b $03, nG4, $06, nG3, $03, nD4, $06, nG3
	dc.b nG4, nA3, nA3, nE4, nA3, $03, nA4, $06
	dc.b nA3, $03, nE4, $06, nA3, nA4, nD4, $06
	dc.b nE4, $03, nRst, $06, nE4, nF4, $03, nRst
	dc.b $06, nF4, nG4, $03, nRst, $06, nG4, $03
	dc.b sHold, $03, nA4, nRst, $06, nBb4, $24
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	sCall		RT2_Call21
	saTranspose	$0C
	sCall		RT2_Call23
	sCall		RT2_Call23
	sCall		RT2_Call23
	sCall		RT2_Call23
	sCall		RT2_Call24
	saTranspose	$F4
	dc.b nA4, $06, nA5, nA4, $03, nG5, nA5, nA4
	dc.b nA4, nG5, nA5, nE5, nG5, nD5, nE5, nC5
	dc.b nD4, $03, nRst, nD4, $06, nA3, $03, nD4
	dc.b $06, nA3, $03, nD4, $06, nA3, $03, nD4
	dc.b $06, nA3, $03, nAb3, $06, nG3, $03, nRst
	dc.b nG3, $06, nD4, nG3, $03, nG4, $06, nG3
	dc.b $03, nD4, $06, nG3, $03, nG4, nG3, $06
	dc.b nE4, $03, nRst, nE4, $06, nB3, $03, nE4
	dc.b $06, nB3, $03, nE4, $06, nB3, $03, nE4
	dc.b $06, nG3, $03, nAb3, $06, nA3, $03, nRst
	dc.b nA3, $06, nB3, $03, nRst, nB3, $06, nC4
	dc.b $03, nRst, nC4, $06, nCs4, $03, nRst, nCs4
	dc.b $06, nD4, $03, nRst, nD4, $06, nA3, $03
	dc.b nD4, $06, nA3, $03, nD4, $06, nA3, $03
	dc.b nD4, $06, nA3, $03, nAb3, $06, nG3, $03
	dc.b nRst, nG3, $06, nD4, nG3, $03, nG4, $06
	dc.b nG3, $03, nD4, $06, nG3, nG4, nA3, nA3
	dc.b nE4, nA3, $03, nA4, $06, nA3, $03, nE4
	dc.b $06, nA3, nA4, nG4, $03, nA4, nA3, $06
	dc.b $03, nG4, nA4, nA3, $06, nG4, $03, nA4
	dc.b nA3, nEb4, $0C, nD4, $03, nRst, nD4, $06
	dc.b nA3, $03, nD4, $06, nA3, $03, nD4, $06
	dc.b nA3, $03, nD4, $06, nA3, $03, nAb3, $06
	dc.b nG3, $03, nRst, nG3, $06, nD4, nG3, $03
	dc.b nG4, $06, nG3, $03, nD4, $06, nG3, $03
	dc.b nG4, nG3, $06, nE4, $03, nRst, nE4, $06
	dc.b nB3, $03, nE4, $06, nB3, $03, nE4, $06
	dc.b nB3, $03, nE4, $06, nG3, $03, nAb3, $06
	dc.b nA3, $03, nRst, nA3, $06, nB3, $03, nRst
	dc.b nB3, $06, nC4, $03, nRst, nC4, $06, nCs4
	dc.b $03, nRst, nCs4, $06, nD4, $03, nRst, nD4
	dc.b $06, nA3, $03, nD4, $06, nA3, $03, nD4
	dc.b $06, nA3, $03, nD4, $06, nA3, $03, nAb3
	dc.b $06, nG3, $03, nRst, nG3, $06, nD4, nG3
	dc.b $03, nG4, $06, nG3, $03, nD4, $06, nG3
	dc.b nG4, nA3, nA3, nE4, nA3, $03, nA4, $06
	dc.b nA3, $03, nE4, $06, nA3, nA4, nD4, $06
	dc.b nE4, $03, nRst, $06, nE4, nF4, $03, nRst
	dc.b $06, nF4, nG4, $03, nRst, $06, nG4, $03
	dc.b sHold, $03, nA4, nRst, $06, nBb4, $24, sHold
	dc.b $30
	sJump		RT2_Jump7

RT2_Call24:
	dc.b nA3, $03, nRst, nA3, $06, nC4, nA3, $03
	dc.b nD4, $06, nA3, $03, nC4, $06, nA3, nE4
	sRet	

RT2_Call23:
	dc.b nF3, $03, nRst, nF3, $06, nA3, nF3, $03
	dc.b nC4, $06, nF3, $03, nA3, $06, nF3, nC4
	dc.b nG3, $03, nRst, nG3, $06, nB3, nG3, $03
	dc.b nD4, $06, nG3, $03, nB3, $06, nG3, nD4
	sRet	

RT2_Call21:
	dc.b nA4, $06, nG4, $03, nRst, $0C, nG4, $03
	dc.b nA4, $06, nG4, nA4, nE5, nD5, nD4, $03
	dc.b nRst, $0C, nD4, $03, nE4, $06, nD4, nE4
	dc.b nG4
	sRet	

RT2_Call22:
	dc.b nA4, $06, nG4, $03, nRst, $0C, nG4, $03
	dc.b nA4, $06, nG4, nA4, nE5, nD5, nD4, nA4
	dc.b $03, nEb5, $03, nRst, nD5, nRst, nC5, nRst
	dc.b nA4, nG5, nA5, nE5, nG5
	sRet	

RT2_FM3:
RT2_Jump6:
	sPatFM		$01
	dc.b nRst, $30, nRst, nRst, nRst, nRst, $30, nRst
	dc.b nRst, nRst
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call17
	sPatFM		$03
	sCall		RT2_Call18
	sCall		RT2_Call18
	sCall		RT2_Call18
	sCall		RT2_Call18
	sPatFM		$01
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call16
	sCall		RT2_Call16
	sPatFM		$03
	saVolFM		$FB
	sCall		RT2_Call19
	sCall		RT2_Call19
	sCall		RT2_Call20
	saVolFM		$05
	dc.b nRst, $30
	sPatFM		$05
	saVolFM		$FA
	dc.b nC6, $24, $0C, $18, nB5, nB5, $24, nD6
	dc.b $0C, nCs6, $12, $1E, nC6, $12, $12, nF5
	dc.b $0C, nA5, $18, nG5, nB5, $30, sHold, $24
	dc.b nCs6, $0C, nC6, $24, $0C, $18, nB5, nB5
	dc.b $24, nD6, $0C, nCs6, $12, $1E, nC6, $12
	dc.b $12, nF5, $0C, nA5, $18, nG5, nB5, $30
	dc.b nA5, $06, nB5, $03, nRst, $06, nB5, nC6
	dc.b $03, nRst, $06, nC6, nC6, $03, nRst, $06
	dc.b nC6, $03, sHold, $03, nD6, nRst, $06, nEb6
	dc.b $24
	saVolFM		$06
	sPatFM		$03
	sCall		RT2_Call18
	sCall		RT2_Call18
	sCall		RT2_Call18
	sCall		RT2_Call18
	saVolFM		$FB
	sCall		RT2_Call19
	sCall		RT2_Call19
	sCall		RT2_Call20
	saVolFM		$05
	dc.b nRst, $30
	sPatFM		$05
	saVolFM		$FA
	dc.b nC6, $24, $0C, $18, nB5, nB5, $24, nD6
	dc.b $0C, nCs6, $12, $1E, nC6, $12, $12, nF5
	dc.b $0C, nA5, $18, nG5, nB5, $30, sHold, $24
	dc.b nCs6, $0C, nC6, $24, $0C, $18, nB5, nB5
	dc.b $24, nD6, $0C, nCs6, $12, $1E, nC6, $12
	dc.b $12, nF5, $0C, nA5, $18, nG5, nB5, $30
	dc.b nA5, $06, nB5, $03, nRst, $06, nB5, nC6
	dc.b $03, nRst, $06, nC6, nC6, $03, nRst, $06
	dc.b nC6, $03, sHold, $03, nD6, nRst, $06, nEb6
	dc.b $24, sHold, $30
	saVolFM		$06
	sJump		RT2_Jump6

RT2_Call16:
	dc.b nG5, $06, nC6, nG5, $03, nRst, nG5, $06
	dc.b nC6, nG5, $03, nC6, $06, nG5, $03, nC6
	dc.b $06, nFs5, nC6, nFs5, $03, nC6, nFs5, $06
	dc.b nC6, nFs5, $03, nC6, $06, nFs5, $03, nC6
	dc.b $06
	sRet	

RT2_Call17:
	dc.b nG5, $06, nC6, nG5, $02, nRst, $01, nC6
	dc.b $03, nG5, $06, nC6, nG5, $03, nC6, $06
	dc.b nG5, $03, nC6, $06, nFs5, nC6, nRst, $03
	dc.b nG6, nRst, nF6, nRst, nE6, nRst, nC6, nRst
	dc.b $0C
	sRet	

RT2_Call18:
	sPan		spRight, $00
	dc.b nG5, $03, nA5
	sPan		spCenter, $00
	dc.b nE6, $03, $03, $03, $03
	sPan		spRight, $00
	dc.b nG5, $03, nA5, $03
	sPan		spCenter, $00
	dc.b nE6, $03, nRst, $06, nE6, $03, nRst, $06
	dc.b nE6, $03, $03
	sPan		spRight, $00
	dc.b nFs5, $03, nA5, $03
	sPan		spCenter, $00
	dc.b nE6, $03, $03, $03, $03
	sPan		spRight, $00
	dc.b nFs5, $03, nA5, $03
	sPan		spCenter, $00
	dc.b nE6, $03, nRst, $06, nE6, $03
	sPan		spRight, $00
	dc.b nFs5, $03, nA5
	sPan		spCenter, $00
	dc.b nE6, $03, $03
	sRet	

RT2_Call19:
	dc.b nF4, $06, nA5, nF4, $03, nA5, nF4, $06
	dc.b nA5, nF4, $03, nB5, $06, nF4, $03, nC6
	dc.b $06, nG4, nB5, nG4, $03, nB5, nG4, $06
	dc.b nB5, nG4, $03, nC6, $06, nG4, $03, nD6
	dc.b $06, nF4, nC6, nF4, $03, nC6, nF4, $06
	dc.b nC6, nF4, $03, nD6, $06, nF4, $03, nE6
	dc.b $06, nG4, nD6, nG4, $03, nD6, nG4, $06
	dc.b nD6, nG4, $03, nE6, $06, nG4, $03, nF6
	dc.b $06
	sRet	

RT2_Call20:
	dc.b nA4, $06, nG6, nA4, $03, nG6, nA4, $06
	dc.b nG6, nA4, $03, nG6, $06, nA4, $03, nG6
	dc.b $06
	sRet	

RT2_FM4:
RT2_Jump5:
	sPatFM		$01
	dc.b nRst, $30, nRst, nRst, nRst, nRst, $30, nRst
	dc.b nRst, nRst
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call12
	sPatFM		$03
	sCall		RT2_Call13
	sCall		RT2_Call13
	sCall		RT2_Call13
	sCall		RT2_Call13
	sPatFM		$01
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call11
	sCall		RT2_Call11
	saVolFM		$FB
	sPatFM		$03
	sCall		RT2_Call14
	sCall		RT2_Call14
	sCall		RT2_Call15
	saVolFM		$05
	dc.b nRst, $30
	sPatFM		$05
	saVolFM		$FA
	dc.b nA5, $24, $0C, $18, nG5, nG5, $24, nB5
	dc.b $0C, nBb5, $12, $1E, nA5, $12, $12, nD5
	dc.b $0C, nF5, $18, $18, nG5, $30, sHold, $24
	dc.b nBb5, $0C, nA5, $24, $0C, $18, nG5, nG5
	dc.b $24, nB5, $0C, nBb5, $12, $1E, nA5, $12
	dc.b $12, nD5, $0C, nF5, $18, $18, nG5, $30
	dc.b nF5, $06, nG5, $03, nRst, $06, nG5, nA5
	dc.b $03, nRst, $06, nA5, nA5, $03, nRst, $06
	dc.b nA5, $03, sHold, $03, nB5, nRst, $06, nC6
	dc.b $24
	saVolFM		$06
	sPatFM		$03
	sCall		RT2_Call13
	sCall		RT2_Call13
	sCall		RT2_Call13
	sCall		RT2_Call13
	saVolFM		$FB
	sCall		RT2_Call14
	sCall		RT2_Call14
	sCall		RT2_Call15
	saVolFM		$05
	dc.b nRst, $30
	sPatFM		$05
	saVolFM		$FA
	dc.b nA5, $24, $0C, $18, nG5, nG5, $24, nB5
	dc.b $0C, nBb5, $12, $1E, nA5, $12, $12, nD5
	dc.b $0C, nF5, $18, $18, nG5, $30, sHold, $24
	dc.b nBb5, $0C, nA5, $24, $0C, $18, nG5, nG5
	dc.b $24, nB5, $0C, nBb5, $12, $1E, nA5, $12
	dc.b $12, nD5, $0C, nF5, $18, $18, nG5, $30
	dc.b nF5, $06, nG5, $03, nRst, $06, nG5, nA5
	dc.b $03, nRst, $06, nA5, nA5, $03, nRst, $06
	dc.b nA5, $03, sHold, $03, nB5, nRst, $06, nC6
	dc.b $24, sHold, $30
	saVolFM		$06
	sJump		RT2_Jump5

RT2_Call11:
	dc.b nRst, $06, nA5, nRst, $03, nA5, nRst, $06
	dc.b nA5, nRst, $03, nA5, $06, nRst, $03, nA5
	dc.b $06, nRst, nA5, nRst, $03, nA5, nRst, $06
	dc.b nA5, nRst, $03, nA5, $06, nRst, $03, nA5
	dc.b $06
	sRet	

RT2_Call12:
	dc.b nRst, $06, nA5, nRst, $03, nA5, nRst, $06
	dc.b nA5, nRst, $03, nA5, $06, nRst, $03, nA5
	dc.b $06, nRst, nA5, nRst, $03, nEb6, nRst, nD6
	dc.b nRst, nC6, nRst, nA5, nRst, $0C
	sRet	

RT2_Call13:
	dc.b nRst, $06, nC6, $03, $03, $03, $03, nRst
	dc.b $06, nC6, $03, nRst, $06, nC6, $03, nRst
	dc.b $06, nC6, $03, $03, nRst, $06, nC6, $03
	dc.b $03, $03, $03, nRst, $06, nC6, $03, nRst
	dc.b $06, nC6, $03, nRst, $06, nC6, $03, $03
	sRet	

RT2_Call14:
	dc.b nRst, $06, nF5, nRst, $03, nF5, nRst, $06
	dc.b nF5, nRst, $03, nG5, $06, nRst, $03, nA5
	dc.b $06, nRst, nG5, nRst, $03, nG5, nRst, $06
	dc.b nG5, nRst, $03, nA5, $06, nRst, $03, nB5
	dc.b $06, nRst, nA5, nRst, $03, nA5, nRst, $06
	dc.b nA5, nRst, $03, nB5, $06, nRst, $03, nC6
	dc.b $06, nRst, nB5, nRst, $03, nB5, nRst, $06
	dc.b nB5, nRst, $03, nC6, $06, nRst, $03, nD6
	dc.b $06
	sRet	

RT2_Call15:
	dc.b nRst, $06, nD6, nRst, $03, nD6, nRst, $06
	dc.b nD6, nRst, $03, nD6, $06, nRst, $03, nD6
	dc.b $06
	sRet	

RT2_FM5:
RT2_Jump4:
	sPatFM		$02
	saVolFM		$0A
	dc.b nRst, $0C
	sPatFM		$02
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call4
	sCall		RT2_Call5
	saVolFM		$F6
	sPan		spLeft, $00
	sCall		RT2_Call6
	sCall		RT2_Call6
	sCall		RT2_Call6
	sCall		RT2_Call7
	sPan		spRight, $00
	sCall		RT2_Call8
	sPan		spLeft, $00
	saVolFM		$F9
	dc.b nRst, $00
	sCall		RT2_Call9
	dc.b nRst, $0C
	sCall		RT2_Call9
	saVolFM		$0A
	dc.b nRst, $0C
	sCall		RT2_Call10
	dc.b nD7, $24
	saTranspose	$F5
	dc.b nRst, $30
	saVolFM		$E6
	sPatFM		$06
	sPan		spCenter, $00

RT2_Loop13:
	dc.b nRst, $06, nG5, $06
	sLoop		$00, $40, RT2_Loop13
	saTranspose	$0B
	saVolFM		$1A
	dc.b nRst, $18
	saTranspose	$F4
	saVolFM		$F6
	sPan		spLeft, $00
	dc.b nRst, $0C
	sPatFM		$07
	dc.b nG6, $03, nA6, nC7, nC7, nA6, nC7, nD7
	dc.b nRst, nEb7, nE7, nC7, nA6, nD7, nC7, nRst
	dc.b nG6, nRst, nA6, nRst, nEb6, nRst, nC6, nD6
	dc.b nA5, nC6, nRst, nD6, nE6, nRst, $0F, nG5
	dc.b $03, nA5, nG5, nC6, nA5, nG5, nE5, nD5
	dc.b nEb5, nD5, nC5, nE5, nC5, nA4, nRst, nC5
	dc.b nRst, nA4, nC5, nRst, nD5, nA4, nD5, nA4
	dc.b nEb5, nE5, nC5, nRst, $0F, nG5, $03, nA5
	dc.b nG5, nC6, nA5, nC6, nD6, nEb6, nE6, nC6
	dc.b nA5, nC6, nA5, nG6, nFs6, nF6, nE6, nEb6
	dc.b nD6, nEb6, nE6, nG6, nA6, nC7, nA6, nG6
	dc.b nA6, nRst, $0C, nEb7, $03, nE7, nC7, nA6
	dc.b nRst, nA6, nRst, nC7, nD7, nA6, nEb7, nE7
	dc.b nC7, nA6, nG7, nFs7, nF7, nE7, nEb7, nD7
	dc.b nC7, nD7, nEb7, nE7, nC7, nA6, nRst, nA6
	dc.b nRst, nG6, nA6, nRst, nEb6, nC6, nD6, nA5
	dc.b nC6, nRst, nD6, nE6, nRst, $0C, nE5, $03
	dc.b nF5, nA5, nC6, nE6, nF6, nA6, nC7, nE7
	dc.b nF7, nE7, nC7, nD7, nE7, nB6, nG6, $06
	dc.b nE6, $03, nG6, nG5, $06, nRst, nG5, $03
	dc.b nA5, nC6, nC6, nA5, nEb6, nE6, nA6, nEb6
	dc.b nE6, nA6, nEb6, nE6, nA6, nEb6, nE6, nA6
	dc.b nEb6, nE6, nA6, nC6, nG6, $06, nF6, nE6
	dc.b $03, nD6, nC6, nE6, nRst, nD6, nB5, nG5
	dc.b $06, nRst, $03, nG5, nA5, nC6, $06, nE6
	dc.b $03, nRst, nF6, nA6, nC7, nD7, nE7, $06
	dc.b nD7, $03, nC7, nD7, nC7, nA6, nE6, nD7
	dc.b nE7, nB6, nG6, $06, nE6, $03, nG6, nG5
	dc.b $06, nRst, nG5, $03, nA5, nC6, nC6, nA5
	dc.b nRst, $0C, nE5, $03, nF5, nA5, nC6, nE6
	dc.b nF6, nA6, nC7, nE7, nF7, nE7, nC7
	saTranspose	$0C
	dc.b nG5, nA5, nB5, nE5, $06, nG5, $03, nRst
	dc.b nG4, nG4, $02, nA4, $01, nB4, $02, nD5
	dc.b $01, nE5, $02, nG5, $01, nA5, $02, nB5
	dc.b $01, nD6, $02, nE6, $01, nG6, $02, nA6
	dc.b $01, nB6, $02, nA6, $01, nG6, $02, nE6
	dc.b $01, nD6, $24
	saTranspose	$F4
	dc.b nRst, $30
	saVolFM		$EB
	saVolFM		$05
	sPatFM		$06
	sPan		spCenter, $00

RT2_Loop14:
	dc.b nRst, $06, nG5, $06
	sLoop		$00, $40, RT2_Loop14
	dc.b nRst, $30, nRst
	saVolFM		$17
	sJump		RT2_Jump4

RT2_Call9:
	dc.b nC7, $02, nRst, $04, nB6, $02, nRst, $04
	dc.b nA6, $09, nB6, $02, nRst, $0D, nC7, $02
	dc.b nRst, $01, nC7, $02, nRst, $01, nB6, $02
	dc.b nRst, $04, nA6, $02, nRst, $04, nB6, $02
	dc.b nRst, $04, nA6, $02, nRst, $04, nB6, $02
	dc.b nRst, $01, nA6, $02, nRst, $01, nRst, $02
	dc.b nRst, $0A, nRst, $30, nRst
	sRet	

RT2_Call6:
	ssModZ80	$20, $03, $F0, $F0
	dc.b nA6, $06, nG6, $03, nRst, nA6, nE7, nRst
	dc.b nD7, $0F
	ssModZ80	$10, $01, $F0, $F0
	saVolFM		$F9
	dc.b nRst, $03, nRst, nRst, nRst, nRst, nG7, nRst
	dc.b nF7, nRst, nE7, nRst, nC7, $0F
	saVolFM		$07
	dc.b nRst, $0C
	sRet	

RT2_Call7:
	ssModZ80	$20, $03, $F0, $F0
	dc.b nA6, $06, nG6, $03, nRst, nA6, nE7, nRst
	dc.b nD7, $0F
	ssModZ80	$10, $01, $F0, $F0
	saVolFM		$F9
	dc.b nRst, $03, nRst, nRst, nRst, nRst, nG7, nRst
	dc.b nF7, nRst, nE7, nRst, nC7, $03, nRst, $0C
	saVolFM		$07
	dc.b nRst, $0C
	sRet	

RT2_PSG1:
RT2_Jump3:
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst
	ssModZ80	$20, $01, $01, $03
	saVolPSG	$FF

RT2_Loop12:
	saVolPSG	$07
	dc.b nE6, $06

RT2_Loop10:
	saVolPSG	$FF
	dc.b sHold, $06
	sLoop		$00, $07, RT2_Loop10
	saVolPSG	$07
	dc.b nFs6, $06

RT2_Loop11:
	saVolPSG	$FF
	dc.b sHold, $06
	sLoop		$00, $07, RT2_Loop11
	sLoop		$01, $04, RT2_Loop12
	saVolPSG	$01
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $30, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst
	saVolPSG	$FF
	dc.b nRst, $30
	sCall		RT2_Call1
	dc.b nRst, $30
	sCall		RT2_Call1
	saVolPSG	$01
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call3
	dc.b nRst, $30
	saVolPSG	$FF
	dc.b nE6, $24, nF6, $0C, nE6, $18, nD6, nD6
	dc.b $24, nG6, $0C, nF6, $12, nE6, $1E, nG6
	dc.b $12, nF6, nA5, $0C, nC6, $18, nB5, nD6
	dc.b $30, sHold, $24, nF6, $0C, nE6, $24, nF6
	dc.b $0C, nE6, $18, nD6, nD6, $24, nG6, $0C
	dc.b nF6, $12, nE6, $1E, nG6, $12, nF6, nA5
	dc.b $0C, nC6, $18, nB5, nD6, $30, sHold, $30
	saVolPSG	$01
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $30
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call3
	dc.b nRst, $30
	saVolPSG	$FF
	dc.b nE6, $24, nF6, $0C, nE6, $18, nD6, nD6
	dc.b $24, nG6, $0C, nF6, $12, nE6, $1E, nG6
	dc.b $12, nF6, nA5, $0C, nC6, $18, nB5, nD6
	dc.b $30, sHold, $24, nF6, $0C, nE6, $24, nF6
	dc.b $0C, nE6, $18, nD6, nD6, $24, nG6, $0C
	dc.b nF6, $12, nE6, $1E, nG6, $12, nF6, nA5
	dc.b $0C, nC6, $18, nB5, nD6, $30, sHold, $30
	dc.b nRst, $30, nRst, $30
	saVolPSG	$01
	sJump		RT2_Jump3

RT2_Call1:
	dc.b nRst, $0C, nG6, nA6, nG7, $08, nFs7, $02
	dc.b nF7, nE7, $2A, nD7, $03, nC7, nB6, $06
	dc.b nC7, $03, nB6, $06, nG6, nE6, $03, nA6
	dc.b nRst, nA6, nG6, nD6, $02, nEb6, nD6, nC6
	dc.b $03, nA5
	sRet	

RT2_Call2:
	dc.b nF5, $03, nA5, nC6, nA5, nE6, nF5, nA5
	dc.b nE6, $06, nF5, $03, nA5, nE6, $06, nF5
	dc.b $03, nA5, nE6, nF5, nG5, nB5, nG5, nE6
	dc.b nF5, nG5, nE6, $06, nF5, $03, nG5, nE6
	dc.b $06, nF5, $03, nG5, nE6
	sRet	

RT2_Call3:
	dc.b nG3, $02, nA3, $01, nB3, $02, nD4, $01
	dc.b nG4, $02, nA4, $01, nB4, $02, nD5, $01
	dc.b nG5, $02, nA5, $01, $02, nD6, $01, nG6
	dc.b $02, nA6, $01, nB6, $02, nD7, $01, nG7
	dc.b $02, nD7, $01, nB6, $02, nA6, $01, nG6
	dc.b $02, nD6, $01, nB5, $02, nA5, $01, nG5
	dc.b $02, nD5, $01, nB4, $02, nA4, $01, nG4
	dc.b $02, nD4, $01, nB3, $02, nG3, $01
	sRet	

RT2_PSG2:
RT2_Jump2:
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst
	ssModZ80	$1E, $01, $01, $03
	saVolPSG	$FF

RT2_Loop9:
	saVolPSG	$07
	dc.b nC6, $06

RT2_Loop7:
	saVolPSG	$FF
	dc.b sHold, $06
	sLoop		$00, $07, RT2_Loop7
	saVolPSG	$07
	dc.b nD6, $06

RT2_Loop8:
	saVolPSG	$FF
	dc.b sHold, $06
	sLoop		$00, $07, RT2_Loop8
	sLoop		$01, $04, RT2_Loop9
	saVolPSG	$01
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $30, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, $0C
	saVolPSG	$03
	dc.b nRst, $30
	sCall		RT2_Call1
	dc.b nRst, $30
	sCall		RT2_Call1
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call3
	dc.b nRst, $30
	saVolPSG	$FF
	dc.b nE6, $24, nF6, $0C, nE6, $18, nD6, nD6
	dc.b $24, nG6, $0C, nF6, $12, nE6, $1E, nG6
	dc.b $12, nF6, nA5, $0C, nC6, $18, nB5, nD6
	dc.b $30, sHold, $24, nF6, $0C, nE6, $24, nF6
	dc.b $0C, nE6, $18, nD6, nD6, $24, nG6, $0C
	dc.b nF6, $12, nE6, $1E, nG6, $12, nF6, nA5
	dc.b $0C, nC6, $18, nB5, nD6, $30, sHold, $30
	saVolPSG	$01
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $30
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call2
	sCall		RT2_Call3
	dc.b nRst, $30
	saVolPSG	$FF
	dc.b nE6, $24, nF6, $0C, nE6, $18, nD6, nD6
	dc.b $24, nG6, $0C, nF6, $12, nE6, $1E, nG6
	dc.b $12, nF6, nA5, $0C, nC6, $18, nB5, nD6
	dc.b $30, sHold, $24, nF6, $0C, nE6, $24, nF6
	dc.b $0C, nE6, $18, nD6, nD6, $24, nG6, $0C
	dc.b nF6, $12, nE6, $1E, nG6, $12, nF6, nA5
	dc.b $0C, nC6, $18, nB5, nD6, $30, sHold, $24
	saVolPSG	$FD
	dc.b nRst, $30, nRst, $30
	saVolPSG	$01
	sJump		RT2_Jump2

RT2_PSG3:
RT2_Jump1:
	sNoisePSG	$E7

RT2_Loop1:
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $03, $03
	sVolEnvPSG	VolEnv_01
	dc.b $06
	sLoop		$00, $1C, RT2_Loop1
	dc.b nRst, $30

RT2_Loop2:
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $03, $03
	sVolEnvPSG	VolEnv_01
	dc.b $06
	sLoop		$00, $7F, RT2_Loop2
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $03, $03
	sVolEnvPSG	VolEnv_01
	dc.b $06

RT2_Loop3:
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $03, $03
	sVolEnvPSG	VolEnv_01
	dc.b $06
	sLoop		$00, $24, RT2_Loop3
	dc.b nRst, $30

RT2_Loop4:
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $03, $03
	sVolEnvPSG	VolEnv_01
	dc.b $06
	sLoop		$00, $44, RT2_Loop4

RT2_Loop5:
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $03, $03
	sVolEnvPSG	VolEnv_01
	dc.b $06
	sLoop		$00, $44, RT2_Loop5
	dc.b nRst, $30

RT2_Loop6:
	sVolEnvPSG	VolEnv_02
	dc.b nF6, $03, $03
	sVolEnvPSG	VolEnv_01
	dc.b $06
	sLoop		$00, $44, RT2_Loop6
	dc.b nRst, $30
	sJump		RT2_Jump1

RT2_DAC:
	saVolFM		$00

RT2_Loop15:
RT2_Jump9:
	dc.b dKick, $06, $06, nRst, $09, dKick, dKick, $06
	dc.b nRst, $09, dKick, $03
	sLoop		$00, $07, RT2_Loop15
	dc.b dGo, $0C, dGo, dGo, dComeOn
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call31
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call32
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call31
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call33
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call31
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call32
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call31
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call32
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call31
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call29
	sCall		RT2_Call31
	dc.b nRst, $30

RT2_Loop16:
	dc.b dKick, $06, $06, dSnare, $0C, dKick, $06, $06
	dc.b dSnare, $09, $03
	sLoop		$00, $0F, RT2_Loop16
	dc.b dKick, $06, $06, dSnare, $03, dKick, $06, $06
	dc.b dSnare, $03, dKick, $06, $06, dSnare, $03, dKick
	dc.b nRst, $03, dKick, $06, dSnare, $03, dCrashCymbal, $24
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call31
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call32
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call31
	sCall		RT2_Call28
	sCall		RT2_Call29
	sCall		RT2_Call30
	sCall		RT2_Call29
	sCall		RT2_Call31
	dc.b nRst, $30

RT2_Loop17:
	dc.b dKick, $06, $06, dSnare, $0C, dKick, $06, $06
	dc.b dSnare, $09, $03
	sLoop		$00, $0F, RT2_Loop17
	dc.b dKick, $06, $06, dSnare, $03, dKick, $06, $06
	dc.b dSnare, $03, dKick, $06, $06, dSnare, $03, dKick
	dc.b nRst, $03, dKick, $06, dSnare, $03, dCrashCymbal, $24
	sPan		spLeft, $00
	dc.b dMidTom, $18
	sPan		spRight, $00
	dc.b dLowTom
	sPan		spCenter, $00
	sJump		RT2_Jump9

RT2_Call30:
	dc.b dKick, $06, $06, dSnare, $09, dKick, dKick, $06
	dc.b dSnare, $0C
	sRet	

RT2_Call28:
	dc.b dCrashCymbal, $06, dKick, $06, dSnare, $09, dKick, dKick
	dc.b $06, dSnare, $0C
	sRet	

RT2_Call29:
	dc.b dKick, $06, $06, dSnare, $09, dKick, dKick, $06
	dc.b dSnare, $09, $03
	sRet	

RT2_Call31:
	dc.b dKick, $03, dSnare, dKick, $06, dSnare, $09, dKick
	dc.b $06, dSnare, $03, dKick, dMidTom, dMidTom, $06, dFloorTom
	sRet	

RT2_Call32:
	dc.b dKick, $03, dSnare, dKick, $06, dSnare, $09, dKick
	dc.b $06, dSnare, $03, dKick, $06, dSnare, dSnare, $03
	dc.b $03
	sRet	

RT2_Call33:
	dc.b dKick, $06, $09, dSnare, $06
	sPan		spLeft, $00
	dc.b dCrashCymbal
	sPan		spCenter, $00
	dc.b dCrashCymbal
	sPan		spRight, $00
	dc.b dCrashCymbal, $0C
	sPan		spCenter, $00
	dc.b dSnare, $03
	sRet	

RT2_Patches:
	; Patch $00
	; $3B
	; $22, $31, $11, $71,	$1F, $1F, $1F, $1F
	; $0C, $09, $08, $0A,	$0F, $08, $07, $02
	; $0F, $0C, $0A, $0F,	$16, $1F, $1D, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$02, $01, $03, $07
	spMultiple	$02, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0C, $08, $09, $0A
	spSustainRt	$0F, $07, $08, $02
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0A, $0C, $0F
	spTotalLv	$16, $1D, $1F, $00

	; Patch $01
	; $35
	; $31, $24, $39, $22,	$1F, $1F, $1F, $1F
	; $03, $0C, $14, $14,	$06, $0C, $15, $13
	; $0A, $0A, $0A, $0A,	$13, $80, $85, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$03, $03, $02, $02
	spMultiple	$01, $09, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$03, $14, $0C, $14
	spSustainRt	$06, $15, $0C, $13
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0A, $0A, $0A, $0A
	spTotalLv	$13, $05, $00, $00

	; Patch $02
	; $3D
	; $41, $52, $31, $42,	$1F, $1F, $3F, $3F
	; $06, $0C, $00, $08,	$05, $0C, $04, $06
	; $0F, $0F, $0F, $0E,	$17, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $03, $05, $04
	spMultiple	$01, $01, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $00, $0C, $08
	spSustainRt	$05, $04, $0C, $06
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0E
	spTotalLv	$17, $00, $00, $00

	; Patch $03
	; $35
	; $33, $21, $32, $21,	$1F, $1F, $1F, $1F
	; $14, $10, $10, $10,	$15, $10, $10, $10
	; $0A, $0A, $0A, $0A,	$15, $86, $86, $86
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$03, $03, $02, $02
	spMultiple	$03, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$14, $10, $10, $10
	spSustainRt	$15, $10, $10, $10
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0A, $0A, $0A, $0A
	spTotalLv	$15, $06, $06, $06

	; Patch $04
	; $2D
	; $32, $21, $32, $22,	$1F, $1F, $1F, $1F
	; $0F, $09, $09, $0E,	$0F, $09, $0E, $0F
	; $0A, $0A, $0A, $0A,	$14, $85, $87, $87
	spAlgorithm	$05
	spFeedback	$05
	spDetune	$03, $03, $02, $02
	spMultiple	$02, $02, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $09, $09, $0E
	spSustainRt	$0F, $0E, $09, $0F
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0A, $0A, $0A, $0A
	spTotalLv	$14, $07, $05, $07

	; Patch $05
	; $3C
	; $12, $12, $21, $61,	$3F, $1F, $1F, $1E
	; $0B, $0A, $0A, $02,	$09, $01, $01, $01
	; $2F, $3F, $5F, $3F,	$15, $80, $13, $87
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$01, $02, $01, $06
	spMultiple	$02, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0B, $0A, $0A, $02
	spSustainRt	$09, $01, $01, $01
	spSustainLv	$02, $05, $03, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $13, $00, $07

	; Patch $06
	; $34
	; $48, $51, $38, $41,	$1F, $1F, $3F, $3F
	; $06, $11, $03, $11,	$05, $12, $04, $10
	; $0F, $0F, $0F, $0E,	$07, $80, $01, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$04, $03, $05, $04
	spMultiple	$08, $08, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $03, $11, $11
	spSustainRt	$05, $04, $12, $10
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0E
	spTotalLv	$07, $01, $00, $00

	; Patch $07
	; $3D
	; $41, $31, $22, $62,	$1F, $1F, $1F, $1F
	; $07, $04, $05, $04,	$05, $05, $0D, $03
	; $2E, $2F, $2F, $1F,	$1C, $87, $87, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $02, $03, $06
	spMultiple	$01, $02, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $05, $04, $04
	spSustainRt	$05, $0D, $05, $03
	spSustainLv	$02, $02, $02, $01
	spReleaseRt	$0E, $0F, $0F, $0F
	spTotalLv	$1C, $07, $07, $07
