import React, { Component } from "react";
import fruitCarousel from "../Images/fruitCarousel.jpeg";
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg";
import grainsCaroussel from "../Images/grainsCaroussel.jpeg";
import orange from "../Images/products/orange.jpg";
import poivron from "../Images/products/poivronRouge.jpg";
import tomateCerise from "../Images/products/tomateCerise.jpg";
import lait from "../Images/products/lait.jpg";

const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel];
export default class Accueil extends Component {
  render() {
    return (
      <div className="container"> 
        <div className="row">
          <div className="col-lg-3">
            <h1 className="my-4">Catégories</h1>
            <div className="list-group">
              <a href="#" className="list-group-item">
                Fruits
              </a>
              <a href="#" className="list-group-item">
                Légumes
              </a>
              <a href="#" className="list-group-item">
                Lait et dérivés
              </a>
            </div>
          </div>

          <div className="col-lg-9">
            <div
              id="carouselExampleIndicators"
              className="carousel slide my-4"
              data-ride="carousel"
            >
              <ol className="carousel-indicators">
                <li
                  data-target="#carouselExampleIndicators"
                  data-slide-to="0"
                  className="active"
                />
                <li
                  data-target="#carouselExampleIndicators"
                  data-slide-to="1"
                />
                <li
                  data-target="#carouselExampleIndicators"
                  data-slide-to="2"
                />
              </ol>
              <div className="carousel-inner" role="listbox">
                <div className="carousel-item active">
                  <img
                    className="d-block img-fluid"
                    src="http://offalydelicious.ie/wp-content/uploads/2014/09/IMG_0246-930x350.jpg"
                    alt="First slide"
                  />
                </div>
                <div className="carousel-item">
                  <img
                    className="d-block img-fluid"
                    src="http://superfitdad.com.au/wp-content/uploads/2017/06/katie-smith-104748-930x350.jpg"
                    alt="Second slide"
                  />
                </div>
                <div className="carousel-item">
                  <img
                    className="d-block img-fluid"
                    src="http://www.cyprusliving.com/media-cache/fit-930x350/location-images/2991-tsada_orig.jpg"
                    alt="Third slide"
                  />
                </div>
              </div>
              <a
                className="carousel-control-prev"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="prev"
              >
                <span
                  className="carousel-control-prev-icon"
                  aria-hidden="true"
                />
                <span className="sr-only">Previous</span>
              </a>
              <a
                className="carousel-control-next"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="next"
              >
                <span
                  className="carousel-control-next-icon"
                  aria-hidden="true"
                />
                <span className="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
        <div className="row">
          <div className="col-lg-3">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src={tomateCerise}
                  height="250"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Tomate cerises</a>
                </h4>
                <h5>€2.50/KG</h5>
                <p className="card-text">Tomates cerises cultivées en France dans la region du Languedoc-Roussillon et issues d'agriculture raisonnée.</p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9733; &#9734;
                </small>
              </div>
            </div>
          </div>

          <div className="col-lg-3 ">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src={orange}
                  height="250"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Orange</a>
                </h4>
                <h5>€2.99/KG</h5>
                <p className="card-text">
                  Oranges cultivées en France dans la region du Languedoc-Roussillon. Récolte datant de cette semaine.
                </p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9733; &#9734;
                </small>
              </div>
            </div>
          </div>

          <div className="col-lg-3 ">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src={poivron}
                  height="250"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Poivrons rouges</a>
                </h4>
                <h5>€2.99/KG</h5>
                <p className="card-text">
                  Poivrons rouges produit au sein du domaine agricole de Saint-Martrin.
                </p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9734; &#9734;
                </small>
              </div>
            </div>
          </div>
          <div className="col-lg-3 ">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src={lait}
                  height="250"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Lait de Brebis</a>
                </h4>
                <h5>€1.5/L</h5>
                <p className="card-text">
                Lait de brebis 100% biologique, produit par la coopération Biolait labélisée 100 % Agriculture Biologique
                </p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9733; &#9733;
                </small>
              </div>
            </div>
          </div>
</div>

<div className="py-3">
  <ul className="pagination pagination-lg">
    <li className="page-item disabled">
      <a className="page-link" href="#">&laquo;</a>
    </li>
    <li className="page-item active">
      <a className="page-link" href="#">1</a>
    </li>
    <li className="page-item">
      <a className="page-link" href="#">2</a>
    </li>
    <li className="page-item">
      <a className="page-link" href="#">3</a>
    </li>
    <li className="page-item">
      <a className="page-link" href="#">4</a>
    </li>
    <li className="page-item">
      <a className="page-link" href="#">5</a>
    </li>
    <li className="page-item">
      <a className="page-link" href="#">&raquo;</a>
    </li>
  </ul>
</div>
        {/* <div className="row">

          <div className="col-lg-3">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src="http://placehold.it/700x400"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Item Four</a>
                </h4>
                <h5>€24.99</h5>
                <p className="card-text">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet
                  numquam aspernatur!
                </p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9733; &#9734;
                </small>
              </div>
            </div>
          </div>

          <div className="col-lg-3">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src="http://placehold.it/700x400"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Item Five</a>
                </h4>
                <h5>€24.99</h5>
                <p className="card-text">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet
                  numquam aspernatur! Lorem ipsum dolor sit amet.
                </p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9733; &#9734;
                </small>
              </div>
            </div>
          </div>

          <div className="col-lg-3">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src="http://placehold.it/700x400"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Item Six</a>
                </h4>
                <h5>€24.99</h5>
                <p className="card-text">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet
                  numquam aspernatur!
                </p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9733; &#9734;
                </small>
              </div>
            </div>
          </div>
          <div className="col-lg-3">
            <div className="card h-100">
              <a href="#">
                <img
                  className="card-img-top"
                  src="http://placehold.it/700x400"
                  alt=""
                />
              </a>
              <div className="card-body">
                <h4 className="card-title">
                  <a href="#">Item Five</a>
                </h4>
                <h5>€24.99</h5>
                <p className="card-text">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet
                  numquam aspernatur! Lorem ipsum dolor sit amet.
                </p>
              </div>
              <div className="card-footer">
                <small className="text-muted">
                  &#9733; &#9733; &#9733; &#9733; &#9734;
                </small>
              </div>
            </div>
          </div>
        </div> */}
      </div>
    );
  }
}
