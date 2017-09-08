#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh
echo "adding React component... name?"
read name
path="./src/app/components/$name"
echo "PATH: $path"
mkdir $path
cat /usr/local/bin/./.shell/blueprints/react/component.js >> $path/index.js
sed "s/MyComponent/$name/g" $path/index.js