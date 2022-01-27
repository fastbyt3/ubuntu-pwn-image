FROM ubuntu:20.04

WORKDIR /pwn/

# add i386 architecure
RUN dpkg --add-architecture i386

# Env Var
ENV DEBIAN_FRONTEND=noninteractive
ENV LC_CTYPE=C.UTF-8

# Perform basic update and upgrade
RUN apt-get update -y && apt-get upgrade -y

# Install required packages
RUN apt-get install -y \
	wget \
	curl \
	net-tools \
	iputils-ping \
	git \
	strace \
	ltrace \
	file \
	vim \
	nasm \
	gcc-multilib \
	g++-multilib \
	glibc-source \
	libc6-dbg \
	libc6-dbg \
	cmake \
	gdb \
	gdb-multiarch \
	build-essential \
	python2 \
	python2-dev \
	python3 \
	python3-dev \
	python3-distutils \
	libc6:i386 \
	libc6-dbg:i386 \
	libc6-dbg \
	lib32stdc++6 \
	libffi-dev \
	libssl-dev \
	netcat \
	tmux \
	xz-utils \
	unzip && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# PIP setup
RUN curl https://bootstrap.pypa.io/pip/3.5/get-pip.py > /tmp/get-pip.py && python3 /tmp/get-pip.py
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py > /tmp/get-pip.py && python2 /tmp/get-pip.py

# Python modules
RUN pip2 install --upgrade pip && \
	python2 -m pip install --upgrade --no-cache-dir \
	ropgadget \
	pwntools \
	ropper \
	unicorn \
	keystone-engine \
	capstone

RUN pip3 install --upgrade pip && \
	python3 -m pip install --upgrade --no-cache-dir \
	ropgadget \
	pwntools \
	ropper \
	unicorn \
	keystone-engine \
	capstone \
	ipython

# GEF - GDB plugin install
RUN bash -c "$(curl -fsSL http://gef.blah.cat/sh)"

# Clear ENV vars set
ENV DEBIAN_FRONTEND=


CMD ["/bin/bash"]