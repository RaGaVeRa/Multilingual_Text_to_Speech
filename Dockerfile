ARG FROM_IMAGE_NAME=nvcr.io/nvidia/pytorch:20.09-py3
FROM ${FROM_IMAGE_NAME}

ADD . /workspace/
WORKDIR /workspace/

ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libtcmalloc_minimal.so.4
