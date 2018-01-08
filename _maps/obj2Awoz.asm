; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_LnM6d:	
		dc.w SME_LnM6d_12-SME_LnM6d, SME_LnM6d_3B-SME_LnM6d	
		dc.w SME_LnM6d_64-SME_LnM6d, SME_LnM6d_83-SME_LnM6d	
		dc.w SME_LnM6d_A2-SME_LnM6d, SME_LnM6d_B7-SME_LnM6d	
		dc.w SME_LnM6d_CC-SME_LnM6d, SME_LnM6d_D7-SME_LnM6d	
		dc.w SME_LnM6d_E2-SME_LnM6d	
SME_LnM6d_12:	dc.b 8	
		dc.b $E0, 1, 0, 0, $F8	
		dc.b $F0, 1, 0, 0, $F8	
		dc.b 0, 1, 0, 0, $F8	
		dc.b $10, 1, 0, 0, $F8	
		dc.b $E0, 1, 0, 2, 0	
		dc.b $F0, 1, 0, 2, 0	
		dc.b 0, 1, 0, 2, 0	
		dc.b $10, 1, 0, 2, 0	
SME_LnM6d_3B:	dc.b 8	
		dc.b $E8, 1, 0, 0, $F8	
		dc.b $F8, 1, 0, 0, $F8	
		dc.b 8, 1, 0, 0, $F8	
		dc.b $E8, 1, 0, 2, 0	
		dc.b $F8, 1, 0, 2, 0	
		dc.b 8, 1, 0, 2, 0	
		dc.b $E0, 0, 0, 1, $F8	
		dc.b $E0, 0, 0, 3, 0	
SME_LnM6d_64:	dc.b 6	
		dc.b $E0, 1, 0, 0, $F8	
		dc.b $F0, 1, 0, 0, $F8	
		dc.b 0, 1, 0, 0, $F8	
		dc.b $E0, 1, 0, 2, 0	
		dc.b $F0, 1, 0, 2, 0	
		dc.b 0, 1, 0, 2, 0	
SME_LnM6d_83:	dc.b 6	
		dc.b $E8, 1, 0, 0, $F8	
		dc.b $F8, 1, 0, 0, $F8	
		dc.b $E8, 1, 0, 2, 0	
		dc.b $F8, 1, 0, 2, 0	
		dc.b $E0, 0, 0, 1, $F8	
		dc.b $E0, 0, 0, 3, 0	
SME_LnM6d_A2:	dc.b 4	
		dc.b $E0, 1, 0, 0, $F8	
		dc.b $F0, 1, 0, 0, $F8	
		dc.b $E0, 1, 0, 2, 0	
		dc.b $F0, 1, 0, 2, 0	
SME_LnM6d_B7:	dc.b 4	
		dc.b $E8, 1, 0, 0, $F8	
		dc.b $E8, 1, 0, 2, 0	
		dc.b $E0, 0, 0, 1, $F8	
		dc.b $E0, 0, 0, 3, 0	
SME_LnM6d_CC:	dc.b 2	
		dc.b $E0, 1, 0, 0, $F8	
		dc.b $E0, 1, 0, 2, 0	
SME_LnM6d_D7:	dc.b 2	
		dc.b $E0, 0, 0, 1, $F8	
		dc.b $E0, 0, 0, 3, 0	
SME_LnM6d_E2:	dc.b 0	
		even