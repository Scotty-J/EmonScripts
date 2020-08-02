#!/bin/bash
source load_config.sh

echo "-------------------------------------------------------------"
echo "EmonPi LCD Update"
echo "-------------------------------------------------------------"
if [ -f $openenergymonitor_dir/emonpi/lcd/install.sh ]; then
    $openenergymonitor_dir/emonpi/lcd/./install.sh
fi

echo "Stopping emonPiLCD service"
sudo systemctl stop emonPiLCD
echo "Display update message on LCD"
sudo $openenergymonitor_dir/emonpi/lcd/./emonPiLCD_update.py
