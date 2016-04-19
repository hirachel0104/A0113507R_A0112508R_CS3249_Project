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
 
  render() {
    return (
      <div className="container">
        <header>
          <h1>CS3249 Project: Remake- IVLE Events</h1>
        </header>
    
        <div id="create"> 
          <AccountsUIWrapper />
            { this.props.currentUser ?
              <form className="new-task" onSubmit={this.handleSubmit.bind(this)} >
                <h2 className="createInner">General</h2>
                <h4 className="createInner">Event Title</h4>
                <input
                  type="text"
                  ref="eventTitle"
                  placeholder="Event Title"
                /><br></br>

                <h4 className="createInner">Organiser</h4>
                <input
                  type="text"
                  ref="organiser"
                  placeholder="Organiser Name"
                /><br></br>

                <h4 className="createInner">Committee</h4>
                <select className="dropdown" name="comm">
                <option value="c1">NUSSU</option>
                <option value="c2">Faculty Clubs</option>
                <option value="c3">Halls of Residencies</option>
                <option value="c4">Clubs and Societies</option>
                <option value="c5">NUS</option>
                <option value="c6">Interest Groups</option>
                <option value="c7">Others</option>
                </select><br></br>

                <h4 className="createInner">Category</h4>
                <select className="dropdown" name="comm">
                <option value="1">Bashes</option>
                <option value="2">FBazaars</option>
                <option value="3">Competitions/Tournament</option>
                <option value="4">Sports and Recreation</option>
                <option value="5">Performances</option>
                <option value="6">Annoucements</option>
                <option value="7">Others</option>
                </select><br></br>

                <h4 className="createInner">Tags</h4>
                <input type="text"/><br></br>
                            
                <h4 className="createInner">Display Start</h4>
                <input type="text"/>
                <ul>(One week processing time.)</ul><br></br>

                <h4 className="createInner">Display End</h4>
                <input type="text"/>
                <ul>(Max 14days or 1 day after event.)</ul><br></br>

                <h4>Description</h4>
                <input type="text" placeholder="ckeditor-to-be-installed"/><br></br>
            
                <h2 className="createInner">Event Details</h2>
                
                <h4 className="createInner">Date snd Time</h4>
                <input
                  type="text"
                  ref="date"
                  placeholder="date and time"
                /><br></br>  
                        
                <h4 className="createInner">Venue</h4>
                <input type="text"/><br></br>   

                <h4 className="createInner">Price</h4>
                <input
                  type="text"
                /><br></br>  

                <h4 className="createInner">Agenda</h4>
                <input
                  type="text"
                /><br></br>  

                <h4 className="createInner">Contact</h4>
                <input
                  type="text"
                /><br></br>  
                        
                <input type="submit" value="Submit"></input>
              </form>:''
            }
          </div>
            
            
          <div id="navBar">
            <button id="createEvent">+ Create Event</button>

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
              
          <ul>
            {this.renderTasks()}
          </ul>
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
