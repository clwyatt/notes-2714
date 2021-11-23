import matplotlib
import matplotlib.pyplot as plt
import numpy as np

matplotlib.rcParams.update({'font.size': 12})

n = np.linspace(-5, 5, 11);
x = np.zeros(11)
x[5] = 1

f = plt.figure()

plt.stem(n, x)
plt.xlabel('$n$')
plt.ylabel('$\delta[n]$')
plt.grid(True)
plt.autoscale(enable=True, axis='x', tight=True)

plt.tight_layout()

#plt.show()

f.savefig("dtdelta.pdf", bbox_inches='tight')
