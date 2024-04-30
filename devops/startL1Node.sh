#!/bin/bash

APP_PATH="/home/initia-network/node"

initiad start \
  --home ${APP_PATH} \
  --api.enable \
  --grpc.enable \
  --grpc-web.enable