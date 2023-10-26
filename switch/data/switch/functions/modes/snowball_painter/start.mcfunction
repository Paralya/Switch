
effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:choose_map_for/snowball_painter

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Snowball Painter, vous avez 5 secondes de préparation !"}]

scoreboard players set #snowball_painter_seconds switch.data -5
scoreboard players set #snowball_painter_ticks switch.data 0
scoreboard players set #remaining_time switch.data 1000
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection
scoreboard players set #position switch.data 0
execute as @a[tag=!switch.detached,sort=random] run function switch:modes/snowball_painter/define_color

