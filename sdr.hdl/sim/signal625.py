import numpy as np
import matplotlib
matplotlib.use('GTK')
import matplotlib.pyplot as plt

freq=950e6
freq_low=1e3
#sr=100e9
sr=2.5e9
time=1e-3
amp=.5
print amp, sr

x=np.arange(0,time,1/sr)
y=amp*np.sin(2*np.pi*freq*x)*np.sin(2*np.pi*freq_low*x) + amp
#y=amp*np.sin(2*np.pi*freq_low*x)+amp


np.savetxt('signal625.dat', y,fmt='%.6e');

#plt.plot(x,y)
#plt.show()
