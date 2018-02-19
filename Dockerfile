FROM ethereum/client-go
ADD genesis.json /root/genesis.json
ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh
ENTRYPOINT /bin/sh -c '/bin/sh /root/start.sh'
