import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";

export default class Header extends Component {
  render() {
    return (
      <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
          <div class="container">
            <a class="navbar-brand">
              <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
                CourtCircuit
              </NavLink>
            </a>
            <img src={logo} height="70" class="d-inline-block align-top" alt="" />

            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
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
                    <NavLink to="/" style={{ color: "white" }}>
                      <i class="fas fa-sign-out-alt" /> S'enregistrer
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
            </div>
            <form class="form-inline">
              <input class="form-control mr-sm-2" type="search" placeholder="" aria-label="Search" />
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
