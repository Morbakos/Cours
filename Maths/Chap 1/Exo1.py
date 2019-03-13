from math import *
import time

#Exo1

def exo1q1(n) :
    #u_n = 5*n+(-1)^n
    return 5*n+(-1)**n
#print(exo1q1(12))

def exo1q2(n) :
    if(n==0): return 7
    u=7
    compteur = 0
    
    while(compteur < n) :
        u = 2*u+1
        compteur+=1
    return u
#print(exo1q2(12))

def exo1q3(n) :
    u=17
    compteur = 0
    
    while(compteur < n) :
        u = (0.5)*u-19
        compteur+=1
    return u
#print(exo1q3(12))

def exo1q4(n) :
    u=1
    compteur = 0
    
    while(compteur < n) :
        u = 3*u-2
        compteur+=1
    return u
#print(exo1q4(12))

def exo1q5(n) :
    u=1
    compteur = 0
    
    while(compteur < n) :
        u = u/(2-u)
        compteur+=1
    return u
#print(exo1q5(12))

def exo1q6(n) :
    u=2
    compteur = 0
    
    while(compteur < n) :
        u = sqrt(2+u)
        compteur+=1
    return u
#print(exo1q6(12))

def exo1q7(n) :
    u=2
    compteur = 0
    
    while(compteur < n) :
        u = ((-1)**n)/u**2+1
        compteur+=1
    return u
#print(exo1q7(12))

def exo1q8v1(n) :
    u=dict()
    u[0]=0.5
    i = 1

    while(i <=n) :
        S = 0
        j = 0
        while(j <= i-1):
            S+=u[j]**2
            j+=1
        u[i]=sqrt(S)
        i+=1

    return u[n]
#print(exo1q8v1(0))
#print(exo1q8v1(1))
#print(exo1q8v1(2))
#print(exo1q8v1(12))


def exo1q8v2(n) :
    u = 0.5
    i = 1
    S = u**2
    while(i <= n) :
        u=sqrt(S)
        S+=u**2
        i+=1

    return u
#print(exo1q8v2(0))
#print(exo1q8v2(1))
#print(exo1q8v2(2))
#print(exo1q8v2(12))

def exo1q8v3(n) :
    u = 0.5
    while(n>1) :
        u=2*u**2
        u=sqrt(u)
        n-=1

    return u
#print(exo1q8v3(0))
#print(exo1q8v3(1))
#print(exo1q8v3(2))
#print(exo1q8v3(12))