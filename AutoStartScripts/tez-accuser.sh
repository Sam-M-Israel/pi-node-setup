cat > /etc/systemd/system/tezos-accuser.service << EOF
# The Tezos Accuser service (part of systemd)
# file: /etc/systemd/system/tezos-accuser.service

[Unit]
Description     = Tezos Accuser Service
BindsTo		      = tezos-node.service
After           = tezos-node.service

[Service]
User            = replaceUsername
Group		        = replaceUsername
WorkingDirectory= /home/replaceUsername/
ExecStartPre	  = /bin/sleep 1
ExecStart       = /home/replaceUsername/tezos/tezos-accuser-011-PtHangz2 run
Restart         = always

[Install]
WantedBy	= multi-user.target
EOF
