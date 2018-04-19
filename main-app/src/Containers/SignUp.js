import React, {Component} from "react";
import { Link, NavLink } from "react-router-dom";
import logo from "../Images/electrGreen.png";
import "./signin.css";

export default class SignUp extends Component {
  render() {
      return (
        <div class="py-5" id="signUpPage">
          <div>
            <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
              <img class="mb-4" src={logo} alt="" width="72" height="72" />
            </NavLink>
            <p class="h3 font-weight-normal">Créez un compte</p>
          </div>
          <div class="container-fluid row">
            <div class="col-lg-3 col-md-2 col-sm-0">
            </div>
            <form class="needs-validation col-lg-6 col-md-8 col-sm-12" novalidate>
              <div class="form-row">
                <div class="col-md-6 mb-3">
                  <label for="validationCustom01">Prénom</label>
                  <input type="text" class="form-control" id="validationCustom01" placeholder="Prénom" required/>
                  <div class="valid-feedback">
                    Prénom entré!
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="validationCustom02">Nom</label>
                  <input type="text" class="form-control" id="validationCustom02" placeholder="Nom" required/>
                  <div class="valid-feedback">
                    Nom entré!
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="validationCustomEmail">E-mail</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupPrepend">@</span>
                    </div>
                    <input type="email" class="form-control" id="validationCustomEmail" placeholder="E-mail" aria-describedby="inputGroupPrepend" required/>
                    <div class="invalid-feedback">
                      S'il vous plait, choisissez un E-mail valide.
                    </div>
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="validationDate">Date de naissance</label>
                  <input type="date" class="form-control" id="validationDate" required/>
                  <div class="valid-feedback">
                    Date de naissance entrée!
                  </div>
                </div>
              </div>
              <div class="form-row">
                <div class="col-md-2 mb-3">
                  <label for="validationNum">Num</label>
                  <input type="text" class="form-control" id="validationNum" placeholder="Num" required/>
                  <div class="invalid-feedback">
                    S'il vous plait, insérez le numéro de votre adresse de domicile.
                  </div>
                </div>
                <div class="col-md-10 mb-3">
                  <label for="validationAdresse">Adresse</label>
                  <input type="text" class="form-control" id="validationAdresse" placeholder="Adresse" required/>
                  <div class="invalid-feedback">
                    S'il vous plait, insérez votre adresse de domicile.
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="validationCustom03">Ville</label>
                  <input type="text" class="form-control" id="validationCustom03" placeholder="Ville" required/>
                  <div class="invalid-feedback">
                    S'il vous plait, insérez votre ville.
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="validationCustom04">État</label>
                  <input type="text" class="form-control" id="validationCustom04" placeholder="État" required/>
                  <div class="invalid-feedback">
                    S'il vous plait, insérez l'état de votre adresse.
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="validationCustom05">Code postale</label>
                  <input type="text" class="form-control" id="validationCustom05" placeholder="Code postale" required/>
                  <div class="invalid-feedback">
                    S'il vous plait, insérez le code postale correspondant.
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="validationCustom05">Numero de téléphone</label>
                    <input type="text" class="form-control" id="validationCustom05" placeholder="Numéro de téléphone" required/>
                  <div class="invalid-feedback">
                    S'il vous plait, insérez un numéro de téléphone.
                  </div>
                </div>
                <div class="col-md-6 mb-6">
                  <label for="InputPassword1">Creez un mot de passe</label>
                  <input type="password" class="form-control" id="eInputPassword1" placeholder="Mot de passe" required/>
                  <div class="invalid-feedback">
                    S'il vous plait, insérez un mot de passe entre 8 et 20 caractères.
                  </div>
                </div>
                <div class="col-md-6 mb-6">
                  <label for="InputPassword2">Confirmez le mot de passe</label>
                  <input type="password" class="form-control" id="eInputPassword2" placeholder="Mot de passe" required/>
                  <div class="invalid-feedback">
                    Le mot de passe ne coincide pas.
                  </div>
                </div>
              </div>
              <div class="form-group">
                <p/>
                <div class="col-md-12 mb-3 text-left">
                  <input type="checkbox" id="validationConsumer" name="consumer" />
                  <label for="validationConsumer">Compte en tant que client consommateur</label>
                </div>
                <div class="col-md-12 mb-3 text-left">
                  <input type="checkbox" id="validationVendor" name="vendor" />
                  <label for="validationVendor">Compte en tant que vendeur de produits locaux</label>
                </div>
              </div>
              <div class="form-group">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required/>
                  <label class="form-check-label" for="invalidCheck">
                    Vous accepter les termes et conditions
                  </label>
                  <div class="invalid-feedback">
                    Vous devez accepter les termes et conditions avant de vous enregistrer.
                  </div>
                </div>
              </div>
              <button class="btn btn-warning" type="submit">Enregistrez vous</button>
            </form>
            <div class="col-lg-3 col-md-2 col-sm-0">
            </div>
          </div>
        </div>
      );
  }
}
