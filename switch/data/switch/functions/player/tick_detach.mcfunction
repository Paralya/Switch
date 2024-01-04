
gamemode adventure @s[gamemode=!adventure,tag=!can_creative]
execute if entity @s[y=-64,dy=119] run tp @s 0 69.69 0 0 0
team join switch.detached @s[team=!switch.tutorial]

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
execute if score #inventory switch.data matches 7 run scoreboard players set #inventory switch.data -1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_green run tp @s 0 71 -10 90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_white run tp @s 0 71 -10 -90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_blue run tp @s 0 76 -24 180 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_yellow run tp @s 9 75 23 -90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_red run tp @s -14 74 9 0 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_brown run tp @s -35 74 -9 180 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_purple run tp @s -9 74 35 90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_dripstone run tp @s 9 73 47 -90 0
execute if score #inventory switch.data matches -1 run clear @s #switch:concretes{switch:{}}
execute if score #inventory switch.data matches -1 run clear @s dripstone_block{switch:{}}

# If lost at least one item, setup inventory
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.4 with dripstone_block{switch:{jump_dripstone:1b},display:{Name:'{"text":"Dripstone Jump","color":"gold","italic":false}'}}
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.10 with lime_concrete{switch:{jump_green:1b},display:{Name:'{"text":"Green Jump","color":"green","italic":false}'}}
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.11 with white_concrete{switch:{jump_white:1b},display:{Name:'{"text":"White Jump","color":"white","italic":false}'}}
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.12 with blue_concrete{switch:{jump_blue:1b},display:{Name:'{"text":"Blue Jump","color":"blue","italic":false}'}}
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.13 with yellow_concrete{switch:{jump_yellow:1b},display:{Name:'{"text":"Yellow Jump","color":"yellow","italic":false}'}}
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.14 with red_concrete{switch:{jump_red:1b},display:{Name:'{"text":"Red Jump","color":"red","italic":false}'}}
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.15 with brown_concrete{switch:{jump_brown:1b},display:{Name:'{"text":"Brown Jump","color":"#8B4513","italic":false}'}}
execute unless score #inventory switch.data matches 7 run item replace entity @s inventory.16 with purple_concrete{switch:{jump_purple:1b},display:{Name:'{"text":"Purple Jump","color":"light_purple","italic":false}'}}

