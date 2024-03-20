#!/bin/zsh

eval "$(pyenv init -)"
pyenv shell 3.7
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_7.json
pyenv shell 3.8
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_8.json
pyenv shell 3.9
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_9.json
pyenv shell 3.10
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_10.json
pyenv shell 3.11
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_11.json
pyenv shell 3.12
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_3_12.json
pyenv shell pypy3.8-7.3.11
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_pypy_3_8.json
pyenv shell pypy3.10-7.3.13
python Other_benchmarks/fibonacci_iter.py --rigorous --output=pyperf_outs/Large_Benchmarks/Fibonacci_Iter/Fibonacci_Iter_pypy_3_10.json