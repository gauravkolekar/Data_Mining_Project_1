%
% @author - brijeshdankhara
%

A = load('trainDataXY.txt');
X = load('testDataX.txt');
Ytrain = load('Ytrain50.txt');

AA = A(2:645,:);

% Since it is 1-nn Finding Euclidean Distance 
% we directly find distance betweeen test data
% and training data i.e. 'X' and 'AA'.
for j = 1:5
    for k =1:45
    eud(j,k) = sum((X(:,j)-AA(:,k)).^2).^0.5;
    end
end

Ytest1nn = eud * Ytrain';
[Ytest2value  Ytest2]= max(Ytest1nn,[],1);

% Ytest1nn will give out a 5x5 matrix:
% The columns are the tested values of vector corresponding to the trained class.
% If 'i'th value in a column 'j' is minimum, this means jth image is closest to ith number of test class.
% Ytest2 contains the class numbers of each test image.
