# Exo 1

## 1.a)
```
allerAuDebut(listeSource)
allerAuDebut(listeDestination)

pour tout elem dans listeSource
{
    copier = true
    
    allerAuDebut(listeDestination)
    pour tout el dans listeDestination
    {
        Si elem == el
        {
            copier = false
        }
    }

    si copier
    {
        listeDestination.ajouter(elem)
    }
}
```

## 1.b)
```
listeSource.allerAuDebut()
listeDestination.allerAuDebut()

pour tout elem dans listeSource
{
    copier = true
    
    listeDestination.allerAuDebut()
    pour tout el dans listeDestination
    {
        Si el.equals(elem)
        {
            copier = false
        }
    }

    si copier
    {
        listeDestination.ajouter(new elem)
    }
}
```

# Exo 2

## Insérer
```
Si repereCel.suivant != null
{
    repereCel.suivant.setPrecedent(nouvelleCel)
    nouvelleCel.setSuivant(repereCel.suivant)
    repereCel.setSuivant(nouvelleCel)
}
nouvelleCel.setPrecedent(repereCel)
repereCel.setSuivant(nouvelleCel)
```

## Supprimer
```
Si repereCel.suivant != null
{
    repereCel.precedent.setSuivant(repereCel.suivant)
    repereCel.suivant.setPrécédent(repereCel.precedent)
    repeceCel.setSuivant(null)
}
sinon
{    
    repereCel.precedent.setSuivant(null)
}
repereCel.setPrecedent(null)
```

# Exo 3

## PileCellule
```java
public class PileCellule implements Pile
{
    private Cellule cell;

    public PileCellule(Object item)
    {
        this.cell = new Cellule(item);
    }

    public boolean estVide()
    {
        return cell == null;
    }

    public void empiler(Object o)
    {
        c = new Cellule o;
        c.setSuivant(this.cell);
        this.cell = c;
    }

    public Object depiler()
    {
        res = this.cell.getElement();
        c = this.cell.getSuivant();
        this.cell = c;
        return res;
    }
}
```

## FileCellule
```java
public class FileCellule implements File
{
    
}
```