; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_dS1Tc:	
		dc.w SME_dS1Tc_C-SME_dS1Tc, SME_dS1Tc_D-SME_dS1Tc	
		dc.w SME_dS1Tc_13-SME_dS1Tc, SME_dS1Tc_19-SME_dS1Tc	
		dc.w SME_dS1Tc_1F-SME_dS1Tc, SME_dS1Tc_25-SME_dS1Tc	
SME_dS1Tc_C:	dc.b 0	
SME_dS1Tc_D:	dc.b 1	
		dc.b $E0, $F, 0, 0, $F8	
SME_dS1Tc_13:	dc.b 1	
		dc.b $E0, $F, 0, $10, $F8	
SME_dS1Tc_19:	dc.b 1	
		dc.b $E0, $F, 0, $20, $F8	
SME_dS1Tc_1F:	dc.b 1	
		dc.b $E0, $F, 0, $30, $F8	
SME_dS1Tc_25:	dc.b 1	
		dc.b $E0, $F, 0, $40, $F8	
		even