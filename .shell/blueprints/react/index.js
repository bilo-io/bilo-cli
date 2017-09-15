import React from 'react';
import ReactDOM from 'react-dom';
import App from './app/app.js';
import {BrowserRouter as Router} from 'react-router-dom';

ReactDOM.render(
    <Provider store={store}>
        <App/>
    </Provider>    
, document.getElementById('root'));