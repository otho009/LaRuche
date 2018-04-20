'use strict';

/**
*@author Bachar RIMA
*@version 1.0
*/

/*PRIVATE UTILITY FUNCTIONS*/
/**
*@param myDate a Date object
*@return sets the format of myDate to "YYYY-MM-DD"
*@throws custom Not a Date error and custom invalid date error
*
*/
function setDateISOFormat(myDate){
  if (Object.prototype.toString.call(myDate) !== "[object Date]")
    throw new Error(`${myDate} n'est pas une date`);

  if (isNaN(myDate.getTime()))
    throw new Error(`date invalide : ${myDate.toString()}`);

  let year = myDate.getFullYear();
  let month = myDate.getMonth() + 1;
  let day = myDate.getDate();

  if (month < 10)
    month = 0+""+month;
  if (day < 10)
    day = 0+""+day;

  let date_string = year + "-" + month + "-" + day;
  return date_string;
} //TESTED

/**
*@param myString a String
*@return true if myString contains a number, else returns false
*
*/
function hasNumber(myString){
  if (typeof myString.valueOf() === "string")
    return /\d/.test(myString);
} //TESTED

function validateurMail(email){
  if (typeof email.valueOf() === "string"){
    let regex = new RegExp("^[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9._-]@[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9]\\.[a-zA-Z]{2,4}$");
    return regex.test(email);
  }
  return false;
} //TESTED

function validateurMotPasse(password){
  if (typeof password.valueOf() === "string"){
    /*
    *- min 10 char maximum 15 char
    *- at least 1 uppercase letter
    *- at least 1 lowercase letter
    *- at least 1 special character
    */
    let regex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{10,15})");
    return regex.test(password);
  }
  return false;
}

function validateurPortable(number){
  if (Number.isInteger(number) && number>0){
    let regex = new RegExp("^0[1-9]([-. ]?[0-9]{2}){4}$");
    return regex.test(String(`0${number}`));
  }
  return false;
} //TESTED

function validateurNomRue(nom_rue){
  if (!hasNumber(nom_rue)){
    let regex = new RegExp("^[a-zA-ZÀ-ÿ]+([- ][a-zA-ZÀ-ÿ]+)*$");
    return regex.test(nom_rue);
  }
  return false;
} //TESTED

function validateurVille(ville){
  if (!hasNumber(ville)){
    let regex = new RegExp("^[a-zA-ZÀ-ÿ]+([- ][a-zA-ZÀ-ÿ]+)*$");
    return regex.test(ville);
  }
  return false;
} //TESTED

function validateurCodePostal(code_postal){
  if (Number.isInteger(code_postal) && code_postal>0){
    let regex = new RegExp("^([0-9]{5})$");
    return regex.test(String(code_postal));
  }
  return false;
} //TESTED

/*CLASSES*/
class Adresse{
  /*CONSTRUCTOR*/
  constructor(num_rue, nom_rue, ville, code_postal){
    this.num_rue = num_rue;
    this.nom_rue = nom_rue;
    this.ville = ville;
    this.code_postal = code_postal;
  }

  /*METHODS*/
  //GETTERS & SETTERS
  get num_rue(){return this._num_rue;} //TESTED
  set num_rue(num){
    if (!(Number.isInteger(num)) || num<=0)
      throw new Error(`numéro de rue invalide : ${num}`);
    this._num_rue = num;
  } //TESTED

  get nom_rue(){return this._nom_rue;} //TESTED
  set nom_rue(nom){
    if (!validateurNomRue(nom))
      throw new Error(`nom de rue invalide : ${nom}`);
    this._nom_rue = nom;
  } //TESTED

  get ville(){return this._ville;} //TESTED
  set ville(ville){
    if (!validateurVille(ville))
      throw new Error(`ville invalide : ${ville}`);
    this._ville = ville;
  } //TESTED

  get code_postal(){return this._code_postal;} //TESTED
  set code_postal(code){
    if (!validateurCodePostal(code))
      throw new Error(`code postal invalide : ${code}`);
    this._code_postal = code;
  } //TESTED

  //TOSTRING
  toString(){return `${this.num_rue} ${this.nom_rue}, ${this.code_postal} ${this.ville}`;} //TESTED

  //OTHER METHODS
  estValide(){
    return (Number.isInteger(this.num_rue) && this.num_rue>0 && validateurNomRue(this.nom_rue) && validateurVille(this.ville) && validateurCodePostal(this.code_postal)); //TESTED
  }
}

class Utilisateur {
  /*CONSTRUCTOR*/
  constructor(prenom, nom, email, password, tel_portable, date_naissance="", adresse={}){
    if (new.target === Utilisateur)
      throw new Error(`Impossible d'instancier la classe abstraite ${this.constructor.name}`);

    if (!prenom)
      throw new Error(`Un prénom d'un ${this.constructor.name} est obligatoire`);

    this._prenom = prenom;

    if (!nom)
      throw new Error(`Un nom d'un ${this.constructor.name} est obligatoire`);

    this._nom = nom;

    if (validateurMail(email))
      this.email = email;
    else
      throw new Error(`email invalide : ${email}`);

    this.password = password;
    this.tel_portable = tel_portable;
    this._date_naissance = setDateISOFormat(date_naissance);
    this._adresse = adresse;
    this._photo_urls = [];
  }

  /*METHODS*/
  //GETTERS & SETTERS
  get prenom(){return this._prenom;} //TESTED
  get nom(){return this._nom;} //TESTED
  get email(){return this._email;} //TESTED
  set email(email){
    if(validateurMail(email))
      this._email = email;
    else
      throw new Error(`email invalide : ${email}`);
  } //TESTED

