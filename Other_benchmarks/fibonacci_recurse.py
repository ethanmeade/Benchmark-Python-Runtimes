# Find the n-th fibonacci number recursively;
# run the benchmark on this function.
# Iterative and recursive approaches to fibonacci taken from this medium post:
# https://medium.com/geekculture/fibonacci-sequence-in-python-e772808c71e6
# by Rohit Kumar Thakur
import pyperf

def fibonacci(n):
    assert n>0
    if n == 1:
        return 0
    elif n == 2:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)
 
# Driver Code
if __name__ == '__main__':
    arr = []
    
    runner = pyperf.Runner()
    runner.metadata['description'] = "Iteratively generate the fibonacci numbers benchmark"
    # used to be a call to fibonacci with parameter 50, like it's iterative cousin.
    # Unsurprisingly, bad idea. 
    runner.timeit('Fibonacci_Iter', stmt='fibonacci(25)', setup=['from __main__ import fibonacci'])