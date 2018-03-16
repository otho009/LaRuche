import React, { Component } from 'react'
import logo from '../Images/laRuche.png';

export  default class Header extends Component {
     render(){
         return (
         <div>
          <header> 
            <img src={logo} onClick={this.props.onClick}/> 
            <h1> Bienvenue à la Ruche </h1>
            <p>{this.props.message}</p>  
            </header>
         </div>
         );
     }
}
