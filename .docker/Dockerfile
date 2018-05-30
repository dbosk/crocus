FROM ubuntu:latest
MAINTAINER Daniel Bosk <dbosk@kth.se>

ENV DEBIAN_FRONTEND noninteractive
ENV LATEXFLAGS "-use-make -interaction=batchmode"

RUN apt update -y && apt upgrade -y && apt install -y \
  make \
  git \
  python3-matplotlib \
  python3-numpy \
  python3-scipy \
  python3-pygments \
  gnuplot \
  inkscape \
  pandoc \
  curl

RUN curl -o install-tl-unx.tar.gz \
  http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz; \
  tar -xvf install-tl-unx.tar.gz -C /install-tl-unx --strip-components=1; \
  echo "selected_scheme scheme-full" >> /install-tl-unx/texlive.profile; \
  install-tl-unx/install-tl -profile /install-tl-unx/texlive.profile; \
  rm -R /install-tl-unx install-tl-unx.tar.gz

RUN tlmgr update
