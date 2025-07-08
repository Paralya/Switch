
#> switch:modes/pitch_creep/second
#
# @within	switch:modes/pitch_creep/calls/second
#

scoreboard players add #pitch_creep_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. run function switch:modes/pitch_creep/xp_bar
execute if score #pitch_creep_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/pitch_creep/give_items

# Spawning creepers
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {map:"pitch_creep_1"} positioned 3520 126 3520 run summon creeper ~-0.2 ~ ~ {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {map:"pitch_creep_1"} positioned 3520 126 3520 run summon creeper ~0.2 ~ ~ {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {map:"octogone_nether_ice"} positioned 160040 135 160040 run summon creeper ~-0.2 ~ ~ {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {map:"octogone_nether_ice"} positioned 160040 135 160040 run summon creeper ~0.2 ~ ~ {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {map:"octogone_nether_ice"} positioned 160040 135 160040 run summon creeper ~ ~ ~-0.2 {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {map:"octogone_nether_ice"} positioned 160040 135 160040 run summon creeper ~ ~ ~0.2 {Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}
execute if score #pitch_creep_seconds switch.data matches 0.. run tag @e[type=creeper,tag=switch.new] remove switch.new
execute if score #pitch_creep_seconds switch.data matches ..-1 at @n[type=marker,tag=switch.selected_map] run function switch:utils/safe_kill_macro {selector:"@e[type=creeper,distance=..100]"}

