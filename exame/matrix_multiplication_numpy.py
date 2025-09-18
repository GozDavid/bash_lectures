#!/bin/python3

import numpy as np
import time

N = 256
N_2 = (N * N)

A = []
B = []
C = []
index = 0
for i in range(N):
   A.append([(el / N_2)       for el in range(index, index + N)])
   B.append([(N_2 / (el + 1)) for el in range(index, index + N)])
   index += N

A = np.array(A)
# print('A = ', A)

# B matrix
B = np.array(B)
# print('B = ', B)

T1 = time.process_time()

C = np.matmul(A, B)

T2 = time.process_time()

# print('C = ', C)

print('Execution time {} s'.format(T2 - T1))
