# Use, modification, and distribution are
# subject to the Boost Software License, Version 1.0. (See accompanying
# file LICENSE.txt)
#
# Copyright Rene Rivera 2020.

# Configuration for https://cloud.drone.io/.

# For Drone CI we use the Starlark scripting language to reduce duplication.
# As the yaml syntax for Drone CI is rather limited.

def main(ctx):
  return [
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.7 CXXSTD=11 Job 0", "g++-4.7", packages="g++-4.7", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.7', 'CXXSTD': '11', 'DRONE_JOB_UUID': 'b6589fc6ab'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.8 CXXSTD=11 Job 1", "g++-4.8", packages="g++-4.8", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.8', 'CXXSTD': '11', 'DRONE_JOB_UUID': '356a192b79'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.9 CXXSTD=11 Job 2", "g++-4.9", packages="g++-4.9", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.9', 'CXXSTD': '11', 'DRONE_JOB_UUID': 'da4b9237ba'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-5 CXXSTD=11,14,1z Job 3", "g++-5", packages="g++-5", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-5', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': '77de68daec'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-6 CXXSTD=11,14,1z Job 4", "g++-6", packages="g++-6", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-6', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': '1b64538924'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-7 CXXSTD=11,14,1z Job 5", "g++-7", packages="g++-7", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-7', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': 'ac3478d69a'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-8 CXXSTD=11,14,17,2a Job 6", "g++-8", packages="g++-8", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-8', 'CXXSTD': '11,14,17,2a', 'DRONE_JOB_UUID': 'c1dfd96eea'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-9 CXXSTD=11,14,17,2a Job 7", "g++-9", packages="g++-9", buildtype="boost", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-9', 'CXXSTD': '11,14,17,2a', 'DRONE_JOB_UUID': '902ba3cda1'}),
  linux_cxx("TOOLSET=gcc COMPILER=g++-10 CXXSTD=11,14,17,2 Job 8", "g++-10", packages="g++-10", buildtype="boost", image="cppalliance/droneubuntu1804:1", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-10', 'CXXSTD': '11,14,17,2a', 'DRONE_JOB_UUID': 'fe5dbbcea5'}),
  linux_cxx("NVCC=1 Job 9", "g++", packages="", buildtype="7b9003fded-8a963d724e", environment={'NVCC': '1', 'DRONE_JOB_UUID': '0ade7c2cf9'}),
  linux_cxx("TOOLSET=clang COMPILER=/usr/bin/clang++ CXXST Job 10", "/usr/bin/clang++", packages="clang-3.3", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'clang', 'COMPILER': '/usr/bin/clang++', 'CXXSTD': '11', 'DRONE_JOB_UUID': 'b1d5781111'}),
  linux_cxx("TOOLSET=clang COMPILER=/usr/bin/clang++ CXXST Job 11", "/usr/bin/clang++", packages="clang-3.4", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'clang', 'COMPILER': '/usr/bin/clang++', 'CXXSTD': '11', 'DRONE_JOB_UUID': '17ba079149'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.5 CXXSTD=11, Job 12", "clang++", packages="clang-3.5", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.5', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': '7b52009b64'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.6 CXXSTD=11, Job 13", "clang++", packages="clang-3.6", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.6', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': 'bd307a3ec3'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.7 CXXSTD=11, Job 14", "clang++", packages="clang-3.7", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.7', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': 'fa35e19212'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.8 CXXSTD=11, Job 15", "clang++-3.8", packages="clang-3.8", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.8', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': 'f1abd67035'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.9 CXXSTD=11, Job 16", "clang++-3.9", packages="clang-3.9", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.9', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': '1574bddb75'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-4.0 CXXSTD=11, Job 17", "clang++-4.0", packages="clang-4.0", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-4.0', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': '0716d9708d'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-5.0 CXXSTD=11, Job 18", "clang++-5.0", packages="clang-5.0", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-5.0', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': '9e6a55b6b4'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-6.0 CXXSTD=11, Job 19", "clang++-6.0", packages="clang-6.0", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-6.0', 'CXXSTD': '11,14,17', 'DRONE_JOB_UUID': 'b3f0c7f6bb'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-7 CXXSTD=11,14 Job 20", "clang++-7", packages="clang-7", llvm_os="xenial", llvm_ver="7", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-7', 'CXXSTD': '11,14,17,2a', 'DRONE_JOB_UUID': '91032ad7bb'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-8 CXXSTD=11,14 Job 21", "clang++-8", packages="clang-8", llvm_os="xenial", llvm_ver="8", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-8', 'CXXSTD': '11,14,17,2a', 'DRONE_JOB_UUID': '472b07b9fc'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-9 CXXSTD=11,14 Job 22", "clang++-9", packages="clang-9", llvm_os="xenial", llvm_ver="9", buildtype="boost", image="cppalliance/droneubuntu1604:1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-9', 'CXXSTD': '11,14,17,2a', 'DRONE_JOB_UUID': '12c6fc06c9'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-10 CXXSTD=11,1 Job 23", "clang++-10", packages="clang-10", llvm_os="xenial", llvm_ver="10", buildtype="boost", image="cppalliance/droneubuntu1604:1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-10', 'CXXSTD': '11,14,17,2a', 'DRONE_JOB_UUID': 'd435a6cdd7'}),
  linux_cxx("TOOLSET=clang COMPILER=clang++-libc++ CXXSTD= Job 24", "clang++-libc++", packages="libc++-dev", buildtype="boost", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-libc++', 'CXXSTD': '11,14,1z', 'DRONE_JOB_UUID': '4d134bc072'}),
  linux_cxx("CLANG_X_CUDA=1 Job 25", "clang++-5.0", packages="clang-5.0 nvidia-profiler nvidia-cuda-dev nvidia-cuda-toolkit", buildtype="7b9003fded-4aa709a948", environment={'CLANG_X_CUDA': '1', 'DRONE_JOB_UUID': 'f6e1126ced'}),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=11,14,1 Job 26", "clang++", packages="", buildtype="boost", xcode_version="7.3", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '887309d048'}),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=11,14,1 Job 27", "clang++", packages="", buildtype="boost", xcode_version="8.3", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'bc33ea4e26'}),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=11,14,1 Job 28", "clang++", packages="", buildtype="boost", xcode_version="9.4", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '0a57cb53ba'}),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=11,14,1 Job 29", "clang++", packages="", buildtype="boost", xcode_version="10.1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '7719a1c782'}),
  linux_cxx("CMAKE_STANDALONE_TEST=1 Job 30", "clang++", packages="", buildtype="41e711e69e-1085136946", environment={'CMAKE_STANDALONE_TEST': '1', 'DRONE_JOB_UUID': '22d200f867'}),
  linux_cxx("CMAKE_SUBDIR_TEST=1 Job 31", "clang++", packages="", buildtype="41e711e69e-fda7c76df5", environment={'CMAKE_SUBDIR_TEST': '1', 'DRONE_JOB_UUID': '632667547e'}),
  linux_cxx("CMAKE_INSTALL_TEST=1 Job 32", "clang++", packages="", buildtype="41e711e69e-02f3f58ec1", environment={'CMAKE_INSTALL_TEST': '1', 'DRONE_JOB_UUID': 'cb4e5208b4'}),
  linux_cxx("BOOST_CMAKE_TEST=1 Job 33", "clang++", packages="", buildtype="7b9003fded-e64003d10f", environment={'BOOST_CMAKE_TEST': '1', 'DRONE_JOB_UUID': 'b6692ea5df'}),
  ]

