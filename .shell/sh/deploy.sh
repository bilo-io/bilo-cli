# create local prod artifact
. ./.shell/sh/_colors.sh

setColor green-l
echo "[+] ~/Prod_Deployments"
resetColor
mkdir ~/Prod_Deployments

setColor cyan-l
echo "[.] copy artifact to ~/Prod_Deployments"
resetColor

cp -r ./artifact ~/Prod_Deployments
cd ~/Prod_Deployments/artifact
cwd=$(pwd)
# start local prod server
setColor cyan-l
echo " => starting server in $cwd"
resetColor

node server.js