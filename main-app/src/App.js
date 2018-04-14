import React, { Component } from "react";
import Header from "./Components/Header.js";
import Footer from "./Components/Footer.js";
import Main from "./Containers/Main.js";
import "./App.css";
class App extends Component {
  constructor() {
    super();
    this.state = {
      showHF: true,
    };
  }
  changeShowHF(val){
    this.setState({showHF: val});
  }

  render() {
    const authors= ["Othmane","Wissam","Bachar"];
    if (this.state.showHF)
      return (
        <div className="App">
          <Header />
          <Main changeShowHF={this.changeShowHF.bind(this)} pere={this} />
          <Footer message={"Brought you by "} authors={authors} />
        </div>
      );
    else
      return (
        <div className="App">
          <Main />
        </div>
      );
  }
}

export default App;
