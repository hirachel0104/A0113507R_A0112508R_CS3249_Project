import React, { Component, PropTypes } from 'react';
import { Link } from "react-router";
 
// Task component - represents a single todo item
export default class Task extends Component {

  render() {
    return (
        <div>
            <tr id="titleBar">
            <td id="tableView">
              <Link to="view">
                <button><img src="../../img/Eye.png"></img></button>
              </Link>
            </td>
            <td id="tableEvent">{this.props.task.eventTitle}</td>
            <td id="tableOrganiser">{this.props.task.organiser}</td>
            <td id="tableDate">{this.props.task.date}</td>
            </tr>
        </div>
    );
  }
}

export class ShowTask extends Component {
  render() {
    return (
      <ul>
        <li id="Title">{this.props.task.eventTitle} </li>
        <li id="Organizer">{this.props.task.organiser} </li>
        <li id="Tags">{this.props.task.tags} </li>
        <li id="Description">{this.props.task.description} </li>
        <li id="Date & Time">{this.props.task.date}</li>
        <li id="Venue">{this.props.task.venue} </li>
        <li id="Price">{this.props.task.price} </li>
        <li id="Agenda">{this.props.task.agenda} </li>
        <li id="Contact">{this.props.task.contact} </li>
        <li id="Hits">hit? </li>
      </ul>
    );
  }
}
 
Task.propTypes = {
  // This component gets the task to display through a React prop.
  // We can use propTypes to indicate it is required
  task: PropTypes.object.isRequired,
};