MapUnc_1DF5E:
	dc.w word_1DF8A-MapUnc_1DF5E; 0
	dc.w word_1DF8C-MapUnc_1DF5E; 1
	dc.w word_1DF96-MapUnc_1DF5E; 2
	dc.w word_1DFA0-MapUnc_1DF5E; 3
	dc.w word_1DFAA-MapUnc_1DF5E; 4
	dc.w word_1DFB4-MapUnc_1DF5E; 5
	dc.w word_1DFBE-MapUnc_1DF5E; 6
	dc.w word_1DFC8-MapUnc_1DF5E; 7
	dc.w word_1DFD2-MapUnc_1DF5E; 8
	dc.w word_1DFDC-MapUnc_1DF5E; 9
	dc.w word_1DFE6-MapUnc_1DF5E; 10
	dc.w word_1DFF0-MapUnc_1DF5E; 11
	dc.w word_1DFFA-MapUnc_1DF5E; 12
	dc.w word_1E004-MapUnc_1DF5E; 13
	dc.w word_1E016-MapUnc_1DF5E; 14
	dc.w word_1E028-MapUnc_1DF5E; 15
	dc.w word_1E03A-MapUnc_1DF5E; 16
	dc.w word_1E04C-MapUnc_1DF5E; 17
	dc.w word_1E056-MapUnc_1DF5E; 18
	dc.w word_1E060-MapUnc_1DF5E; 19
	dc.w word_1E06A-MapUnc_1DF5E; 20
	dc.w word_1DF8A-MapUnc_1DF5E; 21
	dc.w SME_dDtiv_D-MapUnc_1DF5E	
	dc.w SME_dDtiv_13-MapUnc_1DF5E
	dc.w SME_dDtiv_19-MapUnc_1DF5E	
	dc.w SME_dDtiv_2E-MapUnc_1DF5E
	dc.w SME_dDtiv_4D-MapUnc_1DF5E	
word_1DF8A:	dc.b 0
word_1DF8C:	dc.b 1
	dc.b $F2, $0D, $0, 0,$F0; 0
word_1DF96:	dc.b 1
	dc.b $E2, $0F, $0, 0,$F0; 0
word_1DFA0:	dc.b 1
	dc.b $E2, $0F, $0, 0,$F0; 0
word_1DFAA:	dc.b 1
	dc.b $E2, $0F, $0, 0,$F0; 0
word_1DFB4:	dc.b 1
	dc.b $E2, $0F, $0, 0,$F0; 0
word_1DFBE:	dc.b 1
	dc.b $E2, $0F, $0, 0,$F0; 0
word_1DFC8:	dc.b 1
	dc.b $F2, $0D, $0, 0,$F0; 0
word_1DFD2:	dc.b 1
	dc.b $F2, $0D, $0, 0,$F0; 0
word_1DFDC:	dc.b 1
	dc.b $F2, $0D, $0, 0,$F0; 0
word_1DFE6:	dc.b 1
	dc.b $4, $0D, $0, 0,$E0; 0
word_1DFF0:	dc.b 1
	dc.b $4, $0D, $0, 0,$E0; 0
word_1DFFA:	dc.b 1
	dc.b $4, $0D, $0, 0,$E0; 0
word_1E004:	dc.b 2
	dc.b $F4, $01, $0, 0,$E8; 0
	dc.b $4, $0D, $0, 2,$E0; 4
word_1E016:	dc.b 2
	dc.b $F4, $05, $0, 0,$E8; 0
	dc.b $4, $0D, $0, 4,$E0; 4
word_1E028:	dc.b 2
	dc.b $F4, $09, $0, 0,$E0; 0
	dc.b $4, $0D, $0, 6,$E0; 4
word_1E03A:	dc.b 2
	dc.b $F4, $09, $0, 0,$E0; 0
	dc.b $4, $0D, $0, 6,$E0; 4
word_1E04C:	dc.b 1
	dc.b $F8, $05, $0, 0,$F8; 0
word_1E056:	dc.b 1
	dc.b $F8, $05, $0, 4,$F8; 0
word_1E060:	dc.b 1
	dc.b $F8, $05, $0, 8,$F8; 0
word_1E06A:	dc.b 1
	dc.b $F8, $05, $0, $C,$F8; 0
	dc.b 0
SME_dDtiv_D:	dc.b 1	
	dc.b $F8, 5, 0, 0, $F0	
SME_dDtiv_13:	dc.b 1	
	dc.b $F4, $A, 0, 0, $EC	
SME_dDtiv_19:	dc.b 4	
	dc.b $E8, 8, 0, 0, $E4	
	dc.b $F0, 5, 0, 3, $F4	
	dc.b 0, 5, $10, 7, $F4	
	dc.b $10, 8, $10, $B, $E4	
SME_dDtiv_2E:	dc.b 6	
	dc.b $E0, 8, 0, 0, $E4	
	dc.b $E8, 8, 0, 3, $EC	
	dc.b $F0, 5, 0, 6, $F4	
	dc.b 0, 5, $10, $A, $F4	
	dc.b $10, 8, $10, $E, $EC	
	dc.b $18, 8, $10, $11, $E4	
SME_dDtiv_4D:	dc.b 2	
	dc.b $E0, $B, 0, 0, $EC	
	dc.b 0, $B, $10, $C, $EC	
	even