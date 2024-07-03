#!/bin/bash

sudo cp ./thinkfan_gen.service /etc/systemd/system/
sudo cp ./thinkfan_gen.timer /etc/systemd/system
sudo cp ./thinkfan_gen /usr/local/bin/
sudo chmod +x /usr/local/bin/thinkfan_gen

sudo systemctl daemon-reload
sudo systemctl enable thinkfan_gen.service
sudo systemctl enable thinkfan_gen.timer

echo "Finished"
