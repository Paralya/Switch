
#> switch:cinematic/kill
#
# @executed	as @e[type=item_display,tag=switch.cinematic]
#
# @within	switch:cinematic/finish
#			switch:player/trigger/detach/basic_stuff [ as @e[tag=switch.cinematic,predicate=switch:has_same_id] ]
#

# Decrease the number of cinematic entities
scoreboard players remove #cinematic_entities switch.data 1

# Kill the entity
kill @s

