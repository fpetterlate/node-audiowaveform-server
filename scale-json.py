import json
import sys

if len(sys.argv) < 2:
    print("Usage: python scale-json.py file.json")
    exit()

filename = sys.argv[1]

with open(filename, "r") as f:
    file_content = f.read()

json_content = json.loads(file_content)
data = json_content["data"]
# number of decimals to use when rounding the peak value
digits = 2

max_val = float(max(data))
new_data = []
for x in data:
    new_data.append(round(x / max_val, digits))

json_content["data"] = new_data
file_content = json.dumps(json_content, separators=(',', ':'))

with open(filename, "w") as f:
    f.write(file_content)