
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