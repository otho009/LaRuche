import React, { Component } from "react";
import { Link, NavLink } from "react-router-dom";
import logo from "../Images/electrGreen.png";
import "./signin.css";

export default class SignIn extends Component {
  render() {
    return (
      <div className="py-5" id="signInPage">
        <div className="container" >
          <form className="form-signin">
            <div className="text-center mb-4"> <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
                <img className="mb-4" src={logo} alt="" width="72" height="72" />
              </NavLink>
              <h1 className="h3 mb-3 font-weight-normal">Bienvenue</h1>
            </div>
            <div className="form-label-group">
              <input
                type="email"
                id="inputEmail"
                className="form-control"
                placeholder="Adresse mail"
                required
                autoFocus
              />
              <label htmlFor="inputEmail">Email</label>
            </div>
            <div className="form-label-group">
              <input
                type="password"
                id="inputPassword"
                className="form-control"
                placeholder="Mot de passe"
                required
              />
              <label htmlFor="inputPassword">Mot de passe</label>
            </div>

            <div className="checkbox mb-3">
              <label>
                <input type="checkbox" value="remember-me" /> Se souvenir de ce
                compte
              </label>
            </div>
            <label>
              <div className="nav-link ">
                <NavLink
                  to="/SignUp"
                  style={{ color: "black" }}
                  activeStyle={{ color: "black" }}
                >
                  <i className="fas fa-sign-out-alt" /> Pas encore inscrit?
                </NavLink>
              </div>
            </label>
            <button className="btn btn-lg btn-warning btn-block" type="submit">
              Connexion
            </button>

          </form>
        </div>
      </div>
    );
  }
}
