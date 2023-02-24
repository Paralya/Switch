
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a

kill @e[type=item]

effect give @a blindness 10 255 true
effect give @a weakness 10 255 true
effect give @a saturation 10 255 true
effect give @a resistance 10 255 true
effect give @a regeneration 10 255 true
effect give @a glowing 99999 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Téléportation des joueurs
data modify storage switch:main maps_to_choose set value ["operation_pigclaw", "friends_oneforall", "friends_pvpbox_ice", "friends_pvpbox_hills", "friends_pvpbox_end", "paralya_lobby_noel", "ghost_town", "abandoned_city", "taroatlas_soviet_prison", "desert_grand_library", "new_grounds", "snow_hills", "vilarles_castillo", "zonweeb_highschool"]
function switch:maps/load

gamerule mobGriefing false
gamerule showDeathMessages true
gamerule naturalRegeneration false
gamerule keepInventory false
gamerule fallDamage true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la Castagne, 10 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #castagne_seconds switch.data -10
scoreboard players set #castagne_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay list switch.health


## Give Items & Spreadplayers
execute as @a run function switch:modes/castagne/give_items
scoreboard players set #success switch.data 0
execute if score #success switch.data matches 0 store success score #success switch.data if data storage switch:main {map:"operation_pigclaw"} run spreadplayers 36000 36000 10 50 under 300 false @a
execute if score #success switch.data matches 0 store success score #success switch.data if data storage switch:main {map:"friends_oneforall"} run spreadplayers 8000 8000 10 20 under 115 false @a
execute if score #success switch.data matches 0 store success score #success switch.data if data storage switch:main {map:"taroatlas_soviet_prison"}
execute if score #success switch.data matches 0 store success score #success switch.data if data storage switch:main {map:"desert_grand_library"} run spreadplayers 47000 47000 1 10 under 115 false @a
execute if score #success switch.data matches 0 store success score #success switch.data if data storage switch:main {map:"new_grounds"} run spreadplayers 48000 48000 1 20 under 101 false @a
execute if score #success switch.data matches 0 store success score #success switch.data if data storage switch:main {map:"vilarles_castillo"} run spreadplayers 52000 52000 1 5 under 101 false @a
execute if score #success switch.data matches 0 at @r run spreadplayers ~ ~ 10 100 false @a

