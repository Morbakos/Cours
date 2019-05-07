#	Cours architecture réseau

Mail prof: mayero@lipn.univ-paris13.fr

## Cours

Qu'est ce qu'un réseau ?
Un réseau est un ensemble d'entités qui communiquent entres elles.

Différentes topologies:
	- Bus
	- Etoile
	- Anneau
	- Point à point

Type de réseau (ces technologies commencent à être obsolettes):
	- LAN : Local Area Network
	- MAN : Metropolitan Area Network
	- WAN : Wide Area Network

Modèle OSI (Open System Interconnection):

Machine A       | Protocole (PDU: Protocol Data Unit) | Machine B       |
:--------------:|:-----------------------------------:|:---------------:|
7: Application  | <--> 								  | 7: Application  |
6: Présentation | <--> 								  | 6: Présentation |
5: Session      | <--> 								  | 5: Session      |
4: Transport    | <--> 								  | 4: Transport    |
3: Réseau       | <--> 								  | 3: Réseau       |
2: Liaison      | <--> 								  | 2: Liaison      |
1: Physique     | <--> 								  | 1: Physique     |


Temps de transmission: Tt = n/D où 
	Tt = seconde, 
	n = nb de bits émis, 
	D = bits/s

Temps de propagation: Tp = l/Vp + retard où
	Tp = seconde,
	l = longueur du cable en mètres,
	Vp = vitesse de propagation en metre/seconde
	retard = temps bit

Débit: D = 1/Tb où
	D = débit en bits/s
	Tb = temps bit = durée d'1 bit en entrée (seconde)

Rapidité de modulation: R = 1/DELTA où 
	R = rapidité en bauds
	DELTA = durée entre 2 changements d'états

Si n bits par état alors DELTA = nTB
Donc D=nR

Valence V=2^R (nb de niveaux)
D = R log2 V (si V=2^n)

## Exercices

### Question
```
Schémas: Voir document word
```

### Enoncé
```On dispose d'un alphabet de 39 caractères```

#### Question
```a) Combien de bits au minimum devront être émis par caractères ?```

#### Réponse
```Pour coder 39 caractères, il faut 6 bits car 2^5<39<2^6```

#### Question
```b) On ne code plus sur des bits mais sur des trits. Pour le même alphabet, combien faut il de trits?```

#### Réponse
```Pour coder 39 caractères, il faut 4 trits car 3^3<39<3^4```

#### Question
```c) Avec un alphabet de n caractères et v valeurs distinctes ?```

#### Réponse
```
logv n
```


### Enoncé
```3) Codage 8b/6t```

#### Question
```a) Justifier le fait de pouvoir coder 8 bits en 6 trits```

#### Réponse
```Parce que 2^6 = 256 et 3^6 = 729```

#### Question
```b) Si Te est la durée d'un bit en entrée du codeur 8b/6t, combien vaut Ts, la durée d'un bit en sortie ?```

#### Réponse
```
On a : NeTe = NsTs
=> TS = (Ne*Te)/Ns = (8 Te)/6 = 4/3 Te 
```

#### Question
```c) En déduire la rapidité de modulation en sortie d'un codeur 8b/6t sachant qu'on lui fournit une entrée à 4Mbits/s```

#### Réponse
```
R = 1/DELTA
DELTA = Ts
R = 3/(4Te) où De 1/Te = 4Mbits/s
On déduit que Te = 4, on a donc
R = 3 Mbauds
```


## Rappels
```
loga b = [ln(b)]/[ln(a)]
si x = 2^Y alors y = log2 x
ln(ab) = ln(a) + ln(b)
ln(a^b) = b ln(a)
log(1) = 0
```