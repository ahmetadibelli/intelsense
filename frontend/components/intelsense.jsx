import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import Modal from './modal/modal';
import GreetingContainer from './greeting/greeting_container';
import StoryIndexContainer from './stories/index/story_main_index_container';
import StoriesShowContainer from './stories/show/story_show_container';
import CreateStoryContainer from './stories/form/create_story_container';
import UpdateStoryContainer from './stories/form/update_story_container';
import UserShowContainer from './users/user_show_container';
import UpdateResponseContainer from './responses/update_response_container';

const Intelsense = () => {
  return (
    <div>
      <Modal/>
      <header className="header">
        <Link to="/"><h1 className="header-logo">Intelsense</h1></Link>
        <GreetingContainer />
      </header>
      
      <Switch>
        <Route exact path="/" component={StoryIndexContainer}/>
        <Route exact path="/users/:userId" component={UserShowContainer}/>
        <ProtectedRoute exact path="/stories/new" component={CreateStoryContainer}/>
        <ProtectedRoute exact path="/stories/:storyId/edit" component={UpdateStoryContainer}/>
        <ProtectedRoute exact path="/stories/:storyId/responses/:responseId/edit" component={UpdateResponseContainer}/>
        <Route exact path="/stories/:storyId" component={StoriesShowContainer}/>
        <Redirect to="/"/>
      </Switch>
    </div>
  )
};

export default Intelsense;