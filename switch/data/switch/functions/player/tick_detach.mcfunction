
gamemode adventure @s[gamemode=!adventure,tag=!can_creative]
team join switch.detached @s[team=!switch.tutorial]
tp @s[team=switch.tutorial] -500 69.69 -500 0 0

effect give @s[gamemode=survival] mining_fatigue 1 255 true
effect give @s[gamemode=!creative,gamemode=!spectator] resistance 1 255 true
effect give @s[gamemode=!creative,gamemode=!spectator] weakness 1 255 true
execute if entity @s[gamemode=!creative,gamemode=!spectator] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true

## Teleport inventory
# Get number of blocks
data modify storage switch:temp Inventory set from entity @s Inventory
scoreboard players set #inventory switch.data 0
execute store result score #inventory switch.data if data storage switch:temp Inventory[].tag.switch

# If lost (only) one item, check where
execute unless score #inventory switch.data matches 11 unless score #inventory switch.data matches 0 run scoreboard players set #inventory switch.data -1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_green run scoreboard players set @s switch.lobby_respawn 1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_white run scoreboard players set @s switch.lobby_respawn 2
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_blue run scoreboard players set @s switch.lobby_respawn 3
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_yellow run scoreboard players set @s switch.lobby_respawn 4
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_red run scoreboard players set @s switch.lobby_respawn 5
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_brown run scoreboard players set @s switch.lobby_respawn 6
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_purple run scoreboard players set @s switch.lobby_respawn 7
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_dripstone run scoreboard players set @s switch.lobby_respawn 8
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_pink run scoreboard players set @s switch.lobby_respawn 9
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_bricks run scoreboard players set @s switch.lobby_respawn 10
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_obsidian run scoreboard players set @s switch.lobby_respawn 11
execute if score #inventory switch.data matches -1 run tp @s 0 0 0
execute if score #inventory switch.data matches -1 run clear @s

# Teleport to respawn point
scoreboard players add @s switch.lobby_respawn 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=0}] run tp @s 0 69.69 0 0 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=1}] run tp @s 0 71 -10 90 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=2}] run tp @s 0 71 -10 -90 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=3}] run tp @s 0 76 -24 180 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=4}] run tp @s 9 75 23 -90 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=5}] run tp @s -14 74 9 0 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=6}] run tp @s -35 74 -9 180 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=7}] run tp @s -9 74 35 90 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=8}] run tp @s 9 73 47 -90 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=9}] run tp @s -47 77 10 0 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=10}] run tp @s -84 71 0 90 0
execute if entity @s[y=-64,dy=119,scores={switch.lobby_respawn=11}] run tp @s 51 76 -9 180 0

# If lost at least one item, setup inventory
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.3 with dripstone_block{switch:{jump_dripstone:1b},display:{Name:'{"text":"Dripstone Jump","color":"gold","italic":false}',Lore:['{"text":"by AirDox","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.4 with pink_concrete{switch:{jump_pink:1b},display:{Name:'{"text":"Pink Jump","color":"light_purple","italic":false}',Lore:['{"text":"by OfChara","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.5 with bricks{switch:{jump_bricks:1b},display:{Name:'{"text":"Bricks Jump","color":"#BC4A3C","italic":false}',Lore:['{"text":"by Thitanas","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.10 with lime_concrete{switch:{jump_green:1b},display:{Name:'{"text":"Green Jump","color":"green","italic":false}',Lore:['{"text":"by Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.11 with white_concrete{switch:{jump_white:1b},display:{Name:'{"text":"White Jump","color":"white","italic":false}',Lore:['{"text":"by Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.12 with blue_concrete{switch:{jump_blue:1b},display:{Name:'{"text":"Blue Jump","color":"blue","italic":false}',Lore:['{"text":"by Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.13 with yellow_concrete{switch:{jump_yellow:1b},display:{Name:'{"text":"Yellow Jump","color":"yellow","italic":false}',Lore:['{"text":"by ArtiGrrr","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.14 with red_concrete{switch:{jump_red:1b},display:{Name:'{"text":"Red Jump","color":"red","italic":false}',Lore:['{"text":"by Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.15 with brown_concrete{switch:{jump_brown:1b},display:{Name:'{"text":"Brown Jump","color":"#8B4513","italic":false}',Lore:['{"text":"by OfChara","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.16 with purple_concrete{switch:{jump_purple:1b},display:{Name:'{"text":"Purple Jump","color":"light_purple","italic":false}',Lore:['{"text":"by AirDox","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 10 run item replace entity @s inventory.22 with crying_obsidian{switch:{jump_obsidian:1b},display:{Name:'{"text":"Obsidian Jump","color":"dark_gray","italic":false}',Lore:['{"text":"by Stoupy51","color":"gray","italic":false}']}}


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

