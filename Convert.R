discrete = function(probability,community,class){
#   for (j in 1:community){
#     index = which(probability[j,]>=mean(probability[j,]))
#     probability[index,i]=1
#     probability[-index,i]=0
#   }
#   
 for (i in 1:length(V(gr))) {
   index =which.max(probability[,i])
#    index = which(probability[,i]>mean(probability[,i]))
   probability[index,i]=1
   probability[-index,i]=0
 }
# for (i in 1:community) {
#   #    index =which.max(probability[,i])
#   index = which(probability[i,]>mean(probability[i,]))
#   probability[i,index]=1
#   probability[i,-index]=0
# }
  return(probability)
}
# x1=max(probability)  
# probability = probability/x1
# x1 = max(probability)
# x2 = min(probability)
# ave = (x1+x2)/2
# x3 = mean(probability)
# index =1
# for (j in 1:community){
#   index = which(probability[j,]>= x3)
#   probability[j,index] =1
#   probability[j,-index] =0
#   if (length(index)==0){probability[j,]=0}
# 
# }
# res = matrix(0,community,1);
# for (i in 1:community){
#   index1 = which(probability[i,]==1)
#   print(index1)
#   for (j in 1:community){
#     index2= which(class[j,]==1)
#     index2= as.vector(index2)
#     print(index2)
#     
#     res[j] = length(intersect(index1,index2))
#   }
#   khsh=which.max(res)
#   print(khsh)
#   temp = probability[khsh,]
#   probability[khsh,] = probability[i,]
#   probability[i,] = temp
# }
# return(probability)
# }