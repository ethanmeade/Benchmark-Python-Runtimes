#!/bin/zsh

eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#pyenv activate p
echo "Python 3.7" >> var_acc_log.txt
pyenv shell 3.7
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt
echo "Python 3.8" >> var_acc_log.txt
pyenv shell 3.8
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt
echo "Python 3.9" >> var_acc_log.txt
pyenv shell 3.9
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt
echo "Python 3.10" >> var_acc_log.txt
pyenv shell 3.10
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt
echo "Python 3.11" >> var_acc_log.txt
pyenv shell 3.11
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt
echo "Python 3.12" >> var_acc_log.txt
pyenv shell 3.12
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt
echo "PyPy 3.8-7.3.11" >> var_acc_log.txt
pyenv shell pypy3.8-7.3.11
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt
echo "PyPy3.10-7.3.13" >> var_acc_log.txt
pyenv shell pypy3.10-7.3.13
python var_acc_bench/var_access_benchmark.py >> var_acc_log.txt