import React, { Component, PropTypes } from 'react';
import ReactDOM from 'react-dom';
import { Meteor } from 'meteor/meteor';
import { createContainer } from 'meteor/react-meteor-data';
import { Tasks } from '../api/tasks.js';
import { Link } from "react-router";

import Task from './Task.jsx';
import App from './App.jsx';
import AddEvent from './AddEvent.jsx';

class View extends Component {
    
    printSth(){
        return this.props.Count
    }
    
  render() {
   return (
      <div className="container">
           <header>
           <h1>Student Events</h1>
               <Link to="/">
                <button id="x" type="button">X</button>
              </Link>
           </header>
           
           <div>
               <tr id="titleBar">
                   <strong><h3>Title:</h3></strong>
                <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Organiser:</h3></strong>
                   <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Tags:</h3></strong>
                   <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Description:</h3></strong>
                   <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Date and Time:</h3></strong>
                   <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Venue:</h3></strong>
                   <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Price:</h3></strong>
                   <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Agenda:</h3></strong>
                   <p>..</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Contact:</h3></strong>
                   <p>{this.printSth()}</p>
               </tr>
           </div>
           
           <Link to="/">
              <button id="close" type="button">X Close</button>
           </Link>
    
        </div>
    );
  }
}

View.propTypes = {
    task: PropTypes.object.isRequired,
    count: PropTypes.number.isRequired,
};
 
export default createContainer(() => {
  return {
      tasks: Tasks.find({}, { sort: { createdAt: -1 } }).fetch(),
      count: Tasks.find().count(),
  };
}, View);