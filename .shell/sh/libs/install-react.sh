#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

echoColor 'cyan-l' ' => init-react ...'

# React
echoColor 'green-l' '[+] react, react-dom'
npm install \
    react \
    react-dom \
--save-dev
# React Router
# echoColor 'green-l' '[+] react, react-dom'
# npm install \
#     react-router \
#     react-router-dom \
# --save
# Babel
echoColor 'green-l' '[+] babel: es2015, react'
npm install \
    babel-core \
    babel-loader \
    babel-preset-es2015 \
    babel-preset-react \
--save-dev

# Add files
# - INDEX.JS
echoColor 'green' '[+] src/index.js'
echo "
import React from 'react';
import ReactDOM from 'react-dom';
import App from './app/app.js';
import {BrowserRouter as Router} from 'react-router-dom';

ReactDOM.render(
    <Router>
        <App/>
    </Router>
, document.getElementById('root'));
" > src/index.js

# - APP.JS
echoColor 'green' '[+] src/app/app.js'
echo "
import React from 'react';

export default class App extends React.Component {
    render() {
        return(
            <div>
                <h1>React Component</h1>
            </div>
        )
    }
}
" > src/app/app.js
mkdir src/app/components
mkdir src/app/containers
mkdir src/app/page
echoColor 'green' "
[+] src/app/components
[+] src/app/containers
[+] src/app/pages"

echoColor 'cyan-l' '
 => init-react: DONE
 '