import React, { Component, PropTypes } from 'react';
import ReactDOM from 'react-dom';
import { Meteor } from 'meteor/meteor';
import { createContainer } from 'meteor/react-meteor-data';
 
import { Tasks } from '../api/tasks.js';

import Task from './Task.jsx';

import AccountsUIWrapper from './AccountsUIWrapper.jsx';
 
// App component - represents the whole app
class App extends Component {
     handleSubmit(event) {
    event.preventDefault();
 
    // Find the text field via the React ref
    const text = ReactDOM.findDOMNode(this.refs.textInput).value.trim();
 
    Tasks.insert({
      text,
      createdAt: new Date(), // current time
        owner: Meteor.userId(),           // _id of logged in user
      username: Meteor.user().username,  // username of logged in user
    });
 
    // Clear form
    ReactDOM.findDOMNode(this.refs.textInput).value = '';
  }
 
  renderTasks() {
    return this.props.tasks.map((task) => (
      <Task key={task._id} task={task} />
    ));
  }
 
  render() {
    return (
      <div className="container">
        <header>
          <h1>CS3249 Project: Remake- IVLE Events</h1>
            
        <AccountsUIWrapper />
        
            </header>
                    
            
    <div id="navBar">
        <button id="createEvent">+ Create Event</button>
        <form>
        <input id="search"
            type="text"
            ref="searchInput"
            placeholder="Search"
            />
            <p>Total {this.props.totalCount} items</p>
        </form>
            </div>
    <div id="titleBar">
    <div id="titleBarView">
        <strong><h4>View</h4></strong>
            </div>
    <div id="titleBarEvent">
        <strong><h4>Event Title</h4></strong>
            </div>
    <div id="titleBarOrganiser">
        <strong><h4>Event Organiser</h4></strong>
            </div>
    <div id="titleBarDate">
        <strong><h4>Event Date</h4></strong>
    </div>
            </div>
            
        <ul>
          {this.renderTasks()}
        </ul>
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
