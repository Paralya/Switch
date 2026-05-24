
#> switch:cinematic/finish
#
# @executed	at @a[tag=switch.temp,limit=1]
#
# @within	switch:cinematic/entity_tick_at_player
#

# Restore the player's gamemode
execute at @s run tp @a[tag=switch.temp,limit=1] ~ ~-1.6 ~ ~ ~
execute at @s if entity @s[tag=switch.was_survival] positioned ~ ~-1.6 ~ run gamemode survival @a[distance=0,tag=switch.temp,limit=1]
execute at @s if entity @s[tag=switch.was_adventure] positioned ~ ~-1.6 ~ run gamemode adventure @a[distance=0,tag=switch.temp,limit=1]
execute at @s if entity @s[tag=switch.was_creative] positioned ~ ~-1.6 ~ run gamemode creative @a[distance=0,tag=switch.temp,limit=1]

# Kill the entity
function switch:cinematic/kill