  get tel_portable(){return this._tel_portable;} //TESTED
  set tel_portable(number){
    if (validateurPortable(number))
      this._tel_portable = parseInt(number);
    else
      throw new Error(`numéro portable invalide : ${number}`);
  } //TESTED

  get date_naissance(){return this._date_naissance;} //TESTED
  get adresse(){return this._adresse;} //TESTED
  set adresse(adresse){
    if (!(adresse instanceof Adresse))
      throw new Error(`${adresse} n'est pas une adresse`);

    if(adresse.estValide())
      this._adresse = adresse;
    else
      throw new Error(`adresse invalide : ${adresse.toString()}`);
  } //TESTED

  get photo_urls(){return this._photo_urls;} //TESTED
  getPhoto(url){
    for (let i=0; i<this._photo_urls.length; i++)
      if(this._photo_urls[i] === url)
        return this._photo_urls[i];
  }

  set password(password){
    if (validateurMotPasse(password))
      this._password = password;
    else
      throw new Error(`mot de passe invalide : ${password} (entre 10 et 15 caractères contenant au moins 1 caractère min, au moins 1 caractères maj et au moins un caractère spécial)`);
  } //TESTED

  //TOSTRING
  toString(){
    let str = `${this.constructor.name} : ${this.prenom} ${this.nom.toUpperCase()}.\n`;
    str += `Date de Naissance : ${this.date_naissance}.\n`;
    str += `Email : ${this.email}.\n`;
    str += `Portable : 0${this.tel_portable}.\n`;
    str += `Adresse : ${this.adresse.toString()}.`;

    return str;
  } //TESTED
}

class Client extends Utilisateur{
  /*CONSTRUCTOR*/
  constructor(id_client, prenom, nom, email, password, tel_portable, date_naissance, adresse){
    super(prenom, nom, email, password, tel_portable, date_naissance, adresse);

    if (id_client <=0)
      throw new Error(`id client invalide : ${id_client}`);
    this._id_client = id_client;
    this._wallet = {};
  }

  /*METHODS*/
  //GETTERS
  get id_client(){return this._id_client;} //TESTED
  get solde(){return this._wallet.solde;} //requires an implementation of wallet later on
}

class Fournisseur extends Utilisateur{
  /*CONSTRUCTOR*/
  constructor(id_fournisseur, prenom, nom, email, password, tel_portable, date_naissance, adresse){
    super(prenom, nom, email, password, tel_portable, date_naissance, adresse);
    if (id_fournisseur <=0)
      throw new Error(`id fournisseur invalide : ${id_fournisseur}`);
    this._id_fournisseur = id_fournisseur;
    this._produits = [];
    this._conteneurs = [];
    this._paniers = [];
  }

  /*METHODS*/
  //GETTERS
  get id_fournisseur(){return this._id_fournisseur;} //TESTED
  get produits(){return this._produits;}
  getProduitById(id){
    for (let i=0; i<this._produits.length; i++)
      if (this._produits[i].id_produit === id)
        return this._produits[i];
  }

  get conteneurs(){return this._conteneurs;}
  getConteneurById(id){
    for (let i=0; i<this._conteneurs.length; i++)
      if (this._conteneurs[i].id_conteneur === id)
        return this._conteneurs[i];
  }

  get paniers(){return this._paniers;}
  getPanierById(id){
    for (let i=0; i<this._paniers.length; i++)
      if (this._paniers[i].id_panier === id)
        return this._paniers[i];
  }
}

class Cooperative{
  /*CONSTRUCTOR*/
  constructor(id_cooperative, nom, description){
    this._id_cooperative = id_cooperative;
    this._nom = nom;
    this._description = description;
    this._points_collecte = [];
    this._fournisseurs = [];
  }

  /*METHODS*/
  //GETTERS & SETTERS
  get id_cooperative(){return this._id_cooperative;}
  get nom(){return this._nom;}
  set nom(nom){
    if (typeof nom.valueOf() !== "string" || !nom)
      throw new Error(`nom de cooperative invalide : ${nom}`);

    this._nom = nom;
  }

  get points_collecte(){return this._points_collecte;}
  // PCEstReserve(pc, date){
  //   if (!(pc instanceof PointCollecte))
  //     throw new Error(`Point de collecte invalide : ${pc}`);
  //
  //   if (Object.prototype.toString.call(date) !== "[object Date]")
  //     throw new Error(`${date.toString()} n'est pas une date`);
  //
  //   for (let i=0; i<this._points_collecte.length; i++){
  //     let pc_courant = this._points_collecte[i];
  //     if (pc_courant.id_PC === pc.id_PC){
  //     }
  //   }
  //   return false;
  // }

  // reserverPC(pc, date){
  //   if (!(pc instanceof PointCollecte))
  //     throw new Error(`Point de collecte invalide : ${pc}`);
  //
  //   if (Object.prototype.toString.call(date) !== "[object Date]")
  //     throw new Error(`${date.toString()} n'est pas une date`);
  //
  //   if (!)
  //
  // }

  get fournisseurs(){return this._fournisseurs;}

}

//TODO
/*
*- class PointCollecte
*/

// let adresse = new Adresse(5, "Rue", "Montpellier", 34090);
// let client = new Client(1, "Bachar", "Rima", "bashar.nabil.rima@gmail.com", "B@char!ma12", 617139086, new Date("1992-03-18"), adresse);

exports.Adresse = Adresse;
exports.Client = Client;
exports.Fournisseur = Fournisseur;
