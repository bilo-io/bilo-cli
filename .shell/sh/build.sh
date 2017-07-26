# clean
. ./.shell/sh/_colors.sh

setColor red
echo "[-] artifact, dist"
resetColor
rm -rf artifact dist

setColor cyan 
echo "[.] building bundle ... (dist)"
resetColor
npm run build

setColor green
echo "[+] artifact/"
resetColor
mkdir artifact
mv dist ./artifact
cp server.js ./artifact
cp package.json ./artifact
cd ./artifact

setColor blue-l
echo "[.] installing prod packages"
resetColor
npm install --production
