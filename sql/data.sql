/*
* @brief Inserts test data into database
* @author Bachar RIMA
*/

-- /*INSERTION DE WALLETS*/
-- INSERT INTO Wallet (solde) VALUES(0);
-- INSERT INTO Wallet (solde) VALUES(0);
-- INSERT INTO Wallet (solde) VALUES(0);
-- INSERT INTO Wallet (solde) VALUES(0);
-- INSERT INTO Wallet (solde) VALUES(0);
-- INSERT INTO Wallet (solde) VALUES(0);

/*INSERTION DE CLIENTS*/
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Bachar", "Rima", "brima_nyehe@gmail.com", "shtabro", "1992-07-20", 0615597845, 3, "Faubourg Boutonnet", "Montpellier", 34090);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Othmane", "Farajallah", "ofarj@gmail.com", "shta3le", "1998-09-06", 0750505126, 18, "Marie-Georgette", "Montpellier", 34090);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Wissem", "Soussi", "soussi@gmail.com", "nyehe", "1999-05-13", 0748513265, 4, "Périoles", "Toulouse", 31500);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Sami", "El-Jammal", "samijammal9@gmail.com", "nyehe", "1999-05-13", 0733366699, 4, "Périoles", "Toulouse", 31500);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Ziad", "Rima", "zrima1235@hotmail.fr", "ouiwalala", "1989-04-01", 0658791326, 7, "Président", "Toulouse", 31200);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Samy", "Rima", "srima@gmail.com", "buelre", "1989-09-26", 0658264915, 24, "Adolphe Tiers", "Toulouse", 31500);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Walid", "Mawwas", "walidmawwas@gmail.fr", "nulul", "1989-10-15", 0689532614, 57, "Rue des inventions", "Montpellier", 34090);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Oussama", "Rima", "oussamarima@gmail.fr", "djedjedjeew", "1995-02-14", 0685263459, 7, "Général Leclère", "Montpellier", 34000);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Hanine", "Rima", "hrima@gmail.fr", "bma", "1998-08-20", 0785693214, 57, "Bulbassaur", "Bordeaux", 33000);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Mattéo", "Delabre", "mdelabre@gmail.com", "buyezfe", "1999-03-16", 0625896312, 40, "Clémenceau", "Montpellier", 34070);
INSERT INTO Client(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Abudeh", "Toutenji", "atutenji@gmail.com", "jusqdlz", "1994-01-31", 0614725836, 57, "Albert Camus", "Paris", 75000);

/*INSERTION DE FOURNISSEURS*/
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Jean", "Dupond", "blabla@gmail.com", "shtabro", "1991-02-17", 0784516295, 1, "Laruche", "Montpellier", 34090);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Jacques", "Durand", "nyehe@gmail.com", "shtabro", "1978-06-24", 0615487923, 6, "Cliché", "Montpellier", 34070);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Charles", "Manglier", "cmanglier@worldonline.fr", "shta3le", "1972-02-21", 0741852693, 140, "Christophe Coulombe", "Paris", 75001);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Paul", "Elouard", "pelouard2@gmail.fr", "bubles", "1982-06-25", 0625856545, 48, "Museau Laprin", "Bordeaux", 33100);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Jérémie", "Brillant", "jbrillant@gmail.fr", "bouje", "1990-05-09", 0784519562, 280, "Route de Mende", "Montpellier", 34090);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Jean-Louis", "König", "jkonig@gmail.fr", "zdfsdfae", "1980-03-05", 0415789564, 8, "Président Charles de gaulle", "Limoges", 87100);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Bruno", "Catharisos", "bcatharisos@gmail.fr", "ahoui", "1985-07-12", 0718374655, 78, "Saint-guillhem", "Montpellier", 34000);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Aurélien", "Brobidoux", "abrobidoux@gmail.fr", "ouiiiqjel", "1968-12-12", 0622558874, 15, "Maréchal", "Poitiers", 86000);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Marguerite", "Cousteaud", "mcousteaud@gmail.fr", "verfsqz", "1975-04-30", 0659988741, 12, "Saint-Pierre", "Toulouse", 31000);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Pierre", "Laroux", "plaroux@gmail.fr", "bufne", "1988-11-14", 0625169532, 8, "Galilée", "Lille", 59000);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Valentina", "Prussielli", "vprusielli@gmail.fr", "burrito", "1987-08-06", 0662604587, 26, "Albert Einstein", "Marseille", 13000);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Thibault", "Damour", "tdamour@gmail.fr", "tacos", "1986-07-05", 0662518495, 12, "Pierre Curie", "Toulouse", 31200);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Rémi", "Bruston", "rbruston@gmail.fr", "kebab", "1989-01-14", 0748159562, 36, "Dubois", "Carcassone", 11000);
INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Vincent", "Candide", "vcandide@gmail.fr", "panini", "1992-12-16", 0622994466, 96, "Niels Bohr", "Toulouse", 31400);

