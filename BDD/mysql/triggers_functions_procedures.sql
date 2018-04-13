/*
* @brief Creates functions, procedures, and triggers used on the tables of the database
* @author Bachar RIMA
*/

USE LARUCHE;

DELIMITER //

/*FONCTIONS*/
/*========*/
/*fonction de validation des emails*/
CREATE OR REPLACE FUNCTION checkEmail(email VARCHAR(50))
RETURNS CHAR(1) DETERMINISTIC
BEGIN
  IF email NOT REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9._-]@[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9]\\.[a-zA-Z]{2,4}$' THEN
  RETURN 'N';
  ELSE RETURN 'Y';
  END IF;
END;//

CREATE OR REPLACE FUNCTION checkAddress(numRue INT, nomRue VARCHAR(50), ville VARCHAR(50), codePostal INT)
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
  IF numRue <=0 THEN
  RETURN CONCAT(numRue, " est un numéro de rue invalide");
  ELSEIF nomRue NOT REGEXP "^[a-zA-ZÀ-ÿ]+([- ][a-zA-ZÀ-ÿ]+)*$" THEN
  RETURN CONCAT(nomRue, " est un nom de rue invalide");
  ELSEIF ville NOT REGEXP "^[a-zA-ZÀ-ÿ]+([- ][a-zA-ZÀ-ÿ]+)*$" THEN
  RETURN CONCAT(ville, " est un nom de ville invalide");
  ELSEIF codePostal NOT REGEXP "^([[:digit:]]{5})$" THEN
  RETURN CONCAT(codePostal, " est un code postale invalide");
  ELSE RETURN "adresse valide !";
  END IF;
END;//

CREATE OR REPLACE FUNCTION checkPortable(telPortable INT)
RETURNS CHAR(1) DETERMINISTIC
BEGIN
  IF telPortable NOT REGEXP "^[1-9]([-. ]?[0-9]{2}){4}$" THEN
  RETURN 'N';
  ELSE RETURN 'Y';
  END IF;
END;//

/*PROCEDURES*/
/*vérifier le mail, le portable et l'adresse d'un client*/
CREATE OR REPLACE PROCEDURE validateClient(idClient INT, email VARCHAR(50), telPortable INT, numRue INT, nomRue VARCHAR(50), ville VARCHAR(50), codePostal INT)
BEGIN
  DECLARE error_message VARCHAR(500);

  IF checkEmail(email) <> 'Y' THEN
    SET error_message = CONCAT(email, ", email de l'utilisateur ", idClient, " invalide !");
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = error_message;
  END IF;

  IF checkAddress(numRue, nomRue, ville, codePostal) <> "adresse valide !" THEN
    SET error_message = CONCAT("adresse de l'utilisateur ", idClient, " invalide ! : ", checkAddress(numRue, nomRue, ville, codePostal));
    SIGNAL SQLSTATE '45001' SET MYSQL_ERRNO = 30002, MESSAGE_TEXT = error_message;
  END IF;

  IF checkPortable(telPortable) <> 'Y' THEN
    SET error_message = CONCAT(telPortable, ", portable de l'utilisateur ", idClient, " invalide !");
    SIGNAL SQLSTATE '45002' SET MYSQL_ERRNO = 30003, MESSAGE_TEXT = error_message;
  END IF;
END;//

/*vérifier le mail, le portable et l'adresse d'un fournisseur*/
CREATE OR REPLACE PROCEDURE validateFournisseur(idFournisseur INT, email VARCHAR(50), telPortable INT, numRue INT, nomRue VARCHAR(50), ville VARCHAR(50), codePostal INT)
BEGIN
  CALL validateClient(idFournisseur, email, telPortable, numRue, nomRue, ville, codePostal);
END;//

/*TRIGGERS*/
/*========*/
/*TABLE CLIENT*/
/*valider un client avant de l'insérer*/
CREATE OR REPLACE TRIGGER before_insert_client
BEFORE INSERT ON Client
FOR EACH ROW
BEGIN
  CALL validateClient(NEW.id_client, NEW.email, NEW.tel_portable, NEW.num_rue, NEW.nom_rue, NEW.ville, NEW.code_postal);
END;//

/*valider un client avant de le mettre à jour*/
CREATE OR REPLACE TRIGGER before_update_client
BEFORE UPDATE ON Client
FOR EACH ROW
BEGIN
  CALL validateClient(NEW.id_client, NEW.email, NEW.tel_portable, NEW.num_rue, NEW.nom_rue, NEW.ville, NEW.code_postal);
END;//


/*TABLE FOURNISSEUR*/
/*=================*/
/*valider un fournisseur avant de l'insérer*/
CREATE OR REPLACE TRIGGER before_insert_fournisseur
BEFORE INSERT ON Fournisseur
FOR EACH ROW
BEGIN
  CALL validateFournisseur(NEW.id_fournisseur, NEW.email, NEW.tel_portable, NEW.num_rue, NEW.nom_rue, NEW.ville, NEW.code_postal);
END;//

/*valider un fournisseur avant de le mettre à jour*/
CREATE OR REPLACE TRIGGER before_update_fournisseur
BEFORE UPDATE ON Fournisseur
FOR EACH ROW
BEGIN
  CALL validateFournisseur(NEW.id_fournisseur, NEW.email, NEW.tel_portable, NEW.num_rue, NEW.nom_rue, NEW.ville, NEW.code_postal);
END;//


