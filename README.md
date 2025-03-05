# Example of C GTK4 Crosscompile

# Requirements for Debian 12
```
sudo apt-get update
sudo apt-get install gcc-arm-linux-gnueabihf gcc-mingw-w64 git wget make libgtk-4-dev
```

# Usage
## Build Linux binary 
```
make linux 
```

## Build Windows GTK binary  with Docker
```
docker run --name hello_gtk  -it --rm  -v "$(pwd)":"/root"   myridia/fedora_cross_compile /bin/bash
cd /root/
x86_64-w64-mingw32-gcc -o hello_64 hello.c `mingw64-pkg-config --cflags gtk+-3.0 --libs gtk+-3.0` -mwindows
```


