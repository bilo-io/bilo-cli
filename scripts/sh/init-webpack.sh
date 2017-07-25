echo '==================================================='
echo ' (init-webpack)'
echo '---------------------------------------------------'
npm install --save-dev \
    webpack \
    webpack-dev-server \
    css-loader \
    style-loader \
    sass-loader \
    file-loader \
    html-webpack-plugin \
    node-sass \
echo '==================================================='
echo ' (init-webpack) adding webpack.config'
echo '---------------------------------------------------'
echo '
var webpack = require('webpack');
var config = {
    entry: {},
    output: {}
}
' > webpack.config.js
echo '==================================================='
echo ' (init-webpack):    done'
echo '==================================================='