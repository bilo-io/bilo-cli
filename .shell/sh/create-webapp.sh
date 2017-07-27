#!/bin/bash
. ./.shell/sh/utils/colors.sh

setColor cyan-l
echo ' => creating webapp ...'
resetColor
mkdir src
setColor green
echo '[+] src/'
resetColor
mkdir src/app
setColor green
echo '[+] src/app/'
resetColor
mkdir src/img
setColor green
echo '[+] src/img/'
resetColor
mkdir src/sass
setColor green
echo '[+] src/sass/'
resetColor

echo "
<!DOCTYPE html>
<html>
    <head>
        <title>WebDev</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>" > src/index.html
setColor green
echo ' [+] src/index.html'
resetColor

echo "# Project Readme

## Overview

Rename this file to \"README.md\".
    
> Remove rows in table below as necessary.

## Techstack
|The thing|... and what it is for|
|:--------|:-----------|
|[Node (v6)](https://nodejs.org)|a javascript runtime that uses an event-driven, non-blocking I/O model - (**npm** is the package manager for node)|
|[ReactJS](https://facebook.github.io/react/)|a library for building frontend web applications|
|[Angular 2](http://angular.io)|a framework for dynamic web apps|
|[Webpack](https://webpack.github.io)|a module bundler for javascript projects|

## Quickstart

- \`git clone [repo-url-here]\` 
- \`npm install\`
- \`npm start\`

## Features

> *Showcase*
> - Provide a list of features 
> - Ideally with screenshots
" > README_default.md
setColor green
echo ' [+] README_Default.md'
resetColor

setColor cyan-l
echo '[.] creating Node app'
resetColor

npm init

setColor cyan-l
echo '
 => init-app: done
 '
resetColor