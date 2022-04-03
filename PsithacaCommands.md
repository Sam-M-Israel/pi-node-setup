##Tezos Node commands for running the Ithaca upgrade 


##### Upgrading your node to Ithaca:
Follow these commands [here](https://tezos.gitlab.io/releases/version-12.html) if you have built your node from the source using the gitlab repository (make sure to run this from inside the `~/tezos` directory).
When I did the update myself, I had to run `git clean -x -f` before the `make build-deps` commands  inorder for it to not fail.  


##### Updated commands for running your newly updated Ithaca Tezos Node:
The following commands should be run from the `~/tezos` directory: 

`./tezos-node run --net-addr 127.0.0.1:9732 --rpc-addr 127.0.0.1:8732`

`./tezos-baker-012-Psithaca run with local node ~/.tezos-node ledger_pi`

`./tezos-accuser-012-Psithaca run`


**Note:** The Ithaca upgrade no longer uses an endorser so don't continue running it