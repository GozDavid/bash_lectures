#!/bin/python3

import time

# A matrix 2X3
A = [[1, 2, 3],
     [4, 5, 6]]

print('A = ', A)

# B matrix 3x2
B = [[7, 8],
     [9, 10],
     [11, 12]]

print('B = ', B)

# C result is 2 x 2
C = []
for i in range(2):
   C.append([])

C = [[] for i in range(2)]

T1 = time.process_time()

# iterate through rows of A
for row in range(len(A)):  # len(A) = 2  (row number)
   # iterate through columns of B
   for col in range(len(B[0])):   # len(B) = 3 (column number)
      sum = 0
      for k in range(len(B)):
         sum += A[row][k] * B[k][col]

      C[row].append(sum)

T2 = time.process_time()

print('C =', C)

print('Execution time for loop {} s'.format(T2 - T1))


