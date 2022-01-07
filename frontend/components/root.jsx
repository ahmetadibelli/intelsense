import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter } from 'react-router-dom';

import Intelsense from './intelsense';

const Root = ({ store }) => {
  return (
    <Provider store={store}>
      <HashRouter>
        <Intelsense />
      </HashRouter>
    </Provider>
  )
};

export default Root;