ARG FROM_IMAGE_NAME=nvcr.io/nvidia/pytorch:20.09-py3
FROM ${FROM_IMAGE_NAME}

ADD . /workspace/
WORKDIR /workspace/

RUN pip install -r requirements.txt

ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libtcmalloc_minimal.so.4

EXPOSE 8888
