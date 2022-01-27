# Ubuntu Image for Pwner

## Environment

Using `Ubuntu:20.04` but any ubuntu release should work. To change the release,

```bash
# Change line 1
FROM ubuntu:20.04

# To something like
FROM ubuntu:21.10
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
docker build -t ubuntu_pwn_setup .
```

#### Starting a container

```bash
docker run -it ubuntu_pwn_setup /bin/bash
```

> HAPPY HACKING (〜￣▽￣)〜

---
