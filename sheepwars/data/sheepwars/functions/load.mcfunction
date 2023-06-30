
#> sheepwars:load
#
# @within			none
# @executed			unknown context
#
# @description		Function that prepares everything for the SheepWars datapack
#					The datapack is assuming that the block 0 10 0 is forceloaded (Used for loots)
#


## Scoreboards
# Delete all scoreboards
scoreboard objectives remove sheepwars.data
scoreboard objectives remove sheepwars.right_click

# Data scoreboard for math and stuff
scoreboard objectives add sheepwars.data dummy

# Rightclick detection (You should use an invisible warped_fungus_on_a_stick in offhand)
scoreboard objectives add sheepwars.right_click minecraft.used:minecraft.warped_fungus_on_a_stick

# Previous color reminder
scoreboard objectives add sheepwars.previous_color dummy

# Team with no collision
team add sheepwars.sheeps
team modify sheepwars.sheeps collisionRule never

#define storage sheepwars:main
#define storage sheepwars:items

# https://www.erisium.com/article/sheepwars

## Sheeps Items
# Weight 20
data modify storage sheepwars:items all.explosif set value {Slot:16b		,id:"minecraft:red_wool"		,Count:1b,tag:{sheepwars:{explosif:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Explosif","italic":false,"color":"red"}]'}}}
# Weight 12
data modify storage sheepwars:items all.tenebreux set value {Slot:16b		,id:"minecraft:black_wool"		,Count:1b,tag:{sheepwars:{tenebreux:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Ténébreux","italic":false,"color":"dark_gray"}]'}}}
data modify storage sheepwars:items all.glouton set value {Slot:16b			,id:"minecraft:green_wool"		,Count:1b,tag:{sheepwars:{glouton:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Glouton","italic":false,"color":"green"}]'}}}
data modify storage sheepwars:items all.sismique set value {Slot:16b		,id:"minecraft:brown_wool"		,Count:1b,tag:{sheepwars:{sismique:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Sismique","italic":false,"color":"#B37520"}]'}}}
data modify storage sheepwars:items all.foudroyant set value {Slot:16b		,id:"minecraft:yellow_wool"		,Count:1b,tag:{sheepwars:{foudroyant:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Foudroyant","italic":false,"color":"yellow"}]'}}}
data modify storage sheepwars:items all.incendiaire set value {Slot:16b		,id:"minecraft:orange_wool"		,Count:1b,tag:{sheepwars:{incendiaire:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Incendiaire","italic":false,"color":"gold"}]'}}}
data modify storage sheepwars:items all.glace set value {Slot:16b			,id:"minecraft:light_blue_wool"	,Count:1b,tag:{sheepwars:{glace:1b}				,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Glacé","italic":false,"color":"aqua"}]'}}}
# Weight 8
data modify storage sheepwars:items all.fragmentation set value {Slot:16b	,id:"minecraft:light_gray"		,Count:1b,tag:{sheepwars:{fragmentation:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Fragmentation","italic":false,"color":"light_gray"}]'}}}
data modify storage sheepwars:items all.chercheur set value {Slot:16b		,id:"minecraft:lime_wool"		,Count:1b,tag:{sheepwars:{chercheur:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Chercheur","italic":false,"color":"green"}]'}}}
data modify storage sheepwars:items all.distorsion set value {Slot:16b		,id:"minecraft:purple_wool"		,Count:1b,tag:{sheepwars:{distorsion:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Distorsion","italic":false,"color":"dark_purple"}]'}}}
data modify storage sheepwars:items all.soutien set value {Slot:16b			,id:"minecraft:pink_wool"		,Count:1b,tag:{sheepwars:{soutien:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton de Soutien","italic":false,"color":"#FF69B4"}]'}}}
# Weight 5
data modify storage sheepwars:items all.abordage set value {Slot:16b		,id:"minecraft:white_wool"		,Count:1b,tag:{sheepwars:{abordage:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton d\'Abordage","italic":false,"color":"white"}]'}}}
# Weight 2
data modify storage sheepwars:items all.intergalactique set value {Slot:16b	,id:"minecraft:blue_wool"		,Count:1b,tag:{sheepwars:{intergalactique:1b}	,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Intergalactique","italic":false,"color":"blue"}]'}}}

