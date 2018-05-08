# CourtCircuit
Le circuit court est en pleine expansion. Les clients cherchent des produits frais minimisant les étapes de processing, tandis que les producteurs cherchent à se libérer des centrales d’achat et des intermédiaires de la distribution.

Les producteurs se regroupent pour ouvrir et diversifier leur offre : un maraicher, un vigneron, un fromager et un boulanger par exemple. Un point de collecte de commandes prépayées est ensuite défini.

Le projet consiste à concevoir le site web client front et back office (mise à jour des stocks mis en vente et prise de commande par les clients versus organisation de la logistique de préparation des commande, facturation, et redistribution).

# Installation et Utilisation pour Tester les Composants du site
## installation et utilisation de l'interface graphique
Pour tester l'interface graphique du site, il faut avoir installé au préalable node et npm. les deux seront installés  si vous procédez à  l'installation de node.

### Lien d'installation
- [Lien d'installation](https://nodejs.org/en/download/)

Une fois que node et npm installés, vous devez :
#### Si vous voulez utiliser l'archive tar 

1. créer un dossier qui contiendra l'application : `mkdir CourtCircuit`
2. copier l'archive téléchargé dans le dossier de l'application : `cp code.tar.gz CourtCircuit/` 
3. extraire le contenu de tar.gz : `tar -xvzf code.tar.gz`
4. installer les modules dont l'application dépend : `npm install`
5. démarrer l'application : `npm start`

#### Si vous voulez faire un git clone  
1. créer un dossier qui contiendra l'application : `mkdir CourtCircuit`
2. Exécuter le clonage : ` git clone https://github.com/otho009/LaRuche.git`
3. Aller dans le dossier main-app  : `cd main-App`
4. installer les modules dont l'application dépend : `npm install`
5. démarrer l'application : `npm start`


Vous serez redirigé vers le navigateur où l'interface graphique sera affichée.

## Installation et utilisation du serveur
Une fois que vous avez extrait l'archive du code :
1. Rentrez dans dans le dossier `./server` depuis la racine de l'application : `cd /server`
2. Installer les modules dont le serveur dépend : `npm install`
3. Démarrer le serveur : `npm start`

Votre serveur sera alors mis en marche en attendant des requêtes d'un client

## Installation et utilisation de la base de données
Une fois que vous avez extrait l'archive du code :
1. Rentrez dans le dossier `/sql` depuis la racine de l'apllication : `cd /server`
2. lancer mysql ou mariadb dans le terminal.
3. exécuter les fichiers sql pour créer la base de données, les tables, les triggers/procédures/fonctions, et remplir les tables avec des données pour la tester :
  * `mysql> \. db_creation.sql`
  * `mysql> \. tables_creation.sql`
  * `mysql> \. triggers_functions_procedures.sql`
  * `mysql> \. data.sql`

Votre base de données sera ainsi créée et contient les tables et les données de l'application que vous pouvez tester via PHPMyAdmin

## Remarque
Pous pouvez aussi récupérer l'ensemble des fichiers depuis notre [lien GitHub](https://github.com/otho009/LaRuche)
