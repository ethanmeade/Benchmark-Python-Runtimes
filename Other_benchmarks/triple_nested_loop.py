# Make a big, triple-nested for loop and see how long it takes to process through.
import pyperf

def triple_loop(n):
    tmp = 0
    for ind in range(n):
        for jnd in range(ind + 2):
            for knd in range(jnd % 4):
                tmp += knd
    return tmp
 
# Driver Code
if __name__ == '__main__':
    runner = pyperf.Runner()
    runner.metadata['description'] = "A triple-nested for loop containing addition as a benchmark."
    runner.timeit('Triple Loop', stmt='triple_loop(20)', setup=['from __main__ import triple_loop'])