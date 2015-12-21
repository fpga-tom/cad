from scipy import signal
from scipy import fftpack
import numpy as np
import matplotlib
matplotlib.use('GTK')
import matplotlib.pyplot as plt

#triangle=np.loadtxt('integrator.dat')
#signal=np.loadtxt('signal625.dat')
pwm=np.loadtxt('pwm.dat')

x=np.arange(0,pwm.size,1)

#plt.plot(x,triangle[x],x,signal[x],'r',x,pwm[x])
#plt.show();

taps=signal.firwin2(7000, [0.0, .249, 0.251, 1.0], [0, 1, 1, 0])
fsig=signal.lfilter(taps, 1, pwm)
#plt.plot(np.abs(fftpack.fft(pwm)))
plt.plot(fsig)
plt.show()
