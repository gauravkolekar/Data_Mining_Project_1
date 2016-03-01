%{
Data Mining Project 1
Algorithm Name: centroid
Team Members:
Gaurav Vivek Kolekar
Brijesh Dhankara
%}

trainDataLoad = load('trainDataXY.txt');
testDataLoad = load('testDataXY.txt');
YtrainLoad50 = load('Ytrain50.txt');
%reading all the values

trainData = trainDataLoad(2:end,:);
testData = testDataLoad(2:end,:);
%cleaning data

final_vector = (trainData * YtrainLoad50') ./ 9; %B = (A * Ytrain') ./ 9;
%processing data

final_answer = zeros(5,5);
for i = 1:5
    temp = testData(:,i);
    for j = 1:5
        final_answer(i,j) = sqrt(sum((final_vector(:,j) - temp) .^ 2));
    end
end

[min_values,final_indexes] = min(final_answer,[],2);
disp('The 5 queries belong to the following classes: ');
disp(final_indexes');
