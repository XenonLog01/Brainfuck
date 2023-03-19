@echo on

nasm -fWin32 ./bin/out.asm
gcc -o bin/app.exe bin/out.obj
