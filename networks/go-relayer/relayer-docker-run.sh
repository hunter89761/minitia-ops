#!/bin/bash

sleep 10

rly config init
rly chains add --file /relayer/initia-chain.json initia
echo "rly chains added initia"

rly chains add --file /relayer/tucana-chain.json tucana
echo "rly chains added tucana"

rly chains show initia
rly chains show tucana

cp -r /relayer/keys ~/.relayer/

echo "begin sleeping 60 seconds"
sleep 50

rly keys list initia
rly keys list tucana

rly keys add initia validator0
rly keys add tucana validator1

rly q balance initia validator0
rly q balance tucana validator1

# rly paths new [src-chain-id] [dst-chain-id] [path-name] [flags]
rly paths new 10000 tucana-10001 test_path --order unordered --version ics20-1

sleep 20
echo "rly transact clients test_path"
#rly transact link test_path --debug --order unordered
rly transact link test_path --debug --src-port transfer --dst-port transfer --order unordered --version ics20-1

#rly transact channel test_path --src-port transfer-1 --dst-port transfer-1 --order ordered --version ics20-1 --debug

echo -e "link successed!!!\n\n\n\n\n\n\n\n"

# echo "rly start"
rly start --debug
