import React, { Component } from "react";
import { Switch, Route } from "react-router-dom";
import Accueil from "./Accueil.js";
import AboutUs from "./AboutUs.js";

export default class Main extends Component {
  constructor() {
    super();
  }

  render() {
    return (
      <Switch>
        <Route exact path="/" component={Accueil} />
        <Route path="/about" component={AboutUs} />
      </Switch>
    );
  }
}
