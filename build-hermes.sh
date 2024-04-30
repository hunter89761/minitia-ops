#!/bin/bash

git clone git@github.com:hunter89761/hermes.git
cd hermes && git checkout webbshi/relayer

docker build -t webbshi/hermes .


#docker build -f Dockerfile1 -t webbshi/ibc-initia-relayer .