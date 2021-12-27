import React from 'react'
import { Link } from 'react-router-dom';
import './signup.css'
// import slide03 from './slide03.jpg'
export const SignUp = () => {
    return (

            <div className="main-div">
    <form className="user-form">
        <h1>Sign Up</h1>
    <label>Username</label>

    <input type="text" name="username" placeholder="Enter your name" />

    <label>Email</label>

    <input type="email" name="email" placeholder="Enter your email" />

    <label>password</label>

    <input type="password" name="password" placeholder="Enter your password" />
     <p className="forgot-password">
         <Link to="#" className="pass">forgot password</Link>
         </p>
    <br />

    <input type="submit" className="btn" value="Sign Up" name="buttom" onclick="login()" />


    <br />

    </form>


</div>

    )
}
export default SignUp;
