. ./.shell/sh/utils/colors.sh

echoColor 'cyan-l' ' => init-webpack ...'
npm install \
    webpack \
    webpack-dev-server \
    css-loader \
    style-loader \
    sass-loader \
    file-loader \
    html-webpack-plugin \
    node-sass \
--save-dev 

echoColor 'green' '[+] webpack.config.js'
echo "
var path = require('path');
var webpack = require('webpack');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var DIST = path.resolve(__dirname, 'dist/');
var SRC = path.resolve(__dirname, 'src/');

var config = {
    devtool: 'source-map',
    entry: {
        path: SRC + '/index.js'
    },
    output: {
        path: DIST,
        publicPath: 'http://localhost:8080/',
        filename: 'app.js'
    },
    module: {
        rules: [
            {
                test: /\.(js|jsx)$/,
                loader: 'babel-loader',
                exclude: /node_modules/
            }, {
                test: /\.(css|scss)$/,
                loaders: [
                    'style-loader', 'css-loader', 'sass-loader'
                ],
                exclude: /node_modules/
            }, {
                test: /\.(png|jpe?g|gif|svg|woff|woff2|ttf|eot|ico)$/,
                loader: 'file-loader?name=assets/[name].[ext]'
            }
        ]
    },
    plugins: [
        new HtmlWebpackPlugin({ template: './src/index.html', filename: 'index.html', inject: 'body' })
    ],
    devServer: {
        historyApiFallback: true,
        stats: 'minimal'
    }
}
" > webpack.config.js
echoColor 'cyan-l' '
 => init-webpack: done
 '

echoColor 'orange' ' 
NOTE: 

add the following to the "scripts" node in package.json: 

scripts: {
    
    "start": "webpack-dev-server --inline --progress --port 8080",
    "build": "webpack -p",

    // ...
}
'