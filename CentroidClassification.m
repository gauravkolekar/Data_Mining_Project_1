%
% @author - brijeshdankhara
%

A = load('trainDataXY.txt');
X = load('testDataX.txt');
Ytrain = load('Ytrain50.txt');
AA = A(2:645,:);
j = 9;
k = 1;
sumofA = 0;
for i = 1:45
    sumofA = sumofA + AA(:,i);
    j = j - 1;
    if j == 0 && k ~= 6
        centroid(:,k) = sumofA ./ 9 ;
        j = 9;
        sumofA = 0;
        k = k + 1;
    end
end

% OR
% centroid = (AA * Ytrain') ./ 9;

Ytest1 = pdist2(X',centroid','euclidean');
plot(Ytest1,'rx','Markersize',10)

% Ytest1 will give out a 5x5 matrix:
% The columns are the tested values of vector corresponding to the trained class.
% If 'i'th value in a column 'j' is minimum, this means jth image is closest to ith number of test class.
