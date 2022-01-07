import React from 'react';
import { Link } from 'react-router-dom';

const StoryTopIndex = ({ stories }) => {
  // const topics = ["Arts & Entertainment", "Art", "Beauty", "Books", "Comics", "Culture", "Fiction", "Film", "Innovation & Tech", "Accessibility", "Android Dev", "Artificial Intelligence", "Blockchain", "Cryptocurrency", "Cybersecurity", "Data Science", "Life", "Addiction", "Cannabis", "Creativity", "Disability", "Family", "Fitness", "Society", "Basic Income", "Cities"]
  const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
  const nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"]
  let date = new Date()
  let month = date.getMonth()
  let day = date.getUTCDate()

  if (stories.length === 0) return null

  return(
    <>

      <div className="story-top-index-container">
        <article className="top-index-left">
          <Link to={`/stories/${stories[0].id}`}>
            <figure className="top-index-left-image-container">
              <img src={`${stories[0].photo_url}`} alt="Photo" className="top-index-left-image" /> 
            </figure>
          </Link>

          <div className="top-index-left-content">
            <Link to={`/stories/${stories[0].id}`}>
              <h2 className="top-index-left-title">{stories[0].title}</h2>
              <h3 className="top-index-left-body">{stories[0].body}</h3>
            </Link>

            <Link to={`/users/${stories[0].author_id}`}>
              <small className="top-index-author">{stories[0].author.fullname}{/*&nbsp;in&nbsp;{topics[Math.floor(Math.random() * topics.length)]}*/}</small>
            </Link>

            <small className="top-index-date">
              {months[month]}&nbsp;{day}&nbsp;&#183;&nbsp;{nums[4]}&nbsp;min&nbsp;read&nbsp;&#9733;
            </small>
          </div>
        </article>
        <article className="top-index-right">
          <Link to={`/stories/${stories[4].id}`}>
            <figure className="top-index-right-image-container">
              <img src={`${stories[4].photo_url}`} alt="Photo" className="top-index-right-image" />
            </figure>
          </Link>

          <Link to={`/stories/${stories[4].id}`}>
            <h2 className="top-index-right-title">{stories[4].title}</h2>
            <h3 className="top-index-right-body">{stories[4].body}</h3>
          </Link>

          <Link to={`/users/${stories[4].author_id}`}>
            <small className="top-index-author">{stories[4].author.fullname}{/*&nbsp;in&nbsp;{topics[Math.floor(Math.random() * topics.length)]}*/}</small>
          </Link>

          <small className="top-index-date">
            {months[month]}&nbsp;{day}&nbsp;&#183;&nbsp;{nums[4]}&nbsp;min&nbsp;read&nbsp;&#9733;          
          </small>
        </article>
      </div>
    </>
  )
}

export default StoryTopIndex;