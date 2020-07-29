To use this you will need [libopenmpt](https://lib.openmpt.org/libopenmpt/2020/07/26/releases-0.5.1-0.4.14-0.3.23/) on Ubuntu and OSX, I needed to build the [makefile release](https://lib.openmpt.org/files/libopenmpt/src/libopenmpt-0.5.1+release.makefile.tar.gz).

I installed a few other things on ubuntu 20.04.

This was my process for making a deb-file for ubuntu 20.04:

```
docker run --rm -it -v ${PWD}:/root/work ubuntu:focal

cd /root/work
apt update
apt install -y wget build-essential libsndfile-dev libflac-dev libsdl2-dev libmpg123-dev portaudio19-dev checkinstall

wget "https://lib.openmpt.org/files/libopenmpt/src/libopenmpt-0.5.1+release.makefile.tar.gz"
tar xvzf "libopenmpt-0.5.1+release.makefile.tar.gz"
cd libopenmpt-0.5.1+release
export PREFIX=/usr
make
checkinstall -D  make install
```

Set `Requires` to this:

```
libsndfile-dev, libflac-dev, libsdl2-dev, libmpg123-dev, portaudio19-dev
```

I am mixing up `-dev` and binary packages here, but that got me the basic package installed, quickly, so I could compile programs that use libopenmpt. Eventually, these should be seperated into `-sev` and binary packages, so I can distribute just the bin package.