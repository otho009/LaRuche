import React, {Component} from "react";
import {Switch, Route} from "react-router-dom";
import Accueil from "./Accueil.js";
import AboutUs from "./AboutUs.js";
import SignIn from "./SignIn.js";
import SignUp from "./SignUp.js";
import Cart from "./Cart.js";
import Produit from "./Produit.js";
import Vendeur from "./Vendeur.js";
import Cooperative from "./Cooperative.js";
import Header from "../Components/Header.js";
import Footer from "../Components/Footer.js";
export default class Main extends Component {
  constructor() {
    super();
    this.state = {
      connected: false,
      headerIcon: {
        linkDest: "/SignIn",
        fontAw: "fas fa-sign-in-alt",
        title: "Connexion"
      }
    };
    this.handleConnect = this
      .handleConnect
      .bind(this);

  }
  handleConnect() {
    this.setState({
      connected: true,
      headerIcon: {
        linkDest: "/Account",
        fontAw: "fas fa-user",
        title: "Mon compte"
      }
    });
    alert(this.state.headerIcon.fontAw);
  }

  render() {
    return (
      <div className="Main">
        <Header headerIcon={this.state.headerIcon}/>
        <Switch>
          <Route exact path="/">
            <Accueil/>
          </Route>
          <Route exact path="/SignIn">
            <SignIn onConnection={this.handleConnect}/>
          </Route>
  
          <Route path="/about" component={AboutUs}/>
          <Route path="/SignUp" component={SignUp}/>
          <Route path="/Cart" component={Cart}/>
          <Route path="/Produit" component={Produit}/>
          <Route path="/Vendeur" component={Vendeur}/>
          <Route path="/Cooperative" component={Cooperative}/>
        </Switch>
        <Footer/>
      </div>
    );
  }
}