/*INSERTION DE PRODUITS ET LEURS RÉCOLTES*/
INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Tomates cerises", 2.25, "kg", 1); /*1*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(1, 15, "2018-06-01", "2018-06-15");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(1, 5, "2018-06-01", "2018-06-15");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(1, 30, "2018-06-05", "2018-06-17");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(1, 20, "2018-06-05", "2018-06-17");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Framboises", 3, "kg", 1); /*2*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(2, 10, "2018-06-01", "2018-06-17");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(2, 7, "2018-06-01", "2018-06-17");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(2, 23, "2018-06-05", "2018-06-30");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Vin rouge", 15, "L", 1); /*3*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(3, 17, "2018-06-05");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(3, 5, "2018-06-20");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(3, 3, "2018-06-30");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Vin blanc", 12, "L", 1); /*4*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(4, 11, "2018-06-05");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(4, 7, "2018-06-20");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(4, 7, "2018-06-30");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Concombres", 1.41, "piece", 1); /*5*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(5, 24, "2018-06-01", "2018-06-10");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(5, 10, "2018-06-02", "2018-06-22");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(5, 16, "2018-06-10", "2018-06-30");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Avocat", 2.5, "piece", 1); /*6*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(6, 27, "2018-06-01", "2018-06-10");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(6, 23, "2018-06-02", "2018-06-25");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Oignons", 0.5, "kg", 2); /*7*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(7, 20, "2018-06-01", "2018-06-10");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(7, 20, "2018-06-10", "2018-06-25");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Oranges", 1, "kg", 2); /*8*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(8, 10, "2018-06-02", "2018-06-11");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(8, 20, "2018-06-11", "2018-06-26");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Fromage chèvre", 2, "kg", 2); /*9*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(9, 20, "2018-06-03", "2018-06-21");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(9, 25, "2018-06-12", "2018-06-22");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Saucisses", 1.5, "kg", 2); /*10*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(10, 5, "2018-06-04", "2018-06-21");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(10, 25, "2018-06-14", "2018-06-24");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(10, 20, "2018-06-24", "2018-07-01");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Vin moelleux", 10, "L", 2); /*11*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(11, 15, "2018-06-05");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte) VALUES(11, 30, "2018-06-30");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Lait vache", 2.5, "L", 2); /*12*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(12, 10, "2018-06-05", "2018-06-25");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(12, 30, "2018-06-30", "2018-07-14");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Ananas", 2, "piece", 2); /*13*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(13, 10, "2018-06-05", "2018-06-25");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(13, 20, "2018-06-30", "2018-07-14");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(13, 5, "2018-06-01", "2018-06-20");

INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Pommes rouges", 2, "kg", 1); /*14*/
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(14, 20, "2018-06-05", "2018-06-26");
INSERT INTO Recolte(Recolte_id_produit, qte_recoltee, date_recolte, date_expiration) VALUES(14, 20, "2018-06-30", "2018-07-14");

-- INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Carottes", 1.47, "kg", 3); /*14*/
-- INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Miel", 8, "kg", 4); /*15*/
-- INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Fromage roquefort", 5.29, "kg", 6); /*16*/
-- INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Fromage blanc", 5.12, "kg", 8); /*17*/
-- INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Vin blanc", 20, "L", 9); /*18*/
-- INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Fromage camembert", 4.21, "kg", 12); /*19*/
-- INSERT INTO Produit(description, prix_produit, unite_stockage, Produit_id_fournisseur) VALUES("Fraises", 2.52, "kg", 14); /*20*/

