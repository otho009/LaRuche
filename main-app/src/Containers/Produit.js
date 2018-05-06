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
              <h1 className="display-5">Tomate Cerise en vrac</h1>
              <div id="lienVendeur">
                <NavLink exact to="/Vendeur">
                  producteur: Jean Martin
                </NavLink>
              </div>
              <p>
                origine du produit: Languedoc-Roussillon
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
                    <option value="1">Saint Roche lundi cette semaine</option>
                    <option value="2">Saint Roche jeudi cette semaine</option>
                    <option value="3">Saint Roche lundi semaine prochaine</option>
                    <option value="3">Saint Roche jeudi semaine prochaine</option>
                  </select>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div className="container">
          <h5>Description du produit:</h5>
          Ces tomates Cerises sont coltivées en France, danla region du Languedoc-Roussillon, sans utilisation de pesticides chimiques.
          Il sont toujours vendu au plus deux semaines après leurs collect.
        </div>
        </div>
      </div>
    );
  }
}
