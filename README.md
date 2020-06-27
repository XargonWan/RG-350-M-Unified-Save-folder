# RG-350-M-Unified-Save-folder
This script aims to create a single place where all the emulators are saving their saves and states.

This scripts is used to move all the supported emulator save files and states into a single folder in your SD card and maintain them there by symlinking the needed folders merging them into a single one (see default directories) creating a save folder structure that can be compatible with RetroArch, so by just dragging the saves folder in retroarch you can resume the game with no efforts.

The SD Card must be renamed into RG-350, otherwise you'll have to fix the script.

**Default directories**
- roms: /media/RG-350/roms
- saves/states: /media/RG-350/saves

**Supported Emulators so far**
- Gambatte
- ReGBA
- Genesis Plus GX
- Picodrive

**Supported Engines so far**
- OpenLara

**Useful sources**

https://github.com/SeongGino/RetroGame350-AppRepo

https://github.com/retrogamehandheld/OpenDingux
