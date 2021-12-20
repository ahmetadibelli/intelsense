import React from 'react'
import './Topcontainer.css'
import img4 from '../images/developer03.jpg'
export const Topcontainer = () => {
    return (
        <div className='container'>
             <div className='top-div'> 
             <h2>Articles</h2>
            {/* <div className='left-div'> 
            <h1>The Blog</h1>
            <img src={img4}/>
            </div> */}
            {/* <div className='right-div'>
              <span>
              <p>Dec 05, 2021</p>
              <h1>Problem might be related to rendering. I don't know.</h1>
              <p>I tried to import image using import method althoug image is available in assets. Import is fine I guess</p>
              </span>
            </div> */}

          </div>
        </div>
    );
}
export default Topcontainer;


