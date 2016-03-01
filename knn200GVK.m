%{
Data Mining Project 1
Algorithm Name: KNN
Team Members:
Gaurav Vivek Kolekar
Brijesh Dhankara
%}

trainDataLoad = load('trainDataXY200.txt');
testDataLoad = load('testDataXY200.txt');
%reading all the values

trainData = trainDataLoad(2:end,:);
testData = testDataLoad(2:end,:);
%cleaning data

class_label_matrix = trainDataLoad(1,:);
%creating an array of all class labels

K = input('What is the value of K, options(1,3,5)? ');
%asking the user what form of K-nn the user would like to use

distance_vector = zeros(20,180);
%creating a matrix that stores the distance of the the

for i = 1:20
    for j = 1:180
        distance_vector(i,j) = norm(testData(:,i) - trainData(:,j));
    end
end
%storing all the distances differences between query and all images

[temp,temp_indexes] = sort(distance_vector');
sorted_matrix = temp';
sorted_indexes = temp_indexes';
vote3nn = zeros(20,3);
vote5nn = zeros(20,5);

switch K
    case 1
        for i = 1:20
            minimum(i) = min(distance_vector(i,:));
            indexes(i) = find(distance_vector(i,:)==minimum(i),1);
            final_classes(1,i) = class_label_matrix(1,indexes(i));
        end
        disp('The 20 queries belong to the following classes using 1-nn:');
        disp(final_classes);
    case 3
        for i = 1:20
            for j = 1:3
                vote3nn(i,j) = class_label_matrix(1,sorted_indexes(i,j));
            end
            
        end 
        final_classes3nn = mode(vote3nn,2);
        disp('The 20 queries belong to the following classes using 3-nn:');
        disp(final_classes3nn');
    case 5
        for i = 1:20
            for j = 1:5
                vote5nn(i,j) = class_label_matrix(1,sorted_indexes(i,j));
            end
            
        end 
        final_classes5nn = mode(vote5nn,2);
        disp('The 5 queries belong to the following classes using 5-nn:');
        disp(final_classes5nn');
end