%
% @author = brijeshdankhara
% Let me know if there are any issues.
% 


% Load data from .txt file to array
A = load('trainDataXY.txt');
X = load('testDataX.txt');
Ytrain = load('Ytrain50.txt');
AA = A(2:645,:);

B = pinv(AA') * Ytrain'; % 644 x 45 | 45 x 5 = 644 x 5
Ytest1 = B' * X; % 5 x 644 | 644 x 5 = 5 x 5
plot(Ytest1,'rx','Markersize',10)
% Ytest1 will give out a 5x5 matrix:
% The columns are the tested values of vector corresponding to the trained class.
% If 'i'th value in a column 'j' is maximum, this means jth image is closest to ith number of test class.
