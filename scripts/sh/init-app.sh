#!/bin/bash
echo '================================'
echo ' >>:    src'
echo '--------------------------------'
# mkdir src
echo '# WebApp Readme' >> README2.md
echo '================================'
echo ' >>:    node app'
echo '--------------------------------'
# npm init
echo '================================'
echo ' >>:    webpack'
echo '--------------------------------'
# npm install webpack webpack-dev-server --save-dev
echo '
var webpack = require('webpack');
var config = {
    entry: {},
    output: {}
}
' > webpack.config.js
echo '================================'
echo ' >>:    done'
echo '--------------------------------'
