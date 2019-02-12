FROM gitpod/workspace-full-vnc:latest

USER root

RUN  apt-get update \
  && apt-get install -y matchbox twm \
  && apt-get install -y libgtk-3-dev libgmime-2.6-dev libwebkit2gtk-4.0-dev \
  && cd /home/gitpod \
  && git clone https://github.com/ohwgiles/wemed.git  \
  && cd wemed  \
  && cmake -DCMAKE_BUILD_TYPE=Release . \
  && make \
  && make install \
  && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
