import React from 'react'
import './signin.css'
export const SignIn = () => {
    return (
        <>

<div className="form-popup" className="myForm">

  <form className="form-container">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" />

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" />

    <button type="submit" className="btn">Login</button>
  </form>
        </div>
        </>
    )
}
export default SignIn;
