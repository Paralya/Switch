
## Python script to generate a hidden advancement for each advancement

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

# Imports
import os

# Get all .json files path in the previous directory
paths = []
for root, dirs, files in os.walk("../../"):
	for file in files:
		if file.endswith(".json") and "categories" not in root:
			paths.append(file.replace(".json",""))

# For each path, create a hidden advancement
for p in paths:
	with open(f"{p}.json", "w") as f:
		f.write("""{
	"criteria": {"requirement": {"trigger": "minecraft:tick"}},
	"requirements": [["requirement"]],
	"parent": "switch:visible/ADV_ID"
}
""".replace("ADV_ID", p))

