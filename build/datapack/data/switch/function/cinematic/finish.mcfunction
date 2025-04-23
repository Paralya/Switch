
#> switch:cinematic/finish
#
# @within	switch:cinematic/entity_tick
#

# Decrease the number of cinematic entities
scoreboard players remove #cinematic_entities switch.data 1

# Restore the player's gamemode
execute at @s run tp @a[tag=switch.temp] @s
execute if entity @s[tag=switch.was_survival] run gamemode survival @a[tag=switch.temp]
execute if entity @s[tag=switch.was_adventure] run gamemode adventure @a[tag=switch.temp]
execute if entity @s[tag=switch.was_creative] run gamemode creative @a[tag=switch.temp]

# Kill the entity
kill @s

