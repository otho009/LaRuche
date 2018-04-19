import React, {Component} from "react";
import { Link, NavLink } from "react-router-dom";
import Header from "../Components/Header.js";
import Footer from "../Components/Footer.js";
import fruitCarousel from "../Images/fruitCarousel.jpeg";
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg";
import grainsCaroussel from "../Images/grainsCaroussel.jpeg";


const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel]
export default class Produit extends Component {
  render() {
    return (
      <div class="container-fluid">
        <div class="jumbotron">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
              <img class="d-block w-100" src=".../400x400?auto=yes&bg=777&fg=555&text=First slide"/>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-8 col-xs-12">
              <h1 class="display-5">Nom du produit</h1>
              <p>
                Ici il y a le lien du
                <a class="nav-link"> <NavLink exact to="/Vendeur">
                    vendeur
                  </NavLink>
                </a>
                relatif
              </p>
              <p>Ici l'origine du produit</p>
              <p>Ici le prix</p>
              <p>La quantité à choisir:
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="">gr</span>
                  </div>
                  <input type="text" class="form-control" placeholder="quantité" />
                </div>
                <small id="passwordHelpBlock" class="form-text text-muted">
                  Quantité max. disponible: XXX
                </small>
              </p>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <button class="btn btn-outline-secondary" type="button">Commander</button>
                </div>
                <select class="custom-select" id="inputPointCollect" placeholder="Choisir point de collecte et date">
                  <option value="1">point 1 date 1</option>
                  <option value="2">point 1 date 2</option>
                  <option value="3">point 2 date 1</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        </div>
        <div class="container">
          Description du produit.
        </div>
      </div>
    );
  }
}
