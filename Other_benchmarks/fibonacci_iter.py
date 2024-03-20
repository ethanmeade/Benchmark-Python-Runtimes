# Find the n-th fibonacci number iteratively;
# run the benchmark on this function.
# Iterative and recursive approaches to fibonacci taken from this medium post:
# https://medium.com/geekculture/fibonacci-sequence-in-python-e772808c71e6
# by Rohit Kumar Thakur
import pyperf

def fibonacci(given):
    assert given>0
    secondLast = 0
    Last = 1
    if given == 1:
        return secondLast
    elif given == 2:
        return Last
    else:
        for i in range(3, given+1):
            result = secondLast + Last
            secondLast = Last
            Last = result
        return result
 
# Driver Code
if __name__ == '__main__':
    arr = []
    
    runner = pyperf.Runner()
    runner.metadata['description'] = "Iteratively generate the fibonacci numbers benchmark"

    runner.timeit('Fibonacci_Iter', stmt='fibonacci(50)', setup=['from __main__ import fibonacci'])