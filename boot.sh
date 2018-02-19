#!/bin/bash
geth \
    --datadir private \
    init /root/genesis.json

geth \
    --datadir private \
    --nodekey /root/bootnode.key \
    --networkid 1985
