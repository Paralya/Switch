
## Scoreboards
# Data scoreboard for math and stuff
scoreboard objectives add sheepwars.data dummy

# Rightclick detection (You should use an invisible warped_fungus_on_a_stick in offhand)
scoreboard objectives add sheepwars.right_click minecraft.used:minecraft.warped_fungus_on_a_stick

#define storage sheepwars:main
#define storage sheepwars:items

# https://www.erisium.com/article/sheepwars

## Sheeps Items
# Mouton Explosif
data modify storage sheepwars:items all.explosif set value {Slot:16b		,id:"minecraft:red_wool"	,Count:1b,tag:{sheepwars:{explosif:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Explosif","italic":false,"color":"red"}]'}}}
# Mouton Incendiaire
data modify storage sheepwars:items all.incendiare set value {Slot:16b		,id:"minecraft:orange_wool"	,Count:1b,tag:{sheepwars:{incendiaire:1b}	,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Incendiaire","italic":false,"color":"gold"}]'}}}
# Mouton Fragmentation
data modify storage sheepwars:items all.fragmentation set value {Slot:16b	,id:"minecraft:light_gray"	,Count:1b,tag:{sheepwars:{fragmentation:1b}	,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Fragmentation","italic":false,"color":"light_gray"}]'}}}
# Mouton Glouton
data modify storage sheepwars:items all.glouton set value {Slot:16b			,id:"minecraft:green_wool"	,Count:1b,tag:{sheepwars:{glouton:1b}		,display:{Lore:['{"translate":"SheepWars","color":"blue","italic":true}'],Name:'[{"text":"Mouton Glouton","italic":false,"color":"green"}]'}}}
# Mouton Chercheur
data modify storage 

