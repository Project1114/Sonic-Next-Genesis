; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_q60dB:	
		dc.w SME_q60dB_C-SME_q60dB, SME_q60dB_17-SME_q60dB	
		dc.w SME_q60dB_40-SME_q60dB, SME_q60dB_50-SME_q60dB	
		dc.w SME_q60dB_60-SME_q60dB, SME_q60dB_75-SME_q60dB	
SME_q60dB_C:	dc.b 2	
		dc.b $E0, 3, $60, 0, $FA	
		dc.b 0, 3, $70, 0, $FA	
SME_q60dB_17:	dc.b 8	
		dc.b $E0, 0, $60, 0, $FA	
		dc.b $E8, 0, $60, 1, $FA	
		dc.b $F0, 0, $60, 2, $FA	
		dc.b $F8, 0, $60, 3, $FA	
		dc.b 0, 0, $60, 3, $FA	
		dc.b 8, 0, $60, 2, $FA	
		dc.b $10, 0, $60, 1, $FA	
		dc.b $18, 0, $70, 0, $FA	
SME_q60dB_40:	dc.b 3	
		dc.b $D0, 3, $60, 0, $FA	
		dc.b $F0, 3, $60, 1, $FA	
		dc.b $10, 3, $70, 0, $FA	
SME_q60dB_50:	dc.b 3	
		dc.b $D0, 3, $60, 0, $FA	
		dc.b $F0, 3, $60, 1, $FA	
		dc.b $10, 3, $70, 0, $FA	
SME_q60dB_60:	dc.b 4	
		dc.b $C0, 3, $60, 0, $FA	
		dc.b $E0, 3, $60, 1, $FA	
		dc.b 0, 3, $60, 1, $FA	
		dc.b $20, 3, $70, 0, $FA	
SME_q60dB_75:	dc.b 4	
		dc.b $C0, 3, $60, 0, $FA	
		dc.b $E0, 3, $60, 1, $FA	
		dc.b 0, 3, $60, 1, $FA	
		dc.b $20, 3, $70, 0, $FA	
		even