
import numpy as np
import scipy.io as sio

mat = sio.loadmat('non_param_pdf.mat')
pdf = np.reshape(mat['X_final'], (1024))
points = np.linspace(-2, 2, 1024)
epsilon = 4./1024.

def random_gen(shape=None):
	assert len(shape) == 2

	rn = np.random.choice(points, size = shape, p=pdf).astype(np.float32)
	for i in range(shape[0]):
		for j in range(shape[1]):
			rn[i,j] = np.random.uniform(rn[i,j], rn[i,j]+epsilon, 1).astype(np.float32)
	return rn



print (random_gen([3, 4]))