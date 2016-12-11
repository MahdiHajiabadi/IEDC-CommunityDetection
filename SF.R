SF = function (seed,gr){
SF = matrix(0 , length(seed[1,]) , community);
for (i in 1:length(V(gr))){
  if (degree(gr,i)>0){
  neigh=neighbors(graph = gr,v = i);  
  El = length(neigh)
  if (El==0){El = 1}
  for (j in 1:community){
   kk = sum(seed[j,neigh])/El
   SF[i,j]= SF[i,j] + kk
  }
}

}
  return(SF)
}