
# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

# Import
import math

# Constantes
min = 0
max = 1000
color = "blue"
colorFull = "Bleue"
namespace = "switch"
base_path = f"{namespace}:modes/laser_game/update_sidebar/{color}_points/"
base_score_points = f"execute if score #{color}_points {namespace}.data matches "
base_score_suffix = f"execute if score #score_for_suffix {namespace}.data matches "
sidebar_number = 2	# DON'T FORGET TO CHANGE THIS
step = 5



# Delete old files (ending with .mcfunction)
for file in os.listdir():
	if file.endswith(".mcfunction"):
		os.remove(file)



# Create the .mcfunction file that contains all the prefixes and suffixes
f = open(".mcfunction", "w")
f.write("\n")

# Write the first prefix
f.write(f"{base_score_points}..99 run team modify {namespace}.temp.sidebar.{sidebar_number} prefix ")
f.write(f"[{{\"text\":\"Équipe {colorFull} : \",\"color\":\"{color}\"}}]\n")

# Loop for prefixes (100 lines will be written for suffixes later)
for i in range(min + 100, max, 100):

	# Condition for the score
	f.write(f"{base_score_points}{i}..{i + 99} run ")

	# Write the command
	f.write(f"team modify {namespace}.temp.sidebar.{sidebar_number} prefix ")
	f.write(f"[{{\"text\":\"Équipe {colorFull} : \",\"color\":\"{color}\"}},{{\"text\":\"{i // 100}\",\"color\":\"yellow\"}}]\n")

# Write the last prefix
f.write(f"{base_score_points}{max}.. run team modify {namespace}.temp.sidebar.{sidebar_number} prefix ")
f.write(f"[{{\"text\":\"Équipe {colorFull} : \",\"color\":\"{color}\"}},{{\"text\":\"{max // 100}\",\"color\":\"yellow\"}}]\n")


# Write scoreboard operation for the suffixes
f.write("\n")
f.write(f"scoreboard players operation #score_for_suffix {namespace}.data = #{color}_points {namespace}.data\n")
f.write(f"scoreboard players operation #score_for_suffix {namespace}.data %= #100 {namespace}.data\n\n")


# Loop for suffixes
for i in range(0, 100, step):

	# Condition for the score
	f.write(f"{base_score_suffix}{i} run ")

	# Récupération de la valeur du score sous forme de texte à 2 chiffres
	value = str(i)
	if len(value) == 1:
		value = "0" + value

	# Write the command
	f.write(f"team modify {namespace}.temp.sidebar.{sidebar_number} suffix ")
	f.write(f"[{{\"text\":\"{value}\",\"color\":\"yellow\"}}]\n")


# Close the file
f.write("\n")
f.close()

