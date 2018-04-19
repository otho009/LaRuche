import React, { Component } from "react";
import Main from "./Containers/Main.js";

import SignIn from "./Containers/SignIn.js";
import "./App.css";
import { Switch, Route } from "react-router-dom";

export default class App extends Component {
  constructor() {
    super();
  }
  render() {
    return (
      <div className="App">
     <Switch>
     <Route path="/" component={Main}/>
     </Switch>

      </div>
    );
  }
}
