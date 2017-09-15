import React from 'react';
import {Route, Switch, Link} from 'react-router-dom';
import {BrowserRouter as Router} from 'react-router-dom';
// Components
// Containers
// Pages
import About from './pages/about';
import Home from './pages/home';

require('../app.scss');

export class App extends React.Component {
    constructor(props) {
        super(props)
    }
    render() {
        return (
            <Router>
                <div>
                    <div className='app-content'>
                        <Switch>
                            <Route exact path="/" component={Home} />
                            <Route exact path="/about" component={About} />
                        </Switch>
                    </div>
                </div>
            </Router>
        )
    }
}