import React, { Component } from "react";
import { Switch, Route } from "react-router-dom";
import Accueil from "./Accueil.js";
import AboutUs from "./AboutUs.js";
import SignIn from "./SignIn.js";
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
      </Switch>
      <Footer/>
    </div>
    );
  }
}
