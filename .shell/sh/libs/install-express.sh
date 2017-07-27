#!/bin/bash
setColor cyan-l
echo ' => init-express ...'
resetColor
npm install \
    express \
    express-history-api-fallback \
--save
setColor green
echo ' [+] server.js'
resetColor
echo "var express = require('express');
var server = express();
var port = process.env.port || 8080;

server.use(express.static(__dirname + '/dist/'));
server.listen(port, '0.0.0.0');
console.log('...listening on port: ' + port);" > server.js

setColor cyan-l
echo ' => init-express: done'
resetColor