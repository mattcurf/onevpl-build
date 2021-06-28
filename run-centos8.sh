#!/bin/bash

if [ -n "$(lspci | grep 00.02.0)" ]; then
   echo "Starting vpl-gpu"
   docker run -it --rm  --device /dev/dri:/dev/dri -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY vpl-gpu:centos8
else
   echo "Starting vpl-cpu"
   docker run -it --rm vpl-cpu:centos8
fi
