var path = require('path');
var webpack = require('webpack');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var DIST = path.resolve(__dirname, 'dist/');
var SRC = path.resolve(__dirname, 'src/');

var config = {
    entry: SRC + '/index.js',
    output: {
        path: DIST,
        publicPath: '/',
        filename: 'app.js'
    },
    devtool: 'source-maps',
    resolve: {
        modules: [
            path.resolve('./'),
            path.resolve('./src/app'),
            path.resolve('./node_modules')
        ]
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

module.exports = config;