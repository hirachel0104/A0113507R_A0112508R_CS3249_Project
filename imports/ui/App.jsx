import React, { Component, PropTypes } from 'react';
import ReactDOM from 'react-dom';
import { Meteor } from 'meteor/meteor';
import { createContainer } from 'meteor/react-meteor-data';
import { Tasks } from '../api/tasks.js';
import { Link } from "react-router";

import AddEvent from './AddEvent.jsx';

import Task from './Task.jsx';
import AccountsUIWrapper from './AccountsUIWrapper.jsx';
 
// App component - represents the whole app
class App extends Component {
 
  renderTasks() {
    return this.props.tasks.map((task) => (
      <Task key={task._id} task={task} />
    ));
  }
 
  render() {
    return (
      <div className="container">
        <header>
          <h1>IVLE Event List</h1>
        </header>

        <AccountsUIWrapper />
          { this.props.currentUser ?
        <div>
          <div id="navBar">
            <Link to="addEvent">
              <button id="createEvent">+ Create Event</button>
            </Link>

            <form>
                <input id="search"
                  type="text"
                  ref="searchInput"
                  placeholder="Search"
                />
            </form>
              <button id="searchIcon" type="submit">Search</button>
              <button id="searchIcon">Undo</button>

          <p id="totalDisplay">Total {this.props.totalCount} items</p>
        </div>
        
        <tr id="titleBar">
          <td id="tableView">
              <strong><h4>View</h4></strong>
                  </td>
          <td id="tableEvent">
              <strong><h4>Event Title</h4></strong>
                  </td>
          <td id="tableOrganiser">
              <strong><h4>Event Organiser</h4></strong>
                  </td>
          <td id="tableDate">
              <strong><h4>Event Date</h4></strong>
          </td>
    </tr>

            {this.renderTasks()}
          </div>: ''
        }
      </div>
    );
  }
}

App.propTypes = {
  tasks: PropTypes.array.isRequired,
  totalCount: PropTypes.number.isRequired,
  currentUser: PropTypes.object,
};
 
export default createContainer(() => {
  return {
     tasks: Tasks.find({}, { sort: { createdAt: -1 } }).fetch(),
      totalCount: Tasks.find().count(),
      currentUser: Meteor.user(),
  };
}, App);
