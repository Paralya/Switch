
## For each of the game, print it in order
tellraw @s ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Liste des mini-jeux :"}]

# Done advancements
data modify storage switch:temp copy set from storage switch:ratings all
execute if data storage switch:temp copy[0] run function switch:player/trigger/rating/display_loop with storage switch:temp copy[0]

scoreboard players set @s switch.trigger.rating 0

