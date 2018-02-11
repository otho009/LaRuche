Bonjour à toutes et à tous.
Je m'appelle Othmane, et voici Wissem et Bachar.
aujourd'hui nous allons vous faire la présentation de notre projet intitulé "la ruche".

dans cette présentation, nous allons tout d'abord commencer par faire une petite introduction, ensuite nous parlerons de la problematique et méthodologie de résolution. apres cela, nous aborderons la conception ainsi que les outils d'implémentation.  et finalement nous ferons une conclusion. 

Alors ce projet s'incrit dans le cadre, d'un module de projet annuel faisant partie de la formation CMI.
notre encadrante pédagogique est madame AEB, et notre encadrant est mr bourreau.


Avec la présence de plus en plus forte du développement durable, le comportement du consommateur évolue et cherche davantage de proximité et de transparence. Face à ce constat, de nouveaux modes de distribution apparaissent comme celui du circuit-court.

On parle de circuit court, lorsqu’on limite les intermédiaires entre l’agriculteur et le consommateur.

- Les circuits courts sont de plus en plus sollicités par les consommateurs, soucieux de manger local et frais sans faire trop de kilomètres
- mais aussi par les producteurs qui bénificie d'une meilleure maitrise du prix de vente et des débouchés commerciaux de leur productions


## Outils de conception utilisés.
Lors de la conception, nous avons eu recours à plusieurs outils de conception. notamment des diag de cas d'usage, un modele ea, et un schéma de bdd ainsi qu'un storyboard.

Nous avons également utilisé des User Stories, des requis fournis par les clients..

et sur les quelles les activités de développement s'organiseront. 
les user stories doivent respecter cette syntaxe: 
Nous vous présenterons un exemple dans les parties suivantes. 

## React
### React.js 
Nous avons choisi d'utiliser Reacte  une librairie JavaScript, créée par Facebook, utiliséeuniquement pour le côté « vue »dans le paradigme MVC.
### Reconciliation
Pour agir sur l’affichage dans le navigateur, React utilise un système de DOM virtuel, combiné à un algorithme de réconciliation. Concrètement, chaque élément du DOM ainsi que son état dans le DOM physique du navigateur est répercuté dans un DOM virtuel construit par React. 

Quand une modification survient, du côté du navigateur (l’utilisateur clique sur un bouton (1)) cela déclenche un événement (2) que React écoute et utilise son algorithme pour calculer la différence entre le DOM physique et le DOM virtuel (3). Il génère ainsi un certain nombre d’opérations à effectuer pour réconcilier ces deux états, les synchroniser, puis applique (4) ces modifications grâce à l’API DOM du navigateur.

### JSX
Nous comptons utiliser l'extension JSX qui facilite la définition du rendu des composants React.













# Conception
## Côté client
Alors en ce qui concerne la partie client
Une fois inscrit un utilisateur de type client,aura l'opportunité de voir dans quelle ruche il fait partie  et donc les fournisseurs qui y font partie.
il pourra également faire des recherches de produits selon plusieurs paramètres(Type, prix,distance...)
- s'inscrire/créer un compte
- Consulter la carte des ruches, pour distinguer les ruches dont il fait partie.
- rechercher des produits en utilisant plusieurs type de paramètres (Type, prix,avis, distance...)
- consulter le profil d'un fournisseur
- pouvoir communiquer avec ce fournisseur 
- Réaliser une commande au prés d'un fournisseur 
- Choisir une date de récolte parmi celles proposées par le fournisseur 
- Choisir un moyen de réglement 
- recevoir une facture détaillé
- Donner un avis sur un produit acheté. 

- diagramme fonctionnalités page d'accueil 
