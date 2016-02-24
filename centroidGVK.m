%{
Data Mining Project 1
Program Name: centroid
Team Members:
Gaurav Vivek Kolekar
Brijesh
%}
trainDataLoad = load('trainDataXY.txt');
testDataLoad = load('testDataXY.txt');
YtrainLoad50 = load('Ytrain50.txt');
YtrainLoad200 = load('Ytrain200.txt');
%reading all the values
trainData = trainDataLoad(2:end,:);
testData = testDataLoad(2:end,:);
%cleaning data
final_vector = (trainData * YtrainLoad50') ./ 9; %B = (A * Ytrain') ./ 9;
final_answer = zeros(5,5);

for i = 1:5
    temp = testData(:,i);
    for j = 1:5
        final_answer(i,j) = sqrt(sum((final_vector(:,j) - temp) .^ 2));
    end
end

%final_answer = pdist2(final_vector',testData','euclidean');
