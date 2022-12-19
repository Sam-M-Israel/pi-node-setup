#!/bin/bash

cat > /etc/systemd/system/tezos-baker.service << EOF
# The Tezos Baker service (part of systemd)
# file: /etc/systemd/system/tezos-baker.service

[Unit]
Description     = Tezos Baker Service
BindsTo		      = tezos-node.service
After           = tezos-node.service

[Service]
User            = pi
Group		        = pi
WorkingDirectory= /home/pi/
ExecStartPre	  = /bin/sleep 1
ExecStart       = /home/pi/tezos/octez-baker-PtLimaPt run with local node /home/pi/.tezos-node ledger_pi --liquidity-baking-toggle-vote "pass"
Restart         = always

[Install]
WantedBy	= multi-user.target
EOF

