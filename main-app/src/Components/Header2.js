import React, { Component } from "react";
import logo from "../Images/electrGreen.png";
import { Link, NavLink } from "react-router-dom";
import "./header.css";


export default class Header2 extends Component {
  render() {
    return (
      <div>
        <nav className="navbar navbar-expand-md navbar-dark bg-primary">
            <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
              CourtCircuit
            </NavLink>
            <NavLink exact to="/">
              <img src={logo} height="60" className="d-inline-block align-top" alt="" />
            </NavLink>
          <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
          <div className="collapse navbar-collapse text-right" id="navbarCollapse">
            <ul className="navbar-nav mr-auto">
              <li className="nav-item ">
                  <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i className="fas fa-home" /> Accueil
                  </NavLink>
              </li>
              <li className="nav-item">
                  <NavLink to="/about" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i className="fas fa-users" /> A propos
                  </NavLink>
              </li>
              <li className="nav-item">
                  <NavLink to="/SignIn" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i className="fas fa-sign-in-alt" /> Identifiez vous
                  </NavLink>
              </li>
              <li className="nav-item">
                  <NavLink to="/about"style={{ color: "white" }} activeStyle={{ color: "white" }} >
                    <i className="fas fa-address-book fa-fw"> </i> Contact
                  </NavLink>
              </li>
              <li className="nav-item">
                <div className="input-group mb-3">
                  <div className="input-group-prepend">
                    <button type="button" className="btn btn-warning my-2 my-sm-0"><i className="fas fa-search"/></button>
                    <button type="button" className="btn btn-warning categories dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Catégories
                    </button>
                    <div className="dropdown-menu">
                      <a className="dropdown-item" href="#">Fruits</a>
                      <a className="dropdown-item" href="#">Légumes</a>
                      <a className="dropdown-item" href="#">Lait et dérivées</a>
                      <div role="separator" className="dropdown-divider"></div>
                      <a className="dropdown-item" href="#">Separated link</a>
                    </div>
                  </div>
                  <input className="form-control" type="text" placeholder="Search" aria-label="Search" />
                </div>
              </li>
              <li className="nav-item">
                  <NavLink to="/Cart"style={{ color: "white" }} activeStyle={{ color: "white" }} >
                    <i className="fas fa-shopping-cart"/> Panier
                  </NavLink>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    );
  }
}
