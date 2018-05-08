/*
* @brief Creates the tables of the database without filling them
* @author Bachar RIMA
*/

USE LARUCHE;

CREATE TABLE IF NOT EXISTS Wallet (
  id_wallet INT NOT NULL AUTO_INCREMENT,
  solde FLOAT DEFAULT 0,
  /*CONSTRAINTS*/
  CONSTRAINT PK_WALLET
    PRIMARY KEY(id_wallet)
);
/*INDEX*/
CREATE INDEX IF NOT EXISTS index_id_wallet ON Wallet(id_wallet);


CREATE TABLE IF NOT EXISTS Client (
  id_client INT NOT NULL AUTO_INCREMENT,
  prenom VARCHAR(50) NOT NULL,
  nom VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL, /*à vérifier dans le trigger*/
  password VARCHAR(50) NOT NULL,
  date_naissance DATE DEFAULT NULL, /*à vérifier dans le trigger*/
  tel_portable INT NOT NULL, /*à vérifier dans le trigger*/
  date_inscription TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  num_rue INT NOT NULL, /*à vérifier dans le trigger*/
  nom_rue VARCHAR(50) NOT NULL,
  ville VARCHAR(50) NOT NULL,
  code_postal INT NOT NULL, /*à vérifier dans le trigger*/
  Client_id_wallet INT DEFAULT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT PK_CLIENT
    PRIMARY KEY(id_client),
  CONSTRAINT UC_EMAIL_CLIENT
    UNIQUE(email),
  CONSTRAINT UC_PORTABLE_CLIENT
    UNIQUE(tel_portable),
  CONSTRAINT UC_WALLET_CLIENT
    UNIQUE(Client_id_wallet),
  CONSTRAINT FK_CLIENT_WALLET
  	FOREIGN KEY(Client_id_wallet) REFERENCES Wallet(id_wallet) ON DELETE SET NULL
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_client ON Client (id_client);
CREATE INDEX IF NOT EXISTS index_email_client ON Client (email);
CREATE INDEX IF NOT EXISTS index_tel_portable_client ON Client (tel_portable);


CREATE TABLE IF NOT EXISTS Fournisseur (
  id_fournisseur INT NOT NULL AUTO_INCREMENT,
  prenom VARCHAR(50) NOT NULL,
  nom VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL, /*à vérifier dans le trigger*/
  password VARCHAR(50) NOT NULL,
  date_naissance DATE DEFAULT NULL,
  tel_portable INT NOT NULL, /*à vérifier dans le trigger*/
  date_inscription TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  num_rue INT NOT NULL, /*à vérifier dans le trigger*/
  nom_rue VARCHAR(50) NOT NULL,
  ville VARCHAR(50) NOT NULL,
  code_postal INT NOT NULL, /*à vérifier dans le trigger*/
  /*CONSTRAINTS*/
  CONSTRAINT PK_FOURNISSEUR
    PRIMARY KEY(id_fournisseur),
  CONSTRAINT UC_EMAIL_FOURNISSEUR
    UNIQUE(email),
  CONSTRAINT UC_PORTABLE_FOURNISSEUR
    UNIQUE(tel_portable),
  /*à vérifier : deux fournisseurs ne peuvent pas avoir la même adresse, étant donné qu'une adresse désigne l'adresse du lieu de travail d'un fournisseur et donc on ne peut pas avoir deux fournisseurs au même endroit de lieu de travail*/
  CONSTRAINT UC_ADRESSE_FOURNISSEUR
    UNIQUE(num_rue, nom_rue, ville, code_postal)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_fournisseur ON Fournisseur (id_fournisseur);
CREATE INDEX IF NOT EXISTS index_email_fournisseur ON Fournisseur (email);
CREATE INDEX IF NOT EXISTS index_tel_portable_fournisseur ON Fournisseur (tel_portable);


CREATE TABLE IF NOT EXISTS Cooperative (
  id_cooperative INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT Cooperative
    PRIMARY KEY(id_cooperative)
);
/*INDEX*/
CREATE INDEX IF NOT EXISTS index_id_cooperative ON Cooperative (id_cooperative);


CREATE TABLE IF NOT EXISTS PointCollecte (
  id_PC INT NOT NULL AUTO_INCREMENT,
  description TEXT NOT NULL,
  num_rue INT NOT NULL, /*à vérifier dans le trigger*/
  nom_rue VARCHAR(50) NOT NULL,
  ville VARCHAR(50) NOT NULL,
  code_postal INT NOT NULL, /*à vérifier dans le trigger*/
  /*CONSTRAINTS*/
  CONSTRAINT PK_POINTCOLLECTE
    PRIMARY KEY(id_PC),
  CONSTRAINT UC_ADRESSE_POINTCOLLECTE
    UNIQUE(num_rue, nom_rue, code_postal)
);
/*INDEX*/
CREATE INDEX IF NOT EXISTS index_id_PC ON PointCollecte (id_PC);


CREATE TABLE IF NOT EXISTS Produit (
  id_produit INT NOT NULL AUTO_INCREMENT,
  Produit_id_fournisseur INT NOT NULL,
  description TEXT NOT NULL,
  prix_produit FLOAT NOT NULL, /*à vérifier dans le trigger*/
  unite_stockage VARCHAR(20) NOT NULL, /*à vérifier dans le trigger*/
  qte_produit_stockee FLOAT NOT NULL DEFAULT 0, /*à vérifier dans le trigger*/
  qte_produit_contenue FLOAT NOT NULL DEFAULT 0, /*à vérifier dans le trigger*/
  qte_produit_regroupee FLOAT NOT NULL DEFAULT 0, /*à vérifier dans le trigger*/
  qte_produit_vendue FLOAT NOT NULL DEFAULT 0, /*à vérifier dans le trigger*/
  /*CONSTRAINTS*/
  CONSTRAINT PK_PRODUIT
  	PRIMARY KEY(id_produit),
  CONSTRAINT FK_PRODUIT_FOURNISSEUR
  	FOREIGN KEY(Produit_id_fournisseur) REFERENCES Fournisseur(id_fournisseur) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_produit ON Produit (id_produit);
CREATE INDEX IF NOT EXISTS index_Produit_id_fournisseur ON Produit (Produit_id_fournisseur);


CREATE TABLE IF NOT EXISTS Recolte (
  id_recolte INT NOT NULL AUTO_INCREMENT,
  Recolte_id_produit INT NOT NULL,
  qte_recoltee FLOAT NOT NULL, /*à vérifier dans le trigger*/
  date_recolte DATE NOT NULL,
  date_expiration DATE DEFAULT NULL, /*pas tous les produits ont des dates d'expiration, come le vin*/
  /*CONSTRAINTS*/
  CONSTRAINT PK_RECOLTE
  	PRIMARY KEY(id_recolte),
  CONSTRAINT FK_RECOLTE_PRODUIT
  	FOREIGN KEY(Recolte_id_produit) REFERENCES Produit(id_produit) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_recolte ON Recolte (id_recolte);
CREATE INDEX IF NOT EXISTS index_Recolte_id_produit ON Recolte (Recolte_id_produit);


CREATE TABLE IF NOT EXISTS Conteneur (
  id_conteneur INT NOT NULL AUTO_INCREMENT,
  Conteneur_id_fournisseur INT NOT NULL,
  Conteneur_id_produit INT NOT NULL,
  description TEXT NOT NULL,
  prix_conteneur FLOAT NOT NULL, /*à vérifier dans le trigger*/
  qte_produit_contenue FLOAT NOT NULL, /*à vérifier dans le trigger*/
  qte_conteneur_stockee INT NOT NULL DEFAULT 1, /*à vérifier dans le trigger*/
  qte_conteneur_regroupee INT NOT NULL DEFAULT 0, /*à vérifier dans le trigger*/
  qte_conteneur_vendue INT NOT NULL DEFAULT 0, /*à vérifier dans le trigger*/
  /*CONSTRAINTS*/
  CONSTRAINT PK_CONTENEUR
  	PRIMARY KEY(id_conteneur),
  CONSTRAINT FK_CONTENEUR_FOURNISSEUR
    FOREIGN KEY(Conteneur_id_fournisseur) REFERENCES Fournisseur(id_fournisseur) ON DELETE CASCADE,
  CONSTRAINT FK_CONTENEUR_PRODUIT
    FOREIGN KEY(Conteneur_id_produit) REFERENCES Produit(id_produit) ON DELETE CASCADE,
  CONSTRAINT UC_CONTENEUR
    UNIQUE(Conteneur_id_produit, qte_produit_contenue)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_conteneur ON Conteneur (id_conteneur);
CREATE INDEX IF NOT EXISTS index_Conteneur_id_fournisseur ON Conteneur (Conteneur_id_fournisseur);
CREATE INDEX IF NOT EXISTS index_Conteneur_id_produit ON Conteneur (Conteneur_id_produit);


CREATE TABLE IF NOT EXISTS Panier (
  id_panier INT NOT NULL AUTO_INCREMENT,
  Panier_id_fournisseur INT NOT NULL,
  description TEXT NOT NULL,
  prix_panier FLOAT NOT NULL, /*à vérifier dans le trigger*/
  qte_panier_stockee INT NOT NULL DEFAULT 1, /*à vérifier dans le trigger*/
  qte_panier_vendue INT NOT NULL DEFAULT 0, /*à vérifier dans le trigger*/
  /*CONSTRAINTS*/
  CONSTRAINT PK_PANIER
  	PRIMARY KEY(id_panier),
  CONSTRAINT FK_PANIER_FOURNISSEUR
    FOREIGN KEY(Panier_id_fournisseur) REFERENCES Fournisseur(id_fournisseur) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_panier ON Panier (id_panier);
CREATE INDEX IF NOT EXISTS index_Panier_id_fournisseur ON Panier (Panier_id_fournisseur);

CREATE TABLE IF NOT EXISTS PanierRegroupeProduit (
  RegroupeP_id_panier INT NOT NULL,
  RegroupeP_id_produit INT NOT NULL,
  qte_produit_regroupee FLOAT NOT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT PK_PANIER_REGROUPE_P
    PRIMARY KEY(RegroupeP_id_panier, RegroupeP_id_produit),
  CONSTRAINT FK_PANIER_REGROUPE_P_PANIER
    FOREIGN KEY(RegroupeP_id_panier) REFERENCES Panier(id_panier) ON DELETE CASCADE,
  CONSTRAINT FK_PANIER_REGROUPE_P_PRODUIT
    FOREIGN KEY(RegroupeP_id_produit) REFERENCES Produit(id_produit) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_RegroupeP_id_panier ON PanierRegroupeProduit(RegroupeP_id_panier);
CREATE INDEX IF NOT EXISTS index_RegroupeP_id_produit ON PanierRegroupeProduit(RegroupeP_id_produit);


CREATE TABLE IF NOT EXISTS PanierRegroupeConteneur (
  RegroupeC_id_panier INT NOT NULL,
  RegroupeC_id_conteneur INT NOT NULL,
  qte_conteneur_regroupee INT NOT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT PK_PANIER_REGROUPE_C
    PRIMARY KEY(RegroupeC_id_panier, RegroupeC_id_conteneur),
  CONSTRAINT FK_PANIER_REGROUPE_C_PANIER
    FOREIGN KEY(RegroupeC_id_panier) REFERENCES Panier(id_panier) ON DELETE CASCADE,
  CONSTRAINT FK_PANIER_REGROUPE_C_CONTENEUR
    FOREIGN KEY(RegroupeC_id_conteneur) REFERENCES Conteneur(id_conteneur) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_RegroupeC_id_panier ON PanierRegroupeConteneur(RegroupeC_id_panier);
CREATE INDEX IF NOT EXISTS index_RegroupeC_id_conteneur ON PanierRegroupeConteneur(RegroupeC_id_conteneur);


CREATE TABLE IF NOT EXISTS CommandeGlobale (
  id_CG INT NOT NULL AUTO_INCREMENT,
  ref_CG VARCHAR(20) NOT NULL,
  CG_id_client INT,
  date_achat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  prix_total FLOAT DEFAULT 0,
  /*CONSTRAINTS*/
  CONSTRAINT PK_CG
  	PRIMARY KEY(id_CG),
  CONSTRAINT FK_CG_CLIENT
  	FOREIGN KEY(CG_id_client) REFERENCES Client(id_client) ON DELETE SET NULL,
  CONSTRAINT UC_REF_CG
    UNIQUE(ref_CG)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_CG ON CommandeGlobale (id_CG);
CREATE INDEX IF NOT EXISTS index_CG_id_client ON CommandeGlobale (CG_id_client);


CREATE TABLE IF NOT EXISTS Commande (
  id_commande INT NOT NULL AUTO_INCREMENT,
  ref_commande VARCHAR(20) NOT NULL,
  Commande_id_CG INT,
  Commande_id_fournisseur INT,
  prix_commande FLOAT DEFAULT 0,
  /*CONSTRAINTS*/
  CONSTRAINT PK_COMMANDE
    PRIMARY KEY(id_commande),
  CONSTRAINT FK_COMMANDE_CG
    FOREIGN KEY(Commande_id_CG) REFERENCES CommandeGlobale(id_CG) ON DELETE SET NULL,
  CONSTRAINT FK_COMMANDE_FOURNISSEUR
    FOREIGN KEY(Commande_id_fournisseur) REFERENCES Fournisseur(id_fournisseur) ON DELETE SET NULL,
  CONSTRAINT UC_REF_COMMANDE
    UNIQUE(ref_commande)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_commande ON Commande (id_commande);
CREATE INDEX IF NOT EXISTS index_Commande_id_fournisseur ON Commande(Commande_id_fournisseur);


CREATE TABLE IF NOT EXISTS Facture (
  id_facture INT NOT NULL AUTO_INCREMENT,
  ref_facture VARCHAR(20) NOT NULL,
  Facture_id_CG INT,
  /*CONSTRAINTS*/
  CONSTRAINT PK_FACTURE
    PRIMARY KEY(id_facture),
  CONSTRAINT FK_FACTURE_CG
    FOREIGN KEY(Facture_id_CG) REFERENCES CommandeGlobale(id_CG) ON DELETE SET NULL,
  CONSTRAINT UC_REF_FACTURE
    UNIQUE(ref_facture)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_facture ON Facture (id_facture);
CREATE INDEX IF NOT EXISTS index_Facture_id_CG ON Facture (Facture_id_CG);


CREATE TABLE IF NOT EXISTS Review (
  id_review INT NOT NULL AUTO_INCREMENT,
  titre VARCHAR(50) NOT NULL,
  score INT NOT NULL, /*add a trigger to check that score is between 1 and 5*/
  contenu TEXT DEFAULT NULL, /*a content can be null if the client wants only to give a score without a comment*/
  Review_id_client INT,
  Review_id_produit INT NOT NULL,
  date_review TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  /*CONSTRAINTS*/
  CONSTRAINT PK_REVIEW
    PRIMARY KEY(id_review),
  CONSTRAINT FK_REVIEW_CLIENT
    FOREIGN KEY(Review_id_client) REFERENCES Client(id_client) ON DELETE SET NULL,
  CONSTRAINT FK_REVIEW_PRODUIT
    FOREIGN KEY(Review_id_produit) REFERENCES Produit(id_produit) ON DELETE CASCADE,
  CONSTRAINT UC_CLE_REELE_REVIEW
    UNIQUE(Review_id_client, Review_id_produit)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_review ON Review(id_review);
CREATE INDEX IF NOT EXISTS index_Review_id_client ON Review(Review_id_client);
CREATE INDEX IF NOT EXISTS index_Review_id_produit ON Review(Review_id_produit);


CREATE TABLE IF NOT EXISTS MethodePaiement (
  id_MP INT NOT NULL AUTO_INCREMENT,
  designation VARCHAR(50) NOT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT PK_METHODE_PAIEMENT
    PRIMARY KEY(id_MP)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_MP ON MethodePaiement(id_MP);


CREATE TABLE IF NOT EXISTS ConsommeSolde (
  id_consomme INT NOT NULL AUTO_INCREMENT,
  Consomme_id_CG INT NOT NULL,
  Consomme_id_wallet INT NOT NULL,
  qte_consommee INT NOT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT PK_CONSOMME_SOLDE
    PRIMARY KEY(id_consomme),
  CONSTRAINT FK_CONSOMME_SOLDE_CG
    FOREIGN KEY(Consomme_id_CG) REFERENCES CommandeGlobale(id_CG) ON DELETE CASCADE,
  CONSTRAINT FK_CONSOMME_SOLDE_WALLET
    FOREIGN KEY(Consomme_id_wallet) REFERENCES Wallet(id_wallet) ON DELETE CASCADE,
  CONSTRAINT UC_CONSOMME_SOLDE
    UNIQUE(Consomme_id_CG, Consomme_id_wallet)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_consomme ON ConsommeSolde(id_consomme);
CREATE INDEX IF NOT EXISTS index_Consomme_id_CG ON ConsommeSolde(Consomme_id_CG);
CREATE INDEX IF NOT EXISTS index_Consomme_id_wallet ON ConsommeSolde(Consomme_id_wallet);


CREATE TABLE IF NOT EXISTS InclutProduit (
  InclutPr_id_commande INT,
  InclutPr_id_produit INT,
  qte_produit_commandee INT NOT NULL,
  prix_produit_commande FLOAT DEFAULT 0,
  /*CONSTRAINTS*/
  CONSTRAINT PK_INCLUT_PRODUIT
    PRIMARY KEY(InclutPr_id_commande, InclutPr_id_produit),
  CONSTRAINT FK_INCLUT_PRODUIT_COMMANDE
    FOREIGN KEY(InclutPr_id_commande) REFERENCES Commande(id_commande) ON DELETE CASCADE,
  CONSTRAINT FK_INCLUT_PRODUIT_PRODUIT
    FOREIGN KEY(InclutPr_id_produit) REFERENCES Produit(id_produit) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_InclutPr_id_commande ON InclutProduit(InclutPr_id_commande);
CREATE INDEX IF NOT EXISTS index_InclutPr_id_produit ON InclutProduit(InclutPr_id_produit);


CREATE TABLE IF NOT EXISTS InclutConteneur (
  InclutC_id_commande INT NOT NULL,
  InclutC_id_conteneur INT NOT NULL,
  qte_conteneur_commandee INT NOT NULL,
  prix_conteneur_commande FLOAT DEFAULT 0,
  /*CONSTRAINTS*/
  CONSTRAINT PK_INCLUT_CONTENEUR
    PRIMARY KEY(InclutC_id_commande, InclutC_id_conteneur),
  CONSTRAINT FK_INCLUT_CONTENEUR_COMMANDE
    FOREIGN KEY(InclutC_id_commande) REFERENCES Commande(id_commande) ON DELETE CASCADE,
  CONSTRAINT FK_INCLUT_CONTENEUR_CONTENEUR
    FOREIGN KEY(InclutC_id_conteneur) REFERENCES Conteneur(id_conteneur) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_InclutC_id_commande ON InclutConteneur(InclutC_id_commande);
CREATE INDEX IF NOT EXISTS index_InclutC_id_conteneur ON InclutConteneur(InclutC_id_conteneur);


CREATE TABLE IF NOT EXISTS InclutPanier (
  InclutPa_id_commande INT NOT NULL,
  InclutPa_id_panier INT NOT NULL,
  qte_panier_commandee INT NOT NULL,
  prix_panier_commande FLOAT DEFAULT 0,
  /*CONSTRAINTS*/
  CONSTRAINT PK_INCLUT_PANIER
    PRIMARY KEY(InclutPa_id_commande, InclutPa_id_panier),
  CONSTRAINT FK_INCLUT_PANIER_COMMANDE
    FOREIGN KEY(InclutPa_id_commande) REFERENCES Commande(id_commande) ON DELETE CASCADE,
  CONSTRAINT FK_INCLUT_PANIER_PANIER
    FOREIGN KEY(InclutPa_id_panier) REFERENCES Panier(id_panier) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_InclutPa_id_commande ON InclutPanier(InclutPa_id_commande);
CREATE INDEX IF NOT EXISTS index_InclutPa_id_panier ON InclutPanier(InclutPa_id_panier);


CREATE TABLE IF NOT EXISTS CommuniqueC (
  id_communiqueC INT NOT NULL AUTO_INCREMENT,
  CommuniqueC_id_client INT,
  CommuniqueC_id_fournisseur INT,
  date_communication TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  contenu TEXT NOT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT PK_COMMUNIQUEC
    PRIMARY KEY(id_communiqueC),
  CONSTRAINT FK_COMMUNIQUEC_CLIENT
    FOREIGN KEY(CommuniqueC_id_client) REFERENCES Client(id_client) ON DELETE SET NULL,
  CONSTRAINT FK_COMMUNIQUEC_FOURNISSEUR
    FOREIGN KEY (CommuniqueC_id_fournisseur) REFERENCES Fournisseur(id_fournisseur) ON DELETE SET NULL,
  CONSTRAINT UC_COMMUNIQUEC
    UNIQUE(CommuniqueC_id_client, CommuniqueC_id_fournisseur)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_communiqueC ON CommuniqueC(id_communiqueC);
CREATE INDEX IF NOT EXISTS index_CommuniqueC_id_client ON CommuniqueC(CommuniqueC_id_client);
CREATE INDEX IF NOT EXISTS index_CommuniqueC_id_fournisseur ON CommuniqueC(CommuniqueC_id_fournisseur);


CREATE TABLE IF NOT EXISTS CommuniqueF (
  id_communiqueF INT NOT NULL AUTO_INCREMENT,
  CommuniqueF_id_fournisseur1 INT,
  CommuniqueF_id_fournisseur2 INT,
  date_communication TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  contenu TEXT NOT NULL,
  /*CONSTRAINTS*/
  CONSTRAINT PK_COMMUNIQUEF
    PRIMARY KEY(id_communiqueF),
  CONSTRAINT FK_COMMUNIQUEF_FOURNISSEUR1
    FOREIGN KEY(CommuniqueF_id_fournisseur1) REFERENCES Fournisseur(id_fournisseur) ON DELETE SET NULL,
  CONSTRAINT FK_COMMUNIQUEF_FOURNISSEUR2
    FOREIGN KEY (CommuniqueF_id_fournisseur2) REFERENCES Fournisseur(id_fournisseur) ON DELETE SET NULL,
  CONSTRAINT UC_COMMUNIQUEF
    UNIQUE(CommuniqueF_id_fournisseur1, CommuniqueF_id_fournisseur2)
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_id_communiqueF ON CommuniqueF(id_communiqueF);
CREATE INDEX IF NOT EXISTS index_CommuniqueF_id_fournisseur1 ON CommuniqueF(CommuniqueF_id_fournisseur1);
CREATE INDEX IF NOT EXISTS index_CommuniqueF_id_fournisseur2 ON CommuniqueF(CommuniqueF_id_fournisseur2);


CREATE TABLE IF NOT EXISTS AppartientCoop (
  AppartientCoop_id_cooperative INT NOT NULL, /*should not be null : when a coop is deleted, the tuple should be deleted*/
  AppartientCoop_id_fournisseur INT NOT NULL, /*should not be null : when a vendor is deleted, the tuple should be deleted*/
  date_affiliation TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  /*CONSTRAINTS*/
  CONSTRAINT PK_APPARTIENT_COOP
    PRIMARY KEY(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur),
  CONSTRAINT FK_APPARTIENT_COOP_COOPERATIVE
    FOREIGN KEY(AppartientCoop_id_cooperative) REFERENCES Cooperative(id_cooperative) ON DELETE CASCADE,
  CONSTRAINT FK_APPARTIENT_COOP_FOURNISSEUR
    FOREIGN KEY(AppartientCoop_id_fournisseur) REFERENCES Fournisseur(id_fournisseur) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_AppartientCoop_id_cooperative ON AppartientCoop(AppartientCoop_id_cooperative);
CREATE INDEX IF NOT EXISTS index_AppartientCoop_id_fournisseur ON AppartientCoop(AppartientCoop_id_fournisseur);


CREATE TABLE IF NOT EXISTS ChoisitPC (
  ChoisitPC_id_cooperative INT NOT NULL,
  ChoisitPC_id_PC INT NOT NULL,
  date_reservation TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  /*CONSTRAINTS*/
  CONSTRAINT PK_CHOISIT_PC
    PRIMARY KEY(ChoisitPC_id_cooperative, ChoisitPC_id_PC, date_reservation),
  CONSTRAINT FK_CHOISIT_PC_COOPERATIVE
    FOREIGN KEY(ChoisitPC_id_cooperative) REFERENCES Cooperative(id_cooperative) ON DELETE CASCADE,
  CONSTRAINT FK_CHOISIT_PC_POINT_COLLECTE
    FOREIGN KEY(ChoisitPC_id_PC) REFERENCES PointCollecte(id_PC) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_ChoisitPC_id_cooperative ON ChoisitPC(ChoisitPC_id_cooperative);
CREATE INDEX IF NOT EXISTS index_ChoisitPC_id_PC ON ChoisitPC(ChoisitPC_id_PC);


CREATE TABLE IF NOT EXISTS ChoisitPCF (
  ChoisitPCF_id_fournisseur INT NOT NULL,
  ChoisitPCF_id_PC INT NOT NULL,
  date_reservation TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  /*CONSTRAINTS*/
  CONSTRAINT PK_CHOISIT_PCF
    PRIMARY KEY(ChoisitPCF_id_fournisseur, ChoisitPCF_id_PC, date_reservation),
  CONSTRAINT FK_CHOISIT_PCF_FOURNISSEUR
    FOREIGN KEY(ChoisitPCF_id_fournisseur) REFERENCES Fournisseur(id_fournisseur) ON DELETE CASCADE,
  CONSTRAINT FK_CHOISIT_PCF_POINT_COLLECTE
    FOREIGN KEY(ChoisitPCF_id_PC) REFERENCES PointCollecte(id_PC) ON DELETE CASCADE
);
/*INDEXES*/
CREATE INDEX IF NOT EXISTS index_ChoisitPCF_id_fournisseur ON ChoisitPCF(ChoisitPCF_id_fournisseur);
CREATE INDEX IF NOT EXISTS index_ChoisitPCF_id_PC ON ChoisitPCF(ChoisitPCF_id_PC);
