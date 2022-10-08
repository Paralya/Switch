
tag @s add switch.temp

#Store player motion and call function to the vehicle
execute store result score #motion_x switch.data run data get entity @s Motion[0] 1000000
execute store result score #motion_z switch.data run data get entity @s Motion[2] 1000000

data modify storage switch:main Rotation set from entity @s Rotation[0]
scoreboard players set #instant_engine_max switch.data 0
execute store success score #instant_engine_max switch.data run scoreboard players reset @s[scores={right=1..}] right
scoreboard players set #mushroom switch.data 0

execute as @e[tag=switch.kart,predicate=switch:have_player_passenger] at @s run function switch:modes/mario_kart/kart/called_by_player

data remove storage switch:main Rotation
tag @s remove switch.temp

