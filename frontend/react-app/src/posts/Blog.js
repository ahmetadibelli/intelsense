import React from 'react'
import img2 from '../images/callcenter.jpg'
import img3 from '../images/developer01.jpg'
// import cardData from './cardData.js'

import  './Blog.css';
function Blog(props)  {
  
    return (
        <div className='main-div container'>
          <section className=''>
        <div className="card justify-content-center">
        <img src={img2} className="card-img-top" alt="thats my img" />
        
        <div className="card-body">
          <h6 className="card-date">Jan 10, 2021</h6>
          <h3 className="card-text">This form has the default HTML form behavior of
           browsing to a new page.</h3>
         
          <h6 className="card-description">The standard way to achieve this is with a technique called “controlled components”.Controlled</h6>
        </div>
      </div>
      </section>
     
      </div>
    )
}
export default Blog;
