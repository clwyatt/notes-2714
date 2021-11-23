import matplotlib
import matplotlib.pyplot as plt
import numpy as np

matplotlib.rcParams.update({'font.size': 12})

n = np.linspace(-10, 10, 21);
x = np.cos(2*np.pi/10*n + np.pi/8)

f = plt.figure()

plt.stem(n, x)
plt.xlabel('$n$')
plt.ylabel('$x[n]$')
plt.grid(True)
plt.autoscale(enable=True, axis='x', tight=True)

plt.tight_layout()

#plt.show()

f.savefig("dtsinusoid.pdf", bbox_inches='tight')
