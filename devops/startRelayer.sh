#!/bin/bash



echo "test test test test test test test test test test test junk" > mnemonic.key

# add relayer key for the chains
hermes keys add --key-name relayer --chain $L1_CHAIN_ID --mnemonic-file ./mnemonic.key
hermes keys add --key-name relayer --chain $L2_CHAIN_ID --mnemonic-file ./mnemonic.key

sleep 10

# create channel with clients and connections
# tooks 5 minutes (send any tx to boost)
hermes create channel \
  --a-chain $L1_CHAIN_ID \
  --b-chain $L2_CHAIN_ID \
  --a-port transfer \
  --b-port transfer \
  --new-client-connection

echo "create channel finished"

sleep 1000