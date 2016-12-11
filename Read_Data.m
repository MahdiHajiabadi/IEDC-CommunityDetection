% clear all
clc
% load 'blogcatalog.mat'
%  data = csvread('/home/khsh/Downloads/Snap-2.4/examples/bigclam/Test1');
load 'Adj.csv';
% data = SubGr_100;
% network = zeros(max(max(Test1)),max(max(Test1)));
% data= data + 1;
% for i = 1:length(Test1)
%     network(Test1(i,1),Test1(i,2)) = 1;
%     network(Test1(i,2),Test1(i,1)) = 1;
%  end
result = edgeclustering(Adj, 12);
[i,j,k]  = find(result);
csvwrite('Nodes.csv',i);
csvwrite('Comms.csv',j);
csvwrite('k.csv',k);
