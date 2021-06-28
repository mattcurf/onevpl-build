#!/bin/bash

docker build -f ../dispatcher/docker/Dockerfile-ubuntu-20.04 -t vpl:ubuntu20.04 ../dispatcher
docker build -f ../cpu/oneVPL-cpu/docker/Dockerfile-ubuntu-20.04 -t vpl-cpu:ubuntu20.04 ../cpu/oneVPL-cpu
docker build -f intel-gpu/docker/Dockerfile-ubuntu-20.04 -t vpl-gpu:ubuntu20.04 ../intel-gpu 


