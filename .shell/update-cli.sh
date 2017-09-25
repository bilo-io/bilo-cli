#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

echoColor 'cyan-l' "
=> bilo-cli: changing directory ...
"
cd ~/Dev/Midnite/bilo-cli/
pwd
echoColor 'cyan-l' "
-> getting latest master ... "
git pull origin master
echoColor 'cyan-l' "
-> installing cli from source ... "
bash ./.shell/install-cli.sh