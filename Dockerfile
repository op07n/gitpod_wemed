FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt-add-repository ppa:ohw-giles/wemed \
    && apt-get update \
    && apt-get install wemed

USER root
