from math import *
import os

def gardner(augmentation_elastique):
    taille = 100
    escargot = 0.0
    h = 0
    #Un tour de boucle = une heure
    while(escargot < taille):
        h+=1
        
        #Escargot avance
        escargot+=1
        p = escargot/taille

        #Geant tire sur elastique
        taille+=augmentation_elastique
        escargot=p*taille

        os.system("cls")
        print("Position de l'escargot :",escargot)
        print("Taille de l'elastique:",taille)
        print("Reste a parcourir:",taille-escargot)
        print("A parcouru:",p*100)

    print(h)

print gardner(6)
