#!/bin/python3

import numpy as np

A = np.array([range(1,4),
              range(4,7)])
print('A = ', A)

# B matrix
B = np.array([[7, 8],
              [9, 10],
              [11, 12]])
print('B = ', B)

C = np.matmul(A, B)
print('C = ', C)
