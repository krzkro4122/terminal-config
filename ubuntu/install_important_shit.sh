#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y \
	tmux \
	curl \
	jq \
	make \
	fzf \
	git \
	python3 \
	kitty \
	cmake \
	pyright 

curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash -
sudo apt install -y nodejs 

mkdir temp
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd -
rm -rf temp
