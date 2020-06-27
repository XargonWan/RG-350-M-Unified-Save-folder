#!/bin/sh

#This scripts is used to move all the supported emulators save files and states into a single folder in your SD card and maintain them there by smilinking the needed folders inside a single one (see default directories).
#The SD Card must be renamed into RG-350, otherwise you have to fix the script.
#This script aims to create a similar save folder of RetroArch one, so by just dragging the saves folder in retroarch you can resume the game with no efforts.

#Adding global variables for the default directories
global_savefolder=/media/RG-350/saves      #Golbal Save Folder
global_biosfolder=/media/RG-350/bios       #Global BIOS Folder


saves_symlink()					#call me with saves_symlink /original/save/folder [don't put / in the end]
{
original_folder=$1				#getting the original folder from the function call
mv $1 $1"_bak"					#renaming the folder in the folder_bak
ln -s $global_savefolder $1 	#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $1"_bak"/* $1				#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm -r $1"_bak"						#deleting the old backup folder

}

bios_symlink()					#call me with bios_symlink /original/save/folder [don't put / in the end]
{
original_folder=$1				#getting the original folder from the function call
mv $1 $1"_bak"					#renaming the folder in the folder_bak
ln -s $global_biosfolder $1 	#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $1"_bak"/* $1				#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm -r $1"_bak"						#deleting the old backup folder

}

### That's enough gabbing, the script is starting.

#Gameboy/Color - Gambatte
saves_symlink /media/data/local/home/.gambatte/saves
bios_symlink /media/data/local/home/.gambatte/bios

#Game Boy Advance - ReGBA
saves_symlink /media/data/local/home/.gpsp
cd $global_savefolder		#Changing file extension from .srm to .sav, ReGBA is not supporting .srm files
for x in *.srm; do mv "$x" "${x%.srm}.sav"; done

#Sega Mega Drive (Genesis),Mega CD, Master System, Game Gear & SG-1000 - Genesis Plus GX
saves_symlink /media/data/local/home/.genplus/saves/cd
saves_symlink /media/data/local/home/.genplus/saves/gg
saves_symlink /media/data/local/home/.genplus/saves/md
saves_symlink /media/data/local/home/.genplus/saves/ms
saves_symlink /media/data/local/home/.genplus/saves/sg
bios_symlink /media/data/local/home/.genplus/saves/bios

#SEGA MS,MD,CD,32X - Picodrive
saves_symlink /media/data/local/home/.picodrive/brm
saves_symlink /media/data/local/home/.picodrive/mds
saves_symlink /media/data/local/home/.picodrive/srm

#Tomb Raider I - OpenLara
saves_symlink /media/data/local/home/.openlara
