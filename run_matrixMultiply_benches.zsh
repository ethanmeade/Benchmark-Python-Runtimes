#!/bin/zsh

eval "$(pyenv init -)"
pyenv shell 3.7
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_7.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_7_malloc.json
pyenv shell 3.8
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_8.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_8_malloc.json
pyenv shell 3.9
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_9.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_9_malloc.json
pyenv shell 3.10
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_10.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_10_malloc.json
pyenv shell 3.11
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_11.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_11_malloc.json
pyenv shell 3.12
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_12.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_12_malloc.json
pyenv shell pypy3.8-7.3.11
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_pypy_3_8.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_pypy_3_8_malloc.json
pyenv shell pypy3.10-7.3.13
python Other_benchmarks/mat_multiply.py --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_pypy_3_10.json
python Other_benchmarks/mat_multiply.py --tracemalloc --output=pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_pypy_3_10_malloc.json