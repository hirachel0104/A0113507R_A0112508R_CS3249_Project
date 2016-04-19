import React, { Component, PropTypes } from 'react';
 
// Task component - represents a single todo item
export default class Task extends Component {
  render() {
    return (
        <div>
            <tr id="titleBar">
            <td id="tableView"> <img src="/img/Eye.png" alt="eye"></img> </td>
            <td id="tableEvent">{this.props.task.eventTitle}</td>
            <td id="tableOrganiser">{this.props.task.organiser}</td>
            <td id="tableBarDate">{this.props.task.date}</td>
            </tr>
        </div>
    );
  }
}
 
Task.propTypes = {
  // This component gets the task to display through a React prop.
  // We can use propTypes to indicate it is required
  task: PropTypes.object.isRequired,
    
};