/*TABLE PRODUIT*/
/*=============*/
CREATE OR REPLACE TRIGGER before_insert_produit
BEFORE INSERT ON Produit
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);

  /*vérifier que l'unité de stockage est bien parmi celles prédéfinies*/
  IF NEW.unite_stockage NOT IN ("L", "kg", "piece") THEN
    SET error_message = CONCAT(NEW.unite_stockage, " est une unité de stockage invalide du produit ", NEW.id_produit, " ! (L, kg, piece)");
    SIGNAL SQLSTATE '45002' SET MYSQL_ERRNO = 30003, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que le prix d'un produit est strictement positif*/
  IF NEW.prix_produit <=0 THEN
    SET error_message = CONCAT(NEW.prix_produit, " euros est un prix invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45003' SET MYSQL_ERRNO = 30004, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité stockée n'est pas négative*/
  IF NEW.qte_produit_stockee <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_stockee, " est une quantité stockée invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité contenue n'est pas négative*/
  IF NEW.qte_produit_contenue <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_contenue, " est une quantité contenue invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité regroupée n'est pas négative*/
  IF NEW.qte_produit_regroupee <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_regroupee, " est une quantité regroupée invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité vendue n'est pas négative*/
  IF NEW.qte_produit_vendue <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_vendue, " est une quantité vendue invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER before_update_produit
BEFORE UPDATE ON Produit
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le prix d'un produit est strictement positif*/
  IF NEW.prix_produit <=0 THEN
    SET error_message = CONCAT(NEW.prix_produit, " euros est un prix invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45003' SET MYSQL_ERRNO = 30004, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité stockée n'est pas négative*/
  IF NEW.qte_produit_stockee <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_stockee, " est une quantité stockée invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité contenue n'est pas négative*/
  IF NEW.qte_produit_contenue <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_contenue, " est une quantité contenue invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité regroupée n'est pas négative*/
  IF NEW.qte_produit_regroupee <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_regroupee, " est une quantité regroupée invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité vendue n'est pas négative*/
  IF NEW.qte_produit_vendue <0 THEN
    SET error_message = CONCAT(NEW.qte_produit_vendue, " est une quantité vendue invalide du produit ", NEW.id_produit, " !");
    SIGNAL SQLSTATE '45004' SET MYSQL_ERRNO = 30005, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE RECOLTE*/
/*=============*/
CREATE OR REPLACE TRIGGER before_insert_recolte
BEFORE INSERT ON Recolte
FOR EACH ROW
BEGIN
  DECLARE dateRecolte, dateExpiration DATE;
  DECLARE error_message VARCHAR(500);

  SET dateRecolte = NEW.date_recolte;
  SET dateExpiration = NEW.date_expiration;
  /*vérifier que la date de récolte d'un produit est strictement inférieure à son date d'expiration*/
  IF dateExpiration <= dateRecolte THEN
    SET error_message = CONCAT("Produit ", NEW.Recolte_id_produit, " - date d'expiration : ", dateExpiration, " <= date de récolte : ", dateRecolte, " !");
    SIGNAL SQLSTATE '45005' SET MYSQL_ERRNO = 30006, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la date d'expiration d'une récolte d'un produit n'est pas déjà atteinte*/
  IF dateExpiration <= CURDATE() THEN
    SET error_message = CONCAT("Produit ", NEW.Recolte_id_produit, " - date d'expiration : ", dateExpiration, " <= date actuelle : ", CURDATE(), " !");
    SIGNAL SQLSTATE '45006' SET MYSQL_ERRNO = 30007, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité stockée d'un produit n'est pas négative ou nulle*/
  IF NEW.qte_recoltee <= 0 THEN
    SET error_message = CONCAT(NEW.qte_recoltee, " est une quantité récoltée invalide du produit ", NEW.Recolte_id_produit, " !");
    SIGNAL SQLSTATE '45007' SET MYSQL_ERRNO = 30008, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_insert_recolte
AFTER INSERT ON Recolte
FOR EACH ROW
BEGIN
  /*ajouter la quantité récolté d'un produit à la quantité stockée du produit*/
  UPDATE Produit
  SET qte_produit_stockee = qte_produit_stockee + NEW.qte_recoltee
  WHERE id_produit = NEW.Recolte_id_produit;
END;//


/*TABLE CONTENEUR*/
/*===============*/
CREATE OR REPLACE TRIGGER before_insert_conteneur
BEFORE INSERT ON Conteneur
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le prix d'un conteneur est strictement positif*/
  IF NEW.prix_conteneur<=0 THEN
    SET error_message = CONCAT(NEW.prix_conteneur, " euros est un prix invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45008' SET MYSQL_ERRNO = 30009, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité contenue d'un produit est strictement positif*/
  IF NEW.qte_produit_contenue<=0 THEN
    SET error_message = CONCAT(NEW.qte_produit_contenue, " est une quantité contenue invalide du produit ", NEW.Conteneur_id_produit, " dans le conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45009' SET MYSQL_ERRNO = 30010, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité stockée n'est pas négative*/
  IF NEW.qte_conteneur_stockee<=0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_stockee, " est une quantité stockée invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45010' SET MYSQL_ERRNO = 30011, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité regroupée n'est pas négative*/
  IF NEW.qte_conteneur_regroupee<0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_regroupee, " est une quantité regroupée invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45010' SET MYSQL_ERRNO = 30011, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité vendue n'est pas négative*/
  IF NEW.qte_conteneur_vendue<0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_vendue, " est une quantité vendue invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45010' SET MYSQL_ERRNO = 30011, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_insert_conteneur
AFTER INSERT ON Conteneur
FOR EACH ROW
BEGIN
  DECLARE qteProduitStockee FLOAT;
  DECLARE error_message VARCHAR(500);

  SET qteProduitStockee = (
    SELECT qte_produit_stockee
    FROM Produit
    WHERE id_produit = NEW.Conteneur_id_produit
  );
  /*vérifier qu'il existe assez du produit dans le stock pour qu'il puisse être contenu dans la quantité stockée du conteneur*/
  IF NEW.qte_produit_contenue * NEW.qte_conteneur_stockee <= qteProduitStockee THEN
    UPDATE Produit
    SET qte_produit_stockee = qte_produit_stockee - NEW.qte_produit_contenue * NEW.qte_conteneur_stockee,
    qte_produit_contenue = qte_produit_contenue + NEW.qte_produit_contenue * NEW.qte_conteneur_stockee
    WHERE id_produit = NEW.Conteneur_id_produit;
  ELSE
    SET error_message = CONCAT("impossible de contenir la quantité indiquée du produit ", NEW.Conteneur_id_produit, " dans la quantité stockée du conteneur ", NEW.id_conteneur, ": ", NEW.qte_produit_contenue * NEW.qte_conteneur_stockee, " > ", qteProduitStockee);
    SIGNAL SQLSTATE '45011' SET MYSQL_ERRNO = 30012, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER before_update_conteneur
BEFORE UPDATE ON Conteneur
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le nouveau prix d'un conteneur est strictement positif*/
  IF NEW.prix_conteneur<=0 THEN
    SET error_message = CONCAT(NEW.prix_conteneur, " euros est un prix invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45009' SET MYSQL_ERRNO = 30010, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la nouvelle quantité stockée n'est pas négative*/
  IF NEW.qte_conteneur_stockee <0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_stockee, " est une quantité stockée invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45010' SET MYSQL_ERRNO = 30011, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la nouvelle quantité regroupée n'est pas négative*/
  IF NEW.qte_conteneur_regroupee <0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_regroupee, " est une quantité contenue invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45010' SET MYSQL_ERRNO = 30011, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la nouvelle quantité vendue n'est pas négative*/
  IF NEW.qte_conteneur_vendue <0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_vendue, " est une quantité vendue invalide du conteneur ", NEW.id_conteneur, " !");
    SIGNAL SQLSTATE '45010' SET MYSQL_ERRNO = 30011, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_update_conteneur
AFTER UPDATE ON Conteneur
FOR EACH ROW
BEGIN
  DECLARE qteEnlevee, qteAjoutee, qteProduitStockee FLOAT;
  DECLARE error_message VARCHAR(500);

  /*si la quantité stockée du conteneur est diminuée*/
  IF NEW.qte_conteneur_stockee < OLD.qte_conteneur_stockee THEN
    /*si on a manuellement diminué la quantité stockée du conteneur*/
    IF (NEW.qte_conteneur_vendue = OLD.qte_conteneur_vendue AND NEW.qte_conteneur_regroupee = OLD.qte_conteneur_regroupee) THEN
      /*ajouter la quantité contenue du produit dans la quantité enlevée du conteneur à la quantité stockée du produit*/
      SET qteEnlevee = (OLD.qte_conteneur_stockee - NEW.qte_conteneur_stockee) * NEW.qte_produit_contenue;
      UPDATE Produit
      SET qte_produit_stockee = qte_produit_stockee + qteEnlevee,
      Produit.qte_produit_contenue = Produit.qte_produit_contenue - qteEnlevee
      WHERE id_produit = NEW.Conteneur_id_produit;
    END IF;
  ELSE
    /*si on a manuellement augmenté la quantité stockée du conteneur*/
    IF NEW.qte_conteneur_stockee > OLD.qte_conteneur_stockee THEN

      SET qteAjoutee = (NEW.qte_conteneur_stockee - OLD.qte_conteneur_stockee) * NEW.qte_produit_contenue;
      SET qteProduitStockee = (
        SELECT qte_produit_stockee
        FROM Produit
        WHERE id_produit = NEW.Conteneur_id_produit
      );
      /*vérifier qu'il existe assez du produit dans le stock pour qu'il puisse être ajouté dans la nouvelle quantité stockée du conteneur*/
      IF qteAjoutee <= qteProduitStockee THEN
        UPDATE Produit
        SET qte_produit_stockee = qte_produit_stockee - qteAjoutee,
        Produit.qte_produit_contenue = Produit.qte_produit_contenue + qteAjoutee
        WHERE id_produit = NEW.Conteneur_id_produit;
      ELSE
        SET error_message = CONCAT("impossible de contenir la quantité indiquée du produit ", NEW.Conteneur_id_produit, " dans la quantité stockée du conteneur ", NEW.id_conteneur, " : ", qteAjoutee, " > ", qteProduitStockee);
        SIGNAL SQLSTATE '45011' SET MYSQL_ERRNO = 30012, MESSAGE_TEXT = error_message;
      END IF;
    END IF;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_delete_conteneur
AFTER DELETE ON Conteneur
FOR EACH ROW
BEGIN
  DECLARE trouve INT;
  /*vérifier que le conteneur n'a pas été supprimé automatiquement en supprimant le produit contenu*/
  SET trouve = (
    SELECT EXISTS(
      SELECT id_produit
      FROM Produit
      WHERE id_produit = OLD.Conteneur_id_produit
    )
  );

  IF trouve = 1 THEN
    /*ajouter la quantité contenue du produit dans le conteneur supprimé au stock du produit*/
    UPDATE Produit
    SET qte_produit_stockee = qte_produit_stockee + (OLD.qte_conteneur_stockee * OLD.qte_produit_contenue),
    qte_produit_contenue = qte_produit_contenue - (OLD.qte_conteneur_stockee * OLD.qte_produit_contenue)
    WHERE id_produit = OLD.Conteneur_id_produit;
  END IF;
END;//


/*TABLE PANIER*/
/*===============*/
CREATE OR REPLACE TRIGGER before_insert_panier
BEFORE INSERT ON Panier
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le prix d'un conteneur est strictement positif*/
  IF NEW.prix_panier<=0 THEN
    SET error_message = CONCAT(NEW.prix_panier, " euros est un prix invalide du panier ", NEW.id_panier, " !");
    SIGNAL SQLSTATE '45012' SET MYSQL_ERRNO = 30013, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité stockée n'est pas négative*/
  IF NEW.qte_panier_stockee <=0 THEN
    SET error_message = CONCAT(NEW.qte_panier_stockee, " est une quantité stockée invalide du panier ", NEW.id_panier, " !");
    SIGNAL SQLSTATE '45013' SET MYSQL_ERRNO = 30014, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la quantité vendue n'est pas négative*/
  IF NEW.qte_panier_vendue <0 THEN
    SET error_message = CONCAT(NEW.qte_panier_vendue, " est une quantité vendue invalide du panier ", NEW.id_panier, " !");
    SIGNAL SQLSTATE '45013' SET MYSQL_ERRNO = 30014, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER before_update_panier
BEFORE UPDATE ON Panier
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le nouveau prix d'un conteneur est strictement positif*/
  IF NEW.prix_panier<=0 THEN
    SET error_message = CONCAT(NEW.prix_panier, " euros est un prix invalide du panier ", NEW.id_panier, " !");
    SIGNAL SQLSTATE '45012' SET MYSQL_ERRNO = 30013, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la nouvelle quantité stockée n'est pas négative*/
  IF NEW.qte_panier_stockee <0 THEN
    SET error_message = CONCAT(NEW.qte_panier_stockee, " est une quantité stockée invalide du panier ", NEW.id_panier, " !");
    SIGNAL SQLSTATE '45013' SET MYSQL_ERRNO = 30014, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la nouvelle quantité vendue n'est pas négative*/
  IF NEW.qte_panier_vendue <0 THEN
    SET error_message = CONCAT(NEW.qte_panier_vendue, " est une quantité vendue invalide du panier ", NEW.id_panier, " !");
    SIGNAL SQLSTATE '45013' SET MYSQL_ERRNO = 30014, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_update_panier
AFTER UPDATE ON Panier
FOR EACH ROW
BEGIN
  DECLARE cursor_QTE_ENLEVEE, cursor_QTE_C_ENLEVEE, cursor_QTE_AJOUTEE, cursor_QTE_C_AJOUTEE, qteProduitStockee FLOAT;
  DECLARE cursor_ID_PRODUIT, cursor_ID_CONTENEUR, produitTrouve, conteneurTrouve, qteConteneurStockee INT;
  DECLARE done INT DEFAULT FALSE;
  DECLARE error_message VARCHAR(500);

  DECLARE cursor_i CURSOR FOR SELECT produit, qteEnlevee FROM (
    SELECT RegroupeP_id_produit AS produit, qte_produit_regroupee * (OLD.qte_panier_stockee - NEW.qte_panier_stockee) AS qteEnlevee
    FROM PanierRegroupeProduit
    WHERE RegroupeP_id_panier = OLD.id_panier
  ) AS ProduitQteEnlevee;

  DECLARE cursor_j CURSOR FOR SELECT conteneur, QteCEnlevee FROM (
    SELECT RegroupeC_id_conteneur AS conteneur, qte_conteneur_regroupee * (OLD.qte_panier_stockee - NEW.qte_panier_stockee) AS QteCEnlevee
    FROM PanierRegroupeConteneur
    WHERE RegroupeC_id_panier = OLD.id_panier
  ) AS ConteneurqteEnlevee;

  DECLARE cursor_k CURSOR FOR SELECT produit, qteAjoutee FROM (
    SELECT RegroupeP_id_produit AS produit, qte_produit_regroupee * (NEW.qte_panier_stockee - OLD.qte_panier_stockee) AS qteAjoutee
    FROM PanierRegroupeProduit
    WHERE RegroupeP_id_panier = OLD.id_panier
  ) AS ProduitQteAjoutee;

  DECLARE cursor_n CURSOR FOR SELECT conteneur, QteCAjoutee FROM (
    SELECT RegroupeC_id_conteneur AS conteneur, qte_conteneur_regroupee * (NEW.qte_panier_stockee - OLD.qte_panier_stockee) AS QteCAjoutee
    FROM PanierRegroupeConteneur
    WHERE RegroupeC_id_panier = OLD.id_panier
  ) AS ConteneurqteAjoutee;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  SET produitTrouve = (
    SELECT EXISTS(
      SELECT RegroupeP_id_produit
      FROM PanierRegroupeProduit
      WHERE RegroupeP_id_panier = OLD.id_panier
    )
  );

  SET conteneurTrouve = (
    SELECT EXISTS(
      SELECT RegroupeC_id_conteneur
      FROM PanierRegroupeConteneur
      WHERE RegroupeC_id_panier = OLD.id_panier
    )
  );
  /*si la quantité stockée du panier est diminuée*/
  IF NEW.qte_panier_stockee < OLD.qte_panier_stockee THEN
    /*si on a manuellement diminué la quantité stockée du panier*/
    IF NEW.qte_panier_vendue = OLD.qte_panier_vendue THEN
      /*si le panier contient des produits, ajouter la quantité regroupée de chaque produit enlevé du panier à son stock correspondant*/
      IF produitTrouve = 1 THEN
        OPEN cursor_i;
        read_loop: LOOP
          FETCH cursor_i INTO cursor_ID_PRODUIT, cursor_QTE_ENLEVEE;

          IF done THEN
            LEAVE read_loop;
          END IF;

          UPDATE Produit
          SET qte_produit_stockee = qte_produit_stockee + cursor_QTE_ENLEVEE,
          qte_produit_regroupee = qte_produit_regroupee - cursor_QTE_ENLEVEE
          WHERE id_produit = cursor_ID_PRODUIT;
        END LOOP;
        CLOSE cursor_i;

        SET done = FALSE;
      END IF;
      /*si le panier contient des conteneurs, ajouter la quantité regroupée de chaque conteneur enlevé du panier à son stock correspondant*/
      IF conteneurTrouve = 1 THEN
        OPEN cursor_j;
        read_loop: LOOP
          FETCH cursor_j INTO cursor_ID_CONTENEUR, cursor_QTE_C_ENLEVEE;

          IF done THEN
            LEAVE read_loop;
          END IF;

          UPDATE Conteneur
          SET qte_conteneur_stockee = qte_conteneur_stockee + cursor_QTE_C_ENLEVEE,
          qte_conteneur_regroupee = qte_conteneur_regroupee - cursor_QTE_C_ENLEVEE
          WHERE id_conteneur = cursor_ID_CONTENEUR;
        END LOOP;
        CLOSE cursor_j;
      END IF;
    END IF;
  ELSE
    /*si on a manuellement augmenté la quantité stockée du panier*/
    IF NEW.qte_panier_stockee > OLD.qte_panier_stockee THEN
      /*si le panier contient des produits*/
      IF produitTrouve = 1 THEN
        OPEN cursor_k;
        read_loop: LOOP
          FETCH cursor_k INTO cursor_ID_PRODUIT, cursor_QTE_AJOUTEE;

          IF done THEN
            LEAVE read_loop;
          END IF;

          SET qteProduitStockee = (
            SELECT qte_produit_stockee
            FROM Produit
            WHERE id_produit = cursor_ID_PRODUIT
          );
          /*vérifier qu'il existe assez du produit dans le stock pour qu'il puisse être regroupé dans la nouvelle quantité stockée du panier*/
          IF cursor_QTE_AJOUTEE <= qteProduitStockee THEN
            UPDATE Produit
            SET qte_produit_stockee = qte_produit_stockee - cursor_QTE_AJOUTEE,
            qte_produit_regroupee = qte_produit_regroupee + cursor_QTE_AJOUTEE
            WHERE id_produit = cursor_ID_PRODUIT;
          ELSE
            SET error_message = CONCAT("impossible de regrouper la quantité indiquée du produit ", cursor_ID_PRODUIT, " dans la quantité stockée du panier ", OLD.id_panier, " : ", cursor_QTE_AJOUTEE, " > ", qteProduitStockee);
            SIGNAL SQLSTATE '45015' SET MYSQL_ERRNO = 30016, MESSAGE_TEXT = error_message;
          END IF;
        END LOOP;
        CLOSE cursor_k;

        SET done = FALSE;
      END IF;
      /*si le panier contient des conteneurs*/
      IF conteneurTrouve = 1 THEN
        OPEN cursor_n;
        read_loop: LOOP
          FETCH cursor_n INTO cursor_ID_CONTENEUR, cursor_QTE_C_AJOUTEE;

          IF done THEN
            LEAVE read_loop;
          END IF;

          SET qteConteneurStockee = (
            SELECT qte_conteneur_stockee
            FROM Conteneur
            WHERE id_conteneur = cursor_ID_CONTENEUR
          );
          /*vérifier qu'il existe assez du conteneur dans le stock pour qu'il puisse être regroupé dans la nouvelle quantité stockée du panier*/
          IF cursor_QTE_C_AJOUTEE <= qteConteneurStockee THEN
            UPDATE Conteneur
            SET qte_conteneur_stockee = qte_conteneur_stockee - cursor_QTE_C_AJOUTEE,
            qte_conteneur_regroupee = qte_conteneur_regroupee + cursor_QTE_C_AJOUTEE
            WHERE id_conteneur = cursor_ID_CONTENEUR;
          ELSE
            SET error_message = CONCAT("impossible de regrouper la quantité indiquée du conteneur ", cursor_ID_CONTENEUR, " dans la quantité stockée du panier ", OLD.id_panier, " : ", cursor_QTE_C_AJOUTEE, " > ", qteConteneurStockee);
            SIGNAL SQLSTATE '45017' SET MYSQL_ERRNO = 30018, MESSAGE_TEXT = error_message;
          END IF;
        END LOOP;
        CLOSE cursor_n;
      END IF;
    END IF;
  END IF;
END;//

CREATE OR REPLACE TRIGGER before_delete_panier
BEFORE DELETE ON Panier
FOR EACH ROW
BEGIN
  DECLARE cursor_QTE_REGROUPEE, cursor_QTE_C_REGROUPEE FLOAT;
  DECLARE cursor_ID_PRODUIT, cursor_ID_CONTENEUR, trouve INT;
  DECLARE done INT DEFAULT FALSE;

  DECLARE cursor_i CURSOR FOR SELECT produit, QteRegroupee FROM (
    SELECT RegroupeP_id_produit AS produit, qte_produit_regroupee * OLD.qte_panier_stockee AS QteRegroupee
    FROM PanierRegroupeProduit
    WHERE RegroupeP_id_panier = OLD.id_panier
  ) AS ProduitQteRegroupee;

  DECLARE cursor_j CURSOR FOR SELECT conteneur, QteCRegroupee FROM (
    SELECT RegroupeC_id_conteneur AS conteneur, qte_conteneur_regroupee * OLD.qte_panier_stockee AS QteCRegroupee
    FROM PanierRegroupeConteneur
    WHERE RegroupeC_id_panier = OLD.id_panier
  ) AS ConteneurQteRegroupee;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  /*vérifier que le panier contient des produits et qu'il n'a pas été supprimé automatiquement en supprimant l'un de ses produits regroupés*/
  SET trouve = (
    SELECT EXISTS(
      SELECT RegroupeP_id_produit
      FROM PanierRegroupeProduit
      WHERE RegroupeP_id_panier = OLD.id_panier
    )
  );

  IF trouve = 1 THEN
    OPEN cursor_i;
    read_loop: LOOP
      FETCH cursor_i INTO cursor_ID_PRODUIT, cursor_QTE_REGROUPEE;

      IF done THEN
        LEAVE read_loop;
      END IF;
      /*ajouter la quantité regroupée de chaque produit dans le panier supprimé à son stock correspondant*/
      UPDATE Produit
      SET qte_produit_stockee = qte_produit_stockee + cursor_QTE_REGROUPEE,
      qte_produit_regroupee = qte_produit_regroupee - cursor_QTE_REGROUPEE
      WHERE id_produit = cursor_ID_PRODUIT;
    END LOOP;
    CLOSE cursor_i;

    SET done = FALSE;
  END IF;

  SET trouve = (
    SELECT EXISTS(
      SELECT RegroupeC_id_conteneur
      FROM PanierRegroupeConteneur
      WHERE RegroupeC_id_panier = OLD.id_panier
    )
  );
  /*vérifier que le panier contient des conteneurs et qu'il n'a pas été supprimé automatiquement en supprimant l'un de ses conteneurs regroupés*/
  IF trouve = 1 THEN
    OPEN cursor_j;
    read_loop: LOOP
      FETCH cursor_j INTO cursor_ID_CONTENEUR, cursor_QTE_C_REGROUPEE;

      IF done THEN
        LEAVE read_loop;
      END IF;
      /*ajouter la quantité regroupée de chaque conteneur dans le panier supprimé à son stock correspondant*/
      UPDATE Conteneur
      SET qte_conteneur_stockee = qte_conteneur_stockee + cursor_QTE_C_REGROUPEE,
      qte_conteneur_regroupee = qte_conteneur_regroupee - cursor_QTE_C_REGROUPEE
      WHERE id_conteneur = cursor_ID_CONTENEUR;
    END LOOP;
    CLOSE cursor_j;
  END IF;
END;//


/*TABLE PANIERREGROUPEPRODUIT*/
/*===========================*/
CREATE OR REPLACE TRIGGER before_insert_panier_regroupe_produit
BEFORE INSERT ON PanierRegroupeProduit
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que la quantité regroupée du produit est strictement positive*/
  IF NEW.qte_produit_regroupee <= 0 THEN
    SET error_message = CONCAT(NEW.qte_produit_regroupee, " est une quantité regroupée invalide du produit ", NEW.RegroupeP_id_produit, " dans le panier ", NEW.RegroupeP_id_panier);
    SIGNAL SQLSTATE '45014' SET MYSQL_ERRNO = 30015, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_insert_panier_regroupe_produit
AFTER INSERT ON PanierRegroupeProduit
FOR EACH ROW
BEGIN
  DECLARE qteProduitRegroupee, qteProduitStockee FLOAT;
  DECLARE error_message VARCHAR(500);

  SET qteProduitRegroupee = (
    SELECT qte_produit_regroupee * qte_panier_stockee
    FROM PanierRegroupeProduit, Panier
    WHERE id_panier = RegroupeP_id_panier
    AND id_panier = NEW.RegroupeP_id_panier
    AND RegroupeP_id_produit = NEW.RegroupeP_id_produit
  );

  SET qteProduitStockee = (
    SELECT qte_produit_stockee
    FROM Produit
    WHERE id_produit = NEW.RegroupeP_id_produit
  );
  /*vérifier qu'il existe assez du produit dans le stock pour qu'il puisse être regroupé dans la quantité stockée du panier*/
  IF qteProduitRegroupee <= qteProduitStockee THEN
    UPDATE Produit
    SET qte_produit_stockee = qte_produit_stockee - qteProduitRegroupee,
    qte_produit_regroupee = qte_produit_regroupee + qteProduitRegroupee
    WHERE id_produit = NEW.RegroupeP_id_produit;
  ELSE
    SET error_message = CONCAT("impossible de regrouper la quantité indiquée du produit ", NEW.RegroupeP_id_produit, " dans la quantité stockée du panier ", NEW.RegroupeP_id_panier, " : ", qteProduitRegroupee, " > ", qteProduitStockee, ". Veuillez changer cette quantité et modifier la description du panier si nécessaire");
    SIGNAL SQLSTATE '45015' SET MYSQL_ERRNO = 30016, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE PANIERREGROUPECONTENEUR*/
/*===========================*/
CREATE OR REPLACE TRIGGER before_insert_panier_regroupe_conteneur
BEFORE INSERT ON PanierRegroupeConteneur
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que la quantité regroupée du conteneur est strictement positive*/
  IF NEW.qte_conteneur_regroupee <= 0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_regroupee, " est une quantité regroupée invalide du conteneur ", NEW.RegroupeC_id_conteneur, " dans le panier", NEW.RegroupeC_id_panier, " !");
    SIGNAL SQLSTATE '45016' SET MYSQL_ERRNO = 30017, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_insert_panier_regroupe_conteneur
AFTER INSERT ON PanierRegroupeConteneur
FOR EACH ROW
BEGIN
  DECLARE qteConteneurRegroupee, qteConteneurStockee FLOAT;
  DECLARE error_message VARCHAR(500);

  SET qteConteneurRegroupee = (
    SELECT qte_conteneur_regroupee * qte_panier_stockee
    FROM PanierRegroupeConteneur, Panier
    WHERE id_panier = RegroupeC_id_panier
    AND id_panier = NEW.RegroupeC_id_panier
    AND RegroupeC_id_conteneur = NEW.RegroupeC_id_conteneur
  );

  SET qteConteneurStockee = (
    SELECT qte_conteneur_stockee
    FROM Conteneur
    WHERE id_conteneur = NEW.RegroupeC_id_conteneur
  );
  /*vérifier qu'il existe assez du conteneur dans le stock pour qu'il puisse être regroupé dans la quantité stockée du panier*/
  IF qteConteneurRegroupee <= qteConteneurStockee THEN
    UPDATE Conteneur
    SET qte_conteneur_stockee = qte_conteneur_stockee - qteConteneurRegroupee,
    qte_conteneur_regroupee = qte_conteneur_regroupee + qteConteneurRegroupee
    WHERE id_conteneur = NEW.RegroupeC_id_conteneur;
  ELSE
    SET error_message = CONCAT("impossible de regrouper la quantité indiquée du conteneur ", NEW.RegroupeC_id_conteneur, " dans la quantité stockée du panier ", NEW.RegroupeC_id_panier, " : ", qteConteneurRegroupee, " > ", qteConteneurStockee, ". Veuillez changer cette quantité et modifier la description du panier si nécessaire");
    SIGNAL SQLSTATE '45017' SET MYSQL_ERRNO = 30018, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE POINTCOLLECTE*/
/*====================*/
CREATE OR REPLACE TRIGGER before_insert_point_collecte
BEFORE INSERT ON PointCollecte
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier l'adresse d'un point de collecte*/
  IF checkAddress(NEW.num_rue, NEW.nom_rue, NEW.ville, NEW.code_postal) <> "adresse valide !" THEN
    SET error_message = checkAddress(NEW.num_rue, NEW.nom_rue, NEW.ville, NEW.code_postal);
    SIGNAL SQLSTATE '45018' SET MYSQL_ERRNO = 30019, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE CHOISITPC*/
/*===============*/
CREATE OR REPLACE TRIGGER before_insert_choisit_pc
BEFORE INSERT ON ChoisitPC
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que la date de resérvation n'est pas déjà atteinte*/
  IF NEW.date_reservation < CURDATE() THEN
    SET error_message = CONCAT(date(NEW.date_reservation), " est une date de réservation invalide ! : ", date(NEW.date_reservation), " < date actuelle : ", CURDATE());
    SIGNAL SQLSTATE '45019' SET MYSQL_ERRNO = 30020, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE CHOISITPCI*/
/*================*/
CREATE OR REPLACE TRIGGER before_insert_choisit_pcf
BEFORE INSERT ON ChoisitPCF
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que la date de resérvation n'est pas déjà atteinte*/
  IF NEW.date_reservation < CURDATE() THEN
    SET error_message = CONCAT(date(NEW.date_reservation), " est une date de réservation invalide ! : ", date(NEW.date_reservation), " < date actuelle : ", CURDATE());
    SIGNAL SQLSTATE '45019' SET MYSQL_ERRNO = 30020, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier qu'une réservation à la même date du même point de collecte n'est pas déjà faite par une ruche affiliée au fournisseur*/
  IF (SELECT EXISTS
    (
      SELECT ChoisitPC_id_PC
      FROM ChoisitPC, AppartientCoop
      WHERE AppartientCoop_id_fournisseur = NEW.ChoisitPCF_id_fournisseur
      AND ChoisitPC_id_cooperative = AppartientCoop_id_cooperative
      AND ChoisitPC_id_PC = NEW.ChoisitPCF_id_PC
      AND date(ChoisitPC.date_reservation) = date(NEW.date_reservation)
    )
  ) = 1 THEN
    SET error_message = CONCAT("Le point de collecte ", NEW.ChoisitPCF_id_PC, " est déja réservé par l'une de vos ruches affiliées pour la date ", date(NEW.date_reservation));
    SIGNAL SQLSTATE '45020' SET MYSQL_ERRNO = 30021, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE COMMANDEGLOBALE*/
/*=====================*/
CREATE OR REPLACE TRIGGER before_insert_commande_globale
BEFORE INSERT ON CommandeGlobale
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le prix de la commande globale n'est pas négatif*/
  IF NEW.prix_total <0 THEN
    SET error_message = CONCAT(NEW.prix_total, " euros est un prix invalide de la commande globale ", NEW.id_CG, " !");
    SIGNAL SQLSTATE '45003' SET MYSQL_ERRNO = 30004, MESSAGE_TEXT = error_message;
  END IF;
  /*vérifier que la date de commande est la date actuelle*/
  IF date(NEW.date_achat) <> date(CURDATE()) THEN
    SET error_message = CONCAT("la date de la commande globale ", date(NEW.date_achat), " est invalide ! : ", date(NEW.date_achat), " =/= ", date(CURDATE()));
    SIGNAL SQLSTATE '45021' SET MYSQL_ERRNO = 30022, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER before_update_commande_globale
BEFORE UPDATE ON CommandeGlobale
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le nouveau prix de la commande globale n'est pas négatif*/
  IF NEW.prix_total <0 THEN
    SET error_message = CONCAT(NEW.prix_total, " euros est un prix invalide de la commande globale ", NEW.id_CG, " !");
    SIGNAL SQLSTATE '45003' SET MYSQL_ERRNO = 30004, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE COMMANDE*/
/*==============*/
CREATE OR REPLACE TRIGGER before_insert_commande
BEFORE INSERT ON Commande
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le prix de la commande n'est pas négatif*/
  IF NEW.prix_commande <0 THEN
    SET error_message = CONCAT(NEW.prix_commande, " euros est un prix invalide de la commande ", NEW.id_commande, " !");
    SIGNAL SQLSTATE '45003' SET MYSQL_ERRNO = 30004, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER before_update_commande
BEFORE UPDATE ON Commande
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que le nouveau prix de la commande n'est pas négatif*/
  IF NEW.prix_commande <0 THEN
    SET error_message = CONCAT(NEW.prix_commande, " euros est un prix invalide de la commande ", NEW.id_commande, " !");
    SIGNAL SQLSTATE '45003' SET MYSQL_ERRNO = 30004, MESSAGE_TEXT = error_message;
  END IF;
END;//


/*TABLE INCLUTPRODUIT*/
/*=====================*/
CREATE OR REPLACE TRIGGER before_insert_inclut_produit
BEFORE INSERT ON InclutProduit
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que la quantité commandée du produit est strictement positive*/
  IF NEW.qte_produit_commandee<=0 THEN
    SET error_message = CONCAT(NEW.qte_produit_commandee, " est une quantité commandée invalide du produit ", NEW.InclutPr_id_produit, " !");
    SIGNAL SQLSTATE '45022' SET MYSQL_ERRNO = 30023, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_insert_inclut_produit
AFTER INSERT ON InclutProduit
FOR EACH ROW
BEGIN
  DECLARE qteProduitStockee FLOAT;
  DECLARE idCG INT;
  DECLARE error_message VARCHAR(500);

  SET qteProduitStockee = (
    SELECT qte_produit_stockee
    FROM Produit
    WHERE id_produit = NEW.InclutPr_id_produit
  );
  /*vérifier qu'il existe assez du produit dans le stock pour qu'il puisse être commandé dans la quantité commandée dans la commande*/
  IF NEW.qte_produit_commandee <= qteProduitStockee THEN
    UPDATE Produit
    SET qte_produit_stockee = qte_produit_stockee - NEW.qte_produit_commandee,
    qte_produit_vendue = qte_produit_vendue + NEW.qte_produit_commandee
    WHERE id_produit = NEW.InclutPr_id_produit;
  ELSE
    SET error_message = CONCAT("impossible de commander la quantité indiquée du produit ", NEW.InclutPr_id_produit, " : ", NEW.qte_produit_commandee, " > ", qteProduitStockee);
    SIGNAL SQLSTATE '45023' SET MYSQL_ERRNO = 30024, MESSAGE_TEXT = error_message;
  END IF;
  /*ajouter le prix de la quantité commandée du produit à celui de la commande actuelle l'incluant*/
  UPDATE Commande
  SET prix_commande = prix_commande + NEW.qte_produit_commandee * NEW.prix_produit_commande
  WHERE id_commande = NEW.InclutPr_id_commande;

  /*ajouter le prix de la quantité commandée du produit à celui de la commande globale l'incluant*/
  SET idCG = (
    SELECT DISTINCT id_CG
    FROM CommandeGlobale, Commande
    WHERE id_CG = Commande_id_CG
    AND id_commande = NEW.InclutPr_id_commande
  );

  UPDATE CommandeGlobale
  SET prix_total = prix_total + NEW.qte_produit_commandee * NEW.prix_produit_commande
  WHERE id_CG = idCG;
END;//


/*TABLE INCLUTCONTENEUR*/
/*=====================*/
CREATE OR REPLACE TRIGGER before_insert_inclut_conteneur
BEFORE INSERT ON InclutConteneur
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que la quantité commandée du conteneur est strictement positive*/
  IF NEW.qte_conteneur_commandee<=0 THEN
    SET error_message = CONCAT(NEW.qte_conteneur_commandee, " est une quantité commandée invalide du conteneur ", NEW.InclutC_id_conteneur, " !");
    SIGNAL SQLSTATE '45022' SET MYSQL_ERRNO = 30023, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_insert_inclut_conteneur
AFTER INSERT ON InclutConteneur
FOR EACH ROW
BEGIN
  DECLARE qteConteneurStockee FLOAT;
  DECLARE idCG INT;
  DECLARE error_message VARCHAR(500);

  SET qteConteneurStockee = (
    SELECT qte_conteneur_stockee
    FROM Conteneur
    WHERE id_conteneur = NEW.InclutC_id_conteneur
  );
  /*vérifier qu'il existe assez du conteneur dans le stock pour qu'il puisse être commandé dans la quantité commandée dans la commande*/
  IF NEW.qte_conteneur_commandee <= qteConteneurStockee THEN
    UPDATE Conteneur
    SET qte_conteneur_stockee = qte_conteneur_stockee - NEW.qte_conteneur_commandee,
    qte_conteneur_vendue = qte_conteneur_vendue + NEW.qte_conteneur_commandee
    WHERE id_conteneur = NEW.InclutC_id_conteneur;
  ELSE
    SET error_message = CONCAT("impossible de commander la quantité indiquée du conteneur ", NEW.InclutC_id_conteneur, " : ", NEW.qte_conteneur_commandee, " > ", qteConteneurStockee);
    SIGNAL SQLSTATE '45023' SET MYSQL_ERRNO = 30024, MESSAGE_TEXT = error_message;
  END IF;
  /*ajouter le prix de la quantité commandée du conteneur à celui de la commande actuelle l'incluant*/
  UPDATE Commande
  SET prix_commande = prix_commande + NEW.qte_conteneur_commandee * NEW.prix_conteneur_commande
  WHERE id_commande = NEW.InclutC_id_commande;

  /*ajouter le prix de la quantité commandée du conteneur à celui de la commande globale l'incluant*/
  SET idCG = (
    SELECT DISTINCT id_CG
    FROM CommandeGlobale, Commande
    WHERE id_CG = Commande_id_CG
    AND id_commande = NEW.InclutC_id_commande
  );

  UPDATE CommandeGlobale
  SET prix_total = prix_total + NEW.qte_conteneur_commandee * NEW.prix_conteneur_commande
  WHERE id_CG = idCG;
END;//

/*TABLE INCLUTPANIER*/
/*=====================*/
CREATE OR REPLACE TRIGGER before_insert_inclut_panier
BEFORE INSERT ON InclutPanier
FOR EACH ROW
BEGIN
  DECLARE error_message VARCHAR(500);
  /*vérifier que la quantité commandée du panier est strictement positive*/
  IF NEW.qte_panier_commandee <=0 THEN
    SET error_message = CONCAT(NEW.qte_panier_commandee, " est une quantité commandée invalide du panier ", NEW.InclutPa_id_panier, " !");
    SIGNAL SQLSTATE '45022' SET MYSQL_ERRNO = 30023, MESSAGE_TEXT = error_message;
  END IF;
END;//

CREATE OR REPLACE TRIGGER after_insert_inclut_panier
AFTER INSERT ON InclutPanier
FOR EACH ROW
BEGIN
  DECLARE qtePanierStockee FLOAT;
  DECLARE idCG INT;
  DECLARE error_message VARCHAR(500);

  SET qtePanierStockee = (
    SELECT qte_panier_stockee
    FROM Panier
    WHERE id_panier = NEW.InclutPa_id_panier
  );
  /*vérifier qu'il existe assez du panier dans le stock pour qu'il puisse être commandé dans la quantité commandée dans la commande*/
  IF NEW.qte_panier_commandee <= qtePanierStockee THEN
    UPDATE Panier
    SET qte_panier_stockee = qte_panier_stockee - NEW.qte_panier_commandee,
    qte_panier_vendue = qte_panier_vendue + NEW.qte_panier_commandee
    WHERE id_panier = NEW.InclutPa_id_panier;
  ELSE
    SET error_message = CONCAT("impossible de commander la quantité indiquée du panier ", NEW.InclutPa_id_panier, " : ", NEW.qte_panier_commandee, " > ", qtePanierStockee);
    SIGNAL SQLSTATE '45023' SET MYSQL_ERRNO = 30024, MESSAGE_TEXT = error_message;
  END IF;
  /*ajouter le prix de la quantité commandée du panier à celui de la commande actuelle l'incluant*/
  UPDATE Commande
  SET prix_commande = prix_commande + NEW.qte_panier_commandee * NEW.prix_panier_commande
  WHERE id_commande = NEW.InclutPa_id_commande;

  /*ajouter le prix de la quantité commandée du panier à celui de la commande globale l'incluant*/
  SET idCG = (
    SELECT DISTINCT id_CG
    FROM CommandeGlobale, Commande
    WHERE id_CG = Commande_id_CG
    AND id_commande = NEW.InclutPa_id_commande
  );

  UPDATE CommandeGlobale
  SET prix_total = prix_total + NEW.qte_panier_commandee * NEW.prix_panier_commande
  WHERE id_CG = idCG;
END;//

DELIMITER ;
