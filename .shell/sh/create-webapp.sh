#!/bin/bash
. ./.shell/sh/utils/colors.sh

colorEcho 'cyan-l' ' => creating webapp ...'

mkdir src
colorEcho 'green' '[+] src/'

mkdir src/app
colorEcho 'green' '[+] src/app/'

mkdir src/img
colorEcho 'green' '[+] src/img/'

mkdir src/sass
colorEcho 'green' '[+] src/sass/'

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
colorEcho 'green' '[+] src/index.html'


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
colorEcho 'green' '[+] README_Default.md'

colorEcho 'cyan-l' '[.] creating Node app'
npm init

colorEcho 'cyan-l' '
 => init-app: done
 '