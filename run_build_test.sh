#!/bin/bash
for name in `ls -1 Dockerfile.*`; do
    echo $name
    docker build --build-arg https_proxy=$https_proxy -f $name .
done
