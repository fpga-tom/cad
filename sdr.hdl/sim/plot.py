#! /usr/bin/env python
import numpy as np
import matplotlib.pyplot as plt

data=np.loadtxt('signal625.dat')

plt.plot(data[0::110])
plt.show()
