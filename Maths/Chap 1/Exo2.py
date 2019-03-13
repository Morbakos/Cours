from math import *
import time

def exo2q1v1(epsilon) :
	n=2.0
	while(True) :
		u=2*n/(n+(-1)**n)
		if(abs(u-2)<epsilon) : return n
		n+=1

def exo2q1v2(epsilon) :
	n = 2.0
	un=1
	while(True) :
		u=2*n/(n+un)
		un=un*(-1)
		if(abs(u-2)<epsilon) : return n
		n+=1

#top = time.time()
#print(exo2q1v1(0.0000001))
#print(top)
#top = time.time()
#print(exo2q1v2(0.0000001))
#print(top)


def exo2q2(epsilon) :
	n=2.0
	while(True) :
		u=2*n/(n+(-1)**n)
		if(abs(u-2)<epsilon) : return n
		n+=1
print(exo2q2(0.0000001))