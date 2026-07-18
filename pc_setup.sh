#!/usr/bin/env bash

cd ~ || exit 1

if [ ! -e pc_setup__ ]; then
    rm -f pc_setup.zip pc_setup-*
    wget https://github.com/ZacharyWesterman/pc_setup/archive/refs/heads/main.zip -O pc_setup.zip || exit 1
    unzip pc_setup.zip || exit 1
    rm pc_setup.zip -f
    mv pc_setup-* pc_setup__
fi

cd pc_setup__ || exit 1

./install.sh
./settings.sh

cd ~ || exit 1
rm pc_setup__ -rf

echo
echo
echo -e "\033[32mALL SETUP SHOULD BE TOTALLY DONE!\033[0m"
echo
