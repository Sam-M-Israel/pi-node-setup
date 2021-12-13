cat > /etc/systemd/system/tezos-endorser.service << EOF
# The Tezos Endorser service (part of systemd)
# file: /etc/systemd/system/tezos-endorser.service

[Unit]
Description     = Tezos Endorser Service
BindsTo		      = tezos-node.service
After           = tezos-node.service

[Service]
User            = replaceUsername
Group		        = replaceUsername
WorkingDirectory= /home/replaceUsername/
ExecStartPre	  = /bin/sleep 1
ExecStart       = /home/replaceUsername/tezos/tezos-endorser-011-PtHangz2 run ledger_pi
Restart         = always

[Install]
WantedBy	= multi-user.target
EOF
