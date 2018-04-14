import React, {Component} from "react";
import { Link, NavLink } from "react-router-dom";

import "./signin.css";

export default class Accueil extends Component {
  render() {
      return (
          <div class="container">
            <form class="form-signin">
              <div class="text-center mb-4">
                <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72"></img>
                <h1 class="h3 mb-3 font-weight-normal">Bienvenu!</h1>
              </div>
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Adresse mail" required autofocus></input>
                <label for="inputEmail">Addresse mail</label>
              </div>
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Mot de passe" required></input>
                <label for="inputPassword">Mot de passe</label>
              </div>

              <div class="checkbox mb-3">
                <label>
                  <input type="checkbox" value="remember-me"></input> Se souvenir de ce compte
                </label>
              </div>
              <label>
                <a class="nav-link ">
                  <NavLink to="/SignIn" style={{ color: "white" }} activeStyle={{ color: "black" }} >
                    <i class="fas fa-sign-out-alt" /> Je voudrais m'inscrir
                  </NavLink>
                </a>
              </label>
              <button class="btn btn-lg btn-primary btn-block" type="submit">Accéder</button>
              <p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
            </form>
          </div>
      );
  }
}
