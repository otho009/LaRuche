import React, { Component } from "react";
import { Switch, Route } from "react-router-dom";
import Header from "../Components/Header.js"
import Footer from "../Components/Footer.js"
import Accueil from "./Accueil.js";
import AboutUs from "./AboutUs.js";
import SignIn from "./SignIn.js";

export default class Main extends Component {
  constructor() {
    super();
  }

  render() {
    return (
      <Switch>
        <Route exact path="/" component={Accueil} />
        <Route path="/about" component={AboutUs} />
        <Route path="/SignIn">
          <SignIn />
        </Route>
      </Switch>
    );
  }
}
