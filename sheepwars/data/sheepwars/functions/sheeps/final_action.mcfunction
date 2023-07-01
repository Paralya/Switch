
#> sheepwars:sheeps/final_action
#
# @within			sheepwars:sheeps_sheep
# @executed			as & at the sheep
#
# @description		Manages the final action of the sheep.
#

# Depending on the sheep type, run appropriate functions
scoreboard players set #success sheepwars.data 0
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.explosif] run function sheepwars:sheeps/final/normal_explosion
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.incendiaire] run function sheepwars:sheeps/final/fire_explosion
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.fragmentation] run function sheepwars:sheeps/final/fragmentation
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.fragmentation_part] run function sheepwars:sheeps/final/normal_explosion
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.glouton] run function sheepwars:sheeps/final/normal_explosion
execute store success score #success sheepwars.data if score #success sheepwars.data matches 0 if entity @s[tag=sheepwars.chercheur] run function sheepwars:sheeps/final/normal_explosion

# In all cases, remove the sheep
function sheepwars:sheeps/final/disappear

