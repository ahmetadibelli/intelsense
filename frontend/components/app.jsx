import React from 'react';
import { Provider } from 'react-redux';
import {
    Route,
    Redirect,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { AuthRoute} from '../util/route_util';
import Modal from '../components/modal/modal' 

const App = () => (
    <div>
        <header>
            <div className="nav-container">
                <nav className="nav-bar">
                    <Link to="/" className="header-link">
                        <h1>IntelSense</h1>
                    </Link>
                    <GreetingContainer />
                    <Modal />
                </nav>
            </div>
        </header>
        {/* <Switch>
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
        </Switch> */}
    </div>
);

export default App;