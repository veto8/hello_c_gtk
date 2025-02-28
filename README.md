# Example of C GTK4 Crosscompile
* Starting OS Linux Debian 12

# Requirements
```
sudo apt-get update
sudo apt-get install gcc-arm-linux-gnueabihf gcc-mingw-w64 git wget make libgtk-4-dev
```

# Usage
```
make linux 
```

## Compile Windows GTK with Docker
```
sudo docker run --name hello_gtk  -it fedora /bin/bash 
dnf install -y mingw64-gtk3 mingw32-binutils mingw32-nsiswrapper mingw64-gcc mingw64-gtk4 make pkg-config git emacs-nw 
cd /root/
git clone  https://github.com/veto8/hello_c_gtk.git
cd hello_c_gtk
x86_64-w64-mingw32-gcc -o hello_64 hello.c `mingw64-pkg-config --cflags gtk+-3.0 --libs gtk+-3.0` -mwindows
```

## Outside the Docker copy the compiled hello_64.exe and all compiled GTK libs
```
docker cp hello_gtk:/root/hello_c_gtk/main.exe ~/
docker cp hello_gtk://usr/x86_64-w64-mingw32/sys-root/mingw/bin  ~/
```
