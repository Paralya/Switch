
gamemode adventure @a[tag=!detached]
team join switch.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] jump_boost infinite 250 true
effect give @a[tag=!detached] slowness infinite 3 true
effect give @a[tag=!detached] invisibility infinite 255 true
function switch:utils/set_dynamic_time

scoreboard players set #is_aventure switch.data 1
tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Landing Mine, 5 secondes de préparation et soyez le dernier en vie !"}]

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set #landing_mine_seconds switch.data -5
scoreboard players set #landing_mine_ticks switch.data 0
scoreboard players set #process_end switch.data 0

spreadplayers 153013 153016 0 15 under 105 false @a[tag=!detached]

