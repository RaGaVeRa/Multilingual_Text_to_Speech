#!/bin/bash

nvidia-docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -it --rm --ipc=host -p 8888:8888 -p 6006:6006 -v $PWD:/workspace mile2 bash
