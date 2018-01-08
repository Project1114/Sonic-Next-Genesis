; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_R1FEL:	
		dc.w SME_R1FEL_6-SME_R1FEL, SME_R1FEL_C-SME_R1FEL	
		dc.w SME_R1FEL_12-SME_R1FEL	
SME_R1FEL_6:	dc.b 1	
		dc.b $F4, $A, 0, 0, $F4	
SME_R1FEL_C:	dc.b 1	
		dc.b $F4, $A, $20, 0, $F4	
SME_R1FEL_12:	dc.b 0	
		even