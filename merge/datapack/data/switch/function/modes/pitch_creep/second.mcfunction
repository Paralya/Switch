
scoreboard players add #pitch_creep_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. run function switch:modes/pitch_creep/xp_bar
execute if score #pitch_creep_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/pitch_creep/give_items

# Spawning creepers
execute if score #pitch_creep_seconds switch.data matches 0.. at @n[type=marker,tag=switch.selected_map] run summon creeper ~-.2 ~ ~ {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. at @n[type=marker,tag=switch.selected_map] run summon creeper ~.2 ~ ~ {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. run tag @e[type=creeper,tag=switch.new] remove switch.new
execute if score #pitch_creep_seconds switch.data matches ..-1 run tp @e[type=!player,type=!marker] 0 -10000 0
execute if score #pitch_creep_seconds switch.data matches ..-1 run kill @e[type=!player,type=!marker]

