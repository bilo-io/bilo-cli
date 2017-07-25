#!/bin/bash
echo '==================================================='
echo ' (init-webapp): creating webapp'
echo '---------------------------------------------------'
echo ' + src/'
echo '---------------------------------------------------'
mkdir src
mkdir src/app
mkdir src/img
mkdir src/sass
$INDEX_HTML=$'
<!DOCTYPE html>
<html>
    <head>
        <title>WebDev</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>'
echo $INDEX_HTML >> src/index.html
echo '==================================================='
echo ' (init-webapp): creating README.md'
echo '---------------------------------------------------'
$README=$'# This is the default Readme file \n Rename the file to "README.md" for it to appear accordingly on Github etc.'
echo $README >> README_default.md
echo '==================================================='
echo ' (init-webapp):   creating node app'
echo '---------------------------------------------------'
npm init
echo '==================================================='
echo ' (init-webapp):    done'
echo '==================================================='
