Write-Output '================================'
Write-Output ' (add-webpack)'
Write-Output '--------------------------------'
npm install --save-dev `
    webpack `
    webpack-dev-server `
    css-loader `
    style-loader `
    sass-loader `
    file-loader `
    html-webpack-plugin `
    node-sass `
Write-Output " added webpack.config"
Write-Output '
var webpack = require('webpack');
var config = {
    entry: {},
    output: {}
}
' >> webpack.config.js