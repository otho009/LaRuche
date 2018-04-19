import React, {Component} from "react";
import Header from "../Components/Header.js";
import Footer from "../Components/Footer.js";
import fruitCarousel from "../Images/fruitCarousel.jpeg";
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg";
import grainsCaroussel from "../Images/grainsCaroussel.jpeg";


const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel]
export default class Accueil extends Component {
  render() {
    return (
      <div class="container-fluid">
        <Header />
        <div class="container">
          <h1 class="display-5">Panier</h1>
          <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Nom produit</th>
              <th scope="col">Prix unitaire (kg)</th>
              <th scope="col">Point de Collecte</th>
              <th scope="col">Date</th>
              <th scope="col">Quantité</th>
              <th scope="col">PRIX</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>Tomate cerise en vrac</td>
              <td>2,50</td>
              <td>
                <select class="custom-select" id="inputGroupSelect01">
                  <option selected>Ruche 1</option>
                  <option value="1">Ruche 2</option>
                  <option value="3">Ruche 3</option>
                </select>
              </td>
              <td>16/05/2018</td>
              <td>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="">gr</span>
                  </div>
                  <input type="text" class="form-control" placeholder="quantité"/>
                </div>
              </td>
              <td>7,50</td>
              <td><button type="button" class="btn btn-outline-danger">Supprimer</button>
              </td>
            </tr>
          </tbody>
        </table>
        <div class="container text-center">
        <button type="button" class="btn btn-outline-success btn-lg">Validez</button>
        </div>
      </div>
      <p/>
      <Footer/>
    </div>
    );
  }
}
