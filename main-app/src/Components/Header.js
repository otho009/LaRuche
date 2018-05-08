import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";
import "./header.css";


export default class Header2 extends Component {
  render() {
    return (
      <div>
        <nav className="navbar navbar-expand-md navbar-dark bg-primary">
          <a className="navbar-brand">
            <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
              CourtCircuit
            </NavLink>
          </a>
          <a className="navbar-brand mx-auto p-auto">
            <NavLink exact to="/">
              <img src={logo} height="60" className="d-inline-block align-top" alt="" />
            </NavLink>
          </a>
          <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
          <div className="collapse navbar-collapse text-right" id="navbarCollapse">
            <ul className="navbar-nav m-auto">
              
              <li className="nav-item p-auto">
                <div className="input-group  mx-auto">
                  <div className="input-group-prepend ">
                    <button type="button" className="btn btn-warning my-10 "><i className="fas fa-search"/></button>
                    <button type="button" className="btn btn-warning categories dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Catégories
                    </button>
                    <div className="dropdown-menu">
                      <a className="dropdown-item">Fruits</a>
                      <a className="dropdown-item">Légumes</a>
                      <a className="dropdown-item">Lait et dérivées</a>
                      <div role="separator" className="dropdown-divider"></div>
                      <a className="dropdown-item">Separated link</a>
                    </div>
                  </div>
                  <input className="form-control w-50" type="text" placeholder="rechercher" aria-label="Rechercher" />
                </div>
              </li> 

            </ul>
            <ul className="navbar-nav float-right">

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
                    <i className="fas fa-sign-in-alt" /> Connexion
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
