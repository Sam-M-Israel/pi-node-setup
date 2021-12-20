#!/bin/bash

echo -e "\n****Starting setup, installing required libraries ****\n"

echo "Moving to home directory..."
cd $HOME

echo -e "\n****Installing Rust ****\n"
wget https://sh.rustup.rs/rustup-init.sh && chmod +x rustup-init.sh &&
./rustup-init.sh --profile minimal --default-toolchain 1.52.1 -y &&
source $HOME/.cargo/env
echo -e "\n****Done installing Rust ****\n"

echo -e "\n****Installing ZCash Params ****\n"
wget https://raw.githubusercontent.com/zcash/zcash/master/zcutil/fetch-params.sh &&
chmod +x fetch-params.sh &&
./fetch-params.sh
echo -e "\n****Done installing ZCash Params ****\n"

cd $HOME || exit
echo -e "\n****Installing Opam ****\n"

wget https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh && sudo chmod +x install.sh
echo -e "\n**** When promoted, press enter to install opam in the /usr/local/bin directory ****\n"
./install.sh --version 2.0.9
sudo chmod a+x /usr/local/bin/opam
# wget https://github.com/ocaml/opam/releases/download/2.0.5/opam-2.0.5-x86_64-linux &&
# sudo cp opam-2.0.5-x86_64-linux /usr/local/bin/opam && sudo chmod a+x /usr/local/bin/opam
echo -e "\n****Done installing Opam, now pulling tezos ****\n"
git clone https://gitlab.com/tezos/tezos.git
cd tezos || exit
git checkout latest-release

echo -e "\n****Installing Tezos Dependencies ****\n"
echo -e "\nNOTE: When promoted, enter N on the first question and y and the 2nd \n"
opam init --bare
make build-deps

echo -e "\n****Compiling Sources****\n"
eval $(opam env)
make
echo -e "\n****Done compiling sources****\n"

# [optional setup]
export PATH=~/tezos:$PATH
source ./src/bin_client/bash-completion.sh
export TEZOS_CLIENT_UNSAFE_DISABLE_DISCLAIMER=Y
