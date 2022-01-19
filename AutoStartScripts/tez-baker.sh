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
ExecStart       = /home/pi/tezos/tezos-baker-011-PtHangz2 --endpoint http://127.0.0.1:8732 run with local node ~/tezos-node ledger_pi && export TEZOS_LOG="* -> debug"
Restart         = always

[Install]
WantedBy	= multi-user.target
EOF
