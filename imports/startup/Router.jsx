import React from 'react';
import { Router, Route, browserHistory } from 'react-router';

// route components
import App from '../ui/App.jsx';
import AddEvent from '../ui/AddEvent.jsx';
import View from '../ui/View.jsx';

export const renderRoutes = () => (
  <Router history={browserHistory}>
    <Route path="/" component={App}/>
    <Route path="addEvent" component={AddEvent}/>
    <Route path="view" component={View}/>
  </Router>
);