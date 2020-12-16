#!/bin/bash

if [ "$DRONE_JOB_UUID" = "0ade7c2cf9" ] ; then
    wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux
    sh cuda_9.1.85_387.26_linux --silent --toolkit --override --toolkitpath=$HOME/lib/cuda-9.1.85
fi

