import React, { Component } from 'react'
import logo from '../Images/laRuche.png';

function Liste (props){
    const elements = props.elements;
    const listItems = elements.map((number) => <li>{number}</li>);
    return (
      <ul>{listItems}</ul>
    );
  }
export  default class Header extends Component {
     render(){
         return (
         <div>
          <footer>
            <h3> About us </h3>
          </footer>
         </div>
         );
     }
}
