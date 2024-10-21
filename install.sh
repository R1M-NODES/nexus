#!/bin/bash

# Завантаження та виконання common.sh
source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/common.sh)
printLogo

# Оновлення системи та встановлення пакетів
sudo apt update && sudo apt upgrade -y
sudo apt install curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip -y

# Завантаження та виконання rush-install.sh
source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/rush-install.sh)

# Відкриття screen сесії для nexus
screen -S nexus -dm bash -c "
  sudo curl -s https://cli.nexus.xyz/install.sh | bash -s -- -y;
  exec bash
"

# Інформаційне повідомлення
echo "Nexus встановлюється в окремій screen-сесії."
echo "Щоб повернутися до screen сесії, використовуйте: screen -r nexus"
echo "Щоб вийти з screen, натисніть: CTRL+A+D"
