#!/bin/bash
geth \
    --datadir private \
    init /root/genesis.json

BOOTSTRAP_IP=`getent hosts ethereum_test01_node1 | cut -d" " -f1`
sleep 10
geth \
    --networkid 1985 \
    --datadir private \
    --bootnodes \
        "enode://eb3a9d0869903f2f233d00856f4840aecf3a0bef1afe9e5b2b336bc010ea19b9ac89c9d57fe4357340dd70b89d57108cc9a7b12510394478a7fc60264351ea9d@$BOOTSTRAP_IP:30303"
