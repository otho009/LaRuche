import React, { Component } from "react";
import Header from "./Components/Header.js";
import Footer from "./Components/Footer.js";
import Main from "./Containers/Main.js";
import "./App.css";
class App extends Component {
  constructor() {
    super();
    this.state = {
      message: "Hey every one",
      onAlert: () => {
        alert("AAALERT"   );
      }
    };
  }

  render() {
    const authors= ["Othmane","Wissam","Bachar"];
    return (
      <div className="App">
        <Header onClick={this.state.onAlert} message={this.state.message} />
        <Main />
        <Footer message={"Brought you by "} authors={authors} />
      </div>
    );
  }
}

export default App;
