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
    const eventTitle = ReactDOM.findDOMNode(this.refs.eventTitle).value.trim();
    const organiser = ReactDOM.findDOMNode(this.refs.organiser).value.trim();
    const date = ReactDOM.findDOMNode(this.refs.date).value.trim();
    const searchKey = (this.refs.searchInput).value.trim();
         
    Tasks.insert({
        eventTitle,
        organiser,
        date,
        
        createdAt: new Date(), // current time
        owner: Meteor.userId(),           // _id of logged in user
        username: Meteor.user().username,  // username of logged in user
    });
 
    // Clear form
    ReactDOM.findDOMNode(this.refs.eventTitle).value = '';
    ReactDOM.findDOMNode(this.refs.organiser).value = '';
    ReactDOM.findDOMNode(this.refs.date).value = '';
  }
 
  renderTasks() {
    return this.props.tasks.map((task) => (
      <Task key={task._id} task={task} />
    ));
  }
    
    createSth(){
    }
 
  render() {
    return (
      <div className="container">
        <header>
          <h1>CS3249 Project: Remake- IVLE Events</h1>
        </header>

        

        <div id="navBar">
        <AccountsUIWrapper />

          { this.props.currentUser ?
            <button id="createEvent">+ Create Event</button>: ''
          }

          <form>
            <input id="search"
              type="text"
              ref="searchInput"
              placeholder="Search"
            />
          </form>
          <p id="totalDisplay">Total {this.props.totalCount} items</p>
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

          { this.props.currentUser ?
            <ul>
              {this.renderTasks()}
            </ul>: ''
          }
        </div>
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
