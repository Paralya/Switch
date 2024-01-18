
## Calculation
# Get local and global totals
execute store result score #local_total switch.data run data get storage switch:temp copy[0].total
scoreboard players operation #total_players switch.data = #next_id switch.id

# Calculate percentages
scoreboard players operation #local_total switch.data *= #100000 switch.data
scoreboard players operation #local_total switch.data /= #total_players switch.data
scoreboard players operation #digits switch.data = #local_total switch.data
scoreboard players operation #digits switch.data %= #1000 switch.data
scoreboard players operation #local_total switch.data /= #1000 switch.data

# Store the results
execute store result storage switch:advancements copy[0].percent.int int 1 run scoreboard players get #local_total switch.data
execute store result storage switch:advancements copy[0].percent.digits int 1 run scoreboard players get #digits switch.data

# Append to the new list
data modify storage switch:temp new append from storage switch:advancements copy[0]

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:advancements/percentages_recalculation_loop with storage switch:temp copy[0]

