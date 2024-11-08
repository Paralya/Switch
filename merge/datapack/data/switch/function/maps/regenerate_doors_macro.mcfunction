
# Get doors
$data modify storage switch:temp doors set from storage switch:doors $(name)

# While there are doors,
execute if data storage switch:temp doors[0] run function switch:maps/regenerate_doors_loop with storage switch:temp doors[0]

