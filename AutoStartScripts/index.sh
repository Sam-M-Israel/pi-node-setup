sudo systemctl enable tezos-node.service && sudo systemctl enable tezos-baker.service && sudo systemctl enable tezos-endorser.service && sudo systemctl enable tezos-accuser.service

sudo systemctl reload-or-restart tezos-node.service
