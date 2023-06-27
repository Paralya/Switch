
#> sheepwars:right_click/all
#
# @within			sheepwars:tick
# @executed			as & at a player that right clicked
#
# @output storage	sheepwars:main UUID : UUID of the player that right clicked
#
# @description		Handles all right click events such as summoning a sheep depending on the item in the player's hand.
#

# Copy the player's UUID to the main storage
data modify storage sheepwars:main UUID set from entity @s UUID

## All Sheeps
scoreboard players set #success sheepwars.data 0
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.explosif run function sheepwars:sheeps/summon/explosif
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.incendiaire run function sheepwars:sheeps/summon/incendiaire
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.fragmentation run function sheepwars:sheeps/summon/fragmentation
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.glouton run function sheepwars:sheeps/summon/glouton
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.chercheur run function sheepwars:sheeps/summon/chercheur
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.glace run function sheepwars:sheeps/summon/glace
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.foudroyant run function sheepwars:sheeps/summon/foudroyant
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.distorsion run function sheepwars:sheeps/summon/distorsion
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.tenebreux run function sheepwars:sheeps/summon/tenebreux
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.sismique run function sheepwars:sheeps/summon/sismique
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.soutien run function sheepwars:sheeps/summon/soutien
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.abordage run function sheepwars:sheeps/summon/abordage
execute if score #success sheepwars.data matches 0 store success score #success sheepwars.data if data entity @s SelectedItem.tag.sheepwars.intergalactique run function sheepwars:sheeps/summon/intergalactique

# If success is 1, then remove one count of the item in the player's hand
execute if score #success sheepwars.data matches 1 run item modify entity @s weapon.mainhand sheepwars:remove_one

# Reset right click score
scoreboard players reset @s sheepwars.right_click

