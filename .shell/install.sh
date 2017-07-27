#!/bin/bash
. ./.shell/sh/utils/colors.sh

name=$1
[[ -z "${name// }" ]] && name="bilo"
clear

UTIL_NAME="
______ ___________                  __________ 
___  /____(_)__  /_____       _________  /__(_)
__  __ \_  /__  /_  __ \_______  ___/_  /__  / 
_  /_/ /  / _  / / /_/ //_____/ /__ _  / _  /  
/_.___//_/  /_/  \____/       \___/ /_/  /_/    

 => setup: '$name' ... 
"
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
resetColor
sudo rm -rf /usr/local/bin/.shell 

setColor green-l
echo "[+] add /usr/local/bin/.shell (update)"
resetColor
sudo mkdir /usr/local/bin/.shell

setColor blue-l
echo "[.] copy scripts to /usr/local/bin/.shell"
resetColor
sudo cp -r ./.shell/sh /usr/local/bin/.shell/

cwd=$(pwd)

setColor cyan -l
echo "
 => '$name' CLI installed successfully

 ... run:"
setColor white
echo "
$USER$ $name 
"
resetColor