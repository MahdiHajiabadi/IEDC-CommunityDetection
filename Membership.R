membership = function (gr, seed , community){
  ss = matrix(0,community, length(V(gr)))
  for (temp in 1:community){
    for (i in 1:length(V(gr))){
      if (degree(gr,i)>0){
          neigh = neighbors(gr,i);
          neigh1 = which(seed[temp,neigh]>=mean(seed[temp,]))
          neigh1 = neigh[neigh1]
          neigh1 = as.vector(neigh1)
          if (length(neigh1)>1){
          var = apply(seed[,neigh1],1,sum)
          for (j in 1:community)  {
            ss[temp,i] = ss[temp,i] + var[j]*B[j,temp];
          }
          ss[temp,i]  = 0.1 *  ss[temp,i] + 0.6 * Social_F[i,temp]
        }
      }
    }
  }
  return(ss)
}
