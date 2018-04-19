import React, { Component } from "react";
import { Switch, Route } from "react-router-dom";
import Accueil from "./Accueil.js";
import AboutUs from "./AboutUs.js";
import SignIn from "./SignIn.js";
import SignUp from "./SignUp.js";
import Chariot from "./Chariot.js";
import Produit from "./Produit.js";
import Vendeur from "./Vendeur.js";
import Cooperative from "./Cooperative.js";
import Header from "../Components/Header.js";
import Footer from "../Components/Footer.js";
export default class Main extends Component {
  constructor() {
    super();
  }

  render() {
    return (
    <div className="Main">

      <Header/>
      <Switch>
        <Route exact path="/" component={Accueil} />
        <Route exact path="/SignIn" component={SignIn}/>
        <Route path="/about" component={AboutUs} />
        <Route path="/SignUp" component={SignUp} />
        <Route path="/Chariot" component={Chariot} />
        <Route path="/Produit" component={Produit} />
        <Route path="/Vendeur" component={Vendeur} />
        <Route path="/Cooperative" component={Cooperative} />
      </Switch>
      <Footer/>
    </div>
    );
  }
}
