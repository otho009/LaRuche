import React, {Component} from "react";

import fruitCarousel from "../Images/fruitCarousel.jpeg";
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg";
import grainsCaroussel from "../Images/grainsCaroussel.jpeg";
import background from "../Images/local-900x600.jpg";
import background2 from "../Images/greenhouse.jpg";
import background3 from "../Images/handshake.jpg";
import "./aboutUs.css";
// A list to save the images we use in the carousel
const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel]
export default class Accueil extends Component {
    render() {
        return (

            <div class="container aboutUs">

                    <div   class=" jumbotron jumbotron-fluid">
                            <h1>Qui sommes-nous?</h1>
                            <p>Une présentation en quelques points clés</p>
                </div>


                <div class="row">
                    <section class="showcase">
                        <div class="container-fluid p-0">
                            <div class="row no-gutters">
                                <div
                                    class="col-lg-6 order-lg-2 text-white showcase-img"
                                    style={{
                                    backgroundImage: "url(" + background + ")"
                                }}></div>
                                <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                                    <h2>Des Produits Locaux</h2>
                                    <p class="lead mb-0">Acheter des fruits et des légumes chez nous c'est bien !</p>
                                </div>
                            </div>
                            <div class="row no-gutters">
                                <div
                                    class="col-lg-6 text-white showcase-img"
                                    style={{
                                    backgroundImage: "url(" + background2 + ")"
                                }}></div>
                                <div class="col-lg-6 my-auto showcase-text">
                                    <h2>Des Producteurs Responsables
                                    </h2>
                                    <p class="lead mb-0">
                                        <b>Chez CourtCircuit</b>, nos producteurs ont le sens des résponsabilités quand
                                        il s'agit de faire de l'agriculture raisonnable.
                                    </p>
                                </div>
                            </div>
                            <div class="row no-gutters">
                                <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                                    <h2>Un Esprit de Coopération
                                    </h2>
                                    <p class="lead mb-0">We all know that this site will look great on any device,
                                        whether it's a phone, tablet, or desktop bisous bisous</p>
                                </div>
                                <div
                                    class="col-lg-6 order-lg-2 text-white showcase-img"
                                    style={{
                                    backgroundImage: "url(" + background3 + ")"
                                }}></div>
                            </div>

                        </div>
                    </section>
                </div>
            </div>
        );
    }
}
