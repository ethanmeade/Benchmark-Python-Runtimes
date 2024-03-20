#!/bin/zsh

eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#pyenv activate p
#echo "Python 3.7" >> mergeSortInt_log.txt
pyenv shell 3.7
python Other_benchmarks/mergesort.py --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_7.json
#echo "Python 3.8" >> mergeSortInt_log.txt
pyenv shell 3.8
python Other_benchmarks/mergesort.py  --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_8.json
#echo "Python 3.9" >> mergeSortInt_log.txt
pyenv shell 3.9
python Other_benchmarks/mergesort.py --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_9.json
#echo "Python 3.10" >> mergeSortInt_log.txt
pyenv shell 3.10
python Other_benchmarks/mergesort.py --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_10.json
#echo "Python 3.11" >> mergeSortInt_log.txt
pyenv shell 3.11
python Other_benchmarks/mergesort.py --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_11.json
#echo "Python 3.12" >> mergeSortInt_log.txt
pyenv shell 3.12
python Other_benchmarks/mergesort.py --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_3_12.json
#echo "PyPy 3.8-7.3.11" >> mergeSortInt_log.txt
pyenv shell pypy3.8-7.3.11
python Other_benchmarks/mergesort.py --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_pypy_3_8.json
#echo "PyPy3.10-7.3.13" >> mergeSortInt_log.txt
pyenv shell pypy3.10-7.3.13
python Other_benchmarks/mergesort.py --output=pyperf_outs/Large_Benchmarks/MergeSortInt/mergeSortInt_pypy_3_10.json
# It's "--rigorous", not "--rigourous".