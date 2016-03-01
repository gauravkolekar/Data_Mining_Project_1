%{
Data Mining Project 1
Algorithm Name: centroid
Team Members:
Gaurav Vivek Kolekar
Brijesh Dhankara
%}

trainDataLoad = load('trainDataXY200.txt');
testDataLoad = load('testDataXY200.txt');
YtrainLoad200 = load('Ytrain200.txt');
%reading all the values

trainData = trainDataLoad(2:end,:);
testData = testDataLoad(2:end,:);
%cleaning data

final_vector = (trainData * YtrainLoad200') ./ 9; %B = (A * Ytrain') ./ 9;
%processing data

final_answer = zeros(20,20);

for i = 1:20
    temp = testData(:,i);
    for j = 1:20
        final_answer(i,j) = sqrt(sum((final_vector(:,j) - temp) .^ 2));
    end
end

[min_values,final_indexes] = min(final_answer,[],2);
disp('The 20 queries belong to the following classes:');
disp(final_indexes');