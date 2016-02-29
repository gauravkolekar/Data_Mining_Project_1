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

K = input('What is the value of K? ');
distance_vector = zeros(5,45);
for i = 1:5
    for j = 1:45
        distance_vector(i,j) = norm(testData(:,i) - trainData(:,j));
    end
end
[temp,temp_indexes] = sort(distance_vector');
sorted_matrix = temp';
sorted_indexes = temp_indexes';
vote3nn = zeros(5,3);
vote5nn = zeros(5,5);

switch K
    case 1
        for i = 1:5
            minimum(i) = min(distance_vector(i,:));
            indexes(i) = find(distance_vector(i,:)==minimum(i),1);
            final_classes(1,i) = class_label_matrix(1,indexes(i));
        end
        disp('The 5 queries belong to the following classes using 1-nn:');
        disp(final_classes);
    case 3
        for i = 1:5
            for j = 1:3
                vote3nn(i,j) = class_label_matrix(1,sorted_indexes(i,j));
            end
            
        end 
        final_classes3nn = mode(vote3nn,2);
        disp('The 5 queries belong to the following classes using 3-nn:');
        disp(final_classes3nn');
    case 5
        for i = 1:5
            for j = 1:5
                vote5nn(i,j) = class_label_matrix(1,sorted_indexes(i,j));
            end
            
        end 
        final_classes5nn = mode(vote5nn,2);
        disp('The 5 queries belong to the following classes using 5-nn:');
        disp(final_classes5nn');
end