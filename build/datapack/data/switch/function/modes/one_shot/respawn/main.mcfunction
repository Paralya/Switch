
#> switch:modes/one_shot/respawn/main
#
# @within	switch:modes/one_shot/death
#			switch:modes/one_shot/start [ as @a[tag=!detached] ]
#

# Get the respawn point with the highest distance to a player
execute as @e[tag=switch.respawn] at @s run function switch:modes/one_shot/respawn/get_player_distance
scoreboard players set #max switch.data 0
scoreboard players operation #max switch.data > @e[tag=switch.respawn] switch.data
execute as @e[tag=switch.respawn] if score @s switch.data = #max switch.data run tag @s add switch.respawn_max

# Teleport the player to the respawn point, and kill the respawn point
tp @s @n[tag=switch.respawn_max]
execute at @s facing entity @p[distance=0.01..] feet run tp @s ~ ~ ~ ~ ~
execute as @n[tag=switch.respawn_max] run function switch:modes/one_shot/respawn/kill_marker

# Spawn a new marker
execute summon marker run function switch:modes/one_shot/respawn/spawn_marker

# Give invisibility to the player for 2 seconds
effect give @s invisibility 2 0 true

