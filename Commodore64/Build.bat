@echo off
call E:\dev\cityxen\retro-dev-tools\build.bat
echo Build Script: Building %1
php update_revision.php
call genkickass-script.bat -t C64 -o prg_files -m true -s true -l "E:\dev\cityxen\Commodore64_Programming\include"
call KickAss.bat seeqz.asm
rem exomizer sfx basic -o prg_files\\seeqz-e.prg prg_files\\seeqzz.prg
sort prg_files/seeqz.sym > prg_files/seeqz-sorted.sym
