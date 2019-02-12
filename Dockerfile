FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-get install -y matchbox twm \
  && cd /home/gitpod \
  && git clone https://github.com/ohwgiles/wemed.git  \
  && cd wemed  \
  && cmake -DCMAKE_BUILD_TYPE=Release . \
  && make \
  && make install \
  && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
