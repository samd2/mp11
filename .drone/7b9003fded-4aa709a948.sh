#!/bin/bash

set -ex
export TRAVIS_BUILD_DIR=$(pwd)
export TRAVIS_BRANCH=$DRONE_BRANCH
export TRAVIS_OS_NAME=${DRONE_JOB_OS_NAME:-linux}
export VCS_COMMIT_ID=$DRONE_COMMIT
export GIT_COMMIT=$DRONE_COMMIT
export DRONE_CURRENT_BUILD_DIR=$(pwd)
export PATH=~/.local/bin:$PATH

echo '==================================> BEFORE_INSTALL'

. .drone/before-install.sh

echo '==================================> INSTALL'

BOOST_BRANCH=develop && [ "$TRAVIS_BRANCH" == "master" ] && BOOST_BRANCH=master || true
cd ..
git clone -b $BOOST_BRANCH --depth 1 https://github.com/boostorg/boost.git boost-root
cd boost-root
git submodule update --init tools/boostdep
mkdir -p libs/mp11
cp -r $TRAVIS_BUILD_DIR/* libs/mp11
python tools/boostdep/depinst/depinst.py mp11
./bootstrap.sh
./b2 headers

echo '==================================> BEFORE_SCRIPT'

. $DRONE_CURRENT_BUILD_DIR/.drone/before-script.sh

echo '==================================> SCRIPT'

clang++-5.0 -I . -c -x cuda -nocudainc -nocudalib --cuda-gpu-arch=sm_30 -D__device__="__attribute__((device))" -std=c++11 libs/mp11/test/mp11.cpp
clang++-5.0 -I . -c -x cuda -nocudainc -nocudalib --cuda-gpu-arch=sm_30 -D__device__="__attribute__((device))" -std=c++14 libs/mp11/test/mp11.cpp
clang++-5.0 -I . -c -x cuda -nocudainc -nocudalib --cuda-gpu-arch=sm_30 -D__device__="__attribute__((device))" -std=c++1z libs/mp11/test/mp11.cpp

echo '==================================> AFTER_SUCCESS'

. $DRONE_CURRENT_BUILD_DIR/.drone/after-success.sh
