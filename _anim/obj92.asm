Obj92_Ani:
		dc.w Obj92_Blank-Obj92_Ani
		dc.w Obj92_Show-Obj92_Ani
Obj92_Blank: dc.b $1F, 0, $FF
Obj92_Show: dc.b 3, $16, $17, $18, $19, $1A, $FE, 1
		even