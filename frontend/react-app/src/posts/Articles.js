import React from 'react'
import './Article.css'
export const Articles = () => {
    return (
        <div>
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
        </div>
    )
}
