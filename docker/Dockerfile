FROM ubuntu:latest
MAINTAINER Daniel Bosk <dbosk@kth.se>

ENV DEBIAN_FRONTEND noninteractive
ENV LATEXFLAGS "-use-make -interaction=batchmode"

RUN apt update -y && apt upgrade -y && apt install -y \
  texlive-full \
  latexmk \
  biber \
  make \
  git \
  python3-matplotlib \
  python3-numpy \
  python3-scipy \
  python3-pygments \
  gnuplot \
  inkscape \
  pandoc

WORKDIR /src
ADD . /src
