@echo off
cd rings
rings.exe
cd ..
asm68k /k /p /c sonic1.asm, s1NG.gen, , s1NG.lst
;convsym sonic1.sym sonic1.symcmp
;copy /B s1NG.gen+sonic1.symcmp s1NG.gen /Y
;del sonic1.symcmp
rompad s1NG.gen 255 0
fixheadr s1NG.gen
pause