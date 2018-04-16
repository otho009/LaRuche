import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";

export default class Header extends Component {
  render() {
    return (
      <div>
        <nav class="navbar navbar-expand-md navbar-dark bg-primary">
          <a class="navbar-brand">
            <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
              CourtCircuit
            </NavLink>
          </a>
          <img src={logo} height="50" class="d-inline-block align-top" alt="" />
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link"> <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i class="fas fa-home" /> Accueil
                  </NavLink>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link">
                  <NavLink to="/about" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i class="fas fa-users" /> A propos
                  </NavLink>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link ">
                  <NavLink to="/SignIn" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i class="fas fa-sign-in-alt" /> S'enregistrer
                  </NavLink>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link ">
                  <NavLink to="/about"style={{ color: "white" }} activeStyle={{ color: "white" }} >
                    <i class="fas fa-address-book fa-fw"> </i> Contact
                  </NavLink>
                </a>
              </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
              <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" />
              <button class="btn btn-warning my-2 my-sm-0" type="submit">
              Rechercher
              </button>
            </form>
          </div>
        </nav>
      </div>
    );
  }
}
