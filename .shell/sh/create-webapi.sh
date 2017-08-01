#!/bin/bash
. ./.shell/sh/utils/colors.sh


echoColor 'green' ' => creating webapi ...'

mkdir src
echoColor 'green' '[+] src/'

mkdir src/app
echoColor 'green' '[+] src/app/'

mkdir src/routes
echoColor 'green' '[+] src/routes'

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
echoColor 'green' '[+] server.js'

npm init
echoColor 'green-l' '[+] express'
npm install express --save

echoColor 'green-l' '[+] body-parser'
npm install body-parser --save

echoColor 'green-l' '[+] nodemon'
npm install nodemon --save