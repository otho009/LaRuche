import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";
import "./header.css";


export default class Header2 extends Component {
  render() {
    return (
      <div>
        <nav class="navbar navbar-expand-md navbar-dark bg-primary">
          <a class="navbar-brand">
            <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
              CourtCircuit
            </NavLink>
          </a>
          <a class="navbar-brand mx-auto p-auto">
            <NavLink exact to="/">
              <img src={logo} height="60" class="d-inline-block align-top" alt="" />
            </NavLink>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
          <div class="collapse navbar-collapse text-right" id="navbarCollapse">
            <ul class="navbar-nav m-auto">
              
              <li class="nav-item p-auto">
                <div class="input-group  mx-auto">
                  <div class="input-group-prepend ">
                    <button type="button" class="btn btn-warning my-10 "><i class="fas fa-search"/></button>
                    <button type="button" class="btn btn-warning categories dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Catégories
                    </button>
                    <div class="dropdown-menu">
                      <a class="dropdown-item">Fruits</a>
                      <a class="dropdown-item">Légumes</a>
                      <a class="dropdown-item">Lait et dérivées</a>
                      <div role="separator" class="dropdown-divider"></div>
                      <a class="dropdown-item">Separated link</a>
                    </div>
                  </div>
                  <input class="form-control w-50" type="text" placeholder="rechercher" aria-label="Rechercher" />
                </div>
              </li> 

            </ul>
            <ul class="navbar-nav float-right">

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
                    <i class="fas fa-sign-in-alt" /> Connexion
                  </NavLink>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link ">
                  <NavLink to="/Cart"style={{ color: "white" }} activeStyle={{ color: "white" }} >
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
