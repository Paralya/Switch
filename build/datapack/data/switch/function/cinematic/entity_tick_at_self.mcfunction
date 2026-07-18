
#> switch:cinematic/entity_tick_at_self
#
# @executed	at @s
#
# @within	switch:tick [ at @s ]
#

# Find the player and execute at him (for easy distance=0)
scoreboard players operation #player_id switch.id = @s switch.id

# Tag the linked player, storing success so the same selector also tells us if they are online
execute store success score #temp switch.data run tag @a[predicate=switch:has_same_id,limit=1] add switch.temp
execute if score #temp switch.data matches 0 run return run function switch:cinematic/kill
execute at @a[tag=switch.temp,limit=1] run function switch:cinematic/entity_tick_at_player
tag @a[tag=switch.temp,limit=1] remove switch.temp

