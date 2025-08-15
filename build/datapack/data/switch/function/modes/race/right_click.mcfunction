
#> switch:modes/race/right_click
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}]
#
# @within	switch:modes/race/tick [ as @a[tag=!detached,scores={switch.right_click=1..}] ]
#

# Manage Respawns
function switch:translations/modes_race_right_click
execute if score #race_seconds switch.data matches 3.. unless score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.classic_respawn run function switch:modes/race/checkpoints/respawn/classic
execute if score #race_seconds switch.data matches 3.. if data entity @s SelectedItem.components."minecraft:custom_data".switch.hard_respawn run function switch:modes/race/checkpoints/respawn/hard

# Manage Votes
execute unless score @s switch.temp.vote_collisions matches 1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.enable_collisions run function switch:modes/race/vote_for_collisions
execute unless score @s switch.temp.change_map matches 1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.change_map run function switch:modes/race/vote_for_change_map

# Playsounds
execute if entity @s[tag=switch.playsound] at @s run playsound switch:wormhole_potion ambient @s ^ ^ ^3
execute if entity @s[tag=switch.playsound] at @s run particle portal ^ ^1 ^1 1 1 1 1 1000
tag @s remove switch.playsound

# Reset score
scoreboard players reset @s switch.right_click

