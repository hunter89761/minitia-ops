#!/bin/bash

rm -rf ./networks/tucana-cluster
rm -rf ./robot-db-data

cp -r ./networks/tucana-cluster-bak ./networks/tucana-cluster
cp -r ./networks/relayer-bak ./networks/relayer
cp -r ./networks/go-relayer-bak ./networks/go-relayer

cp -r ./networks/initia-network-bak  ./networks/initia-network

docker-compose -f devops/docker-compose-l2cluster.yml up -d