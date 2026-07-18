#!/usr/bin/env bash

cd ~ || exit 1
wget https://github.com/ZacharyWesterman/pc_setup/archive/refs/heads/main.zip -O pc_setup.zip || exit 1
unzip pc_setup.zip || exit 1
rm pc_setup.zip -f

cd pc_setup-* || exit 1

./install.sh
./settings.sh

echo
echo
echo -e "\033[32mALL SETUP SHOULD BE TOTALLY DONE!\033[0m"
echo