# React
npm install \
    react \
    react-dom \
--save-dev
# React Router
npm install \
    # react-router \
    # react-router-dom \
--save
# Babel
npm install \
    babel-core \
    babel-loader \
    babel-preset-es2015 \
    babel-preset-react \
--save-dev

# Add files
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
echo '---------------------------------------------------'
echo 'created: app.js'
echo '---------------------------------------------------'

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
echo '---------------------------------------------------'
echo 'created: app.js'
echo '---------------------------------------------------'