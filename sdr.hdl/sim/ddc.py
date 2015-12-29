#! /usr/bin/env python
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt

num_channels=20
sr=2.5e9
low_sr=sr/num_channels
freq=950e6
time=1e-3
t=np.arange(0,time,1/sr)
print t.size
low_t=np.arange(0,time,1/low_sr)
print low_t.size

data=np.loadtxt('signal625.dat')

samples=np.int_(data.size/num_channels)
print samples
print samples*num_channels
data_reshaped=data[0:num_channels*samples].reshape(num_channels,samples, order='F')

ddc1=np.sin(2*np.pi*950e6*t)[0:num_channels*samples].reshape(num_channels, samples, order='F')
ddc=[]

for i in xrange(0, num_channels):
    phase_offset=(sr-freq)*i/sr
    ddc.append(np.sin(2*np.pi*50e6*low_t + 2*np.pi*phase_offset))

sig_ddc=data_reshaped*ddc

B=signal.firwin(160, 0.01)
coeff=B.reshape(num_channels, 160/num_channels, order='F')

y=np.zeros(samples)
tap_del_lines=np.zeros((coeff.shape[1]-1, num_channels))
for j in xrange(0, samples):
    z=np.zeros(num_channels)
    for i in xrange(0, num_channels):
        z[i],tap_del_lines[:,i]=signal.lfilter(coeff[i,:],1,[sig_ddc[i,j]],  zi=tap_del_lines[:,i])
    y[j]=np.sum(z)

plt.plot(y)
plt.show()
