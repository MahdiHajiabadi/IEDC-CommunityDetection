seed= function(i,j,k){
  count1=1;count2=1;
  i=as.matrix(i)
  j=as.matrix(j);
  k=as.matrix(k)
  seed = matrix(0,community,length(V(gr)))
  for ( index in 1:length(i[,1])){
    index1= i[index]
    index2= j[index];
    seed[index2,index1] = k[index];
    count2 = count2+1;
      count1=count1+1;    
  }
  return(seed)
}