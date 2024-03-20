#!/bin/zsh

eval "$(pyenv init -)"
pyenv shell 3.10
echo "Merge Sort Int"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_7.json ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_8.json ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_9.json ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_10.json ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_11.json ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_12.json ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_pypy_3_8.json ./pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_pypy_3_10.json --table
echo ""
echo "Merge Sort Float"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_3_7.json ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_3_8.json ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_3_9.json ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_3_10.json ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_3_11.json ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_3_12.json ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_pypy_3_8.json ./pyperf_outs/Large_Benchmarks/MergeSortFloat/mergeSortFloat_pypy_3_10.json --table
echo ""
echo "Matrix Multiplication (Speed)"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_7.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_8.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_9.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_10.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_11.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_12.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_pypy_3_8.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_pypy_3_10.json --table
echo ""
echo "Matrix Multiplication (Memory)"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_7_malloc.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_8_malloc.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_9_malloc.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_10_malloc.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_11_malloc.json ./pyperf_outs/Large_Benchmarks/Matrix_Multiply/MatrixMultiply_3_12_malloc.json --table
echo ""
echo "Iterative Fibonacci"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_7.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_8.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_9.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_10.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_11.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_12.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_pypy_3_8.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_pypy_3_10.json --table
echo ""
echo "Recursive Fibonacci (speed)"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_7.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_8.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_9.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_10.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_11.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_12.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_pypy_3_8.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_pypy_3_10.json --table
echo ""
echo "Recursive Fibonacci (memory)"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_7_malloc.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_8_malloc.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_9_malloc.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_10_malloc.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_11_malloc.json ./pyperf_outs/Large_Benchmarks/Fibonacci_Recurse/Fibonacci_Recurse_3_12_malloc.json --table
echo ""
echo "Triple Nested Loop (speed)"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_7.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_8.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_9.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_10.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_11.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_12.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_pypy_3_8.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_pypy_3_10.json --table
echo ""
echo "Triple Nested Loop (memory)"
python3 -m pyperf compare_to ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_7_malloc.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_8_malloc.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_9_malloc.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_10_malloc.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_11_malloc.json ./pyperf_outs/Large_Benchmarks/Triple_Nested_Loop/Triple_Nested_Loop_3_12_malloc.json --table

