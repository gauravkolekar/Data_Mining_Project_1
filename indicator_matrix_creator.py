target = open('Ytrain200.txt','w')
#indicator matrix is stored in this file
number_of_row = 20
#number of rows of the indicator matrix
number_of_column = 180
#number of columns of the indicator matrix
number_of_ones = 9
#number of ones you want to print

z=0
for i in range(1,(number_of_row+1)):
    for j in range(0,number_of_column):
        if(j>=(z*number_of_ones) and j<(i*number_of_ones)):
            target.write("1,")
        else:
            target.write('0,')
    target.write('\n')
    z = z+1
target.close()