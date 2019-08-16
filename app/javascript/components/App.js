import React, { Fragment, useEffect } from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';

import Home from './Home';
import Posts from './Posts';
import NewPost from './NewPost';
import Navbar from './routing/PrivateRoute';
import Routes from './routing/Routes';

// Redux
import { Provider } from 'react-redux';
import store from './store';
import { loadUser } from '../actions/auth';
import setAuthToken from '../utils/setAuthToken';

if (localStorage.token) {
  setAuthToken(localStorage.token);
}

function App() {
  useEffect(() => {
    store.dispatch(loadUser());
  }, []);

  return (
    <Provider store={store}>
      <Router>
        <Fragment>
          <Navbar />
          <Switch>
            <Route exact path="/" component={Home} />
            <Route exact path="/posts" component={Posts} />
            <Route exact path="/new_post" component={NewPost} />
            <Router component={Routes} />
          </Switch>
        </Fragment>
      </Router>
    </Provider>
  );
}

export default App;
