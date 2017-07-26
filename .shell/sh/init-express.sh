#!/bin/bash
echo '==================================================='
echo ' (init-express): installing express & history-api'
echo '---------------------------------------------------'
npm install \
    express \
    express-history-api-fallback \
--save
echo '---------------------------------------------------'
echo ' (init-express): creating server.js'
echo '---------------------------------------------------'

echo "var express = require('express');
var server = express();
var port = process.env.port || 8080;

server.use(express.static(__dirname + '/dist/'));
server.listen(port, '0.0.0.0');
console.log('...listening on port: ' + port);" > server.js