/*INSERTION DE CONTENEURS*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 1, "barquette de 4kg de tomates cerises", 7, 4, 5); /*1*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 1, "barquette de 7kg de tomates cerises", 14, 7, 4); /*2*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 2, "barquette de 7kg de framboises", 17, 7, 4); /*3*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 3, "bouteille de 1.5 de vin rouge", 20, 1.5, 3); /*4*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 3, "bouteille de 2L de vin rouge", 25, 2, 3); /*5*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 4, "bouteille de 1L de vin blanc", 12, 1, 8); /*6*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 5, "barquette de 5 pièces de concombres", 5, 5, 7); /*7*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(1, 6, "barquette de 10 pièces d'avocat", 20, 10, 4); /*8*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(2, 8, "barquette de 3kg d'oranges", 2.5, 3, 5); /*9*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(2, 10, "barquette de 2kg de saucisses", 2.5, 2, 10); /*10*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(2, 11, "bouteille de 1L de vin moelleux", 10, 1, 12); /*11*/
INSERT INTO Conteneur(Conteneur_id_fournisseur, Conteneur_id_produit, description, prix_conteneur, qte_produit_contenue, qte_conteneur_stockee) VALUES(2, 12, "bouteille de 1.5 de lait vache", 2, 1.5, 10); /*12*/

/*INSERTION DE PANIERS*/
INSERT INTO Panier(Panier_id_fournisseur, description, prix_panier) VALUES(1, "barquette 4kg de tomates cerises x2 + barquette 7kg Framboises x1 (27 euros)", 27); /*1*/
INSERT INTO PanierRegroupeConteneur VALUES(1, 1, 2);
INSERT INTO PanierRegroupeConteneur VALUES(1, 3, 1);

INSERT INTO Panier(Panier_id_fournisseur, description, prix_panier) VALUES(1, "barquette 7kg de tomates cerises x2 + bouteille 2L de Vin rouge x2 (60 euros)", 60); /*2*/
INSERT INTO PanierRegroupeConteneur VALUES(2, 2, 2);
INSERT INTO PanierRegroupeConteneur VALUES(2, 5, 2);

INSERT INTO Panier(Panier_id_fournisseur, description, prix_panier, qte_panier_stockee) VALUES(1, "Concombres x3 + bouteille de vin blanc x2 (27.5 euros)", 27.5, 3); /*3*/
INSERT INTO PanierRegroupeConteneur VALUES(3, 6, 2);
INSERT INTO PanierRegroupeProduit VALUES(3, 5, 3);

INSERT INTO Panier(Panier_id_fournisseur, description, prix_panier, qte_panier_stockee) VALUES(2, "barquette de 2kg de saucisses x2 + 5kg d'oignons (6 euros)", 6, 3); /*4*/
INSERT INTO PanierRegroupeConteneur VALUES(4, 10, 2);
INSERT INTO PanierRegroupeProduit VALUES(4, 7, 5);

INSERT INTO Panier(Panier_id_fournisseur, description, prix_panier, qte_panier_stockee) VALUES(2, "bouteille de 1.5L de lait vache x2 + bouteille de 1L de vin moelleux x2 (23 euros)", 23, 3); /*5*/
INSERT INTO PanierRegroupeConteneur VALUES(5, 12, 2);
INSERT INTO PanierRegroupeConteneur VALUES(5, 11, 2);

/*INSERTION DE COOPÉRATIVES*/
INSERT INTO Cooperative(nom, description) VALUES("Hérault", "Vente de fruits et du vin");
INSERT INTO Cooperative(nom, description) VALUES("Midi Pyrénées", "Vente de fromages et du vin");

/*INSERTION DE POINTS DE COLLECTE*/
INSERT INTO PointCollecte(description, num_rue, nom_rue, ville, code_postal) VALUES("Gare Saint-Roch", 3, "Rue de la gare", "Montpellier", 34000);
INSERT INTO PointCollecte(description, num_rue, nom_rue, ville, code_postal) VALUES("Gare Matabiau", 8, "Marengo SNCF", "Toulouse", 31000);
INSERT INTO PointCollecte(description, num_rue, nom_rue, ville, code_postal) VALUES("Sortie Autoroute A41", 16, "Mosson", "Montpellier", 34000);
INSERT INTO PointCollecte(description, num_rue, nom_rue, ville, code_postal) VALUES("Capitole", 2, "Rue du Doyen-Gabriel-Marty", "Toulouse", 31042);

