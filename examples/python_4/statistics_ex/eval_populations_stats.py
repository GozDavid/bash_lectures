import numpy as np
from matplotlib import pyplot as plt

# read data by file
data = np.loadtxt('data/populations.txt')

# read variables by line
year, hares, lynxes, carrots = data.T  # trick: columns to variables

print("plot the 4 populations on the same graph")
plt.axes([0.2, 0.1, 0.5, 0.8]) 
plt.plot(year, hares, year, lynxes, year, carrots) 
plt.legend(('Hare', 'Lynx', 'Carrot'), loc=(1.05, 0.5)) 
plt.show()
plt.close()

print("The mean populations over time:")
populations = data[:, 1:]
print(populations.mean(axis=0))

# Expected result:
# [ 34080.95238095  20166.66666667  42400.        ]

print("The sample standard deviations:")
print(populations.std(axis=0))

# Expected result:
# [ 20897.90645809  16254.59153691   3322.50622558]

print("Which species has the highest population each year?:")
print(np.argmax(populations, axis=1))

# Expected result:
# [2 2 0 0 1 1 2 2 2 2 2 2 0 0 0 1 2 2 2 2 2]


