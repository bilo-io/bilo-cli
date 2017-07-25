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
echo '==================================================='
echo ' (init-webapp): creating README.md'
echo '---------------------------------------------------'
$README=$'# This is the default Readme file\nRename the file to "README.md" for it to appear accordingly on Github etc.'
echo $README >> README_default.md
echo '==================================================='
echo ' (init-webapp):   creating node app'
echo '---------------------------------------------------'
npm init
echo '==================================================='
echo ' (init-webapp):    done'
echo '==================================================='
