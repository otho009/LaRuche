import React, {Component} from "react";
import fruitCarousel from "../Images/fruitCarousel.jpeg"
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg"
import grainsCaroussel from "../Images/grainsCaroussel.jpeg"
import background from "../Images/local-900x600.jpg"
import background2 from "../Images/greenhouse.jpg"
import background3 from "../Images/handshake.jpg"


const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel]
export default class Accueil extends Component {
    render() {
        return (
            <div class="container">
                 {/* <div class="row">

                    <div class="col-lg-3">
                        <h1 class="my-4">Shop Name</h1>
                        <div class="list-group">
                            <a href="#" class="list-group-item">
                                Category 1
                            </a>
                            <a href="#" class="list-group-item">
                                Category 2
                            </a>
                            <a href="#" class="list-group-item">
                                Category 3
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-9">
                        <div
                            id="carouselExampleIndicators"
                            class="carousel slide my-4"
                            data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"/>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"/>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"/>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img
                                        class="d-block img-fluid"
                                        src="http://offalydelicious.ie/wp-content/uploads/2014/09/IMG_0246-930x350.jpg"
                                        alt="First slide"/>
                                </div>
                                <div class="carousel-item">
                                    <img
                                        class="d-block img-fluid"
                                        src="http://superfitdad.com.au/wp-content/uploads/2017/06/katie-smith-104748-930x350.jpg"
                                        alt="Second slide"/>
                                </div>
                                <div class="carousel-item">
                                    <img
                                        class="d-block img-fluid"
                                        src="http://www.cyprusliving.com/media-cache/fit-930x350/location-images/2991-tsada_orig.jpg"
                                        alt="Third slide"/>
                                </div>
                            </div>
                            <a
                                class="carousel-control-prev"
                                href="#carouselExampleIndicators"
                                role="button"
                                data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"/>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a
                                class="carousel-control-next"
                                href="#carouselExampleIndicators"
                                role="button"
                                data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"/>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>  */}
                
                <div class="row">
                    <section class="showcase">
                        <div class="container-fluid p-0">
                            <div class="row no-gutters">
                                <div class="col-lg-6 order-lg-2 text-white showcase-img" style={{ backgroundImage: "url(" + background + ")" }}></div>
                                <div class="col-lg-6 order-lg-1 my-auto showcase-text"> <h2>Des Produits Locaux</h2> <p class="lead mb-0">Acheter des fruits et des légumes chez nous c'est bien !</p> </div>
                            </div>
                            <div class="row no-gutters">
                                <div class="col-lg-6 text-white showcase-img" style={{ backgroundImage: "url(" + background2 + ")" }}></div>
                                <div class="col-lg-6 my-auto showcase-text"> <h2>Des Producteurs Responsables </h2> <p class="lead mb-0">We all know that this site will look great on any device, whether it's a phone, tablet, or desktop bisous bisous</p> </div>
                            </div>
                            <div class="row no-gutters">
                                <div class="col-lg-6 order-lg-1 my-auto showcase-text"> <h2>Un esprit de coopération </h2> <p class="lead mb-0">We all know that this site will look great on any device, whether it's a phone, tablet, or desktop bisous bisous</p> </div>
                                <div class="col-lg-6 order-lg-2 text-white showcase-img" style={{ backgroundImage: "url(" + background3 + ")" }}></div>
                            </div>
                            
                        </div>
                    </section>
                </div>

                {/* <div class="row">
              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                  <a href="#">
                    <img
                      class="card-img-top"
                      src="http://placehold.it/700x400"
                      alt=""
                    />
                  </a>
                  <div class="card-body">
                    <h4 class="card-title">
                      <a href="#">Item One</a>
                    </h4>
                    <h5>$24.99</h5>
                    <p class="card-text">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                      Amet numquam aspernatur!
                    </p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">
                      &#9733; &#9733; &#9733; &#9733; &#9734;
                    </small>
                  </div>
                </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                  <a href="#">
                    <img
                      class="card-img-top"
                      src="http://placehold.it/700x400"
                      alt=""
                    />
                  </a>
                  <div class="card-body">
                    <h4 class="card-title">
                      <a href="#">Item Two</a>
                    </h4>
                    <h5>$24.99</h5>
                    <p class="card-text">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                      Amet numquam aspernatur! Lorem ipsum dolor sit amet.
                    </p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">
                      &#9733; &#9733; &#9733; &#9733; &#9734;
                    </small>
                  </div>
                </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                  <a href="#">
                    <img
                      class="card-img-top"
                      src="http://placehold.it/700x400"
                      alt=""
                    />
                  </a>
                  <div class="card-body">
                    <h4 class="card-title">
                      <a href="#">Item Three</a>
                    </h4>
                    <h5>$24.99</h5>
                    <p class="card-text">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                      Amet numquam aspernatur!
                    </p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">
                      &#9733; &#9733; &#9733; &#9733; &#9734;
                    </small>
                  </div>
                </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                  <a href="#">
                    <img
                      class="card-img-top"
                      src="http://placehold.it/700x400"
                      alt=""
                    />
                  </a>
                  <div class="card-body">
                    <h4 class="card-title">
                      <a href="#">Item Four</a>
                    </h4>
                    <h5>$24.99</h5>
                    <p class="card-text">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                      Amet numquam aspernatur!
                    </p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">
                      &#9733; &#9733; &#9733; &#9733; &#9734;
                    </small>
                  </div>
                </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                  <a href="#">
                    <img
                      class="card-img-top"
                      src="http://placehold.it/700x400"
                      alt=""
                    />
                  </a>
                  <div class="card-body">
                    <h4 class="card-title">
                      <a href="#">Item Five</a>
                    </h4>
                    <h5>$24.99</h5>
                    <p class="card-text">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                      Amet numquam aspernatur! Lorem ipsum dolor sit amet.
                    </p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">
                      &#9733; &#9733; &#9733; &#9733; &#9734;
                    </small>
                  </div>
                </div>
              </div>

              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                  <a href="#">
                    <img
                      class="card-img-top"
                      src="http://placehold.it/700x400"
                      alt=""
                    />
                  </a>
                  <div class="card-body">
                    <h4 class="card-title">
                      <a href="#">Item Six</a>
                    </h4>
                    <h5>$24.99</h5>
                    <p class="card-text">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                      Amet numquam aspernatur!
                    </p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">
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
