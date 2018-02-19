FROM ethereum/client-go
ADD genesis.json /root/genesis.json
ADD boot.sh /root/boot.sh
ADD bootnode.key /root/bootnode.key
RUN chmod +x /root/boot.sh
ENTRYPOINT /bin/sh -c '/bin/sh /root/boot.sh'
