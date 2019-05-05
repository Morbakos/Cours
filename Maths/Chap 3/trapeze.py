import os, time

#Méthodes d'intégrations

def M_rec(f, a, b, n):
	l = (b-a)/n
	k = 0
	som = 0

	while (k<n):
		som +=l*f(a+k*l)
		k +=1

	return som

def f(x):
	return x**4

def compare_rec1():
	n=1
	temp = M_rec(f, 0, 1, n)
	deb = time.time()
	top = deb

	while(abs(temp - (1/3)) > 10 ** (-5) ):
		n += 1
		temp = M_rec(f, 0, 1, n)
		if(time.time() - top > 1):
			os.system("cls")
			print("temps de calcul : ", int(time.time() - deb))
			top = time.time()
			print("Approximation par les rectangles exo 8.1: ", temp)
	
	return n

#res = M_rec(f, 0,1,10**6)
#print(res)

#compare_rec1()

def M_trap(f, a, b, n):
	l = (b-a)/n
	k = 0
	som = 0

	while (k<n):
		som += l*( f(a+k*l) + f(a+(k+1)*l) )/2
		k +=1

	return som

def compare_trap1():
	n=1
	temp = M_trap(f, 0, 1, n)
	deb = time.time()
	top = deb

	while(abs(temp - (1/3)) > 10 ** (-5) ):
		n += 1
		temp = M_trap(f, 0, 1, n)
		if(time.time() - top > 1):
			os.system("cls")
			print("temps de calcul : ", int(time.time() - deb))
			top = time.time()
			print("Approximation par les trapèzes exo 8.1: ", temp)
	
	return n

#print(compare_trap1())

def compare_trap2():
	n=1
	temp = M_trap(f, 0, 2, n)
	deb = time.time()
	top = deb

	while(abs(temp - (32/5)) > 10 ** (-12) ):
		n *= 10
		temp = M_trap(f, 0, 2, n)
		if(time.time() - top > 1):
			os.system("cls")
			print("temps de calcul : ", int(time.time() - deb))
			top = time.time()
			print("Approximation par les trapèzes exo 8.1: ", temp)
	
	return n

#compare_trap2()

def M_para(f, a, b, n):
	l = (b-a)/n
	k = 0
	som = 0

	while (k<n):
		xk = a+k*l
		xk1 = a+(k+1)*l
		som += l*( f(xk) + 4*f((xk+xk1)/2) + f(xk1))/6
		k +=1

	return som

def compare_para():
	n=1
	temp = M_trap(f, 0, 2, n)
	deb = time.time()
	top = deb

	while(abs(temp - (32/5)) > 10 ** (-12) ):
		n += 10
		temp = M_trap(f, 0, 2, n)
		if(time.time() - top > 1):
			os.system("cls")
			print("temps de calcul : ", int(time.time() - deb))
			top = time.time()
			print("Approximation par les paraboles exo 8.1: ", temp)
	
	return n

#print(M_para(f, 0, 2, 10))
compare_para()