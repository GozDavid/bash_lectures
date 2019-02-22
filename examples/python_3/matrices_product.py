import numpy as np

# Read the two matrices
A = np.loadtxt("matrix_input1.txt", dtype='i', delimiter=' ')
print(A)
"""
A= [[1 2 3]
    [4 5 6]]

"""
B = np.loadtxt("matrix_input2.txt", dtype='i', delimiter=' ')
print(B)
"""
B=[[ 7  8]
   [ 9 10]
   [11 12]]

"""
# result is 3x4
# if I do not define the list, I obtain an error
"""
result = [[0,0,0,0],
         [0,0,0,0],
         [0,0,0,0]]
"""
result = [[] for i in range(3)]

for i in range(len(A)):  # len(A)=2  (row number)
   # iterate through columns of B
   for j in range(len(B[0])):   # len(B)=3a   (column number)
       # iterate through rows of B
       for k in range(len(B)):      # len(B)=3  (index in row and in column)
           result[i][j] += A[i][k] * B[k][j]
for r in result:
   print(r)

""" NOTE on list declaration:
[[]]*n is similar to

l = []
x = []
for i in range(n):
    x.append(l)
While [[] for i in range(3)] is similar to:

x = []
for i in range(n):
    x.append([])   # appending a new list!
"""
