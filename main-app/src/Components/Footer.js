import React, { Component } from "react";
import logo from "../Images/laRuche.png";

function Liste(props) {
  const elements = props.elements;
  const listItems = elements.map(number => <li>{number}</li>);
  return <ul>{listItems}</ul>;
}
export default class Header extends Component {
  render() {
    return (
      <div>
        <footer class="py-5 bg-dark">
          <div class="container">
            <p class="m-0 text-center text-white">
              Copyright &copy; Your Website 2017
            </p>
          </div>
        </footer>
      </div>
    );
  }
}
