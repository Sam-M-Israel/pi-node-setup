`cd tezos && ./tezos-node run --net-addr 127.0.0.1:9732 --rpc-addr 127.0.0.1:8732 --data-dir ~/tezos-node`

`cd tezos && ./tezos-baker-011-PtHangz2 --endpoint http://127.0.0.1:8732 run with local node ~/tezos-node ledger_pi`

`cd tezos && ./tezos-endorser-011-PtHangz2 --endpoint http://127.0.0.1:8732 run ledger_pi`

`cd tezos && ./tezos-accuser-011-PtHangz2 --endpoint http://127.0.0.1:8732 run`
