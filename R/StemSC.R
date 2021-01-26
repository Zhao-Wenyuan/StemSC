# StemSC.R
StemSC <- function(Exp) {
  data(gene_pairs)
  gid=rownames(Exp)
  #Retaining the genes contained in the target dataset
  pairs=pairs[pairs[,1]%in%gid&pairs[,2]%in%gid,]

  #Calculating the number of the gene pairs with the same relative expression orders(REO) as the reference REOs
  coms=Exp[match(pairs[,1],gid),,drop=F]-Exp[match(pairs[,2],gid),,drop=F]
  freq=colSums(coms>0)

  #Removing the informationless gene pairs
  temp=Exp[match(pairs[,1],gid),,drop=F]+Exp[match(pairs[,2],gid),,drop=F]
  temp=colSums(temp==0)

  stemness = freq/(nrow(pairs)-temp)
  return(stemness)
}
