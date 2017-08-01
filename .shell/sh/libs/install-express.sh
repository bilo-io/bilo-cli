#!/bin/bash

echoColor 'cyan-l' ' => init-express ...'
npm install \
    express \
    express-history-api-fallback \
--save

echoColor 'green' ' [+] server.js'

echo "var express = require('express');
var server = express();
var port = process.env.port || 8080;

server.use(express.static(__dirname + '/dist/'));
server.listen(port, '0.0.0.0');
console.log('...listening on port: ' + port);" > server.js

echoColor 'cyan-l' ' => init-express: done'
