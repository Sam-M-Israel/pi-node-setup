##Tezos Node & Baker commands for running the Kathmandu upgrade


### Upgrading your node to Kathmandu:
Follow these commands [here](https://tezos.gitlab.io/releases/version-14.html) if you have built your node from the source using the gitlab repository (make sure to run this from inside the `~/tezos` directory).

### Updated commands for running your newly updated Kathma Tezos Node:
The following commands should be run from the `~/tezos` directory:

```shell
./tezos-node run --net-addr 127.0.0.1:9732 --rpc-addr 127.0.0.1:8732
```
```shell
./tezos-baker-014-PtKathma run with local node ~/.tezos-node ledger_pi  --votefile "vote_file.json" --liquidity-baking-toggle-vote <on|off|pass>
```
```shell
./tezos-accuser-014-PtKathma run
```


**Note:** The PtKathma upgrade continues usage of the liquidity baking voting configuration. You can read more about it [here](https://tezos.gitlab.io/kathmandu/liquidity_baking.html).

The flag `--votefile` isn't necessary to add if you are ok with just running `--liquidity-baking-toggle-vote` which is the default. In later versions of octez, the 2nd one will not need to be added if you are using the first one. Currently, you need to add both of these flags to the tezos-baker command:
1. `--votefile "vote_file.json"` where vote_file.json is a json file with the contents `{"liquidity_baking_toggle_vote": "<on|off|pass>"}`
2. `--liquidity-baking-toggle-vote "<on|off|pass>"`