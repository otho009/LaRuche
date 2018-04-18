import React, { Component } from "react";
import { Link, NavLink } from "react-router-dom";
import logo from "../Images/electrGreen.png";
import "./signin.css";

export default class Accueil extends Component {
  render() {
    return (
      <div id="signInPage">
        <div class="container" >
          <form class="form-signin ">
            <div class="text-center mb-4"> <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
                <img class="mb-4" src={logo} alt="" width="72" height="72" />
              </NavLink>
              <h1 class="h3 mb-3 font-weight-normal">Bienvenue</h1>
            </div>
            <div class="form-label-group">
              <input
                type="email"
                id="inputEmail"
                class="form-control"
                placeholder="Adresse mail"
                required
                autofocus
              />
              <label for="inputEmail">Email</label>
            </div>
            <div class="form-label-group">
              <input
                type="password"
                id="inputPassword"
                class="form-control"
                placeholder="Mot de passe"
                required
              />
              <label for="inputPassword">Mot de passe</label>
            </div>

            <div class="checkbox mb-3">
              <label>
                <input type="checkbox" value="remember-me" /> Se souvenir de ce
                compte
              </label>
            </div>
            <label>
              <a class="nav-link ">
                <NavLink
                  to="/SignIn"
                  style={{ color: "white" }}
                  activeStyle={{ color: "black" }}
                >
                  <i class="fas fa-sign-out-alt" /> Pas encore inscrit?
                </NavLink>
              </a>
            </label>
            <button class="btn btn-lg btn-warning btn-block" type="submit">
              Connexion
            </button>
            
          </form>
        </div>
      </div>
    );
  }
}
