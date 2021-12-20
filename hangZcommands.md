`cd tezos && ./tezos-node run --net-addr 127.0.0.1:9733 --rpc-addr 127.0.0.1:8733 --data-dir ~/tezos-new-node`

`cd tezos && ./tezos-baker-011-PtHangz2 --endpoint http://127.0.0.1:8733 run with local node ~/tezos-new-node ledger_pi`

`cd tezos && ./tezos-endorser-011-PtHangz2 --endpoint http://127.0.0.1:8733 run ledger_pi`

`cd tezos && ./tezos-accuser-011-PtHangz2 --endpoint http://127.0.0.1:8733 run`
