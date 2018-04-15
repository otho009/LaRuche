import React, { Component } from "react";
import Main from "./Containers/Main.js";
import "./App.css";
export default class App extends Component {
  constructor() {
    super();
  }
  render() {
    return (
      <div className="App">
        <Main />
      </div>
    );
  }
}
