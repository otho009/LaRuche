import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";

export default class Header extends Component {
  render() {
    return (
      <div>
        <nav className="navbar navbar-expand-lg navbar-dark bg-primary ">
          <div className="container">
            <a className="navbar-brand">
              <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
                CourtCircuit
              </NavLink>
            </a>
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
              <span className="navbar-toggler-icon"></span>
            </button>

            <img className="App-logo" src={logo} height="60" className="d-inline-block align-top" alt="" />

            <div className="collapse navbar-collapse" id="navbarResponsive">
              <ul className="navbar-nav ml-auto">
                <li className="nav-item ">
                  <a className="nav-link"> <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                      <i className="fas fa-home" /> Accueil
                    </NavLink>
                  </a>
                </li>
                <li className="nav-item">
                  <a className="nav-link">
                    <NavLink to="/about" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                      <i className="fas fa-users" /> A propos
                    </NavLink>
                  </a>
                </li>
                <li className="nav-item">
                  <a className="nav-link ">
                    <NavLink to="/SignIn" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                      <i className="fas fa-sign-in-alt" /> S'enregistrer
                    </NavLink>
                  </a>
                </li>
                <li className="nav-item">
                  <a className="nav-link ">
                    <NavLink to="/about"style={{ color: "white" }} activeStyle={{ color: "white" }} >
                      <i className="fas fa-address-book fa-fw"> </i> Contact
                    </NavLink>
                  </a>
                </li>
              </ul>
            <form className="form-inline">
              <input className="form-control mr-sm-2" type="search" placeholder="" aria-label="Search" />
              <button className="btn  btn-warning my-2 my-sm-0" type="submit">
                Rechercher
              </button>
            </form>
            </div>
          </div>
        </nav>
      </div>
    );
  }
}
