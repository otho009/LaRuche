import React, {Component} from "react";
function Liste(props) {
  const elements = props.elements;
  const listItems = elements.map(number => <li>{number}</li>);
  return <ul>{listItems}</ul>;
}
export default class Header extends Component {
  render() {
    return (
      <div>
        <footer class="py-5 bg-primary ">
          <div class="container py-5">

            <div class="footer-right">
              <a href="#">
                <i class="fab fa-facebook "></i>
              </a>
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#">
                <i class="fab fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fab fa-github"></i>
              </a>
            </div>

            <div class="footer-left">

              <p class="footer-links">
                <a href="#">Home </a>
                .
                <a href="#">About </a>
                .
                <a href="#">Blog </a>
                 .
                <a href="#">Faq </a>
                .
                <a href="#">Contact </a>
              </p>

              <p>CourtCircuit &copy; 2018</p>
            </div>
          </div>
        </footer>
      </div>
    );
  }
}
