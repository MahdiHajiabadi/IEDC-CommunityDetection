f1_score = function(gr,inference,class,community){
  ROC = matrix(0,community,community)
  for (i in 1:community){
    index = which(class[i,]==1) 
    for(j in 1:community){
    data =0 
     data = length(which(inference[j,index]==1))
     ROC[i,j] = data;
    }
  }
#   print(ROC)
  scores = matrix(0,community,1);
  for (i in 1:community){
    x1 = sum(ROC[i,])
    x2 = sum(ROC[,i])
    if (x2==0){x2=1}
    if (x1==0){x1=1}
    precision = ROC[i,i]/x1
    recall= ROC[i,i]  /x2
    if ((precision ==0) && (recall==0)){
      precision=1 ; recall=1; 
    }
    scores[i,1] = 2* precision*recall/(precision + recall)
  }
f1_score = mean(scores)
return(f1_score)
}