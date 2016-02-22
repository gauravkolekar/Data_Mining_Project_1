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
