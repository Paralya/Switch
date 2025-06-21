
#> switch:modes/build_battle/preparation/summon_marker
#
# @within	switch:modes/build_battle/joined
#			switch:modes/build_battle/preparation/main
#

# Get coordinates of marker
execute store result entity @s Pos[0] double 1 run scoreboard players get #x switch.data
data modify entity @s Pos[1] set value 95.0d
execute store result entity @s Pos[2] double 1 run scoreboard players get #z switch.data

# Get ID and add tag
scoreboard players operation @s switch.temp.id = #next_id switch.temp.id
tag @s add switch.build_battle_marker

# Forceload the zone, and take a player
execute at @s run function switch:modes/build_battle/preparation/forceload_and_take_player

# Increment z and ID
scoreboard players add #z switch.data 48
scoreboard players add #next_id switch.temp.id 1

# Increment x if z >= 248
execute if score #z switch.data matches 248.. run scoreboard players add #x switch.data 48
execute if score #z switch.data matches 248.. run scoreboard players set #z switch.data 8

