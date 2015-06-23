#Generates phthalic acids from SMILES input. Phthalic acid base molecule is part-wise SMILES string (benzene and two COOH)
#Phthalic acid OH are lopped off and replaced by alcohol.
#
#
PhthalicAcidGen<-function(alcoholSMILES){
require(ChemmineR)
PA<-"c1c2c3ccc1.C2(=O)O.C3(=O)O"
PAready<-"c1c2c3ccc1.C2(=O)4.C3(=O)5."
alcoholSMILESmatrix<-as.matrix(unlist(strsplit(alcoholSMILES,"\n")))
Onum4<-gsub("O","O4",expand.grid(alcoholSMILESmatrix,alcoholSMILESmatrix)[,1])
Onum5<-gsub("O","O5",expand.grid(alcoholSMILESmatrix,alcoholSMILESmatrix)[,2])
alcoholPrep<-apply(cbind(Onum4,Onum5),1,function(x) paste0(x,collapse="."))
PA.mat<-paste0(PAready,alcoholPrep)
PA.smiles<-paste0(PA.mat,collapse="\n")
PA.sdfset<-smiles2sdf(PA.smiles)

}
