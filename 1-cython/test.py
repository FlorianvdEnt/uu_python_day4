import hello_world, cy_primes, primes
import time

t0 = time.time()

for i in range(10): primes.primes(1000)
t1 = time.time()

for i in range(10): cy_primes.primes(1000)
t2 = time.time()

print('vanilla python', t1 - t0)
print('cython', t2 - t1)


