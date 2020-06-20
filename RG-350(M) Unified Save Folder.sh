#!/bin/sh

#This scripts is used to move all the supported emulator save files and states into a single folder in your SD card and maintain them there by smilinking the needed folders inside a single one (see default directories).
#The SD Card must be renamed into RG-350, otherwise you have to fix the script.

#- Default directories -
#roms: /media/RG-350/roms
#saves/states: /media/RG-350/saves
#bios: 

#Template
#saves
#mv /media/data/local/home/.FOO /media/data/local/home/.FOO_bak
#ln -s /media/RG-350/saves /media/data/local/home/.FOO
#mv  /media/data/local/home/.FOO_bak/* /media/data/local/home/.FOO/
#rm /media/data/local/home/.FOO_bak
#bios
#mv /media/data/local/home/.FOO /media/data/local/home/.FOO_bak
#ln -s /media/RG-350/saves /media/data/local/home/.FOO
#mv  /media/data/local/home/.FOO_bak/* /media/data/local/home/.FOO/
#rm /media/data/local/home/.FOO_bak

#Game Boy Advance - ReGBA
mv /media/data/local/home/.gpsp /media/data/local/home/.gpsp_bak
ln -s /media/RG-350/saves /media/data/local/home/.gpsp
mv  /media/data/local/home/.gpsp_bak/* /media/data/local/home/.gpsp/
rm /media/data/local/home/.gpsp_bak
#Seems like there is no BIOS folder

#Sega Mega Drive (Genesis),Mega CD, Master System, Game Gear & SG-1000 - Genesis Plus GX
#saves cd
mv /media/data/local/home/.genplus/saves/cd /media/data/local/home/.genplus/saves/cd_bak
ln -s /media/RG-350/saves /media/data/local/home/.genplus/saves/cd
mv  /media/data/local/home/.genplus/saves/cd_bak/* /media/data/local/home/.genplus/saves/cd
rm /media/data/local/home/.genplus/saves/cd_bak
#saves gg
mv /media/data/local/home/.genplus/saves/gg /media/data/local/home/.genplus/saves/gg_bak
ln -s /media/RG-350/saves /media/data/local/home/.genplus/saves/gg
mv  /media/data/local/home/.genplus/saves/gg_bak/* /media/data/local/home/.genplus/saves/gg
rm /media/data/local/home/.genplus/saves/gg_bak
#saves md
mv /media/data/local/home/.genplus/saves/md /media/data/local/home/.genplus/saves/md_bak
ln -s /media/RG-350/saves /media/data/local/home/.genplus/saves/md
mv  /media/data/local/home/.genplus/saves/md_bak/* /media/data/local/home/.genplus/saves/md
rm /media/data/local/home/.genplus/saves/md_bak
#saves ms
mv /media/data/local/home/.genplus/saves/ms /media/data/local/home/.genplus/saves/ms_bak
ln -s /media/RG-350/saves /media/data/local/home/.genplus/saves/ms
mv  /media/data/local/home/.genplus/saves/ms_bak/* /media/data/local/home/.genplus/saves/ms
rm /media/data/local/home/.genplus/saves/ms_bak
#saves sg
mv /media/data/local/home/.genplus/saves/sg /media/data/local/home/.genplus/saves/sg_bak
ln -s /media/RG-350/saves /media/data/local/home/.genplus/saves/sg
mv  /media/data/local/home/.genplus/saves/sg_bak/* /media/data/local/home/.genplus/saves/sg
rm /media/data/local/home/.genplus/saves/sg_bak
#bios
mv /media/data/local/home/.genplus/bios /media/data/local/home/.genplus/bios_bak
ln -s /media/RG-350/saves /media/data/local/home/.genplus/bios
mv  /media/data/local/home/.genplus/bios_bak/* /media/data/local/home/.genplus/bios
rm /media/data/local/home/.genplus/bios_bak
