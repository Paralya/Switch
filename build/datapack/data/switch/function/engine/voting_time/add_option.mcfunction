
#> switch:engine/voting_time/add_option
#
# @within	switch:engine/voting_time/
#			switch:engine/voting_time/add_option
#

# Add the current index to the options
execute store result storage switch:temp index int 1 run scoreboard players get #fill_index switch.data
data modify storage bs:in random.weighted_choice.options append from storage switch:temp index

# Increment the index
scoreboard players add #fill_index switch.data 1

# Continue loop until the list is empty
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:engine/voting_time/add_option

