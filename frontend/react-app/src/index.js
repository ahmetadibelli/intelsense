
import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Blog from './posts/Blog';
import Navbar from './posts/Navbar';
import App from './App';
import SignUp from './posts/signup';
import CreateArticle from './posts/CreateArticle'

import './index.css';
import Register, { SignIn } from './posts/signin';

ReactDOM.render(
  <BrowserRouter>
    <div><Navbar /></div>
    <Routes>
      <Route exact path="/" element={<App />} />
      <Route exact path="/register" element={<SignUp />} />
      <Route exact path="/login" element={<SignIn />} />
      <Route exact path="/articles" element={<Blog />} />
      <Route exact path="/articles/create" element={<CreateArticle />} />

    </Routes>
  </BrowserRouter>,
  document.getElementById('root'));
