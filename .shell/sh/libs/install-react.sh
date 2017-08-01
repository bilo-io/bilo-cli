. ./.shell/sh/utils/colors.sh
setColor cyan-l
echo ' => init-react ...'
resetColor
# React
colorEcho 'green-l' '[+] react, react-dom'

npm install \
    react \
    react-dom \
--save-dev
# React Router
# setColor green-l
# '[+] react, react-dom'
# npm install \
#     react-router \
#     react-router-dom \
# --save
# Babel
setColor green-l
echo '[+] babel: es2015, react'
resetColor

npm install \
    babel-core \
    babel-loader \
    babel-preset-es2015 \
    babel-preset-react \
--save-dev

# Add files
# - INDEX.JS
setColor green
echo '[+] src/index.js'
resetColor
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
setColor green
echo '[+] src/app/app.js'
resetColor
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

setColor cyan-l 
echo '
 => init-react: DONE
 '
resetColor