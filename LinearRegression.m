
% Load data from .txt file to array
A = load('trainDataXY.txt');
X = load('testDataX.txt');
% Y = load('testDataXY.txt');
% Y = Y(2:645,:);
Ytrain = load('Ytrain50.txt');
for i = 1:45
    AA(1:644,i) = A(2:645,i);
    plot(A(2:645,i),'rx','Markersize',10)
  %  B = pinv(A(2:645,i)) * Ytrain'();
   % Ytest1 = B' * X;
end
size(pinv(AA))
size(X)
%size(B')
B = pinv(AA') * Ytrain'; % 644 x 45 | 45 x 5 = 644 x 5
Ytest1 = B' * X; % 5 x 644 | 644 x 5 = 5 x 5
%plot(Ytest1,'rx','Markersize',10)
