#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

blueprints="/usr/local/bin/.shell/blueprints"
cat $blueprints/webpack.config.js > webpack.config.js
echoColor 'green' '[+] webpack.config.js'
echoColor 'cyan-l' ' => init-webpack ...'
npm install \
    webpack \
    webpack-cli \
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
    "deploy": "bash ./scripts/deploy.sh",
    "bump": "node ./scripts/semver.js",
    "release": "npm publish",
    "prepublish": "yarn build",
    "start":"node ./artifact/server.js"
    "dev": "webpack-dev-server --inline --port 8080",
    "dev:all": "yarn start",
    "dev:docs": "UI_ENV=development webpack-dev-server -w --color --inline --config webpack.static.js --open",
    "build": "webpack -p",
    "build:all": "yarn clean:all && yarn build && yarn build:docs && yarn build:server",
    "build:docs": "yarn clean:docs && UI_ENV=production webpack --config webpack.static.js && mv ./demo ./docs",
    "build:server": "webpack -p --config webpack.static.js && mkdir artifact && cp server.js ./artifact && cp -r ./demo ./artifact",
    "build:snapshots": "jest --updateSnapshot",
    "clean": "rm -rf artifact && rm -rf dist",
    "clean:all": "yarn clean && yarn clean:docs",
    "clean:docs": "rm -rf docs",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:output": "jest --json --outputFile=.jest-test-results.json",
    "build": "webpack -p",
}
'

# sed -i 's/"scripts" :\n"build": "webpack -\p",' package.json
# sed -i '.txt' 's/Dude/a Elduderino/g' test.txt
# sed -i '.txt' 's/Dude/\a Elduderino/g' test.txt

# sed -i '/"scripts" : {/n; "start": "webpack-dev-server --inline --progress --port 8080",' packagejson