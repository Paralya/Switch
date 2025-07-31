
#> switch:cinematic/finish
#
# @executed	as @e[type=item_display,tag=switch.cinematic]
#
# @within	switch:cinematic/entity_tick
#

# Restore the player's gamemode
execute at @s run tp @a[tag=switch.temp] ~ ~-1.6 ~ ~ ~
execute if entity @s[tag=switch.was_survival] run gamemode survival @a[tag=switch.temp]
execute if entity @s[tag=switch.was_adventure] run gamemode adventure @a[tag=switch.temp]
execute if entity @s[tag=switch.was_creative] run gamemode creative @a[tag=switch.temp]

# Kill the entity
function switch:cinematic/kill

