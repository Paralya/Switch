
#> sheepwars:load
#
# @within			none
# @executed			unknown context
#
# @description		Function that prepares everything for the SheepWars datapack
#


## Scoreboards
# Delete all scoreboards
scoreboard objectives remove sheepwars.data
scoreboard objectives remove sheepwars.right_click

# Data scoreboard for math and stuff
scoreboard objectives add sheepwars.data dummy

# Rightclick detection (You should use an invisible warped_fungus_on_a_stick in offhand)
scoreboard objectives add sheepwars.right_click minecraft.used:minecraft.warped_fungus_on_a_stick

#define storage sheepwars:main
#define storage sheepwars:items

# https://www.erisium.com/article/sheepwars

## Sheeps Items
# Mouton Explosif (red)
data modify storage sheepwars:items all.explosif set value {Slot:16b		,id:"minecraft:red_wool"		,Count:1b,tag:{sheepwars:{explosif:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Explosif","italic":false,"color":"red"}]'}}}
# Mouton Incendiaire (orange)
data modify storage sheepwars:items all.incendiaire set value {Slot:16b		,id:"minecraft:orange_wool"		,Count:1b,tag:{sheepwars:{incendiaire:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Incendiaire","italic":false,"color":"gold"}]'}}}
# Mouton Fragmentation (light_gray)
data modify storage sheepwars:items all.fragmentation set value {Slot:16b	,id:"minecraft:light_gray"		,Count:1b,tag:{sheepwars:{fragmentation:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Fragmentation","italic":false,"color":"light_gray"}]'}}}
# Mouton Glouton (green)
data modify storage sheepwars:items all.glouton set value {Slot:16b			,id:"minecraft:green_wool"		,Count:1b,tag:{sheepwars:{glouton:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Glouton","italic":false,"color":"green"}]'}}}
# Mouton Chercheur (lime)
data modify storage sheepwars:items all.chercheur set value {Slot:16b		,id:"minecraft:lime_wool"		,Count:1b,tag:{sheepwars:{chercheur:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Chercheur","italic":false,"color":"lime"}]'}}}
# Mouton glacé (light_blue)
data modify storage sheepwars:items all.glace set value {Slot:16b			,id:"minecraft:light_blue_wool"	,Count:1b,tag:{sheepwars:{glace:1b}				,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Glacé","italic":false,"color":"aqua"}]'}}}
# Mouton Foudroyant (yellow)
data modify storage sheepwars:items all.foudroyant set value {Slot:16b		,id:"minecraft:yellow_wool"		,Count:1b,tag:{sheepwars:{foudroyant:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Foudroyant","italic":false,"color":"yellow"}]'}}}
# Mouton Distorsion (purple)
data modify storage sheepwars:items all.distorsion set value {Slot:16b		,id:"minecraft:purple_wool"		,Count:1b,tag:{sheepwars:{distorsion:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Distorsion","italic":false,"color":"dark_purple"}]'}}}
# Mouton Ténébreux (dark_gray)
data modify storage sheepwars:items all.tenebreux set value {Slot:16b		,id:"minecraft:black_wool"		,Count:1b,tag:{sheepwars:{tenebreux:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Ténébreux","italic":false,"color":"dark_gray"}]'}}}
# Mouton Sismique (brown)
data modify storage sheepwars:items all.sismique set value {Slot:16b		,id:"minecraft:brown_wool"		,Count:1b,tag:{sheepwars:{sismique:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Sismique","italic":false,"color":"#5B3C11"}]'}}}
# Mouton de Soutien (pink)
data modify storage sheepwars:items all.soutien set value {Slot:16b			,id:"minecraft:pink_wool"		,Count:1b,tag:{sheepwars:{soutien:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton de Soutien","italic":false,"color":"#FF69B4"}]'}}}
# Mouton d'Abordage (white)
data modify storage sheepwars:items all.abordage set value {Slot:16b		,id:"minecraft:white_wool"		,Count:1b,tag:{sheepwars:{abordage:1b}			,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton d\'Abordage","italic":false,"color":"white"}]'}}}
# Mouton Intergalactique (blue)
data modify storage sheepwars:items all.intergalactique set value {Slot:16b	,id:"minecraft:blue_wool"		,Count:1b,tag:{sheepwars:{intergalactique:1b}	,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Intergalactique","italic":false,"color":"blue"}]'}}}





