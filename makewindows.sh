#!/bin/sh

x86_64-w64-mingw32-gcc -o hello_64 hello.c `mingw64-pkg-config --cflags gtk+-3.0 --libs gtk+-3.0` -mwindows
i686-w64-mingw32-gcc -o hello_32 hello.c `mingw64-pkg-config --cflags gtk+-3.0 --libs gtk+-3.0` -mwindows
