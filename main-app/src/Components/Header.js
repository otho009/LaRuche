import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";
import "./header.css";


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
          <a class="navbar-brand">
            <NavLink exact to="/">
              <img src={logo} height="50" class="d-inline-block align-top" alt="" />
            </NavLink>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto text-left">
              <li class="nav-item">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <button type="button" class="btn btn-warning my-2 my-sm-0"><i class="fas fa-search"/></button>
                    <button type="button" class="btn btn-warning categories dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Catégories
                    </button>
                    <div class="dropdown-menu">
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <a class="dropdown-item" href="#">Something else here</a>
                      <div role="separator" class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                  </div>
                  <input class="form-control" type="text" placeholder="Search" aria-label="Search" />
                </div>
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
                    <i class="fas fa-sign-in-alt" /> Identifiez vous
                  </NavLink>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link ">
                  <NavLink to="/Chariot"style={{ color: "white" }} activeStyle={{ color: "white" }} >
                    <i class="fas fa-shopping-cart"/> Panier
                  </NavLink>
                </a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    );
  }
}
