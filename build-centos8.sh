#!/bin/bash

docker build -f ../dispatcher/docker/Dockerfile-centos-8 -t vpl:centos8 ../dispatcher
docker build -f ../cpu/oneVPL-cpu/docker/Dockerfile-centos-8 -t vpl-cpu:centos8 ../cpu/oneVPL-cpu
docker build -f intel-gpu/docker/Dockerfile-centos-8 -t vpl-gpu:centos8 ../intel-gpu 


