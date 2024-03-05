
## Python script that will extract all tellraw and title messages in the functions folder and generate a file for easy translations possibility
# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()
	pass

# Constants and imports
FUNCTIONS_FOLDER = "../"
FOLDERS_TO_IGNORE = ["translations"]
MESSAGE_TYPES = ["tellraw", "title"]
SPLITTERS = [m_type + " @" for m_type in MESSAGE_TYPES]

# Get each filepath where a tellraw is present and store the tellraw lines
messages_per_file = dict()
for root, dirs, files in os.walk(FUNCTIONS_FOLDER):
	for file in files:
		if file.endswith(".mcfunction") and not any(folder in root for folder in FOLDERS_TO_IGNORE):
			path = os.path.join(root, file).replace("\\", "/")
			with open(path, "r", encoding="utf-8") as f:
				lines = f.readlines()
				messages = []
				for line in lines:
					for splitter in SPLITTERS:
						if splitter in line:
							messages.append((splitter, line))
							break
				if messages:
					messages_per_file[path] = messages


# For each path, create a file containing all messages
SCORE_SELECTOR = "switch.lang=0"
for path, messages in messages_per_file.items():
	new_path = path.replace("../","").replace("/","_")
	with open(new_path, "w", encoding="utf-8") as f:
		content = "\n# French\n"
		for splitter, line in messages:

			# Update the tellraw part to only select player with score of switch.lang equal to 0
			splitted = line.split(splitter)
			if splitted[1][1] != '[': # Do not have an advanced selector
				splitted[1] = splitted[1][0] + f"[scores={{{SCORE_SELECTOR}}}]" + splitted[1][1:]
			else: # Have an advanced selector
				if "scores={" in splitted[1]: # Already have a score selector
					splitted[1] = splitted[1].replace("scores={", f"scores={{{SCORE_SELECTOR},")
				else: # No score selector
					splitted[1] = splitted[1][0] + f"[scores={{{SCORE_SELECTOR}}}," + splitted[1][2:]
			line = splitter.join(splitted)

			# Add the line to the file
			content += line
		f.write(content + "\n")

		
	# Update original file to aim for the new function
	with open(path, "r", encoding="utf-8") as f:

		# Get file content without lines containing messages
		new_content = []
		lines = f.readlines()
		last_line = 0
		for i, line in enumerate(lines):
			if "tellraw @" not in line:
				new_content.append(line)
			else:
				last_line = i + 1 - len(messages) # As i increase even if the line is not written, we need to remove the number of lines we skip

		# Add a function call to the new file
		call = "function switch:translations/tellraw/" + new_path.replace(".mcfunction","") + "\n"
		new_content = new_content[:last_line] + [call] + new_content[last_line:]
		new_content = "".join(new_content)
	with open(path, "w", encoding="utf-8") as f:
		f.write(new_content)

