%{
Data Mining Project 1
Program Name: KNN
Team Members:
Gaurav Vivek Kolekar
Brijesh Dhankara
%}
trainDataLoad = load('trainDataXY.txt');
testDataLoad = load('testDataXY.txt');
YtrainLoad50 = load('Ytrain50.txt');
YtrainLoad200 = load('Ytrain200.txt');
%reading all the values

trainData = trainDataLoad(2:end,:);
testData = testDataLoad(2:end,:);
%cleaning data

class_label_matrix = [1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 4 4 4 4 4 4 4 4 4 5 5 5 5 5 5 5 5 5];
prompt = 'What is the value of K? ';
K = input(prompt);
distance_vector = zeros(5,45);
for i = 1:5
    for j = 1:45
        distance_vector(i,j) = norm(testData(:,i) - trainData(:,j));
    end
end

switch K
    case 1
        for i = 1:5
            minimum(i) = min(distance_vector(i,:));
            indexes(i) = find(distance_vector(i,:)==minimum(i),1);
            final_classes(1,i) = class_label_matrix(1,indexes(i));
        end
    case 3
        disp('3nn')
    case 5
        disp('5nn')
end