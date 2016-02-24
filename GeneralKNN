%
% @author - brijeshdankhara
%

A = load('trainDataXY.txt');
X = load('testDataX.txt');
Ytrain = load('Ytrain50.txt');

AA = A(2:645,:);
LabelA = A(1,:);

Ytest1 = pdist2(X',AA','euclidean');
 Ytest1 = Ytest1';

S1 = sortrows([Ytest1(:,1) LabelA'],1);
S2 = sortrows([Ytest1(:,2) LabelA'],1);
S3 = sortrows([Ytest1(:,3) LabelA'],1);
S4 = sortrows([Ytest1(:,4) LabelA'],1);
S5 = sortrows([Ytest1(:,5) LabelA'],1);

prompt = 'Please enter which KNN you want to use. 3/5? \n';
x = input(prompt,'s');

knnType = str2num(x);
% S1 = hist(S1(1:knnType,:));
F1 = hist(S1(1:knnType,2),unique(1:5));
% plot(S1,'rx','Markersize',10)
F2 = hist(S2(1:knnType,2),unique(1:5));
F3 = hist(S3(1:knnType,2),unique(1:5));
F4 = hist(S4(1:knnType,2),unique(1:5));
F5 = hist(S5(1:knnType,2),unique(1:5));

F = [F1; F2; F3; F4; F5];


[Ytest2value  Ytest2]= max(F,[],1);

% Ytest2 contains the class numbers of each test image.
