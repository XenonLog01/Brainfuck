@echo on

nasm -fWin32 ./build/out.asm
gcc -o bin/app.exe build/out.obj
