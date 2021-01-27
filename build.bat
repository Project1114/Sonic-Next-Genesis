@echo off
cd rings
rings.exe
cd ..
"AMPS\Includer.exe" ASM68K AMPS AMPS\.Data
asm68k /m /p /o ae- sonic1.asm, s1NG.gen, , .lst>.log
type .log
if not exist s1NG.gen pause & exit
"AMPS\Dual PCM Compress.exe" AMPS\.z80 AMPS\.z80.dat s1NG.gen _dlls\koscmp.exe
error\convsym .lst s1NG.gen -input asm68k_lst -inopt "/localSign=. /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe s1NG.gen
del AMPS\.Data