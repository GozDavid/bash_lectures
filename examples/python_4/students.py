import numpy as np

a = np.loadtxt('data/students.txt',skiprows=2,usecols=range(1,5))
print a
b = np.loadtxt('data/students.txt',skiprows=2,usecols=(1,-2))
print b
