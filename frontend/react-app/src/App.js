import logo from './logo.svg'
// import './app.css';
import { BrowserRouter as Router, Route, Link, BrowserRouter } from "react-router-dom";
import { Routes } from 'react-router-dom';
import Blog from './posts/Blog';
import cardData from './posts/cardData'
// import images from 'images/team1.jpg'
// import UserRegistration from '..src/posts/LoginOut/UserRegistration'
// import UserRegistration from '../../posts/LoginOut-page/Registration-form/User-registration.js';
import './App.css'
import '../node_modules/bootstrap/dist/css/bootstrap.min.css'
// import Navbar from './posts/Navbar.js'
// import Navbr from './posts/Navbar.js';
import Navbar from './posts/Navbar.js';
import Topcontainer from './posts/Topcontainer';
function App(){
    return(
        <div className='my-app'>
            
         <Navbar />
     <div className='cadItems-div container'>
         <userRegistration />
     <Topcontainer />
         <div className='first-blog'>
         <Blog />
         <Blog />
         <Blog />
         </div>
         <div className='second-blog'>
         <Blog />
         <Blog />
         <Blog />
         </div>

         </div>
        </div>
    );
}
export default App;