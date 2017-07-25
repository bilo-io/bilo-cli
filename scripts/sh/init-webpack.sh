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
' > webpack.config.js
echo '==================================================='
echo ' (init-webpack):    done'
echo '==================================================='