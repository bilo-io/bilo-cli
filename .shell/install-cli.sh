name=$1
[[ -z "${name// }" ]] && name="bilo"

echo "Name = $name"

pwd
cp ./.shell/bilo-cli.sh ./.shell/$name
chmod +x ./.shell/$name

rm -rf "./.shell/$name"
# Remove-Item ./.shell/$name
# sudo cp ./.shell/bilo /usr/local/bin/

# Powershell installation on Windows
bin_dir=(%USERPROFILE%\bin)
echo $bin_dir