import React from 'react';
import { Link } from 'react-router-dom';



const Greeting = ({ currentUser, logout, openModal, demoLogin }) => {

    const loggedIn = () => (
        <div className="nav-bar-1">
            <Link to={`/users/${currentUser.id}`}>
                <h2 className="nav-username">
                    {currentUser.username}
                </h2>
            </Link>

            <Link to={`/users/${currentUser.id}`}>
                <img src="" alt="" />
            </Link>
            <Link to="/">
                <button className="nav-logout-btn" onClick={logout}>Log Out</button>
            </Link>

        </div>
    );

    const loggedOut = () => (
        <div className="nav-bar-2">
            <button className="nav-signin-btn" onClick={() => openModal("Log In")}>Log In</button>
            <button className="nav-signup-btn" onClick={() => openModal("Sign Up")}>Get started</button>
            <button className="nav-demo-btn" onClick={ demoLogin }>Demo</button>
        </div>
    );
    

    return currentUser ? loggedIn() : loggedOut();
};


export default Greeting;