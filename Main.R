library('igraph')
setwd('/home/khsh/Desktop/Codes')
 gr =read.graph('AmericanFootball_Truth.gml','gml')
Com = V(gr)$value
Com = Com  + 1
community = max(Com)
truth = matrix(0,community,length(V(gr)))
for (i in 1:length(V(gr))){truth[Com[i],i] = 1}
Data = read.table('Seed')
Nodes = Data[,1]
Comms = Data[,2]
Prob = Data[,3]
Nodes=as.matrix(Nodes);
Comms=as.matrix(Comms);
Prob =as.matrix(Prob)
gr=as.undirected(gr);
seedset= seed(Nodes,Comms,Prob)
Social_F= matrix(0 , length(V(gr)), community)
Social_F =SF(seedset,gr)
B = diag(8,community,community)  
member = matrix(0 , community, length(V(gr)));
member = membership(gr,seedset,community)
probability = matrix(0,community,length(V(gr)));
print(max(probability));
for (epoch in 1:3){
  for (i in 1: length(V(gr)))
  {
    for (j in 1: community){
      probability[j,i] =(probability[j,i]* 0.7 + member[j,i] * 0.4)  
    }
  }
  B = Block_estimation(probability,gr,community,B)
  member = membership(gr,probability,community) 
  print(max(probability));
   Social_F =SF(probability,gr)
}
final_class = discrete(probability,community,truth)
final1 = final_class
final1 = final(final_class,truth)
NMI = compare(final1,truth,'nmi')
re = f1_score(gr,final1,truth,community)
print('F_Measure:')
print(re)
print('NMI:')
print(NMI)