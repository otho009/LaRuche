import React, {Component} from "react";
import { Link, NavLink } from "react-router-dom";
import Header from "../Components/Header.js";
import Footer from "../Components/Footer.js";
import fruitCarousel from "../Images/fruitCarousel.jpeg";
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg";
import grainsCaroussel from "../Images/grainsCaroussel.jpeg";
import tomateCerise from "../Images/products/tomateCerise.jpg";

const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel]
export default class Produit extends Component {
  render() {
    return (
      <div className="container-fluid">
        <div className="jumbotron">
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-3 col-md-3 col-sm-4 col-xs-12">
              <img className="d-block w-100" src={tomateCerise}/>
            </div>
            <div className="col-lg-4 col-md-6 col-sm-8 col-xs-12">
              <h1 className="display-5">Tomate Cerise </h1>
              <div id="lienVendeur">
                <NavLink exact to="/Vendeur">
                  Producteur: Jean-Pierre
                </NavLink>
              </div>
              <p>
                Origine du produit: Languedoc-Roussillon
                <br/>
                prix: €2.50
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
                  Quantité max. disponible: 30 Kg
                </small>
                <div className="input-group mb-3">
                  <div className="input-group-prepend">
                    <button className="btn btn-warning" type="button">Commander</button>
                  </div>
                  <select className="custom-select" id="inputPointCollect" placeholder="Choisir point de collecte et date">
                    <option value="1">Place de la comédie, lundi 26 Aout</option>
                    <option value="2"> Place de la comédie jeudi 29 Aout</option>
                    <option value="3">Saint  lundi semaine prochaine</option>
                    <option value="3">Saint  jeudi semaine prochaine</option>
                  </select>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div className="container">
          <h5>Description du produit:</h5>
          Ces tomates cerises sont cultivées en France, dans la region du Languedoc-Roussillon, issues d'agriculture agriculture raisonnée.
          Les reservations sont possibles, selon le stock disponible, à partir de deux semaines avant la récolte.
        </div>
        </div>
      </div>
    );
  }
}
