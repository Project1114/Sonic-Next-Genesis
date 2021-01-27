; ---------------------------------------------------------------------------
; Animation script - "TM" and "PRESS START BUTTON" on the title screen
; ---------------------------------------------------------------------------
		dc.w byte_A714-Ani_obj8F
		dc.w byte_A718-Ani_obj8F
byte_A714:	dc.b 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,$FF
byte_A718:	dc.b 2, 1, 0, $FF
		even