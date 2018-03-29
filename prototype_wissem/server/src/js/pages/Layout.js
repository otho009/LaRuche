import React from "react";
//import dependet components
import Header from "../components/Header";
import Footer from "../components/Footer";

export default class Layout extends React.Component {
  constructor(){
    super();
    this.state = {
      title: "Welcome Will!",
    };
    //pour changer le state faire this.setState({...});
  }
  changeTitle(title){
    this.setState({title});
  }
  render() {
    return (
      <h1>Killer news XD !</h1>
    );
  }
}
