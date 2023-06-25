
#> sheepwars:sheeps/tick_sheep
#
# @within			sheepwars:tick
# @executed			as & at the sheep
#
# @description		Manages the sheep actions
#

# If the sheep has the tag in "air", remove it if it is not in the air anymore
execute if entity @s[tag=sheepwars.in_air] store result score #motion_y sheepwars.data run data get entity @s Motion[1] 100
execute if entity @s[tag=sheepwars.in_air] if score #motion_y sheepwars.data matches 8 run tag @s remove sheepwars.in_air

# Increment the sheep timer
scoreboard players add @s[tag=!sheepwars.in_air] sheepwars.data 1

# Depending on the sheep type, run appropriate functions
scoreboard players set #success sheepwars.data 0
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.explosif] run function sheepwars:sheeps/explosif/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.incendiaire] run function sheepwars:sheeps/incendiaire/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.fragmentation] run function sheepwars:sheeps/fragmentation/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.glouton] run function sheepwars:sheeps/glouton/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.chercheur] run function sheepwars:sheeps/chercheur/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.glace] run function sheepwars:sheeps/glace/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.foudroyant] run function sheepwars:sheeps/foudroyant/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.distorsion] run function sheepwars:sheeps/distorsion/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.tenebreux] run function sheepwars:sheeps/tenebreux/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.sismique] run function sheepwars:sheeps/sismique/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.soutien] run function sheepwars:sheeps/soutien/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.abordage] run function sheepwars:sheeps/abordage/tick
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.intergalactique] run function sheepwars:sheeps/intergalactique/tick

## Manages sheep blinking for sheeps that can explode
execute if score @s[tag=sheepwars.explode] sheepwars.data matches 50.. run function sheepwars:sheeps/blink


