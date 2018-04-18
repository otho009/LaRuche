import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";

export default class Header extends Component {
  render() {
    return (
      <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
          <div class="container">
            <a class="navbar-brand">
              <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
                CourtCircuit
              </NavLink>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <img class="App-logo" src={logo} height="60" class="d-inline-block align-top" alt="" />

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
            <form class="form-inline">
              <input class="form-control mr-sm-2" type="search" placeholder="" aria-label="Search" />
              <button class="btn  btn-warning my-2 my-sm-0" type="submit">
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
