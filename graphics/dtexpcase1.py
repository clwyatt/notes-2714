import matplotlib
import matplotlib.pyplot as plt
import numpy as np

matplotlib.rcParams.update({'font.size': 12})

n = np.linspace(-6, 6, 13);
alpha = 2

f = plt.figure()

plt.stem(n, np.power(alpha, n))
plt.xlabel('$n$')
plt.ylabel('$x[n]$')
plt.autoscale(enable=True, axis='x', tight=True)

plt.tight_layout()

#plt.show()

f.savefig("dtexpcase1.pdf", bbox_inches='tight')
