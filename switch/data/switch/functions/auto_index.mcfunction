
# Copy the minigames list to a temporary storage and add an index
data modify storage switch:main temp set from storage switch:main minigames[0]
execute store result storage switch:main temp.index int 1 run scoreboard players get #index switch.data
scoreboard players add #index switch.data 1

# Copy the temporary storage back to the new minigames list
data modify storage switch:main indexed_minigames append from storage switch:main temp

# Create the stats objective for the minigame
function switch:utils/create_stats_objective with storage switch:main temp

# Remove the first minigame from the list and continue
data remove storage switch:main minigames[0]
execute if data storage switch:main minigames[0] run function switch:auto_index

