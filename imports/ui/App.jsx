import React, { Component, PropTypes } from 'react';
import ReactDOM from 'react-dom';
import { Meteor } from 'meteor/meteor';
import { createContainer } from 'meteor/react-meteor-data';
import { Tasks } from '../api/tasks.js';
import { Link } from "react-router";

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
    ReactDOM.findDOMNode(this.refs.organiser).value.trim();
    const committee = ReactDOM.findDOMNode(this.refs.committee).value.trim();
    const category = ReactDOM.findDOMNode(this.refs.category).value.trim();
    const tags = ReactDOM.findDOMNode(this.refs.tags).value.trim();
    const displayStart = ReactDOM.findDOMNode(this.refs.displayStart).value.trim();
    const displayEnd = ReactDOM.findDOMNode(this.refs.displayEnd).value.trim();
    const description = ReactDOM.findDOMNode(this.refs.description).value.trim();
    const venue = ReactDOM.findDOMNode(this.refs.venue).value.trim();
    const price = ReactDOM.findDOMNode(this.refs.price).value.trim();
    const agenda = ReactDOM.findDOMNode(this.refs.agenda).value.trim();
    const contact = ReactDOM.findDOMNode(this.refs.contact).value.trim();
         
         const filterText = ReactDOM.findDOMNode (this.refs.searchInput).value.trim();
         
    Tasks.insert({
        eventTitle,
        organiser,
        date,
        committee,
        
        createdAt: new Date(), // current time
        owner: Meteor.userId(),           // _id of logged in user
        username: Meteor.user().username,  // username of logged in user
    });
 
    // Clear form
    ReactDOM.findDOMNode(this.refs.eventTitle).value = '';
    ReactDOM.findDOMNode(this.refs.organiser).value = '';
    ReactDOM.findDOMNode(this.refs.date).value = '';
    ReactDOM.findDOMNode(this.refs.committee).value = 'c1';
    ReactDOM.findDOMNode(this.refs.category).value = '1';
    ReactDOM.findDOMNode(this.refs.tags).value = '';
    ReactDOM.findDOMNode(this.refs.displayStart).value = '';
    ReactDOM.findDOMNode(this.refs.displayEnd).value = '';
    ReactDOM.findDOMNode(this.refs.description).value = '';
    ReactDOM.findDOMNode(this.refs.venue).value = '';
    ReactDOM.findDOMNode(this.refs.price).value = '';
    ReactDOM.findDOMNode(this.refs.agenda).value = '';
    ReactDOM.findDOMNode(this.refs.contact).value = '';
    ReactDOM.findDOMNode(this.refs.searchInput).value = '';
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

          <Link to="addEvent">
            <button id="createEvent">+ Create Event</button>
          </Link> : '' 

          <form>
            <input id="search"
              type="text"
                    />
          <p id="totalDisplay">Total {this.props.totalCount} items</p>

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
