import React from 'react'
import './CreateArticle.css'
   export const CreateArticle = () => {
    return (
        <div className='myArticle'>
            <h3>Create Article for your blog</h3>
            
   <form  className="usrform">
   <label>Name:</label> 
   <input type="text" name="usrname" />
<br />
<textarea rows="7" cols="70" name="comment" form="usrform">
    Enter text here...</textarea>
    <br />
 <button>Save</button>

   </form>
        </div>
    )
}
export default CreateArticle;
