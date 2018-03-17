import React from "react";

import Header from "./Header";
import Footer from "./Footer";

export default class Layout extends React.Component {
  getName(){
    return "Wissem";
  }
  render() {
    return (
      <div>
        <Header />
        <h1>It's workings! Hello {this.getName()}!</h1>
        <Footer />
      </div>
    );
  }
}
