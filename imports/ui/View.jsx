import React, { Component, PropTypes } from 'react';
import ReactDOM from 'react-dom';
import { Meteor } from 'meteor/meteor';
import { createContainer } from 'meteor/react-meteor-data';
import { Tasks } from '../api/tasks.js';
import { Link } from "react-router";

class View extends Component {
    
  render() {
   return (
      <div className="container">
           <header>
           <h1>Student Events</h1>
            <Link to="/">
           <button id="close" type="button">X</button>
               </Link>
           </header>
    
           <div className="titleBar">
               <tr id="titleBar">
                   <strong><h3>Title:</h3></strong>
                <p>{this.props.task.eventTitle}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Organiser:</h3></strong>
                   <p>{this.props.task.organiser}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Tags:</h3></strong>
                   <p>{this.props.task.tags}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Description:</h3></strong>
                   <p>{this.props.task.description}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Date and Time:</h3></strong>
                   <p>{this.props.task.date}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Venue:</h3></strong>
                   <p>{this.props.task.venue}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Price:</h3></strong>
                   <p>{this.props.task.price}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Agenda:</h3></strong>
                   <p>{this.props.task.agenda}</p>
               </tr>
               <tr id="titleBar">
               <strong><h3>Contact:</h3></strong>
                   <p>{this.props.task.contact}</p>
               </tr>
           </div>
           
           <Link to="/">
           <button id="close" type="button">X Close</button>
               </Link>
    
        </div>
    );
  }
}
 
export default createContainer(() => {
  return {
      tasks: Tasks.find({}, { sort: { createdAt: -1 } }).fetch(),
  };
}, AddEvent);