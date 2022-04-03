#!/bin/bash

cat > /etc/systemd/system/tezos-accuser.service << EOF
# The Tezos Accuser service (part of systemd)
# file: /etc/systemd/system/tezos-accuser.service

[Unit]
Description     = Tezos Accuser Service
BindsTo		      = tezos-node.service
After           = tezos-node.service

[Service]
User            = pi
Group		        = pi
WorkingDirectory= /home/pi/
ExecStartPre	  = /bin/sleep 1
ExecStart       = /home/pi/tezos/tezos-accuser-012-Psithaca run && export TEZOS_LOG="* -> debug"
Restart         = always

[Install]
WantedBy	= multi-user.target
EOF
