@echo off
set ORIGINAL=%CD%
call "C:\Program Files (x86)\Microsoft Visual C++ Build Tools\vcbuildtools.bat" x64
cd %ORIGINAL%/%3
set compilerflags=/Od /Zi /EHsc
set linkerflags=/OUT:%2
cl.exe %compilerflags% ../%1 /link %linkerflags%
copy %2 ..\%4\%2