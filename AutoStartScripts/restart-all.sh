#!/bin/bash

sudo systemctl reload-or-restart tezos-node.service
# No longer needed in Ithaca
# sudo systemctl reload-or-restart tezos-endorser.service
sudo systemctl reload-or-restart tezos-accuser.service
sudo systemctl reload-or-restart tezos-baker.service
