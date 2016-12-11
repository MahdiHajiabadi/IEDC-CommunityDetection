function [idx, clustersize, numiter, objective] = scalable_kmeans(data, k, maxIter, tol)
%
% Implement scalable sphere kmeans to handle large number of instacnes with sparse
% features. It aims to maximize the cosine similarity between instances and
% centroids
% 
% [idx, clustersize, num_iter, objective] = scalable_kmeans(data, k)
% 
% Input: 
% - data: Must be sparse. Note that each column is one instance, and must be normalized into unit length
% - k : number of clusters;
% - maxIter: maximum number of iterations;
% - tol: the tolerance level for objective change; stop if the relative
%         change < tol
%
%
% Output:
% - idx: a vector showing the cluster indicator for each instance;
% - clustersize: a vector recording the size of each cluster;
% - num_iter: number of iterations to converge;
% - objective: the final objective value;
