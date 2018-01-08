; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_DRO0t:	
		dc.w SME_DRO0t_A-SME_DRO0t, SME_DRO0t_1F-SME_DRO0t	
		dc.w SME_DRO0t_25-SME_DRO0t, SME_DRO0t_2B-SME_DRO0t	
		dc.w SME_DRO0t_36-SME_DRO0t	
SME_DRO0t_A:	dc.b 4	
		dc.b 0, 0, 0, 0, 0	
		dc.b 0, 0, 8, 0, $F8	
		dc.b $F8, 0, $10, 0, 0	
		dc.b $F8, 0, $18, 0, $F8	
SME_DRO0t_1F:	dc.b 1	
		dc.b $F0, $F, $20, 1, $F0	
SME_DRO0t_25:	dc.b 1	
		dc.b $F0, $F, $20, $11, $F0	
SME_DRO0t_2B:	dc.b 2	
		dc.b $F0, 7, $20, $21, $F0	
		dc.b $F0, 7, $38, $21, 0	
SME_DRO0t_36:	dc.b 2	
		dc.b $F0, 7, $20, $29, $F0	
		dc.b $F0, 7, $38, $29, 0	
		even