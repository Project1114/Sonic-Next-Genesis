; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_1pamB:	
		dc.w SME_1pamB_A-SME_1pamB, SME_1pamB_10-SME_1pamB	
		dc.w SME_1pamB_16-SME_1pamB, SME_1pamB_1C-SME_1pamB	
		dc.w SME_1pamB_22-SME_1pamB	
SME_1pamB_A:	dc.b 1	
		dc.b $F8, 5, 0, 4, $F8	
SME_1pamB_10:	dc.b 1	
		dc.b $F8, 5, $60, 0, $F8	
SME_1pamB_16:	dc.b 1	
		dc.b $F8, 5, $60, 0, $F8	
SME_1pamB_1C:	dc.b 1	
		dc.b $F8, 5, $60, 8, $F8	
SME_1pamB_22:	dc.b 1	
		dc.b $F8, 5, $E8, 8, $F8	
		even