#!/bin/bash

docker-compose -f devops/docker-compose-l2cluster.yml down

rm -rf networks/tucana-cluster
rm -rf networks/initia-network
rm -rf networks/relayer
rm -rf networks/go-relayer