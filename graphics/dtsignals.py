import matplotlib
import matplotlib.pyplot as plt
import numpy as np

matplotlib.rcParams.update({'font.size': 12})

n = np.linspace(-6, 6, 13);
u = (n >= 0)
e = np.exp(-n)*u
s = np.sin(n)
es = e*s

f = plt.figure()

plt.subplot(2, 2, 1)
plt.stem(n, u)
plt.xlabel('$n$')
plt.ylabel('$x[n]$')
plt.title('$x[n] = u[n]$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.subplot(2, 2, 2)
plt.stem(n,e)
plt.xlabel('$n$')
plt.ylabel('$x[n]$')
plt.title('$x[n] = e^{-n}u[n]$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.subplot(2, 2, 3)
plt.stem(n,s)
plt.xlabel('$n$')
plt.ylabel('$x[n]$')
plt.title('$x[n] = sin(n)$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.subplot(2, 2, 4)
plt.stem(n,es)
plt.xlabel('$n$')
plt.ylabel('$x[n]$')
plt.title('$x[n] = e^{-n}sin(n)u[n]$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.tight_layout()

#plt.show()

f.savefig("dtsignals.pdf", bbox_inches='tight')
