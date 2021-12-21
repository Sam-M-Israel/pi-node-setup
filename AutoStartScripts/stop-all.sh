#!/bin/bash

sudo systemctl stop tezos-node.service
sudo systemctl stop tezos-baker.service
sudo systemctl stop tezos-endorser.service
sudo systemctl stop tezos-accuser.service
