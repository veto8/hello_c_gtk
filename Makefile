.PHONY: api

#windows:
#	x86_64-w64-mingw32-gcc -o helloc_gtk_64.exe main.c `pkg-config --cflags --libs gtk4`
#windows32:
#	i686-w64-mingw32-gcc -o helloc_gtk_32.exe main.c `pkg-config --cflags --libs gtk4`
linux:
	gcc -o helloc_gtk_linux hello.c `pkg-config --cflags --libs gtk4`

default: linux
