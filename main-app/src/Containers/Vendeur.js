import React, {Component} from "react";
import { Link, NavLink } from "react-router-dom";
import Header from "../Components/Header.js";
import Footer from "../Components/Footer.js";
import fruitCarousel from "../Images/fruitCarousel.jpeg";
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg";
import grainsCaroussel from "../Images/grainsCaroussel.jpeg";
import producteur from "../Images/JeanMartin.jpg";
import orange from "../Images/products/orange.jpg";
import poivron from "../Images/products/poivronRouge.jpeg";
import tomateCerise from "../Images/products/tomateCerise.jpg";

const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel]
export default class Vendeur extends Component {
  render() {
    return (
      <div className="container-fluid">
        <div className="jumbotron">
          <div className="container">
            <div className="row">
              <div className="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <img className="rounded-circle d-block w-100" src={producteur}/>
              </div>
              <div className="col-lg-4 col-md-6 col-sm-8 col-xs-12">
                <h1 className="display-5">Jean Martin</h1>
                <p>Position: Fabrègues, Languedoc-Roussillon</p>
                <p><button type="button" className="btn btn-primary">Contacter</button></p>
              </div>
            </div>
          </div>
        </div>
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-3 col-md-6 col-sm-12">
              <h6>Autres informations sur le vendeur</h6>
              ruches d'appartenances:
              <li>
                <ul><a href="#">Saint Roche</a></ul>
              </li>
            </div>
            <div className="col-lg-9 col-md-6 col-sm-12">
              <div className="text-center">
                <h4>Produits vendus</h4>
              </div>
              <div className="container marketing">
                <div className="row">
                  <div className="col-lg-4">
                    <img className="rounded-circle" src={orange} alt="Generic placeholder image" width="140" height="140" />
                    <h2>Orange thomson en vrac</h2>
                    <p><a className="btn btn-secondary" href="#" role="button">voir le produit &raquo;</a></p>
                  </div>
                  <div className="col-lg-4">
                    <img className="rounded-circle" src={poivron} alt="Generic placeholder image" width="140" height="140" />
                    <h2>Poivron Rouge en vrac</h2>
                    <p><a className="btn btn-secondary" href="#" role="button">voir le produit &raquo;</a></p>
                  </div>
                  <div className="col-lg-4">
                    <img className="rounded-circle" src={tomateCerise} alt="Generic placeholder image" width="140" height="140" />
                    <h2>Tomate cerise en vrac</h2>
                    <p><a className="btn btn-secondary" href="#" role="button">voir le produit &raquo;</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
