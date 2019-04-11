def cas(p):
    a_parcourir = 100
    time = 0
    parcouru = 0
    atom = 53*10**(-12)

    while(a_parcourir>atom) :
        time += 1
        x = p*a_parcourir
        parcouru+=x
        a_parcourir-=x

    return time

print(cas(1/3))
