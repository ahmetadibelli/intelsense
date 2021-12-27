import React from "react";
import { Link } from "react-router-dom";
import './Navbar.css';

function Navbar(){
    return(
        <div className="my-navbar">
      <div className="navbar-container">
      <nav className="navbar navbar-expand-sm navbar-expand-lg">
  <div className="collapse navbar-collapse" >
    <ul className="navbar-nav ms-auto">
      <li className="nav-item active">
        <Link className="nav-link" to="/">Home </Link>
      </li>
      <li className="nav-item">
        <Link className="nav-link" to="/articles">My Articles</Link>
      </li>

      <li className="nav-item">
        <Link class="nav-link" to="/articles/create">Create Article</Link>
      </li>
      <li className="nav-item">
        <Link class="nav-link" to="#">Log Out</Link>
      </li>

    </ul>

  </div>
</nav>
        </div>
        </div>
    )
}
export default Navbar;
