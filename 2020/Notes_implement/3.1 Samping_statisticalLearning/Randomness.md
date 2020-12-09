# 1. [Randomness](https://machinelearningmastery.com/randomness-in-machine-learning/)
## 1.1 [Numpy](https://docs.scipy.org/doc/numpy-1.15.0/reference/routines.random.html)

**Pseudorandom:** generated with a pseudorandom number generator (PRNG), 
which is essentially any algorithm for generating seemingly random but still reproducible data.
- They start with a random number, known as the seed, and then use an algorithm to generate a pseudo-random **sequence of bits based on it**.
- The default when you don’t seed the generator is to use your **current system time** or a “randomness source” from your OS if one is available.
