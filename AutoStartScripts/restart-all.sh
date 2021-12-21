#!/bin/bash

sudo systemctl reload-or-restart tezos-node.service
sudo systemctl reload-or-restart tezos-endorser.service
sudo systemctl reload-or-restart tezos-accuser.service
sudo systemctl reload-or-restart tezos-baker.service
