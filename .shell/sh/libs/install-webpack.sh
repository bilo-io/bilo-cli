#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

cat ./.shell/blueprints/webpack.config.js > webpack.config.js
echoColor 'green' '[+] webpack.config.js'
echoColor 'cyan-l' ' => init-webpack ...'
npm install \
    webpack \
    webpack-dev-server \
    html-webpack-plugin \
--save-dev
echoColor 'cyan-l' '
 => init-webpack: done
 '

echoColor 'cyan-l' ' => init-sass ...'
npm install \
    css-loader \
    style-loader \
    sass-loader \
    file-loader \
    node-sass \
--save-dev
echoColor 'cyan-l' '
 => init-sass: done
 '

echoColor 'orange' ' 
NOTE: Add to package.json: 

scripts: {
    "dev": "webpack-dev-server --inline --progress --port 8080",
    "build": "webpack -p",
    "start":"node ./artifact/server.js",
}
'

# sed -i 's/"scripts" :\n"build": "webpack -\p",' package.json
# sed -i '.txt' 's/Dude/a Elduderino/g' test.txt
# sed -i '.txt' 's/Dude/\a Elduderino/g' test.txt

# sed -i '/"scripts" : {/n; "start": "webpack-dev-server --inline --progress --port 8080",' packagejson