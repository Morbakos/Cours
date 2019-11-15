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


# TD 3

```java
public class MaListeExtremite implements ListeCurseur
{
    private ListeCurseur liste;

    public MaListeExtremite()
    {}

    public boolean estVide()
    {
        liste.allerAuDebut();
        return liste.estEnFin();
    }

    public Object voirTete() throws Exception
    {
        liste.allerAuDebut();
        liste.voirSuivant();
    }

    public Object voirEnQueue() throws Exception
    {
        int i = 0;
        int j = 0;
        liste.allerAuDebut();
        while (!liste.estEnFin())
        {
            liste.avancer();
            i++;
        }

        liste.allerAuDebut();
        
        while(j < i-1)
        {
            liste.avancer();
            j++;
        }

        Object data = liste.voirSuivant();
        return data;
    }    

    public void rajouterEnTete(Object item)
    {
        liste.allerAuDebut();
        liste.ajouter(item);
    }

    public Object retirerEnTete() throws Exception
    {
        liste.allerAuDebut();
        Object data = liste.voirSuivant();
        liste.supprimer();
        return data;
    }

    public void rajouterEnQueue(Object item)
    {
        while (!liste.estEnFin())
        {
            liste.avancer();
        }
        liste.ajouter(item);
    }

    public Object retirerEnQueue() throws Exception
    {
        Object data = liste.voirEnQueue();
        liste.supprimer();
        return data;
    }    

    public String toString()
    {
        String s = "";
        liste.allerAuDebut();
        while (!liste.estEnFin()) {
            s = s + liste.voirSuivant().toString() + "\n";
        }
        return s;
    }
}
```

```java
public class MaListeExtremiteC implements Cellule
{
    private Cellule cellule;

    public MaListeExtremiteC()
    {}

    public MaListeExtremiteC(Object[] tabSource)
    {
        this.cellule = new Cellule(tabSource[0]);
        Cellule cell = this.cellule;
        for (int i = 0; i <= tabSource.length; i ++) {
            cell.setSuivant(new Cellule(tabSource[i]));
            cell = cell.getSuivant();
        }
    } 

    public boolean estVide()
    {
        return this.cellule == null;
    }

    public Object voirTete() throws Exception
    {
        return this.cellule.getElement();
    }

    public Object voirEnQueue() throws Exception
    {
        Cellule c = this.cellule;
        while (c.getSuivant() != null )
        {
            c = c.getSuivant();
        }

        return c.getElement();
    }    

    public void rajouterEnTete(Object item)
    {
        Cellule cell = new Cellule(item);
        cell.setSuivant(this.cellule);
        this.cellule = cell;
    }

    public Object retirerEnTete() throws Exception
    {

        Object data = this.cellule.getElement();
        Cellule cell = this.cellule.getSuivant();
        this.cellule.setSuivant(null);
        this.cellule = cell;
        return data;
    }

    public void rajouterEnQueue(Object item)
    {
        Cellule c = this.cellule;
        while (!c.getSuivant() != null )
        {
            c = c.getSuivant();
        }

        c.setSuivant(new Cellule(item));
    }

    public Object retirerEnQueue() throws Exception
    {
        Cellule c = this.cellule;
        while (!c.getSuivant().getSuivant() != null )
        {
            c = c.getSuivant();
        }

        c.getSuivant.setSuivant(null);
        return c.getElement();
    }    

    public String toString()
    {
        String s = "";
        Cellule c = this.cellule;
        while (!c.getSuivant() != null) {
            s = s + c.getElement().toString() + "\n";
            c = c.getSuivant();
        }
        return s;
    }
}
```