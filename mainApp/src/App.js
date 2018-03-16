import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Header from "./Components/Header.js" 
import Footer from "./Components/Footer.js"
class App extends Component {
   constructor() {
     super();
     this.state={
        message:"Hey every one",
        onAlert : ()=>{ alert("AAALERT")},
      };
   }
   
  render() {
    let authors= ["othmane", "wissem","Bachar", "anas"];
    return (
      <div className="App">
        <Header onClick={this.state.onAlert} message={this.state.message}/>
        <div>
        <Footer message={"Brought you by "} authors= {authors}/>
        </div>
      </div>
    ); 
  }
} 

export default App;

