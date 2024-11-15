
gamemode adventure @s[gamemode=!adventure,tag=!can_creative]
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
execute if score #inventory switch.data matches -1 run tp @s 0 0 0
execute if score #inventory switch.data matches -1 run clear @s

# Teleport to respawn point
scoreboard players add @s switch.lobby_respawn 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=0}] run tp @s 0 69.69 0 0 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=1}] run tp @s 0 70.1 -10 90 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=2}] run tp @s 0 70.1 -10 -90 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=3}] run tp @s 0 75.51 -24 180 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=4}] run tp @s 9 74.51 23 -90 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=5}] run tp @s -14 73.51 9 0 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=6}] run tp @s -35 73.1 -9 180 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=7}] run tp @s -9 73.1 35 90 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=8}] run tp @s 9 73.1 47 -90 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=9}] run tp @s -47 76.1 10 0 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=10}] run tp @s -84 70.1 0 90 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=11}] run tp @s 51 74.6 -9 180 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=12}] run tp @s 9 74.6 111 -90 0
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=119,scores={switch.lobby_respawn=13}] run tp @s -12 74.1 91 90 0

# If lost at least one item, setup inventory
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.3 with dripstone_block[item_name='{"text":"Dripstone Jump","color":"gold"}',lore=['{"text":"by AirDox","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_dripstone:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.4 with pink_concrete[item_name='{"text":"Pink Jump","color":"light_purple"}',lore=['{"text":"by OfChara","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_pink:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.5 with bricks[item_name='{"text":"Bricks Jump","color":"#BC4A3C"}',lore=['{"text":"by Thitanas","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_bricks:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.10 with lime_concrete[item_name='{"text":"Green Jump","color":"green"}',lore=['{"text":"by Stoupy51","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_green:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.11 with white_concrete[item_name='{"text":"White Jump","color":"white"}',lore=['{"text":"by Stoupy51","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_white:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.12 with blue_concrete[item_name='{"text":"Blue Jump","color":"blue"}',lore=['{"text":"by Stoupy51","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_blue:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.13 with yellow_concrete[item_name='{"text":"Yellow Jump","color":"yellow"}',lore=['{"text":"by ArtiGrrr","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_yellow:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.14 with red_concrete[item_name='{"text":"Red Jump","color":"red"}',lore=['{"text":"by Stoupy51","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_red:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.15 with brown_concrete[item_name='{"text":"Brown Jump","color":"#8B4513"}',lore=['{"text":"by OfChara","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_brown:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.16 with purple_concrete[item_name='{"text":"Purple Jump","color":"light_purple"}',lore=['{"text":"by AirDox","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_purple:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.21 with copper_block[item_name='{"text":"Duality Jump","color":"#B87333"}',lore=['{"text":"by Stoupy51 / AirDox / OfChara","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_duality:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.22 with suspicious_gravel[item_name='{"text":"GraviGlitch Jump","color":"#676767"}',lore=['{"text":"by OfChara / Stoupy51","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_graviglitch:true}}]
execute unless score #inventory switch.data matches 13 run item replace entity @s inventory.23 with crying_obsidian[item_name='{"text":"Obsidian Jump","color":"dark_gray"}',lore=['{"text":"by Stoupy51","color":"gray","italic":false}'],custom_data={switch:{jump:true,jump_obsidian:true}}]


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
execute if entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37,nbt=!{Inventory:[{id:"minecraft:suspicious_gravel",count:42}]}] run give @s suspicious_gravel[can_place_on={blocks:["smooth_red_sandstone","orange_wall_banner","red_sandstone_wall"]},custom_data={switch:{"to_place":true}}] 42
execute unless entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37] run clear @s suspicious_gravel[custom_data~{switch:{"to_place":true}}]

