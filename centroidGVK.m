%{
Data Mining Project 1
Program Name: centroid
Team Members:
Gaurav Vivek Kolekar
Brijesh
%}
close all
clear
trainDataLoad = load('trainDataXY.txt');
testDataLoad = load('testDataXY.txt');
YtrainLoad = load('Ytrain50.txt');
%reading all the values
trainData = trainDataLoad(2:end,:);
testData = testDataLoad(2:end,:);
%cleaning data
final_vector = (trainData * YtrainLoad') ./ 9; %B = (A * Ytrain') ./ 9;
final_answer = zeros(5,5);
for i = 1:5
    temp = testData(:,i);
    for j = 1:5
        final_answer(i,j) = sqrt(sum((final_vector(:,j) - temp) .^ 2));
    end
end