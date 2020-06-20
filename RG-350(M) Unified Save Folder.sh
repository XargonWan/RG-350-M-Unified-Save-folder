#!/bin/sh

#This scripts is used to move all the supported emulator save files and states into a single folder in your SD card and maintain them there by smilinking the needed folders inside a single one (see default directories).
#The SD Card must be renamed into RG-350, otherwise you have to fix the script.

#- Default directories -
#roms: /media/RG-350/roms
#saves/states: /media/RG-350/saves

#Game Boy Advance - ReGBA
mv /media/data/local/home/.gpsp /media/data/local/home/.gpsp_bak
ln -s /media/RG-350/saves /media/data/local/home/.gpsp
mv  /media/data/local/home/.gpsp_bak/* /media/data/local/home/.gpsp/
rm /media/data/local/home/.gpsp_bak
