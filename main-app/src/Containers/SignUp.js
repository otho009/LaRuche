import React, {Component} from "react";
import { Link, NavLink } from "react-router-dom";
import logo from "../Images/electrGreen.png";
import "./signin.css";

export default class SignUp extends Component {
  verification() {
    console.log("aaaaaaaaaaaaaaaaUP");
  }
  render() {
      return (
        <div className="py-5" id="signUpPage">
          <div>
            <NavLink exact to="/" style={{ color: "white" }} activeStyle={{ color: "white" }} >
              <img className="mb-4" src={logo} alt="" width="72" height="72" />
            </NavLink>
            <p className="h3 font-weight-normal">Créez un compte</p>
          </div>
          <div className="container-fluid row">
            <div className="col-lg-3 col-md-2 col-sm-0">
            </div>
            <form className="needs-validation col-lg-6 col-md-8 col-sm-12" noValidate>
              <div className="form-row">
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationCustom01">Prénom</label>
                  <input type="text" className="form-control" id="validationCustom01" placeholder="Prénom" required/>
                  <div className="valid-feedback">
                    Prénom entré!
                  </div>
                </div>
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationCustom02">Nom</label>
                  <input type="text" className="form-control" id="validationCustom02" placeholder="Nom" required/>
                  <div className="valid-feedback">
                    Nom entré!
                  </div>
                </div>
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationCustomEmail">E-mail</label>
                  <div className="input-group">
                    <div className="input-group-prepend">
                      <span className="input-group-text" id="inputGroupPrepend">@</span>
                    </div>
                    <input type="email" className="form-control" id="validationCustomEmail" placeholder="E-mail" aria-describedby="inputGroupPrepend" required/>
                    <div className="invalid-feedback">
                      S'il vous plait, choisissez un E-mail valide.
                    </div>
                  </div>
                </div>
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationDate">Date de naissance</label>
                  <input type="date" className="form-control" id="validationDate" required/>
                  <div className="valid-feedback">
                    Date de naissance entrée!
                  </div>
                </div>
              </div>
              <div className="form-row">
                <div className="col-md-2 mb-3">
                  <label htmlFor="validationNum">Num</label>
                  <input type="text" className="form-control" id="validationNum" placeholder="Num" required/>
                  <div className="invalid-feedback">
                    S'il vous plait, insérez le numéro de votre adresse de domicile.
                  </div>
                </div>
                <div className="col-md-10 mb-3">
                  <label htmlFor="validationAdresse">Adresse</label>
                  <input type="text" className="form-control" id="validationAdresse" placeholder="Adresse" required/>
                  <div className="invalid-feedback">
                    S'il vous plait, insérez votre adresse de domicile.
                  </div>
                </div>
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationCustom03">Ville</label>
                  <input type="text" className="form-control" id="validationCustom03" placeholder="Ville" required/>
                  <div className="invalid-feedback">
                    S'il vous plait, insérez votre ville.
                  </div>
                </div>
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationCustom04">État</label>
                  <input type="text" className="form-control" id="validationCustom04" placeholder="État" required/>
                  <div className="invalid-feedback">
                    S'il vous plait, insérez l'état de votre adresse.
                  </div>
                </div>
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationCustom05">Code postale</label>
                  <input type="text" className="form-control" id="validationCustom05" placeholder="Code postale" required/>
                  <div className="invalid-feedback">
                    S'il vous plait, insérez le code postale correspondant.
                  </div>
                </div>
                <div className="col-md-6 mb-3">
                  <label htmlFor="validationCustom05">Numero de téléphone</label>
                    <input type="text" className="form-control" id="validationCustom05" placeholder="Numéro de téléphone" required/>
                  <div className="invalid-feedback">
                    S'il vous plait, insérez un numéro de téléphone.
                  </div>
                </div>
                <div className="col-md-6 mb-6">
                  <label htmlFor="InputPassword1">Creez un mot de passe</label>
                  <input type="password" className="form-control" id="eInputPassword1" placeholder="Mot de passe" required/>
                  <div className="invalid-feedback">
                    S'il vous plait, insérez un mot de passe entre 8 et 20 caractères.
                  </div>
                </div>
                <div className="col-md-6 mb-6">
                  <label htmlFor="InputPassword2">Confirmez le mot de passe</label>
                  <input type="password" className="form-control" id="eInputPassword2" placeholder="Mot de passe" required/>
                  <div className="invalid-feedback">
                    Le mot de passe ne coincide pas.
                  </div>
                </div>
              </div>
              <div className="form-group">
                <p/>
                <div className="col-md-12 mb-3 text-left">
                  <input type="checkbox" id="validationConsumer" name="consumer" />
                  <label htmlFor="validationConsumer">Compte en tant que client consommateur</label>
                </div>
                <div className="col-md-12 mb-3 text-left">
                  <input type="checkbox" id="validationVendor" name="vendor" />
                  <label htmlFor="validationVendor">Compte en tant que vendeur de produits locaux</label>
                </div>
              </div>
              <div className="form-group">
                <div className="form-check">
                  <input className="form-check-input" type="checkbox" value="" id="invalidCheck" required/>
                  <label className="form-check-label" htmlFor="invalidCheck">
                    Vous accepter les termes et conditions
                  </label>
                  <div className="invalid-feedback">
                    Vous devez accepter les termes et conditions avant de vous enregistrer.
                  </div>
                </div>
              </div>
              <button className="btn btn-warning" type="submit" onClick={this.verification()}>Enregistrez vous</button>
            </form>
            <div className="col-lg-3 col-md-2 col-sm-0">
            </div>
          </div>
        </div>
      );
  }
}
