import React from 'react';
import {Route, Switch, Link} from 'react-router-dom';
import {BrowserRouter as Router} from 'react-router-dom';
// Components
// Containers
// Pages
import Home from './pages/home';

require('../app.scss');

export default class App extends React.Component {
    render() {
        return (
            <Router>
                <Switch className='app-content'>
                    <Route exact path="/" component={Home} />
                </Switch>
            </Router>
        )
    }
}