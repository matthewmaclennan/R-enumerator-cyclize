#Cyclizer for SMILES notations
#Function inserts pairs of numbers to the right of atoms of interest to create a cycle.
#New cycle is scanned for atoms with too many bonds (particularly the newly-formed cycle). Cycle is destroyed if octet rule is 
#not respected.
#
#SMILES is the smiles string that will be cyclized (or bond formed)
#steps is the number of steps (bond formations)
cyclizer<-function(SMILES,steps,){
  SMILES<-as.character(SMILES)
  steps<-as.numeric(steps)
  list1<-list(list())
#1. Cyclizer - (1) Program will find largest number in SMILES string and will (2) insert the next largest number to the right of 
#each combination of two non-adjacent elements.
cycles<-
#2. sb to db - (1) Program will find all single bonds between two (adjacent) elements. (2) Program will count number of bonds 
#around each element. (3) For elements which can carry another bond, the single connector between the two elements will 
#become a "=".
sb2db<-
#3. db to tb - (1) Program will find all "=" in molecule. (2) Program will change, one-by-one, all "=" into "#".
db2tb<-
#4. tb to qb
tb2qb<-
#
#Insert looping function for inserting numbers to form new rings
#Insert command for removing 
  
}  
