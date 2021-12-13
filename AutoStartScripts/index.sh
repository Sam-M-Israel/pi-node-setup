for f in /etc/systemd/system/tezos-*.service ; do
    myUsernamevar=$(cat myusername)
    sed -i.bak "s/replaceUsername/$myUsernamevar/g" "$f"
done
rm myusername

sudo systemctl enable tezos-node.service
sudo systemctl enable tezos-baker.service
sudo systemctl enable tezos-endorser.service
sudo systemctl enable tezos-accuser.service

sudo systemctl reload-or-restart tezos-node.service
