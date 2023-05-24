#!/bin/bash

rm s2.node

# build image
docker build -t awsbuild -f ./docker/Dockerfile.node18.aws.build .

# create image - copy out the built c++
docker create --name s2container awsbuild
docker cp s2container:/app/build/Release/s2.node ./
docker rm -f s2container

# run test

# build image
docker build -t s2bugtest-built -f ./docker/Dockerfile.node18.aws.test .
docker create --name s2bugtest-built-instance s2bugtest-built
docker cp ./s2.node s2bugtest-built-instance:/var/task/node_modules/@radarlabs/s2/lib/binding/Release/node-v108-linux-$(node -e "console.log(process.arch);")/
docker start --attach s2bugtest-built-instance
docker rm -f s2bugtest-built-instance

rm s2.node
