; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_wJpEJ:	
		dc.w SME_wJpEJ_C-SME_wJpEJ, SME_wJpEJ_12-SME_wJpEJ	
		dc.w SME_wJpEJ_1D-SME_wJpEJ, SME_wJpEJ_28-SME_wJpEJ	
		dc.w SME_wJpEJ_33-SME_wJpEJ, SME_wJpEJ_3E-SME_wJpEJ	
SME_wJpEJ_C:	dc.b 1	
		dc.b $E4, 5, 0, $31, $FC	
SME_wJpEJ_12:	dc.b 2	
		dc.b $E0, 6, 0, $35, $F8	
		dc.b $E0, 2, 8, $35, 8	
SME_wJpEJ_1D:	dc.b 2	
		dc.b $E0, 6, 0, $3B, $F8	
		dc.b $E0, 2, 8, $3B, 8	
SME_wJpEJ_28:	dc.b 2	
		dc.b $E0, 6, 0, $41, $F8	
		dc.b $E0, 2, 8, $41, 8	
SME_wJpEJ_33:	dc.b 2	
		dc.b $E0, 2, 8, $4A, $F8	
		dc.b $E0, 6, 0, $47, 0	
SME_wJpEJ_3E:	dc.b 1	
		dc.b $E4, 9, 0, $4D, $F8	
		even