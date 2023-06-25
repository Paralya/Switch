
#> sheepwars:right_click/all
#
# @within			sheepwars:tick
# @executed			as & at a player that right clicked
#
# @description		Handles all right click events such as summoning a sheep depending on the item in the player's hand.
#

## All Sheeps
scoreboard players set #success sheepwars.data 0
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.explosif run function sheepwars:sheeps/explosif/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.incendiaire run function sheepwars:sheeps/incendiaire/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.fragmentation run function sheepwars:sheeps/fragmentation/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.glouton run function sheepwars:sheeps/glouton/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.chercheur run function sheepwars:sheeps/chercheur/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.glace run function sheepwars:sheeps/glace/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.foudroyant run function sheepwars:sheeps/foudroyant/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.distorsion run function sheepwars:sheeps/distorsion/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.tenebreux run function sheepwars:sheeps/tenebreux/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.sismique run function sheepwars:sheeps/sismique/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.soutien run function sheepwars:sheeps/soutien/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.abordage run function sheepwars:sheeps/abordage/summon
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.intergalactique run function sheepwars:sheeps/intergalactique/summon

# Reset right click score
scoreboard players reset @s sheepwars.right_click



