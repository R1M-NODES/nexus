#!/bin/bash

# Завантаження та виконання common.sh
source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/common.sh)
printLogo

# Оновлення системи та встановлення пакетів
sudo apt update && sudo apt upgrade -y
sudo apt install curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip -y

# Завантаження та виконання rush-install.sh
source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/rush-install.sh)
