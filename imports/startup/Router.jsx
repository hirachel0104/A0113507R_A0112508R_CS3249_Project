import React from 'react';
import { Router, Route, browserHistory } from 'react-router';

// route components
import App from '../ui/App.jsx';
import AddEvent from '../ui/AddEvent.jsx';

export const renderRoutes = () => (
  <Router history={browserHistory}>
    <Route path="/" component={App}/>
    <Route path="addEvent" component={AddEvent}/>
  </Router>
);