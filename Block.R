Block_estimation= function(seed,gr,community,B){
  down = matrix(0,community,community)
  for ( i in 1:community){
    for (j in 1:community){
      index1 = seed[i,];
      index2 = seed[j,]
      down[i,j] = sum(index1%*%t(index2))
      if (down[i,j]==0){down[i,j]=1}
    }
  }
  for (i in 1:length(V(gr))){
    if (degree(gr,i)>0){
    neigh = neighbors(gr,i)
    nrigh = as.matrix(neigh)
    if (degree(gr,i)>mean(degree(gr))){
#       print(i)
      
      var = apply(seed[,neigh],1,sum)
      B = B + (seed[,i]%*%t(var))
      }
    }
  }
for ( i in 1:community){
  for (j in 1:community){
    B[i,j] = B[i,j]/down[i,j]
  }
}
return(B) 
}