# Generate pipeline for Linux platform compilers.
def linux_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1604:1", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
  environment_global = {
      "TRAVIS_BUILD_DIR": "/drone/src",

      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
      }

  environment_current=environment_global
  environment_current.update(environment)

  return {
    "name": "Linux %s" % name,
    "kind": "pipeline",
    "type": "docker",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "linux",
      "arch": arch
    },
    # Create env vars per generation arguments.
    "environment": environment_current,
    "steps": [
      {
        "name": "Everything",
        "image": image,
        "privileged" : privileged,
        "environment": stepenvironment,
        "commands": [

          "echo '==================================> SETUP'",
          "uname -a",
          # Moved to Docker
          # "apt-get -o Acquire::Retries=3 update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata && apt-get -o Acquire::Retries=3 install -y sudo software-properties-common wget curl apt-transport-https git make cmake apt-file sudo unzip libssl-dev build-essential autotools-dev autoconf libc++-helpers automake g++",
          # "for i in {1..3}; do apt-add-repository ppa:git-core/ppa && break || sleep 2; done",
          # "apt-get -o Acquire::Retries=3 update && apt-get -o Acquire::Retries=3 -y install git",
          "echo '==================================> PACKAGES'",
          "./.drone/linux-cxx-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }

def windows_cxx(name, cxx="g++", cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/dronevs2019", buildtype="boost", environment={}, stepenvironment={}, privileged=False):
  environment_global = {
      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
    }

  environment_current=environment_global
  environment_current.update(environment)

  return {
    "name": "Windows %s" % name,
    "kind": "pipeline",
    "type": "docker",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "windows",
      "arch": arch
    },
    # Create env vars per generation arguments.
    "environment": environment_current,
    "steps": [
      {
        "name": "Everything",
        "image": image,
        "privileged": privileged,
        "environment": stepenvironment,
        "commands": [
          "echo '==================================> SETUP'",
          "echo '==================================> PACKAGES'",
          "bash.exe ./.drone/windows-msvc-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "bash.exe ./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }
def osx_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1604:1", osx_version="", xcode_version="", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
  environment_global = {
      # "TRAVIS_BUILD_DIR": "/drone/src",
      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
      }

  environment_current=environment_global
  environment_current.update(environment)

  # exec runner only has step-level environment variables:
  environment_step = environment_current
  environment_step.update(stepenvironment)

  if xcode_version:
    environment_step["DEVELOPER_DIR"] = "/Applications/Xcode-" + xcode_version +  ".app/Contents/Developer"
    if not osx_version:
        if xcode_version[0:2] in [ "12","11","10"]:
            osx_version="catalina"
        elif xcode_version[0:1] in [ "9","8","7","6"]:
            osx_version="highsierra"
  else:
    osx_version="catalina"

  return {
    "name": "OSX %s" % name,
    "kind": "pipeline",
    "type": "exec",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "darwin",
      "arch": arch
    },
    "node": {
      "os": osx_version
      },
    "steps": [
      {
        "name": "Everything",
        # "image": image,
        "privileged" : privileged,
        "environment": environment_step,
        "commands": [

          "echo '==================================> SETUP'",
          "uname -a",
          # "apt-get -o Acquire::Retries=3 update && apt-get -o Acquire::Retries=3 -y install git",
          "echo '==================================> PACKAGES'",
          "./.drone/osx-cxx-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }

def freebsd_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1604:1", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
    pass
