# Handle the log.txt file the way we want it...
import numpy as np
import matplotlib.pyplot as plt
from tabulate import tabulate
import csv

data_dict = {}
with open('./var_acc_log.txt', 'r') as infile:
    lines = infile.readlines()
    curr_version = ""
    curr_category = ""
    for line in lines:
        if "Py" in line:
            line = line.strip()
            curr_version = line
            data_dict[line] = {}
        elif ":" in line:
            # This is a subcategory!
            if "Variable and attribute r" in line:
                curr_category = "Var_att_read"
            elif "Variable and att" in line:
                curr_category = "Var_att_write"
            elif "Data structure r" in line:
                curr_category = "Data_struct_read"
            elif "Data s" in line:
                curr_category = "Data_struct_write"
            elif "Stack (" in line:
                curr_category = "Stack_ops"
            else:
                curr_category = "Timing loop overhead"
            data_dict[curr_version][curr_category] = {}
        elif "ns" in line:
            # Then this is one of the measurements; react accordingly
            tmp = line.split("ns\t")
            data_dict[curr_version][curr_category][tmp[1].strip()] = float(tmp[0].strip())
        else:
            continue

versions = ("cPython 3.7", "cPython 3.8", "cPython 3.9", "cPython 3.10", "cPython 3.11",
            "cPython 3.12", "PyPy 3.8-7.3.11", "PyPy3.10-7.3.13")
category_results = {
    'Var_att_read': [],
    'Var_att_write': [],
    'Data_struct_read': [],
    'Data_struct_write': [],
    'Stack_ops': [],
    "Timing loop overhead": []
}

attrib_list = [] # List of individual outputs
indiv_results = {'Parameter': []} # Results for each version

for key_outter in data_dict['cPython 3.7'].keys():
    for key_inner in data_dict['cPython 3.7'][key_outter]:
        attrib_list.append(key_inner)
        #indiv_results[key_inner] = []

indiv_results['Parameter'] = attrib_list

for ver in versions:
    indiv_results[ver] = []
    for category in data_dict[ver].keys():
        for attrib in data_dict[ver][category].keys():
            indiv_results[ver].append(data_dict[ver][category][attrib])

print(tabulate(indiv_results, headers='keys'))
#print(indiv_results.keys())
#print(indiv_results['read_local'])

graph_results = {}
for ind in range(len(attrib_list)):
    graph_results[attrib_list[ind]] = []
    for ver in versions:
        graph_results[attrib_list[ind]].append(indiv_results[ver][ind])


# for key in versions:

with open('var_access_out.csv', 'w', newline='') as csvfile:
    varwriter = csv.writer(csvfile, delimiter=',',
                            quotechar='|', quoting=csv.QUOTE_MINIMAL)
    varwriter.writerow(['Version'] + list(versions))
    for key in graph_results.keys():
        varwriter.writerow([key] + graph_results[key])

# x = np.arange(len(versions))  # the label locations
# width = 0.025  # the width of the bars
# multiplier = 0
# N = 25

# fig, ax = plt.subplots(layout='constrained', figsize=(3.5 * 4, 3.5 * -(-N//4)))

# for attribute, measurement in graph_results.items():
#     offset = width * multiplier
#     rects = ax.bar(x + offset, measurement, width, label=attribute)
#     ax.bar_label(rects, padding=5)
#     multiplier += 1

# # Add some text for labels, title and custom x-axis tick labels, etc.
# ax.set_ylabel('Time (ns)')
# ax.set_title('Operation Time by Version')
# ax.set_xticks(x + width, versions)
# ax.legend(loc='upper left', ncols=len(attrib_list))
# ax.set_ylim(0, 35)

# plt.show()