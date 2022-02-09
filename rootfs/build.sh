#!/bin/bash

set -ex

export TYPE="rootfs"
export ARCH="x86_64"
export SOURCE="${SOURCE-openwrt}"
export VERSION="${VERSION-2022.02.07-2350}"
export REPO_NAME="codiy1992/build-openwrt"
export FILE_PATH="releases/download/$VERSION"
export FILE_NAME="openwrt-x86-64-generic-rootfs.tar.gz"
export SAVE_NAME="$SOURCE-${ARCH//_/-}-$VERSION-$TYPE.tar.gz"

export IMAGE="${SOURCE}-$TYPE"
export IMAGE_TAG="$IMAGE:$ARCH-$VERSION"

if ! [ -f $SAVE_NAME ]; then
    wget -O $SAVE_NAME "https://github.com/$REPO_NAME/$FILE_PATH/$FILE_NAME" || exit 1
fi

mkdir -p ./build

tar xf "$SAVE_NAME" --strip=1 -C ./build

cp -r ./etc/* ./build/etc

docker rmi -f $IMAGE_TAG

docker build \
    --file "Dockerfile" \
    --tag "$IMAGE_TAG" \
    ./build

docker tag "$IMAGE_TAG" "$IMAGE:latest"

# rm -rf "$FILE_NAME"
# rm -rf ./build
