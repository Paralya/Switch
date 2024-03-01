
# Get the respawn point with the highest distance to a player
execute as @e[tag=switch.respawn] at @s run function switch:modes/one_shot/respawn/get_player_distance
scoreboard players set #max switch.data 0
scoreboard players operation #max switch.data > @e[tag=switch.respawn] switch.data
execute as @e[tag=switch.respawn] if score @s switch.data = #max switch.data run tag @s add switch.respawn_max

# Teleport the player to the respawn point
tp @s @e[tag=switch.respawn_max,limit=1]
tag @e[tag=switch.respawn_max,limit=1] remove switch.respawn_max

