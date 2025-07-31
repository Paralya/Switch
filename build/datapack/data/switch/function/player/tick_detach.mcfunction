
#> switch:player/tick_detach
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick
#

# Global variable indicating number of players in the lobby
scoreboard players add #players_in_lobby switch.data 1

gamemode adventure @s[gamemode=creative,tag=!can_creative]
team join switch.detached @s[team=!switch.tutorial]
tp @s[team=switch.tutorial] -500 69.69 -500 0 0

effect give @s[gamemode=survival] mining_fatigue 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] resistance 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] weakness 1 127 true
execute if entity @s[gamemode=!creative,gamemode=!spectator] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true
attribute @s[gamemode=!creative,gamemode=!spectator] safe_fall_distance base set 1024

## Teleport inventory
# Get number of blocks
data modify storage switch:temp Inventory set from entity @s Inventory
scoreboard players set #inventory switch.data 0
execute store result score #inventory switch.data if data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump

# If lost (only) one item, check where
execute unless score #inventory switch.data matches 13 unless score #inventory switch.data matches 0 run scoreboard players set #inventory switch.data -1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_green run scoreboard players set @s switch.lobby_respawn 1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_white run scoreboard players set @s switch.lobby_respawn 2
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_blue run scoreboard players set @s switch.lobby_respawn 3
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_yellow run scoreboard players set @s switch.lobby_respawn 4
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_red run scoreboard players set @s switch.lobby_respawn 5
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_brown run scoreboard players set @s switch.lobby_respawn 6
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_purple run scoreboard players set @s switch.lobby_respawn 7
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_dripstone run scoreboard players set @s switch.lobby_respawn 8
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_pink run scoreboard players set @s switch.lobby_respawn 9
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_bricks run scoreboard players set @s switch.lobby_respawn 10
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_obsidian run scoreboard players set @s switch.lobby_respawn 11
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_duality run scoreboard players set @s switch.lobby_respawn 12
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_graviglitch run scoreboard players set @s switch.lobby_respawn 13
execute if score #inventory switch.data matches -1 run tag @s add switch.lobby_respawn
execute if score #inventory switch.data matches -1 run clear @s

# Teleport to respawn point
scoreboard players add @s switch.lobby_respawn 0
execute if entity @s[tag=!switch.lobby_respawn,gamemode=!creative,gamemode=!spectator,y=-64,dy=127] run tag @s add switch.lobby_respawn
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=0}] run function switch:cinematic/launch {x:0.5,y:69.69,z:0.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=1}] run function switch:cinematic/launch {x:0.5,y:70.1,z:-9.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=2}] run function switch:cinematic/launch {x:0.5,y:70.1,z:-9.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=3}] run function switch:cinematic/launch {x:0.5,y:75.51,z:-23.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=4}] run function switch:cinematic/launch {x:9.5,y:74.51,z:23.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=5}] run function switch:cinematic/launch {x:-14.5,y:73.51,z:9.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=6}] run function switch:cinematic/launch {x:-34.5,y:73.1,z:-8.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=7}] run function switch:cinematic/launch {x:-8.5,y:73.1,z:35.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=8}] run function switch:cinematic/launch {x:9.5,y:73.1,z:47.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=9}] run function switch:cinematic/launch {x:-46.5,y:76.1,z:10.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=10}] run function switch:cinematic/launch {x:-84.5,y:70.1,z:0.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=11}] run function switch:cinematic/launch {x:51.5,y:74.6,z:-8.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=12}] run function switch:cinematic/launch {x:9.5,y:74.6,z:111.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=13}] run function switch:cinematic/launch {x:-11.5,y:74.1,z:91.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
tag @s remove switch.lobby_respawn

# If lost at least one item, setup inventory
execute unless score #inventory switch.data matches 13 run function switch:player/setup_lobby_inventory

## Jumps advancements
advancement grant @s[x=-8,y=81,z=-22,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_green
advancement grant @s[x=22,y=88,z=0,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_white
advancement grant @s[x=0,y=82,z=-39,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_blue
advancement grant @s[x=34,y=82,z=47,distance=..1,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_dripstone
advancement grant @s[x=63,y=88,z=10,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_yellow
advancement grant @s[x=-26,y=91,z=15,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_red
advancement grant @s[x=-20,y=75,z=-78,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_brown
advancement grant @s[x=-42,y=94,z=32,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_purple
advancement grant @s[x=-44,y=93,z=27,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_pink
advancement grant @s[x=-123,y=79,z=-11,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_bricks
advancement grant @s[x=36,y=84,z=-73,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_obsidian
execute if entity @a[gamemode=adventure,x=43,y=86,z=84,dx=0,dy=0,dz=0] if entity @a[gamemode=adventure,x=45,y=86,z=84,dx=0,dy=0,dz=0] run advancement grant @a[gamemode=adventure,x=44,y=86,z=84,distance=..2] only switch:visible/jump_duality
advancement grant @s[x=-83,y=100,z=71,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_graviglitch

# GraviGlitch jump gives
execute if entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37,nbt=!{Inventory:[{id:"minecraft:suspicious_gravel",count:42}]}] run clear @s suspicious_gravel[minecraft:custom_data~{switch:{"to_place":true}}]
execute if entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37,nbt=!{Inventory:[{id:"minecraft:suspicious_gravel",count:42}]}] run give @s suspicious_gravel[can_place_on={blocks:["smooth_red_sandstone","orange_wall_banner","red_sandstone_wall"]},custom_data={"switch":{"to_place":true}}] 42
execute unless entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37] run clear @s suspicious_gravel[custom_data~{"switch":{"to_place":true}}]

