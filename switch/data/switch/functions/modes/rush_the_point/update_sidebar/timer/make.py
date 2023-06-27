
# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

# Import
import math

# Constantes
min = 0
max = 1200
namespace = "switch"
base_path = f"{namespace}:modes/rush_the_point/update_sidebar/timer/"
base_score_time = f"execute if score #remaining_time {namespace}.data matches "
base_score_suffix = f"execute if score #score_for_suffix {namespace}.data matches "
sidebar_number = 3	# DON'T FORGET TO CHANGE THIS



# Delete old files (ending with .mcfunction)
for file in os.listdir():
	if file.endswith(".mcfunction"):
		os.remove(file)



# Create the .mcfunction file that contains all the prefixes and suffixes
f = open(".mcfunction", "w")
f.write("\n")


# Loop for prefixes
for minutes in range(min, (max // 60) + 1):

	# Condition for the score
	f.write(f"{base_score_time}{minutes * 60}..{minutes * 60 + 59} run ")

	# Write the command
	f.write(f"team modify {namespace}.temp.sidebar.{sidebar_number} prefix ")
	f.write(f"[{{\"text\":\"Temps restant : \"}},{{\"text\":\"{minutes}\",\"color\":\"yellow\"}},{{\"text\":\"m\"}}]\n")


# Write scoreboard operation for the suffixes
f.write("\n\n")
f.write(f"scoreboard players operation #score_for_suffix {namespace}.data = #remaining_time {namespace}.data\n")
f.write(f"scoreboard players operation #score_for_suffix {namespace}.data %= #60 {namespace}.data\n\n")


# Loop for suffixes
for seconds in range(0, 60):

	# Prepare the second string
	secs = str(seconds)
	if seconds < 10:
		secs = "0" + secs
	
	# Condition for the score
	f.write(f"{base_score_suffix}{seconds} run ")

	# Write the command
	f.write(f"team modify {namespace}.temp.sidebar.{sidebar_number} suffix ")
	f.write(f"[{{\"text\":\"{secs}\",\"color\":\"yellow\"}},{{\"text\":\"s\"}}]\n")


# Close the file
f.write("\n")
f.close()

