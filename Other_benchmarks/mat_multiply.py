# Test matrix multiplication with numpy
import numpy as np
import pyperf

arr_A = np.array([[4, 12, 59, 31, 13], [32, 51, 87, 65, 12], [30, 28, 7, 48, 51], [23, 22, 85, 35, 41], [43, 80, 4, 1, 74]])
arr_B = np.array([[32, 56], [57, 1], [0, 90], [33, 3], [56, 3]])

# Driver Code
if __name__ == '__main__':
    runner = pyperf.Runner()
    runner.metadata['description'] = "Matrix multiplication benchmark"

    runner.timeit('Mat_Mult', stmt='arr_A @ arr_B', setup=['import numpy as np', 'from __main__ import arr_A', 'from __main__ import arr_B'])