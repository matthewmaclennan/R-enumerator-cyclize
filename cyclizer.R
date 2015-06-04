#Cyclizer for SMILES notations
#Function inserts pairs of numbers to the right of atoms of interest to create a cycle.
#New cycle is scanned for atoms with too many bonds (particularly the newly-formed cycle). Cycle is destroyed if octet rule is 
#not respected.
#All results stored in a list object
#SMILES is the smiles string that will be cyclized (or bond-formed)
#steps is the number of steps (bond formations)
elementlist<-"H|He|Li|Be|B|C|N|O|F|Ne|Na|Mg|Al|Si|P|S|Cl|Ar|K|Ca|Sc|Ti|V|Cr|Mn|Fe|Co|Ni|Cu|Zn|Ga|Ge|As|Se|Br|Kr|Rb|Sr|Y|Zr|Nb|Mo|Tc|Ru|Rh|Pd|Ag|Cd|In|Sn|Sb|Te|I|Xe|Cs|Ba|La|Ce|Pr|Nd|Pm|Sm|Eu|Gd|Tb|Dy|Ho|Er|Tm|Yb|Lu|Hf|Ta|W|Re|Os|Ir|Pt|Au|Hg|Tl|Pb|Bi|Po|At|Rn|Fr|Ra|Ac|Th|Pa|U|Np|Pu|Am|Cm|Bk|Cf|Es|Fm|Md|No|Lr|Rf|Db|Sg|Bh|Hs|Mt|Ds|Rg|Cn|Uut|Uuq|Uup|Uuh|Uus|Uuo"
cyclizer<-function(SMILES,steps,){
  SMILES<-as.character(SMILES)
  steps<-as.numeric(steps)
  list1<-list(list())
#1. Cyclizer - (1) Program will find largest number in SMILES string and will (2) insert the next largest number to the right of 
#each combination of two non-adjacent elements. 
#maxnum.l finds the maximum number in a smiles string (factoring in the % symbols). Returns a list of maximum numbers
  maxnum.l<-lapply(regmatches(smiles,gregexpr("(?<=%)[0-9]{2,}|[0-9]{1}",smiles,perl=T)),function(x) max(as.numeric(x)))
#If the numeric is greater than or equal to 10, paste0 "%" to the left of it. Otherwise, return x+1. This gives the new
#text string for the new maximum number to be inserted which will form the new linkage.
  newmax.l<-lapply(maxnum.l,function(x) if(x+1>=10) {paste0("%",x+1)} else {x+1})
  cycles<-
#2. sb to db - (1) Program will find all single bonds between two (adjacent) elements. (2) Program will count number of bonds 
#around each element. (3) For elements which can carry another bond, the single connector between the two elements will 
#become a "=".
  singleBondFinderAdjacent<-"[A-Z]{2}|([A-Z][a-z]){2}|[A-Z]([A-Z][a-z])|([A-Z][a-z])[A-Z]"
  singleBondFinderNumber<-
  boundCounter<-
  sb2db<-
#3. db to tb - (1) Program will find all "=" in molecule. (2) Program will change, one-by-one, all "=" into "#".
  db2tb<-
#4. tb to qb
  tb2qb<-
#
#Insert looping function for inserting numbers to form new rings
#Insert command for removing 
  list1<-list1
}  
