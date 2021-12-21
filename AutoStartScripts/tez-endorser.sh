#!/bin/bash

cat > /etc/systemd/system/tezos-endorser.service << EOF
# The Tezos Endorser service (part of systemd)
# file: /etc/systemd/system/tezos-endorser.service

[Unit]
Description     = Tezos Endorser Service
BindsTo		      = tezos-node.service
After           = tezos-node.service

[Service]
User            = pi
Group		        = pi
WorkingDirectory= /home/pi/
ExecStartPre	  = /bin/sleep 1
ExecStart       = /home/pi/tezos/tezos-endorser-011-PtHangz2 run ledger_pi && export TEZOS_LOG="* -> debug"
Restart         = always

[Install]
WantedBy	= multi-user.target
EOF
