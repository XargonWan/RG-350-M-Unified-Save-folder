#!/bin/sh

#This scripts is used to move all the supported emulator save files and states into a single folder in your SD card and maintain them there by smilinking the needed folders inside a single one (see default directories).
#The SD Card must be renamed into RG-350, otherwise you have to fix the script.

#- Default directories -
#saves/states: /media/RG-350/saves
#roms: /media/RG-350/roms
#bios: /media/RG-350/bios

#Adding global variables for the default directories
save_folder=/media/RG-350/saves      #Golbal Save Folder

#Template with description
#Platform Name - Emulator name

#$Original_Folder=/media/data/local/home/.FOO	#initalizing saves folder
#mv $Original_Folder $Original_Folder+"_bak"	#renaming the folder in the folder_bak
#ln -s $save_folder $Original_Folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
#mv $Original_Folder"+_bak"/* $Original_Folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
#rm $Original_Folder+"_bak"						#deleting the old backup folder

### That's enough gabbing, the script is starting.

#Game Boy Advance - ReGBA
Original_Folder=/media/data/local/home/.gpsp	#initalizing saves folder
mv $Original_Folder $Original_Folder+"_bak"	#renaming the folder in the folder_bak
ln -s $save_folder $Original_Folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $Original_Folder"+_bak"/* $Original_Folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm $Original_Folder+"_bak"						#deleting the old backup folder
#Changing file extension from .srm to .sav, ReGBA is not supporting .srm files
cd $save_folder
for x in *.srm; do mv "$x" "${x%.srm}.sav"; done
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
