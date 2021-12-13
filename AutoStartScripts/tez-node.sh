cat > /etc/systemd/system/tezos-node.service << EOF
# The Tezos Node service (part of systemd)
# file: /etc/systemd/system/tezos-node.service

[Unit]
Description     = Tezos Node Service
Wants           = network-online.target
After           = network-online.target

[Service]
User            = pi
Group		        = pi
WorkingDirectory= /home/pi/
ExecStart	      = /home/pi/tezos/tezos-node run --net-addr 127.0.0.1:9733 --rpc-addr 127.0.0.1:8733 --data-dir /home/pi/tezos-new-node
Restart         = always

[Install]
WantedBy	  = multi-user.target
RequiredBy	= tezos-baker.service tezos-endorser.service tezos-accuser.service
EOF