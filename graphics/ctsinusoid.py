import matplotlib
import matplotlib.pyplot as plt
import numpy as np

matplotlib.rcParams.update({'font.size': 12})

t = np.linspace(-2*np.pi, 2*np.pi, 1000);
x = 2*np.cos(np.pi*t -np.pi/4);

f = plt.figure()

plt.plot(t, x)
plt.xlabel('$t$')
plt.autoscale(enable=True, axis='x', tight=True)
plt.show()

f.savefig("ctsinusoid_review.pdf", bbox_inches='tight')
