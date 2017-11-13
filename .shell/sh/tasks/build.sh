#!/bin/bash
# clean
. /usr/local/bin/.shell/sh/utils/colors.sh

clear
echoColor "red" "[-] artifact, dist"
rm -rf artifact dist
 
echoColor "cyan" "[.] building bundle ... (dist)"
npm run build

echoColor "green" "[+] artifact/"
mkdir artifact
mv dist ./artifact
cp server.js ./artifact
cp package.json ./artifact
cd ./artifact

echoColor "blue-l" "[.] installing prod packages"
npm install --production
