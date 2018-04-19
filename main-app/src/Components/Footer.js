import React, { Component } from "react";
function Liste(props) {
  const elements = props.elements;
  const listItems = elements.map(number => <li>{number}</li>);
  return <ul>{listItems}</ul>;
}
export default class Header extends Component {
  render() {
    return (
      <div>
        <footer class="bg-primary py-3" id="myFooter">
          <div class="container">
            <div class="row">
              <div class="col-sm-3 myCols">
                <h5>Infos pratiques</h5>
                <ul>
                  <li>
                    <a href="#">Comment ça marche</a>
                  </li>
                  <li>
                    <a href="#">Devenir un producteur associé</a>
                  </li>
                  <li>
                    <a href="#">Les ruches disponibles</a>
                  </li>
                </ul>
              </div>
              <div class="col-sm-3 myCols">
                <h5>Des questions?</h5>
                <ul>
                  <li>
                    <a href="#">Aide</a>
                  </li>
                  <li>
                    <a href="#">Nous contacter</a>
                  </li>
                </ul>
              </div>   
              <div class="col-sm-3 myCols">
                <h5>Informations légales</h5>
                <ul>
                  <li>
                    <a href="#">Conditions générales d'utilisation</a>
                  </li>
                  <li>
                    <a href="#">Politique de confidentialité</a>
                  </li>
                  <li>
                    <a href="#">Utilisation de cookies</a>
                  </li>
                </ul>
              </div>
              <div class="social-networks col-sm-3 myCols">

                <a href="#" class="twitter">
                  <i class="fab fa-twitter" />
                </a>
                <a href="#" class="facebook">
                  <i class="fab fa-facebook" />
                </a>
                <a href="#" class="google">
                  <i class="fab fa-youtube" />
                </a>


                <p>© 2018 Courcircuit </p>


              </div>
            </div>

          </div>
        </footer>
      </div>
    );
  }
}
