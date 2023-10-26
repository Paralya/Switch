
gamemode spectator @a[tag=!switch.detached]
effect give @a[tag=!switch.detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:choose_map_for/de_a_coudre

gamerule showDeathMessages false
gamerule keepInventory true

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Dé à Coudre, on commence direct !"}]

scoreboard players set #de_a_coudre_seconds switch.data 0
scoreboard players set #de_a_coudre_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.order dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[tag=!switch.detached,sort=random] run function switch:modes/de_a_coudre/define_order
scoreboard players operation #max switch.data = #position switch.data
execute as @a[tag=!switch.detached] run scoreboard players operation @s switch.temp.color = @s switch.temp.order

# Nombre de rounds
scoreboard players set #rounds switch.data 8
execute if score #max switch.data matches 5..8 run scoreboard players set #rounds switch.data 6
execute if score #max switch.data matches 9..16 run scoreboard players set #rounds switch.data 4
execute if score #max switch.data matches 17..24 run scoreboard players set #rounds switch.data 3
execute if score #max switch.data matches 25..32 run scoreboard players set #rounds switch.data 2
execute if score #max switch.data matches 33.. run scoreboard players set #rounds switch.data 1
scoreboard players operation #max_rounds switch.data = #rounds switch.data
tellraw @a[tag=!switch.detached] [{"text":"Démarrage d'un nouveau round ! [","color":"yellow"},{"text":"1","color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

