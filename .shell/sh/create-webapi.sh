#!/bin/bash
. ./.shell/sh/utils/colors.sh


colorEcho 'green' ' => creating webapi ...'

mkdir src
colorEcho 'green' '[+] src/'

mkdir src/app
colorEcho 'green' '[+] src/app/'

mkdir src/routes
colorEcho 'green' '[+] src/routes'

echo "
const express        = require('express');
const MongoClient    = require('mongodb').MongoClient;
const bodyParser     = require('body-parser');
const app            = express();
const port = process.env.port || 8000;

app.use(bodyParser.urlencoded());
app.use(bodyParser.json());
require('./src/routes')(app, {})
app.listen(port, () => {
  console.log(' ... node server listening on port: ' + port);
});
" > server.js
colorEcho 'green' '[+] server.js'

npm init
colorEcho 'green-l' '[+] express'
npm install express --save

colorEcho 'green-l' '[+] body-parser'
npm install body-parser --save

colorEcho 'green-l' '[+] nodemon'
npm install nodemon --save