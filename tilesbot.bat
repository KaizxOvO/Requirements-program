@echo off
echo Do you wants install Piano Tiles Bot?
echo.
set /p acs=( y,n ) 
If %acs%==y goto install
If %acs%==n exit
:install
echo Do you have python?
set /p pyt=( y,n ) 
If %pyt%==n start cmd /k curl -L -O https://github.com/KaizxOvO/Requirements-program/releases/download/Program/python.exe && pause && python.exe
echo Do you have git?
set /p git=( y,n )
If %git%==n start cmd /k curl -L -O https://github.com/KaizxOvO/Requirements-program/releases/download/Program/git.exe && pause && git.exe
IF %pyt%==y echo Skip Install Python
IF %git%==y echo Skip Install Git
git clone https://github.com/KaizxOvO/simple-piano-tiles-bot
cd simple-piano-tiles-bot
pip install -r requirements.txt
echo Install Done.
