
#> switch:modes/one_shot/respawn/compare_distance
#
# @executed	at @s & as @n[tag=switch.respawn,distance=0.1..]
#
# @within	switch:modes/one_shot/respawn/get_marker_distance [ at @s & as @n[tag=switch.respawn,distance=0.1..] ]
#			switch:modes/one_shot/respawn/get_player_distance [ as @a[tag=!detached] ]
#

## Real
# Get the distance
execute store result score #x switch.data run data get entity @s Pos[0]
execute store result score #y switch.data run data get entity @s Pos[1]
execute store result score #z switch.data run data get entity @s Pos[2]
scoreboard players operation #x switch.data -= #resp_x switch.data
scoreboard players operation #y switch.data -= #resp_y switch.data
scoreboard players operation #z switch.data -= #resp_z switch.data
execute if score #x switch.data matches ..-1 run scoreboard players operation #x switch.data *= #-1 switch.data
execute if score #y switch.data matches ..-1 run scoreboard players operation #y switch.data *= #-1 switch.data
execute if score #z switch.data matches ..-1 run scoreboard players operation #z switch.data *= #-1 switch.data

# Compare
scoreboard players operation #x switch.data += #y switch.data
scoreboard players operation #x switch.data += #z switch.data
execute if score #x switch.data < #min switch.data run scoreboard players operation #min switch.data = #x switch.data

