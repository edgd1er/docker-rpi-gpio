#!/usr/bin/env bash

#Variables
localDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DKRFILE=${localDir}/Dockerfile
IMAGE=gpio
DUSER=edgd1er
isMultiArch=$("${ARCHI}" != "armhf" ]] && (docker buildx ls | grep -c arm))
PROGRESS=auto  #text auto plain
WHERE="--load"
CACHE=""

#exit on error
set -xe

#Main

# x86
TAG="${DUSER}/${IMAGE}:latest"
PTF=linux/arm/v7

# when building multi arch, load is not possible
[[ $PTF =~ , ]] && WHERE="--push"

docker buildx build ${WHERE} --platform ${PTF} -f ${DKRFILE} $CACHE --progress $PROGRESS -t $TAG .
