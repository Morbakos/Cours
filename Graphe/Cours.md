# Cours de graphe

## Graphes non-orientés

Définition
==========
Un graphe est la donnée :
	- d'un ensemble V dont les éléments sont appelés "sommets"
	- d'une partie E de P(V) à deux éléments **distints**
		- V = sommets(G)
		- E = arrêtes(G)

Exemple
=======
A ajouter



## Graphes orientés

Définition
==========
Données
	- D'un ensemble de sommets V
	- d'un ensemble d'arcs
	(x,y) = arc de x vers y
	*---->*
	x	  y

Exemple
=======
A ajouter

## Exos 

```
X(Zn) = {2 si n pair 
         3 si n impair}

TD N°3 Graphes et langage
Exercice 1:
Le nombre chromatique est de 3 donc il faut 3 couleurs

//
Exercice 2:
Le graphe (cf polycopié) est planaire car on peut certe voir des droites se couper mais les arêtes ne se coupent pas, 
la représentation n'est pas planaire mais le graphe l'est

L'algorithme de Brélaz fournit un coloriage à 3 couleurs.
Donc X(G) <= 3

Par ailleurs, le sous-graphe {a,b,c} est un K3

Donc 3 = X(K3) <= X(G)
Donc X(G) = 3
//

Exercice 3:
Le graphe est planaire (il suffit d'élargir les arêtes {b,e} et {b,d} autour du graphe).
//

Exercice 4:

```

couleur|3|1|1|1|3|2|3|2|
|:-:|:-:|:-:|:-:|:-:|:-:|:--:|:-:|:-:|
||ALG|ANA|ANG|COM|GRA|JAVA|PHP|RES|
||3|4|3|1|2|4|2|3|
||1||3|1|2|1|1|1|


# Chapitre 5: Carquois sans circuit

## Définition
Un carquois est sans circuit si ses seules circuits (chemins fermés) sont de longueur nulle

## Définition
Une numérotation des sommets Som(G) numérotée N.
On dit que c'est une bonne numérotation si  pour tout(x,y) N(x)<N(y)

### Proposition
Si un graphe possède une bonne numérotation alors il est sans circuit.

### Preuve
Supposons qu'il existe un circuit x0...xn avec n>=1

N(x0)<N(x1)<N(x2)<N(xn) = N(x0)

On en déduit que N(x0 | N(x0)) absurde. Donc il n'y a pas de circuit si lg>=1

1 --> 2 -->4
  --> 3 ---^

Bonne numérotation

### Remarque
Si un carquois est muni d'une bonne numérotation, la matrice est triangulaire supérieure stricte

  1 2 3 4
1 0 1 1 0
2 0 0 0 0
3 0 0 0 0
4 0 0 0 0