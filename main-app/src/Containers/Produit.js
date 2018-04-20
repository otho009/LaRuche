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
      <div className="container-fluid">
        <div className="jumbotron">
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-3 col-md-3 col-sm-4 col-xs-12">
              <img className="d-block w-100" src=".../400x400?auto=yes&bg=777&fg=555&text=First slide"/>
            </div>
            <div className="col-lg-4 col-md-6 col-sm-8 col-xs-12">
              <h1 className="display-5">Nom du produit</h1>
              <div id="lienVendeur">
                <NavLink exact to="/Vendeur">
                  Ici il y a le lien du vendeur relatif
                </NavLink>
              </div>
              <p>
                Ici l'origine du produit<br/>
                Ici le prix
              </p>
              <form className="needs-validation" noValidate>
                La quantité à choisir:
                <div className="input-group">
                  <div className="input-group-prepend">
                    <span className="input-group-text" id="">gr</span>
                  </div>
                  <input type="text" className="form-control" placeholder="quantité" />
                </div>
                <small id="passwordHelpBlock" className="form-text text-muted">
                  Quantité max. disponible: XXX
                </small>
                <div className="input-group mb-3">
                  <div className="input-group-prepend">
                    <button className="btn btn-warning" type="button">Commander</button>
                  </div>
                  <select className="custom-select" id="inputPointCollect" placeholder="Choisir point de collecte et date">
                    <option value="1">point 1 date 1</option>
                    <option value="2">point 1 date 2</option>
                    <option value="3">point 2 date 1</option>
                  </select>
                </div>
              </form>
            </div>
          </div>
        </div>
        </div>
        <div className="container">
          Description du produit.
        </div>
      </div>
    );
  }
}
