# Version:

## Question 1: 
```
context Chambre
inv: self.etage <> 13

context SalleDeBain
inv: self.etage <>13
```

## Réponse:
```
Pour la Chambre et la salle de bain, l'étage ne doit pas être 13
```


## Question 2:
```
context Chambre
inv: (client->size()<=nombreDeLits)
	or (client->size()=nombreDeLits+1 and
		client->exists(p:Personne | p.age < 4))
```

## Réponse:
```
Il faut qu'il y est autant de lit que de clients **ou** il y a un lit de plus que de clients et dans les clients il en existe au moins un tel que son âge est < à 4.
```


## Question 3:
```
context Hotel
inv: self.chambre->forAll(c:Chambre | c.etage<=self.etageMax and c.etage>=self.etageMin)
```

## Réponse:
```
Pour toutes les chambres elles doivent être inférieur ou égale à l'étage maximum et supérieur ou égale à l'étage minimum
```


## Question 4:
```
context Hotel
inv: Sequence{etageMin.etageMax}->forAll(i:Integer | if i<>13 then self.chambre->select(c|c.etage=i)->notEmpty() endif)
```

## Réponse:
```

```


## Question 5:
```
context Chambre::repeindre(c:Couleur)
pre: client->isEmpty()
post: prix = prix@pre*1.1
```

## Réponse:
```
Si la chambre est vide alors elle est repeinte de la couleur c. Après avoir été repeinte, le prix de la chambre est multiplié par 1.1
```


## Question 6:
```
context SalleDeBains::utiliser(p:Personne)
pre: if chambre->notEmpty()
		then chambre.client->include(p)
		else p.chambre.etage=self.etage
	endif
post: nbUtilisateurs=nbUtilisateurs@pre+1
```

## Réponse:
```

```