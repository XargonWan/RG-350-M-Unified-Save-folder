#!/bin/sh

#This scripts is used to move all the supported emulator save files and states into a single folder in your SD card and maintain them there by smilinking the needed folders inside a single one (see default directories).
#The SD Card must be renamed into RG-350, otherwise you have to fix the script.

#Adding global variables for the default directories
global_savefolder=/media/RG-350/saves      #Golbal Save Folder
global_biosfolder=/media/RG-350/bios       #Global BIOS Folder

#Template with description

#Platform Name - Emulator name
#Template v0.3

#original_folder=/media/data/local/home/.FOO	#initalizing saves folder [don't put / in the end]
#mv $original_folder $original_folder"_bak"		#renaming the folder in the folder_bak
#ln -s $global_savefolder $original_folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
#mv $original_folder"_bak"/* $original_folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
#rm $original_folder"_bak"						#deleting the old backup folder

### That's enough gabbing, the script is starting.

#Gameboy/Color - Gambatte
#saves
original_folder=/media/data/local/home/.gambatte/saves	#initalizing saves folder [don't put / in the end]
mv $original_folder $original_folder"_bak"		#renaming the folder in the folder_bak
ln -s $global_savefolder $original_folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $original_folder"_bak"/* $original_folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm $original_folder"_bak"						#deleting the old backup folder
#bios
original_folder=/media/data/local/home/.gambatte/bios	#initalizing saves folder [don't put / in the end]
mv $original_folder $original_folder"_bak"		#renaming the folder in the folder_bak
ln -s $global_savefolder $original_folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $original_folder"_bak"/* $original_folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm $original_folder"_bak"						#deleting the old backup folder

#Game Boy Advance - ReGBA
original_folder=/media/data/local/home/.gpsp			#initalizing saves folder
mv $original_folder $original_folder"_bak"				#renaming the folder in the folder_bak
ln -s $global_savefolder $original_folder 					#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $original_folder"_bak"/* $original_folder			#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm $original_folder"_bak"								#deleting the old backup folder
#Changing file extension from .srm to .sav, ReGBA is not supporting .srm files
cd $global_savefolder
for x in *.srm; do mv "$x" "${x%.srm}.sav"; done
#Seems like there is no BIOS folder

#Sega Mega Drive (Genesis),Mega CD, Master System, Game Gear & SG-1000 - Genesis Plus GX
original_folder=/media/data/local/home/.genplus/saves
#saves cd
mv $original_folder"/cd" $original_folder"/cd_bak"
ln -s $global_savefolder $original_folder"/cd"
mv  $original_folder"/cd_bak"/* $original_folder"/cd"
rm $original_folder"/cd_bak"
#saves gg
mv $original_folder"/gg" $original_folder"/gg_bak"
ln -s $global_savefolder $original_folder"/gg"
mv  $original_folder"/gg_bak"/* $original_folder"/gg"
rm $original_folder"/gg_bak"
#saves md
mv $original_folder"/md" $original_folder"/md_bak"
ln -s $global_savefolder $original_folder"/md"
mv  $original_folder"/md_bak"/* $original_folder"/md"
rm $original_folder"/md_bak"
#saves ms
mv $original_folder"/ms" $original_folder"/ms_bak"
ln -s $global_savefolder $original_folder"/ms"
mv  $original_folder"/ms_bak"/* $original_folder"/ms"
rm $original_folder"/ms_bak"
#saves sg
mv $original_folder"/sg" $original_folder""/sg"_bak"
ln -s $global_savefolder $original_folder"/sg"
mv  $original_folder"/sg_bak"/* $original_folder"/sg"
rm $original_folder"/sg_bak"
#bios
original_folder=/media/data/local/home/.genplus/bios
mv $original_folder $original_folder"_bak"
ln -s $global_biosfolder $original_folder
mv  $original_folder"_bak"/* $original_folder
rm $original_folder"_bak"

#SEGA MS,MD,CD,32X - Picodrive
#Template v0.3

original_folder=/media/data/local/home/.picodrive/brm	#initalizing saves folder [don't put / in the end]
mv $original_folder $original_folder"_bak"		#renaming the folder in the folder_bak
ln -s $global_savefolder $original_folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $original_folder"_bak"/* $original_folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm $original_folder"_bak"						#deleting the old backup folder

original_folder=/media/data/local/home/.picodrive/mds	#initalizing saves folder [don't put / in the end]
mv $original_folder $original_folder"_bak"		#renaming the folder in the folder_bak
ln -s $global_savefolder $original_folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $original_folder"_bak"/* $original_folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm $original_folder"_bak"						#deleting the old backup folder

original_folder=/media/data/local/home/.picodrive/srm	#initalizing saves folder [don't put / in the end]
mv $original_folder $original_folder"_bak"		#renaming the folder in the folder_bak
ln -s $global_savefolder $original_folder 			#creating a symbolic link with the name of the original folder pointing at the gloabl save folder
mv $original_folder"_bak"/* $original_folder	#moving all the files inside the backed up folder into the newly created folder, actually inside the golbal save folder
rm $original_folder"_bak"						#deleting the old backup folder
