; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_am2QH:	
		dc.w SME_am2QH_10-SME_am2QH, SME_am2QH_16-SME_am2QH	
		dc.w SME_am2QH_1C-SME_am2QH, SME_am2QH_22-SME_am2QH	
		dc.w SME_am2QH_28-SME_am2QH, SME_am2QH_2E-SME_am2QH	
		dc.w SME_am2QH_34-SME_am2QH, SME_am2QH_35-SME_am2QH	
SME_am2QH_10:	dc.b 1	
		dc.b $EF, 1, 0, 0, $FC	
SME_am2QH_16:	dc.b 1	
		dc.b $F4, 5, 0, 2, $F8	
SME_am2QH_1C:	dc.b 1	
		dc.b $F8, 5, 0, 6, $F8	
SME_am2QH_22:	dc.b 1	
		dc.b $FC, 5, 0, $A, $F8	
SME_am2QH_28:	dc.b 1	
		dc.b 1, 1, 0, $E, $FC	
SME_am2QH_2E:	dc.b 1	
		dc.b 6, 0, 0, $10, $FD	
SME_am2QH_34:	dc.b 0	
SME_am2QH_35:	dc.b 1	
		dc.b $F2, 0, 0, $11, $FD	
		even