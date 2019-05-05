from math import *

def function(t):
    return 1/(t+1)

def function2(t):
    return 0.5*t*t-3*t+9/2

def function3(t):
    return 1/2

def correction(a,b,n, fnc):
    larg = (b-a)/n
    som = 0
    k=0
    
    while(k<n):
        xk = a+k*larg
        long = fnc(xk)
        som += long*larg
        k += 1

    return som

I1 = correction(0,1,10**5, function)
I2 = correction(2,3,10**5, function2)
I3 = correction(1,2,10**5, function3)
print(I1)
print(I2)
print(I3)
