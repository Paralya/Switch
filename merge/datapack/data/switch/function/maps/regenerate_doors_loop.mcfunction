
# Setblock door
$setblock $(x) $(y) $(z) $(door)

# While there are doors,
data remove storage switch:temp doors[0]
execute if data storage switch:temp doors[0] run function switch:maps/regenerate_doors_loop with storage switch:temp doors[0]

