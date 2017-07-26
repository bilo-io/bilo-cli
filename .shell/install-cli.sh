#!/bin/bash
. ./.shell/sh/_colors.sh
name=$1
[[ -z "${name// }" ]] && name="bilo"
clear

UTIL_NAME='                                                                    
    _/        _/  _/                                  _/  _/
   _/_/_/_/      _/   _/_/_/                 _/_/_/  _/     
  _/    _/  _/  _/  _/    _/    _/_/_/    _/        _/  _/  
 _/_/_/_/  _/  _/   _/_/_/                 _/_/_/  _/  _/                                                               

Setup ... 
'
setColor cyan
echo "$UTIL_NAME"

setColor cyan-l
echo "[.] creating command line utility: '$name'"
cp ./.shell/bilo-cli.sh ./.shell/$name
chmod +x ./.shell/$name
cp ./.shell/$name /usr/local/bin
rm -rf "./.shell/$name"

setColor orange
echo "[!] installing '$name' CLI requires authorisation:"

setColor red-l
echo "[-] del /usr/local/bin/.shell (old)"
sudo rm -rf /usr/local/bin/.shell 

setColor green-l
echo "[+] add /usr/local/bin/.shell (update)"
sudo mkdir /usr/local/bin/.shell

setColor blue-l
echo "[.] copy scripts to /usr/local/bin/.shell"
sudo cp -r ./.shell/sh /usr/local/bin/.shell/

setColor green
echo "

 => $name CLI installed successfully

" 
resetColor
