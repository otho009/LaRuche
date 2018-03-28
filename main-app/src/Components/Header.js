import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import   { Link} from 'react-router-dom';

export default class Header extends Component {
  render() {
    return (
      <div>   
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container">

            <a class="navbar-brand" href="#"> CourtCircuit </a>
            <img src={logo} height="80" class="d-inline-block align-top" alt=""/>

            
            
            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item act">
                </li>
                  <Link to="/" class="nav-link" style={{color: 'white'}} activeStyle={{color: 'black'}}>Home</Link>    
                <li class="nav-item">
  
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">
                    Services
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">
                    Contact
                  </a>
                </li>
              </ul>
            </div>
            <form class="form-inline">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"/>
                <button class="btn btn-outline-alert my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>
        </nav>
    
      </div>
    );
  }
}
