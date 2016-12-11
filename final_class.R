final= function(final_class,truth){
  truth1 = truth
  final1 = matrix(0,community,length(V(gr)))
  for (i in 1:community){
    index = which(final_class[i,]==1)
    max = 0
    for (j in 1:community){
      index1 = which(truth1[j,]==1)
      mm = length(intersect(index,index1))
      if (mm>=max){max=mm
      final_index =j
      }
    }
    print(final_index)
    final1[final_index,] = final_class[i,]
    truth1[final_index,]=0;
  }
  return(final1)
}