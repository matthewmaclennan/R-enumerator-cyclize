#Cyclizer for SMILES notations
#Function inserts pairs of numbers to the right of atoms of interest to create a cycle.
#New cycle is scanned for atoms with too many bonds (particularly the newly-formed cycle). Cycle is destroyed if octet rule is 
#not respected.
#
#
cyclizer<-function(SMILES,n.ring,){
  SMILES<-as.character(SMILES)
  n.ring<-as.numeric(n.ring)
#
#Insert looping function for inserting numbers to form new rings

#Insert command for removing 
  
}  
