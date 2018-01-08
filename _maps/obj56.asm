; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_XBVpc:	
		dc.w SME_XBVpc_10-SME_XBVpc, SME_XBVpc_16-SME_XBVpc	
		dc.w SME_XBVpc_2B-SME_XBVpc, SME_XBVpc_36-SME_XBVpc	
		dc.w SME_XBVpc_4B-SME_XBVpc, SME_XBVpc_5B-SME_XBVpc	
		dc.w SME_XBVpc_61-SME_XBVpc, SME_XBVpc_6C-SME_XBVpc	
SME_XBVpc_10:	dc.b 1	
		dc.b $F0, $F, 0, $39, $F0	
SME_XBVpc_16:	dc.b 4	
		dc.b $E0, $F, 0, $39, $E0	
		dc.b $E0, $F, 0, $39, 0	
		dc.b 0, $F, 0, $39, $E0	
		dc.b 0, $F, 0, $39, 0	
SME_XBVpc_2B:	dc.b 2	
		dc.b $E0, $F, 0, $39, $F0	
		dc.b 0, $F, 0, $39, $F0	
SME_XBVpc_36:	dc.b 4	
		dc.b $E5, $F, 0, $59, $E0	
		dc.b $FF, $F, 0, $59, $E0	
		dc.b $E5, $F, 0, $59, 0	
		dc.b $FF, $F, 0, $59, 0	
SME_XBVpc_4B:	dc.b 3	
		dc.b $D5, $F, 0, $59, $F0	
		dc.b $EF, $F, 0, $59, $F0	
		dc.b 9, $F, 0, $59, $F0	
SME_XBVpc_5B:	dc.b 1	
		dc.b $F0, $F, 0, $21, $F0	
SME_XBVpc_61:	dc.b 2	
		dc.b $E0, 7, 0, 0, $F8	
		dc.b 0, 7, $10, 0, $F8	
SME_XBVpc_6C:	dc.b 4	
		dc.b $F0, $F, 0, $22, $C0	
		dc.b $F0, $F, 0, $22, $E0	
		dc.b $F0, $F, 0, $22, 0	
		dc.b $F0, $F, 0, $22, $20	
		even