/*AFFILIATION DE FOURNISSEURS À DES COOPÉRATIVES*/
INSERT INTO AppartientCoop(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur) VALUES(1, 1);
INSERT INTO AppartientCoop(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur) VALUES(1, 2);
INSERT INTO AppartientCoop(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur) VALUES(1, 7);
INSERT INTO AppartientCoop(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur) VALUES(1, 13);
INSERT INTO AppartientCoop(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur) VALUES(2, 9);
INSERT INTO AppartientCoop(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur) VALUES(2, 12);
INSERT INTO AppartientCoop(AppartientCoop_id_cooperative, AppartientCoop_id_fournisseur) VALUES(2, 13);

/*CHOIX D'UN POINT DE COLLECTE PAR UNE COOPÉRATIVE*/
INSERT INTO ChoisitPC VALUES(1, 1, "2018-06-12");
INSERT INTO ChoisitPC VALUES(1, 1, "2018-06-20");
INSERT INTO ChoisitPC VALUES(1, 3, "2018-06-25");
INSERT INTO ChoisitPC VALUES(2, 2, "2018-06-15");
INSERT INTO ChoisitPC VALUES(2, 3, "2018-06-25");

/*CHOIX D'UN POINT DE COLLECTE PAR UN FOURNISSEUR*/
INSERT INTO ChoisitPCF VALUES(1, 3, "2018-06-20");
INSERT INTO ChoisitPCF VALUES(9, 1, "2018-06-12");
INSERT INTO ChoisitPCF VALUES(9, 3, "2018-06-20");
INSERT INTO ChoisitPCF VALUES(5, 1, "2018-06-12");
INSERT INTO ChoisitPCF VALUES(5, 2, "2018-06-16");
INSERT INTO ChoisitPCF VALUES(5, 4, "2018-06-17");

/*INSERTION DE COMMANDES et COMMANDE GLOBALES*/
INSERT INTO CommandeGlobale(ref_CG, CG_id_client) VALUES("CG1", 1);
INSERT INTO Commande(ref_commande, Commande_id_CG, Commande_id_fournisseur) VALUES("C11", 1, 1);
INSERT INTO InclutProduit VALUES(1, 14, 5, 2);
INSERT INTO InclutProduit VALUES(1, 6, 4, 2.5);
INSERT INTO InclutConteneur VALUES(1, 3, 2, 17);
INSERT INTO InclutConteneur VALUES(1, 2, 2, 14);
INSERT INTO InclutPanier VALUES(1, 3, 2, 27.5);

INSERT INTO Commande(ref_commande, Commande_id_CG, Commande_id_fournisseur) VALUES("C12", 1, 2);
INSERT INTO InclutProduit VALUES(2, 13, 2, 2);
INSERT INTO InclutProduit VALUES(2, 9, 2, 2);
INSERT INTO InclutConteneur VALUES(2, 10, 2, 2.5);
INSERT INTO InclutConteneur VALUES(2, 9, 2, 2.5);
INSERT INTO InclutPanier VALUES(2, 4, 2, 6);
INSERT INTO InclutPanier VALUES(2, 5, 2, 23);

-- /*INSERTION DE COMMUNICATION ENTRE UTILISATEURS*/
-- INSERT INTO CommuniqueC (CommuniqueC_id_client, CommuniqueC_id_fournisseur, date_communication, contenu) VALUES(10, 5, "2018-03-18", "Salut Brillant ! Ça va ?");
-- INSERT INTO CommuniqueC (CommuniqueC_id_client, CommuniqueC_id_fournisseur, date_communication, contenu) VALUES(10, 6, "2018-03-18", "Salut König ! Ça va ?");
-- INSERT INTO CommuniqueF (CommuniqueF_id_fournisseur1, CommuniqueF_id_fournisseur2, date_communication, contenu) VALUES(1, 2, "2018-03-18", "Alors ? qu'en penses-tu ?");
-- INSERT INTO CommuniqueF (CommuniqueF_id_fournisseur1, CommuniqueF_id_fournisseur2, date_communication, contenu) VALUES(1, 1, "2018-03-18", "Peux-je se parler ?");
-- INSERT INTO CommuniqueF (CommuniqueF_id_fournisseur1, CommuniqueF_id_fournisseur2, date_communication, contenu) VALUES(5, 7, "2018-03-18", "Alors ? on ouvre une Coop ?");
