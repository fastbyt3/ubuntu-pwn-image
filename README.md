# Ubuntu Image for Pwner

## Environment

Used `ubuntu:latest` as most of the tools/scripts used in this image don't really change for different ubuntu releases

If you prefer a specific release feel free to change it:

```bash
FROM ubuntu:latest

# to something like
FROM ubuntu:20.04
```

## Tools

1. python2.7 and Python3.8(will update to py3.10 soon)
2. GDB - debugger 
3. GEF - Plugin for GDB
3. vim
4. netcat
5. tmux
6. curl, wget
7. gcc, g++

Also some Python modules are installed like:

1. pwntools
2. ropper
3. unicorn
4. keystone-engine
5. ropgadget

Both `pip2` and `pip3` are available 

## Setup

#### Building the image

```bash
docker build -t ubuntu_pwn_setup -f UbuntuDocker
```

#### Starting a container

```bash
docker run -it ubuntu_pwn_setup /bin/bash
```

> HAPPY HACKING (〜￣▽￣)〜

---