CFLAGS=-Wall -g

EXECS=testmulti testmatrices testmultimat

all : $(EXECS)

# % remplace n'importe quelle chaine de caractères
# $^ : les "sources" ici les fichiers .o ; 
# $@ : la cible (target) ici l'exécutable test...
test% : test%.o %.o 
	$(CC) $(CFLAGS) -pthread $^ -o $@

# pour testmultimat il faut plus que cela
testmultimat : testmultimat.o multimat.o matrices.o multi.o
	$(CC) $(CFLAGS) -pthread $^ -o $@

clean:
	$(RM) *.o $(EXECS)

######################################################################
# A partir d'ici scripts Bash de vérif sous forme de cible de make
FBCHECK=/home/TP/TPINFO/butelle/fbcheck

verif_matrices : testmatrices
	@ $(FBCHECK) testmatrices_add ./testmatrices add mat1.mat mat2.mat 
	@ $(FBCHECK) testmatrices_prod ./testmatrices prod mat1.mat mat2.mat

verif_multi : testmulti
	@ $(FBCHECK) -s testmulti_4ps ./testmulti 4 ps 
	@ $(FBCHECK) -s testmulti_4th ./testmulti 4 th 

verif_multimat_add : testmultimat
	@ $(FBCHECK) testmultimat_2add ./testmultimat -p 2 add mat1.mat mat2.mat 
	@ $(FBCHECK) testmultimat_4add ./testmultimat -p 4 add mat1.mat mat2.mat 

verif_multimat_mult : testmultimat
	@ $(FBCHECK) testmultimat_2mult ./testmultimat -p 2 mult mat1.mat mat2.mat 
	@ $(FBCHECK) testmultimat_4mult ./testmultimat -p 4 mult mat1.mat mat2.mat 

verif_multimat : verif_multimat_add verif_multimat_mult

verifs : verif_matrices verif_multi verif_multimat
