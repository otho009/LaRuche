'use strict';

class Sellable{
  /*CONSTRUCTOR*/
  constructor(description, prix, qte_stockee=0){
    if (new.target === Sellable)
      throw new Error(`Impossible d'instancier la classe abstraite ${this.constructor.name}`);
    this._description = description;
    this._prix = prix;
    this._qte_stockee = qte_stockee;
  }

  /*METHODS*/
  //GETTERS & SETTERS
  get description(){return this._description;}
  get prix(){return this._prix;}

  set prix(nouveauPrix){
    if (isNaN(nouveauPrix) || value <=0)
      throw new Error(`Valeur invalide de prix d'un ${this.constructor.name} : ${nouveauPrix}`);
    this._prix = nouveauPrix;
  }

  get qte_stockee(){return this._qte_stockee;}
}

class Produit extends Sellable {
  /*CONSTRUCTOR*/
  constructor(id_produit, description, prix, unite_stockage){
    super(description, prix);
    this._id_produit = id_produit;
    this._unite_stockage = unite_stockage; //validation method
    this._recoltes = [];
  }

  /*METHODS*/
  //GETTERS & SETTERS
  get id_produit(){return this._id_produit;}
  get unite_stockage(){return this._unite_stockage;}

  //TOSTRING
  toString(){
    let str = `Description : ${this.description}\n`;
    str += `Prix : ${this.prix}\n`;
    str += `Quantité stockée : ${this.qte_stockee} (${this._unite_stockage})\n`;
    return str;
  }
}

class Conteneur extends Sellable {
  constructor(id_conteneur, produit, description, prix, qte_produit_contenue, qte_stockee=1){
    super(description, prix, qte_stockee);
    this._id_conteneur = id_conteneur;
    this._produit = produit;
    this._qte_produit_contenue = qte_produit_contenue;
    this._qte_conteneur_stockee = 0;
  }

  /*METHODS*/
  get id_conteneur(){return this._id_conteneur;}
  get produit(){return this._produit;}
  get qte_produit_contenue(){return this._qte_produit_contenue;}

  set qte_stockee(qte){
    if (!(Number.isInteger(qte)) || qte<0)
      throw new Error(`nouvelle quantité stockée invalide : ${qte}`);
    this._qte_conteneur_stockee = qte;
  }
}

class Panier extends Sellable {
  constructor(id_panier, description, prix, qte_stockee=1){
    super(description, prix, qte_stockee);
    this.id_panier = id_panier;
    this.produits = [];
    this.conteneurs = [];
  }
}

//TODO
/*
*- class Recolte
*/
