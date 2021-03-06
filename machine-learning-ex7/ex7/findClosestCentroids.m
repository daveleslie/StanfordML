function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% loop over every example in dataset X
for i = 1:size(X,1)
    distance_arr = zeros(1,K);
    
    % loop over each centroid and calculate the distance from the training
    % example
    for j = 1:K
        distance_arr(1,j) = sqrt(sum(power((X(i,:) - centroids(j,:)),2)));
    end
    
    % find the index of the centroid with the minimum distance from the
    % training example and store that in the return varibale idx
    [d, d_idx] = min(distance_arr);
    idx(i,1) = d_idx;
end

    
    






% =============================================================

end

