import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout, openModal, demoLogin }) => {
  const loggedOut = () => (
    <nav className="nav-1">
        <a id="selected" href="#" type="button"><button className="nav-login" >Home</button></a>
        &nbsp;&nbsp;
       <button className="nav-login" onClick={() => openModal('Log in')}>Login</button>
        &nbsp;&nbsp;
       <button className="nav-signup" onClick={() => openModal('Sign up')}>Get started</button>
        &nbsp;&nbsp;
      <button className="nav-demo" onClick={demoLogin}>Demo</button>
    </nav>
  );

  const loggedIn = () => (
    <nav className="nav-2">
      <Link to={`/users/${currentUser.id}`}>
        <h2 className="nav-user">{currentUser.fullname}</h2>
      </Link>

      <Link to={`/users/${currentUser.id}`}>
        <img className="greeting-profile-pic" src="https://median-aa-seeds.s3.amazonaws.com/profile_pic.jpg" alt="{currentUser.fullname}" width="36" height="36"/>
      </Link>

      <button className="nav-logout" onClick={logout}>Log out</button>
    </nav>
  );

  return currentUser ? loggedIn() : loggedOut();
};

export default Greeting;
