
#> switch:cinematic/kill
#
# @executed	at @a[tag=switch.temp,limit=1]
#
# @within	switch:cinematic/finish
#			switch:player/trigger/detach/basic_stuff [ as @e[tag=switch.cinematic,predicate=switch:has_same_id] ]
#

# Decrease the number of cinematic entities
scoreboard players remove #cinematic_entities switch.data 1

# Kill the entity
kill @s

