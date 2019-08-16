import React from 'react';
import { Route, Switch } from 'react-router-dom';
import PrivateRoute from './PrivateRoute';

const Routes = () => {
  return (
    <Switch>
      <Route exact path="/register" component={Register} />
      <Route exact path="/login" component={Login} />
      <PrivateRoute exact path="/dashboard" component={Dashboard} />
    </Switch>
  );
};

export default Routes;
