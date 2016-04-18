import React, { Component, PropTypes } from 'react';
 
// Task component - represents a single todo item
export default class Task extends Component {
  render() {
    return (
        <table id="eventTable">
        <tr>
            <td id="tableView"> <img src="/img/Eye.png" alt="eye"></img> </td>
            <td id="tableEvent"> event aighoun vpuorbngp ongriuarg aonpurh {this.props.task.eventTitle}</td>
            <td id="tableOrganiser">organiser afoirngpoirhtnvo ienrio [htnvoiehr] {this.props.task.organiser}</td>
            <td id="tableBarDate">date angruigpo; prugpion rughapor {this.props.task.date}</td>
            </tr>
        </table>
    );
  }
}
 
Task.propTypes = {
  // This component gets the task to display through a React prop.
  // We can use propTypes to indicate it is required
  task: PropTypes.object.isRequired,
    
};