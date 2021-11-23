import matplotlib
import matplotlib.pyplot as plt
import numpy as np

matplotlib.rcParams.update({'font.size': 12})

t = np.linspace(-6, 6, 1000);
u = (t >= 0)
e = np.exp(-t)*u
s = np.sin(2*np.pi*t)
es = e*s

f = plt.figure()

plt.subplot(2, 2, 1)
plt.plot(np.linspace(-6, 0, 1000), np.zeros(1000), color='b')
plt.plot(np.linspace(0, 6, 1000), np.ones(1000), color='b')
plt.xlabel('$t$')
plt.ylabel('$x(t)$')
plt.title('$x(t) = u(t)$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.subplot(2, 2, 2)
plt.plot(t,e)
plt.xlabel('$t$')
plt.ylabel('$x(t)$')
plt.title('$x(t) = e^{-t}u(t)$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.subplot(2, 2, 3)
plt.plot(t,s)
plt.xlabel('$t$')
plt.ylabel('$x(t)$')
plt.title('$x(t) = sin(2\pi t)$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.subplot(2, 2, 4)
plt.plot(t,es)
plt.xlabel('$t$')
plt.ylabel('$x(t)$')
plt.title('$x(t) = e^{-t}sin(2\pi t)u(t)$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.tight_layout()

#plt.show()

f.savefig("ctsignals.pdf", bbox_inches='tight')
