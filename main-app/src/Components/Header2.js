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
<<<<<<< HEAD
          <div className="collapse navbar-collapse text-right" id="navbarCollapse">
            <ul className="navbar-nav mr-auto">
              <li className="nav-item ">
                  <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i className="fas fa-home" /> Accueil
=======
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
>>>>>>> 7c2850f3a0fc0e0cb55a81888df5f0dac875fac0
                  </NavLink>
              </li>
              <li className="nav-item">
                  <NavLink to="/about" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i className="fas fa-users" /> A propos
                  </NavLink>
              </li>
              <li className="nav-item">
                  <NavLink to="/SignIn" style={{ color: "white" }} activeStyle={{ color: "black" }} >
<<<<<<< HEAD
                    <i className="fas fa-sign-in-alt" /> Identifiez vous
                  </NavLink>
              </li>
              <li className="nav-item">
                  <NavLink to="/about"style={{ color: "white" }} activeStyle={{ color: "white" }} >
                    <i className="fas fa-address-book fa-fw"> </i> Contact
=======
                    <i class="fas fa-sign-in-alt" /> Connexion
>>>>>>> 7c2850f3a0fc0e0cb55a81888df5f0dac875fac0
                  </NavLink>
              </li>
<<<<<<< HEAD
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
=======
              <li class="nav-item">
                <a class="nav-link ">
>>>>>>> 7c2850f3a0fc0e0cb55a81888df5f0dac875fac0
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
