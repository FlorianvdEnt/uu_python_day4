cimport numpy as np
cimport cython
import numpy as np
import scipy as sp

cdef extern from "math.h":
    double exp(double x)

def rbf_network_cython(np.ndarray[np.float64_t, ndim=2] X, np.ndarray[np.float64_t] beta, float theta):
    cdef int N = X.shape[0]
    cdef int D = X.shape[1]
    cdef np.ndarray[np.float64_t] Y = np.zeros(N, dtype=np.float64) 

    for i in range(N):
        for j in range(N):
            r = 0
            for d in range(D):
                r += (X[j, d] - X[i, d]) ** 2
            r = r**0.5
            Y[i] += beta[j] * exp(-(r * theta)**2)

    return Y

def rbf_network_cython_nonp(double [:,:] X, double[:] beta, float theta):
    cdef int N = X.shape[0]
    cdef int D = X.shape[1]
    cdef double[1000] Y

    for i in range(N):
        Y[i] = 0.0
        for j in range(N):
            r = 0
            for d in range(D):
                r += (X[j, d] - X[i, d]) ** 2
            r = r**0.5
            Y[i] += beta[j] * exp(-(r * theta)**2)

    return Y


def rbf_network_cython_ref(double [:,:] X, double[:] beta, int theta):

    cdef int N = X.shape[0]
    cdef int D = X.shape[1]
    cdef double[1000] Y
    #Y_np = np.zeros(N)
    #cdef double[:] Y=Y_np
    cdef int j = 0
    cdef int i = 0
    cdef int d = 0
    cdef float r = 0
    while i < N:
        j = 0
        while j < N:
            r = 0
            d = 0
            while d < D:
                r += (X[j, d] - X[i, d]) ** 2
                d += 1
            r = r**0.5
            Y[i] += beta[j] * exp(-(r * theta)**2)
            j += 1
        i += 1

    return Y

