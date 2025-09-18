#!/bin/python3

import time

N = 3
N_2 = (N * N)

A = []
B = []
C = []
index = 0
for i in range(N):
   A.append([(el / N_2)       for el in range(index, index + N)])
   B.append([(N_2 / (el + 1)) for el in range(index, index + N)])
   index += N

C = [[] for i in range(N)]
   
# print('A = ', A)
# print('B = ', B)

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

print('C = ', C)

print('Execution time for loop {} s'.format(T2 - T1))

T1 = time.process_time()

D = [[sum(a * b for a,b in zip(X_row, Y_col)) for Y_col in zip(B)] for X_row in A]

T2 = time.process_time()

print('D = ', D)

print('Execution time nested list comprehension {} s'.format(T2 - T1))
