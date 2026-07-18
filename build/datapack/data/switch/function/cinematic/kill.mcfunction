
#> switch:cinematic/kill
#
# @executed	at @s
#
# @within	switch:cinematic/entity_tick_at_self
#			switch:cinematic/finish
#			switch:player/trigger/detach/basic_stuff [ as @e[tag=switch.cinematic,predicate=switch:has_same_id] ]
#

# Decrease the number of cinematic entities
scoreboard players remove #cinematic_entities switch.data 1

# Kill the entity
kill @s

