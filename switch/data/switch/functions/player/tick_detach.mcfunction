
gamemode adventure @s[gamemode=!adventure,tag=!can_creative]
execute if entity @s[y=-64,dy=119] run tp @s 0 69.69 0 0 0
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
execute unless score #inventory switch.data matches 9 unless score #inventory switch.data matches 0 run scoreboard players set #inventory switch.data -1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_green run tp @s 0 71 -10 90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_white run tp @s 0 71 -10 -90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_blue run tp @s 0 76 -24 180 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_yellow run tp @s 9 75 23 -90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_red run tp @s -14 74 9 0 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_brown run tp @s -35 74 -9 180 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_purple run tp @s -9 74 35 90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_dripstone run tp @s 9 73 47 -90 0
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].tag.switch.jump_bricks run tp @s -84 71 0 90 0
execute if score #inventory switch.data matches -1 run clear @s

# If lost at least one item, setup inventory
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.3 with dripstone_block{switch:{jump_dripstone:1b},display:{Name:'{"text":"Dripstone Jump","color":"gold","italic":false}',Lore:['{"text":"par AirDox","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.5 with bricks{switch:{jump_bricks:1b},display:{Name:'{"text":"Bricks Jump","color":"#BC4A3C","italic":false}',Lore:['{"text":"par Thitanas","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.10 with lime_concrete{switch:{jump_green:1b},display:{Name:'{"text":"Green Jump","color":"green","italic":false}',Lore:['{"text":"par Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.11 with white_concrete{switch:{jump_white:1b},display:{Name:'{"text":"White Jump","color":"white","italic":false}',Lore:['{"text":"par Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.12 with blue_concrete{switch:{jump_blue:1b},display:{Name:'{"text":"Blue Jump","color":"blue","italic":false}',Lore:['{"text":"par Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.13 with yellow_concrete{switch:{jump_yellow:1b},display:{Name:'{"text":"Yellow Jump","color":"yellow","italic":false}',Lore:['{"text":"par ArtiGrrr","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.14 with red_concrete{switch:{jump_red:1b},display:{Name:'{"text":"Red Jump","color":"red","italic":false}',Lore:['{"text":"par Stoupy51","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.15 with brown_concrete{switch:{jump_brown:1b},display:{Name:'{"text":"Brown Jump","color":"#8B4513","italic":false}',Lore:['{"text":"par OfChara","color":"gray","italic":false}']}}
execute unless score #inventory switch.data matches 8 run item replace entity @s inventory.16 with purple_concrete{switch:{jump_purple:1b},display:{Name:'{"text":"Purple Jump","color":"light_purple","italic":false}',Lore:['{"text":"par AirDox","color":"gray","italic":false}']}}

