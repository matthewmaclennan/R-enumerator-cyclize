#Generates phthalic acids from SMILES input. Phthalic acid base molecule is part-wise SMILES string (benzene and two COOH)
#Phthalic acid OH are lopped off and replaced by alcohol.
#
#
PhthalicAcidGen<-function(alcoholSMILES){
require(ChemmineR)
PA<-"c1c2c3ccc1.C2(=O)O.C3(=O)O"
PAready<-"c1c2c3ccc1.C2(=O)4.C3(=O)5."
alcoholSMILESmatrix<-as.matrix(unlist(strsplit(alcoholSMILES,"\n")))
Onum4<-gsub("O","O4",alcoholSMILESmatrix)
Onum5<-gsub("O","O5",alcoholSMILESmatrix)
alcoholPrep<-c()
  for(i in 1:length(Onum4)){
    paste0(Onum4[i],".",Onum5[-(1:i)])
  }
PA.mat<-paste0(PAready,alcoholPrep)
PA.smiles<-paste0(PA.mat,collapse="\n")
PA.sdfset<-smiles2sdf(PA.smiles)
list1<-list(PA.mat,PA.smiles,PA.sdfset)
}
